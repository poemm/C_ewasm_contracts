/*
 * Copyright 2016-2018 The OpenSSL Project Authors. All Rights Reserved.
 *
 * Licensed under the Apache License 2.0 (the "License").  You may not use
 * this file except in compliance with the License.  You can obtain a copy
 * in the file LICENSE in the source distribution or at
 * https://www.openssl.org/source/license.html
 */

/*
 * Derived from the BLAKE2 reference implementation written by Samuel Neves.
 * Copyright 2012, Samuel Neves <sneves@dei.uc.pt>
 * More information about the BLAKE2 hash function and its implementations
 * can be found at https://blake2.net.
 */

/*
https://github.com/openssl/openssl

Used a bunch of files, labelled below.
*/



#include "ewasm.h"




// this is defined for loop unrolling of rounds, comment out for faster speed, uncomment for small size
//#define OPENSSL_SMALL_FOOTPRINT 1

// TODO: handle assertions, maybe don't need
void assert(int a){ if(!a){ __builtin_unreachable();} };

// don't know where this is defined, but needed
#define ossl_inline inline



// from mem_clr.c
/*
 * Pointer to memset is volatile so that compiler must de-reference
 * the pointer and can't assume that it points to any function in
 * particular (such as memset, which it then might further "optimize")
 */
typedef void *(*memset_t)(void *, int, size_t);

static volatile memset_t memset_func = memset;

void OPENSSL_cleanse(void *ptr, size_t len)
{
    memset_func(ptr, 0, len);
}



//from blake2_locl.h

#define BLAKE2B_BLOCKBYTES    128
#define BLAKE2B_OUTBYTES      64
#define BLAKE2B_KEYBYTES      64
#define BLAKE2B_SALTBYTES     16
#define BLAKE2B_PERSONALBYTES 16

struct blake2b_param_st {
    uint8_t  digest_length; /* 1 */
    uint8_t  key_length;    /* 2 */
    uint8_t  fanout;        /* 3 */
    uint8_t  depth;         /* 4 */
    uint8_t  leaf_length[4];/* 8 */
    uint8_t  node_offset[8];/* 16 */
    uint8_t  node_depth;    /* 17 */
    uint8_t  inner_length;  /* 18 */
    uint8_t  reserved[14];  /* 32 */
    uint8_t  salt[BLAKE2B_SALTBYTES]; /* 48 */
    uint8_t  personal[BLAKE2B_PERSONALBYTES];  /* 64 */
};

typedef struct blake2b_param_st BLAKE2B_PARAM;

struct blake2b_ctx_st {
    uint64_t h[8];
    uint64_t t[2];
    uint64_t f[2];
    uint8_t  buf[BLAKE2B_BLOCKBYTES];
    size_t   buflen;
    size_t   outlen;
};

#define BLAKE2B_DIGEST_LENGTH 64

typedef struct blake2b_ctx_st BLAKE2B_CTX;

int BLAKE2b_Init(BLAKE2B_CTX *c, const BLAKE2B_PARAM *P);
int BLAKE2b_Init_key(BLAKE2B_CTX *c, const BLAKE2B_PARAM *P, const void *key);
int BLAKE2b_Update(BLAKE2B_CTX *c, const void *data, size_t datalen);
int BLAKE2b_Final(unsigned char *md, BLAKE2B_CTX *c);

/*
 * These setters are internal and do not check the validity of their parameters.
 * See blake2b_mac_ctrl for validation logic.
 */

void blake2b_param_init(BLAKE2B_PARAM *P);
void blake2b_param_set_digest_length(BLAKE2B_PARAM *P, uint8_t outlen);
void blake2b_param_set_key_length(BLAKE2B_PARAM *P, uint8_t keylen);
void blake2b_param_set_personal(BLAKE2B_PARAM *P, const uint8_t *personal, size_t length);
void blake2b_param_set_salt(BLAKE2B_PARAM *P, const uint8_t *salt, size_t length);






// from blake2_impl.h

static ossl_inline uint64_t load64(const uint8_t *src)
{
    const union {
        long one;
        char little;
    } is_endian = { 1 };

    if (is_endian.little) {
        uint64_t w;
        memcpy(&w, src, sizeof(w));
        return w;
    } else {
        uint64_t w = ((uint64_t)src[0])
                   | ((uint64_t)src[1] <<  8)
                   | ((uint64_t)src[2] << 16)
                   | ((uint64_t)src[3] << 24)
                   | ((uint64_t)src[4] << 32)
                   | ((uint64_t)src[5] << 40)
                   | ((uint64_t)src[6] << 48)
                   | ((uint64_t)src[7] << 56);
        return w;
    }
}

static ossl_inline void store32(uint8_t *dst, uint32_t w)
{
    const union {
        long one;
        char little;
    } is_endian = { 1 };

    if (is_endian.little) {
        memcpy(dst, &w, sizeof(w));
    } else {
        uint8_t *p = (uint8_t *)dst;
        int i;

        for (i = 0; i < 4; i++)
            p[i] = (uint8_t)(w >> (8 * i));
    }
}

static ossl_inline void store64(uint8_t *dst, uint64_t w)
{
    const union {
        long one;
        char little;
    } is_endian = { 1 };

    if (is_endian.little) {
        memcpy(dst, &w, sizeof(w));
    } else {
        uint8_t *p = (uint8_t *)dst;
        int i;

        for (i = 0; i < 8; i++)
            p[i] = (uint8_t)(w >> (8 * i));
    }
}

static ossl_inline uint64_t rotr64(const uint64_t w, const unsigned int c)
{
    return (w >> c) | (w << (64 - c));
}











// from blake2b.c

static const uint64_t blake2b_IV[8] =
{
    0x6a09e667f3bcc908ULL, 0xbb67ae8584caa73bULL,
    0x3c6ef372fe94f82bULL, 0xa54ff53a5f1d36f1ULL,
    0x510e527fade682d1ULL, 0x9b05688c2b3e6c1fULL,
    0x1f83d9abfb41bd6bULL, 0x5be0cd19137e2179ULL
};

static const uint8_t blake2b_sigma[12][16] =
{
    {  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15 } ,
    { 14, 10,  4,  8,  9, 15, 13,  6,  1, 12,  0,  2, 11,  7,  5,  3 } ,
    { 11,  8, 12,  0,  5,  2, 15, 13, 10, 14,  3,  6,  7,  1,  9,  4 } ,
    {  7,  9,  3,  1, 13, 12, 11, 14,  2,  6,  5, 10,  4,  0, 15,  8 } ,
    {  9,  0,  5,  7,  2,  4, 10, 15, 14,  1, 11, 12,  6,  8,  3, 13 } ,
    {  2, 12,  6, 10,  0, 11,  8,  3,  4, 13,  7,  5, 15, 14,  1,  9 } ,
    { 12,  5,  1, 15, 14, 13,  4, 10,  0,  7,  6,  3,  9,  2,  8, 11 } ,
    { 13, 11,  7, 14, 12,  1,  3,  9,  5,  0, 15,  4,  8,  6,  2, 10 } ,
    {  6, 15, 14,  9, 11,  3,  0,  8, 12,  2, 13,  7,  1,  4, 10,  5 } ,
    { 10,  2,  8,  4,  7,  6,  1,  5, 15, 11,  9, 14,  3, 12, 13 , 0 } ,
    {  0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14, 15 } ,
    { 14, 10,  4,  8,  9, 15, 13,  6,  1, 12,  0,  2, 11,  7,  5,  3 }
};

/* Set that it's the last block we'll compress */
static ossl_inline void blake2b_set_lastblock(BLAKE2B_CTX *S)
{
    S->f[0] = -1;
}

/* Initialize the hashing state. */
static ossl_inline void blake2b_init0(BLAKE2B_CTX *S)
{
    int i;

    memset(S, 0, sizeof(BLAKE2B_CTX));
    for (i = 0; i < 8; ++i) {
        S->h[i] = blake2b_IV[i];
    }
}

/* init xors IV with input parameter block and sets the output length */
static void blake2b_init_param(BLAKE2B_CTX *S, const BLAKE2B_PARAM *P)
{
    size_t i;
    const uint8_t *p = (const uint8_t *)(P);

    blake2b_init0(S);
    S->outlen = P->digest_length;

    /* The param struct is carefully hand packed, and should be 64 bytes on
     * every platform. */
    assert(sizeof(BLAKE2B_PARAM) == 64);
    /* IV XOR ParamBlock */
    for (i = 0; i < 8; ++i) {
        S->h[i] ^= load64(p + sizeof(S->h[i]) * i);
    }
}

/* Initialize the parameter block with default values */
void blake2b_param_init(BLAKE2B_PARAM *P)
{
    P->digest_length = BLAKE2B_DIGEST_LENGTH;
    P->key_length    = 0;
    P->fanout        = 1;
    P->depth         = 1;
    store32(P->leaf_length, 0);
    store64(P->node_offset, 0);
    P->node_depth    = 0;
    P->inner_length  = 0;
    memset(P->reserved, 0, sizeof(P->reserved));
    memset(P->salt,     0, sizeof(P->salt));
    memset(P->personal, 0, sizeof(P->personal));
}

void blake2b_param_set_digest_length(BLAKE2B_PARAM *P, uint8_t outlen)
{
    P->digest_length = outlen;
}

void blake2b_param_set_key_length(BLAKE2B_PARAM *P, uint8_t keylen)
{
    P->key_length = keylen;
}

void blake2b_param_set_personal(BLAKE2B_PARAM *P, const uint8_t *personal, size_t len)
{
    memcpy(P->personal, personal, len);
    memset(P->personal + len, 0, BLAKE2B_PERSONALBYTES - len);
}

void blake2b_param_set_salt(BLAKE2B_PARAM *P, const uint8_t *salt, size_t len)
{
    memcpy(P->salt, salt, len);
    memset(P->salt + len, 0, BLAKE2B_SALTBYTES - len);
}

/*
 * Initialize the hashing context with the given parameter block.
 * Always returns 1.
 */
int BLAKE2b_Init(BLAKE2B_CTX *c, const BLAKE2B_PARAM *P)
{
    blake2b_init_param(c, P);
    return 1;
}

/*
 * Initialize the hashing context with the given parameter block and key.
 * Always returns 1.
 */
int BLAKE2b_Init_key(BLAKE2B_CTX *c, const BLAKE2B_PARAM *P, const void *key)
{
    blake2b_init_param(c, P);

    /* Pad the key to form first data block */
    {
        uint8_t block[BLAKE2B_BLOCKBYTES] = {0};

        memcpy(block, key, P->key_length);
        BLAKE2b_Update(c, block, BLAKE2B_BLOCKBYTES);
        OPENSSL_cleanse(block, BLAKE2B_BLOCKBYTES);
    }

    return 1;
}

/* Permute the state while xoring in the block of data. */
static void blake2b_compress(BLAKE2B_CTX *S,
                            const uint8_t *blocks,
                            size_t len)
{
    uint64_t m[16];
    uint64_t v[16];
    int i;
    size_t increment;

    /*
     * There are two distinct usage vectors for this function:
     *
     * a) BLAKE2b_Update uses it to process complete blocks,
     *    possibly more than one at a time;
     *
     * b) BLAK2b_Final uses it to process last block, always
     *    single but possibly incomplete, in which case caller
     *    pads input with zeros.
     */
    assert(len < BLAKE2B_BLOCKBYTES || len % BLAKE2B_BLOCKBYTES == 0);

    /*
     * Since last block is always processed with separate call,
     * |len| not being multiple of complete blocks can be observed
     * only with |len| being less than BLAKE2B_BLOCKBYTES ("less"
     * including even zero), which is why following assignment doesn't
     * have to reside inside the main loop below.
     */
    increment = len < BLAKE2B_BLOCKBYTES ? len : BLAKE2B_BLOCKBYTES;

    for (i = 0; i < 8; ++i) {
        v[i] = S->h[i];
    }

    do {
        for (i = 0; i < 16; ++i) {
            m[i] = load64(blocks + i * sizeof(m[i]));
        }

        /* blake2b_increment_counter */
        S->t[0] += increment;
        S->t[1] += (S->t[0] < increment);

        v[8]  = blake2b_IV[0];
        v[9]  = blake2b_IV[1];
        v[10] = blake2b_IV[2];
        v[11] = blake2b_IV[3];
        v[12] = S->t[0] ^ blake2b_IV[4];
        v[13] = S->t[1] ^ blake2b_IV[5];
        v[14] = S->f[0] ^ blake2b_IV[6];
        v[15] = S->f[1] ^ blake2b_IV[7];
#define G(r,i,a,b,c,d) \
        do { \
            a = a + b + m[blake2b_sigma[r][2*i+0]]; \
            d = rotr64(d ^ a, 32); \
            c = c + d; \
            b = rotr64(b ^ c, 24); \
            a = a + b + m[blake2b_sigma[r][2*i+1]]; \
            d = rotr64(d ^ a, 16); \
            c = c + d; \
            b = rotr64(b ^ c, 63); \
        } while (0)
#define ROUND(r)  \
        do { \
            G(r,0,v[ 0],v[ 4],v[ 8],v[12]); \
            G(r,1,v[ 1],v[ 5],v[ 9],v[13]); \
            G(r,2,v[ 2],v[ 6],v[10],v[14]); \
            G(r,3,v[ 3],v[ 7],v[11],v[15]); \
            G(r,4,v[ 0],v[ 5],v[10],v[15]); \
            G(r,5,v[ 1],v[ 6],v[11],v[12]); \
            G(r,6,v[ 2],v[ 7],v[ 8],v[13]); \
            G(r,7,v[ 3],v[ 4],v[ 9],v[14]); \
        } while (0)
#if defined(OPENSSL_SMALL_FOOTPRINT)
        /* 3x size reduction on x86_64, almost 7x on ARMv8, 9x on ARMv4 */
        for (i = 0; i < 12; i++) {
            ROUND(i);
        }
#else
        ROUND(0);
        ROUND(1);
        ROUND(2);
        ROUND(3);
        ROUND(4);
        ROUND(5);
        ROUND(6);
        ROUND(7);
        ROUND(8);
        ROUND(9);
        ROUND(10);
        ROUND(11);
#endif

        for (i = 0; i < 8; ++i) {
            S->h[i] = v[i] ^= v[i + 8] ^ S->h[i];
        }
#undef G
#undef ROUND
        blocks += increment;
        len -= increment;
    } while (len);
}

/* Absorb the input data into the hash state.  Always returns 1. */
int BLAKE2b_Update(BLAKE2B_CTX *c, const void *data, size_t datalen)
{
    const uint8_t *in = data;
    size_t fill;

    /*
     * Intuitively one would expect intermediate buffer, c->buf, to
     * store incomplete blocks. But in this case we are interested to
     * temporarily stash even complete blocks, because last one in the
     * stream has to be treated in special way, and at this point we
     * don't know if last block in *this* call is last one "ever". This
     * is the reason for why |datalen| is compared as >, and not >=.
     */
    fill = sizeof(c->buf) - c->buflen;
    if (datalen > fill) {
        if (c->buflen) {
            memcpy(c->buf + c->buflen, in, fill); /* Fill buffer */
            blake2b_compress(c, c->buf, BLAKE2B_BLOCKBYTES);
            c->buflen = 0;
            in += fill;
            datalen -= fill;
        }
        if (datalen > BLAKE2B_BLOCKBYTES) {
            size_t stashlen = datalen % BLAKE2B_BLOCKBYTES;
            /*
             * If |datalen| is a multiple of the blocksize, stash
             * last complete block, it can be final one...
             */
            stashlen = stashlen ? stashlen : BLAKE2B_BLOCKBYTES;
            datalen -= stashlen;
            blake2b_compress(c, in, datalen);
            in += datalen;
            datalen = stashlen;
        }
    }

    assert(datalen <= BLAKE2B_BLOCKBYTES);

    memcpy(c->buf + c->buflen, in, datalen);
    c->buflen += datalen; /* Be lazy, do not compress */

    return 1;
}

/*
 * Calculate the final hash and save it in md.
 * Always returns 1.
 */
int BLAKE2b_Final(unsigned char *md, BLAKE2B_CTX *c)
{
    uint8_t outbuffer[BLAKE2B_OUTBYTES] = {0};
    uint8_t *target = outbuffer;
    int iter = (c->outlen + 7) / 8;
    int i;

    /* Avoid writing to the temporary buffer if possible */
    if ((c->outlen % sizeof(c->h[0])) == 0)
        target = md;

    blake2b_set_lastblock(c);
    /* Padding */
    memset(c->buf + c->buflen, 0, sizeof(c->buf) - c->buflen);
    blake2b_compress(c, c->buf, c->buflen);

    /* Output full hash to buffer */
    for (i = 0; i < iter; ++i)
        store64(target + sizeof(c->h[i]) * i, c->h[i]);

    if (target != md)
        memcpy(md, target, c->outlen);

    OPENSSL_cleanse(c, sizeof(BLAKE2B_CTX));
    return 1;
}




//custom func, not from openssl, reused the one from reference implementation

/* inlen, at least, should be uint64_t. Others can be size_t. */
int blake2b( void *out, size_t outlen, const void *in, size_t inlen, const void *key, size_t keylen )
{
  //blake2b_state S[1];
  BLAKE2B_CTX S;
  BLAKE2B_PARAM P;
  blake2b_param_init(&P);

  /* Verify parameters */
  if ( NULL == in && inlen > 0 ) return -1;

  if ( NULL == out ) return -1;

  if( NULL == key && keylen > 0 ) return -1;

  if( !outlen || outlen > BLAKE2B_OUTBYTES ) return -1;

  if( keylen > BLAKE2B_KEYBYTES ) return -1;

  if( keylen > 0 )
  {
    //if( blake2b_init_key( S, outlen, key, keylen ) < 0 ) return -1;
    if( BLAKE2b_Init_key(&S,&P,key) < 0 ) return -1;
  }
  else
  {
    if( BLAKE2b_Init( &S, &P ) < 0 ) return -1;
  }

  BLAKE2b_Update( &S, in, inlen );
  BLAKE2b_Final( out, &S );
  return 0;
}



void _main(){

  int length = eth2_blockDataSize(); //length in bytes
  unsigned char* in = (unsigned char*) malloc( length * sizeof(unsigned char));
  eth2_blockDataCopy( (i32ptr*)in, 0, length ); //get data to hash into memory
  unsigned char out[64];

  //int ret = blake2b( out, BLAKE2B_OUTBYTES, in, length, NULL, 0 );
#if 0   // for benchmarking
  int loop_iters = (50000 + (length - 1)) / (length + 1);
  int ret;
  for (int i=0; i<loop_iters; i++)
    ret = blake2b( out, BLAKE2B_OUTBYTES, in, length, NULL, 0 );
#else
  int ret;
  ret = blake2b( out, BLAKE2B_OUTBYTES, in, length, NULL, 0 );
#endif
  if (ret==-1){
    //TODO: return something when there is an error, or maybe out will just be zeros
  }

  eth2_savePostStateRoot((i32ptr*)out);

}


