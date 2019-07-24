/*
https://github.com/floodyberry/blake2b-opt
License: Public Domain or MIT
*/


/*
files:
  blake2.h
  impl.c  
    blake2b_ref-3264.inc
    blake2b_ref-64.inc
  many other files, lost track

notes
 - commented out all print statements
 - for the test, just returned 0
 - made some other changes, lost track
*/


#include"ewasm.h"



// a PROJECT_NAME is needed in some places
#define PROJECT_NAME pauls_project



//uncomment only one of these, first is for pure 64-bit, second is for 32&64-bit
#define CPU_64BITS 1
//#define HAVE_INT64 1



// removed parentheses because it didn't seem to work
//#define CPUID_GENERIC  (0     )
#define CPUID_GENERIC  0




// in file configure

#define LOCAL_PREFIX3(a,b) a##_##b
#define LOCAL_PREFIX2(a,b) LOCAL_PREFIX3(a,b)
#define LOCAL_PREFIX(n) LOCAL_PREFIX2(PROJECT_NAME,n)




// framework/driver/generic/cpuid_impl.inc

static unsigned long long
cpuid_impl(void) {
        return CPUID_GENERIC;
}




// blake2.h

#if !defined(LIB_PUBLIC)
#define LIB_PUBLIC
#endif

typedef struct blake2b_state_t {
	unsigned char opaque[256];
} blake2b_state;

/* incremental */
LIB_PUBLIC void blake2b_init(blake2b_state *S);
LIB_PUBLIC void blake2b_keyed_init(blake2b_state *S, const unsigned char *key, size_t keylen);
LIB_PUBLIC void blake2b_update(blake2b_state *S, const unsigned char *in, size_t inlen);
LIB_PUBLIC void blake2b_final(blake2b_state *S, unsigned char *hash);

/* one-shot */
LIB_PUBLIC void blake2b(unsigned char *hash, const unsigned char *in, size_t inlen);
LIB_PUBLIC void blake2b_keyed(unsigned char *hash, const unsigned char *in, size_t inlen, const unsigned char *key, size_t keylen);

LIB_PUBLIC int blake2b_startup(void);



// framework/include/cpuid.h
// NOTE: commented out the first thing since errors

/*
enum cpuid_flags_generic_t {
        CPUID_GENERIC = (0)
};
*/

//#include "cpuid_flags.inc"

unsigned long LOCAL_PREFIX(cpuid)(void);

/* runtime dispatching based on current cpu */
typedef struct cpu_specific_impl_t {
        unsigned long cpu_flags;
        const char *desc;
        /* additional information, pointers to methods, etc... */
} cpu_specific_impl_t;

typedef int (*impl_test)(const void *impl);

const void *LOCAL_PREFIX(cpu_select)(const void *impls, size_t impl_size, impl_test test_fn);





// framework/driver/cpuid.c

static unsigned long cpuid_flags = CPUID_GENERIC;
static unsigned long cpuid_mask = ~(unsigned long)0;

unsigned long
LOCAL_PREFIX(cpuid)(void) {
        if (cpuid_flags == CPUID_GENERIC)
                cpuid_flags = cpuid_impl();
        return cpuid_flags & cpuid_mask;
}

const void *
LOCAL_PREFIX(cpu_select)(const void *impls, size_t impl_size, impl_test test_fn) {
        unsigned long cpu_flags = LOCAL_PREFIX(cpuid)();
        const unsigned char *p = (const unsigned char *)impls;
        for (;;) {
                const cpu_specific_impl_t *impl = (const cpu_specific_impl_t *)p;
                if (impl->cpu_flags == (impl->cpu_flags & cpu_flags)) {
                        if (test_fn(impl) == 0)
                                return impl;
                }
                if (impl->cpu_flags == CPUID_GENERIC)
                        return NULL;
                p += impl_size;
        }
}







// impl.c  and inlined blake2b_ref-3264.inc and blake2b_ref-64.inc

enum blake2b_constants {
	BLAKE2B_BLOCKBYTES = 128,
	BLAKE2B_STRIDE = BLAKE2B_BLOCKBYTES,
	BLAKE2B_STRIDE_NONE = 0,
	BLAKE2B_HASHBYTES  = 64,
	BLAKE2B_KEYBYTES = 64,
};

typedef struct blake2b_state_internal_t {
	unsigned char h[64];
	unsigned char t[16];
	unsigned char f[16];
	size_t leftover;
	unsigned char buffer[BLAKE2B_BLOCKBYTES];
} blake2b_state_internal;

typedef struct blake2b_impl_t {
	unsigned long cpu_flags;
	const char *desc;

	void (*blake2b_blocks)(blake2b_state_internal *state, const unsigned char *in, size_t bytes, size_t stride);
} blake2b_impl_t;

#define BLAKE2B_DECLARE(ext) \
	void blake2b_blocks_##ext(blake2b_state_internal *state, const unsigned char *in, size_t bytes, size_t stride);

#define BLAKE2B_IMPL(cpuflags, desc, ext) \
	{(cpuflags), desc, blake2b_blocks_##ext}

#if defined(ARCH_X86)
	/* 32 bit only implementations */
	#if defined(CPU_32BITS)
		#if defined(HAVE_SSE2)
			BLAKE2B_DECLARE(sse2)
			#define BLAKE2B_SSE2 BLAKE2B_IMPL(CPUID_X86, "sse2", sse2)
		#endif

		#if defined(HAVE_SSSE3)
			BLAKE2B_DECLARE(ssse3)
			#define BLAKE2B_SSSE3 BLAKE2B_IMPL(CPUID_X86, "ssse3", ssse3)
		#endif
	#endif

	/* 64 bit only implementations */
	#if defined(CPU_64BITS)
	#endif

	/* both 32 and 64 bits */
	BLAKE2B_DECLARE(x86)
	#define BLAKE2B_X86 BLAKE2B_IMPL(CPUID_X86, "x86", x86)

	#if defined(HAVE_AVX)
		BLAKE2B_DECLARE(avx)
		#define BLAKE2B_AVX BLAKE2B_IMPL(CPUID_AVX, "avx", avx)
	#endif

	#if defined(HAVE_XOP)
		BLAKE2B_DECLARE(xop)
		#define BLAKE2B_XOP BLAKE2B_IMPL(CPUID_XOP, "xop", xop)
	#endif

	#if defined(HAVE_AVX2)
		BLAKE2B_DECLARE(avx2)
		#define BLAKE2B_AVX2 BLAKE2B_IMPL(CPUID_AVX2, "avx2", avx2)
	#endif
#endif

#if defined(ARCH_ARM)
	#if defined(HAVE_ARMv6)
		BLAKE2B_DECLARE(armv6)
		#define BLAKE2B_ARMv6 BLAKE2B_IMPL(CPUID_ARMv6, "armv6", armv6)
	#endif

	#if defined(HAVE_NEON)
		BLAKE2B_DECLARE(neon)
		#define BLAKE2B_NEON BLAKE2B_IMPL(CPUID_NEON, "neon", neon)
	#endif
#endif

/* the "always runs" version */
#if defined(CPU_64BITS)
	#define BLAKE2B_GENERIC BLAKE2B_IMPL(CPUID_GENERIC, "generic/64", ref)
	//#include "blake2b/blake2b_ref-64.inc"
#if defined(HAVE_INT64)
	typedef uint64_t blake2b_uint64;
	#define MASK64(x) (x)
#else
	typedef unsigned long long blake2b_uint64;
	#define MASK64(x) (x & 0xffffffffffffffffull)
#endif

static blake2b_uint64
ROTR64(blake2b_uint64 x, int k) {
	return MASK64((x >> k) | (x << (64 - k)));
}

static blake2b_uint64
U8TO64(const unsigned char *p) {
	return
		((blake2b_uint64)p[0]      ) |
		((blake2b_uint64)p[1] <<  8) |
		((blake2b_uint64)p[2] << 16) |
		((blake2b_uint64)p[3] << 24) |
		((blake2b_uint64)p[4] << 32) |
		((blake2b_uint64)p[5] << 40) |
		((blake2b_uint64)p[6] << 48) |
		((blake2b_uint64)p[7] << 56);
}

static void
U64TO8(unsigned char *p, blake2b_uint64 v) {
	p[0] = (v      ) & 0xff;
	p[1] = (v >>  8) & 0xff;
	p[2] = (v >> 16) & 0xff;
	p[3] = (v >> 24) & 0xff;
	p[4] = (v >> 32) & 0xff;
	p[5] = (v >> 40) & 0xff;
	p[6] = (v >> 48) & 0xff;
	p[7] = (v >> 56) & 0xff;
}

static void
blake2b_blocks_ref(blake2b_state_internal *S, const unsigned char *in, size_t bytes, size_t stride) {
	const blake2b_uint64 f0 = U8TO64(&S->f[0]);
	const blake2b_uint64 f1 = U8TO64(&S->f[8]);

	const blake2b_uint64 w8 = 0x6a09e667f3bcc908ull;
	const blake2b_uint64 w9 = 0xbb67ae8584caa73bull;
	const blake2b_uint64 w10 = 0x3c6ef372fe94f82bull;
	const blake2b_uint64 w11 = 0xa54ff53a5f1d36f1ull;
	const blake2b_uint64 w12 = 0x510e527fade682d1ull;
	const blake2b_uint64 w13 = 0x9b05688c2b3e6c1full;
	const blake2b_uint64 w14 = 0x1f83d9abfb41bd6bull ^ f0;
	const blake2b_uint64 w15 = 0x5be0cd19137e2179ull ^ f1;

	const size_t inc = (bytes >= 128) ? 128 : bytes;

	blake2b_uint64 t0 = U8TO64(&S->t[0]);
	blake2b_uint64 t1 = U8TO64(&S->t[8]);

	blake2b_uint64 h0 = U8TO64(&S->h[0]);
	blake2b_uint64 h1 = U8TO64(&S->h[8]);
	blake2b_uint64 h2 = U8TO64(&S->h[16]);
	blake2b_uint64 h3 = U8TO64(&S->h[24]);
	blake2b_uint64 h4 = U8TO64(&S->h[32]);
	blake2b_uint64 h5 = U8TO64(&S->h[40]);
	blake2b_uint64 h6 = U8TO64(&S->h[48]);
	blake2b_uint64 h7 = U8TO64(&S->h[56]);

	blake2b_uint64 v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
	unsigned char buffer[128];

	if (f0) {
		memset(buffer, 0, sizeof(buffer));
		memcpy(buffer, in, bytes);
		in = buffer;
	}

	while (1) {
		const blake2b_uint64 m0 = U8TO64(in + 0);
		const blake2b_uint64 m1 = U8TO64(in + 8);
		const blake2b_uint64 m2 = U8TO64(in + 16);
		const blake2b_uint64 m3 = U8TO64(in + 24);
		const blake2b_uint64 m4 = U8TO64(in + 32);
		const blake2b_uint64 m5 = U8TO64(in + 40);
		const blake2b_uint64 m6 = U8TO64(in + 48);
		const blake2b_uint64 m7 = U8TO64(in + 56);
		const blake2b_uint64 m8 = U8TO64(in + 64);
		const blake2b_uint64 m9 = U8TO64(in + 72);
		const blake2b_uint64 m10 = U8TO64(in + 80);
		const blake2b_uint64 m11 = U8TO64(in + 88);
		const blake2b_uint64 m12 = U8TO64(in + 96);
		const blake2b_uint64 m13 = U8TO64(in + 104);
		const blake2b_uint64 m14 = U8TO64(in + 112);
		const blake2b_uint64 m15 = U8TO64(in + 120);

		t0 += inc;
		if (t0 < inc)
			t1 += 1;

		v0 = h0;
		v1 = h1;
		v2 = h2;
		v3 = h3;
		v4 = h4;
		v5 = h5;
		v6 = h6;
		v7 = h7;
		v8 = w8;
		v9 = w9;
		v10 = w10;
		v11 = w11;
		v12 = w12 ^ t0;
		v13 = w13 ^ t1;
		v14 = w14;
		v15 = w15;

		#define Gs(v0,v1,v2,v3,m,r1,r2) \
			v0 += m + v1; \
			v3 ^= v0; \
			v3 = ROTR64(v3,r1); \
			v2 += v3; \
			v1 ^= v2; \
			v1 = ROTR64(v1,r2);

		#define ROUND(m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15) \
			Gs(v0,v4, v8,v12, m0, 32,24) \
			Gs(v0,v4, v8,v12, m1, 16,63) \
			Gs(v1,v5, v9,v13, m2, 32,24) \
			Gs(v1,v5, v9,v13, m3, 16,63) \
			Gs(v2,v6,v10,v14, m4, 32,24) \
			Gs(v2,v6,v10,v14, m5, 16,63) \
			Gs(v3,v7,v11,v15, m6, 32,24) \
			Gs(v3,v7,v11,v15, m7, 16,63) \
			Gs(v0,v5,v10,v15, m8, 32,24) \
			Gs(v0,v5,v10,v15, m9, 16,63) \
			Gs(v1,v6,v11,v12,m10, 32,24) \
			Gs(v1,v6,v11,v12,m11, 16,63) \
			Gs(v2,v7, v8,v13,m12, 32,24) \
			Gs(v2,v7, v8,v13,m13, 16,63) \
			Gs(v3,v4, v9,v14,m14, 32,24) \
			Gs(v3,v4, v9,v14,m15, 16,63)

		ROUND( m0, m1, m2, m3, m4, m5, m6, m7, m8, m9,m10,m11,m12,m13,m14,m15)
		ROUND(m14,m10, m4, m8, m9,m15,m13, m6, m1,m12, m0, m2,m11, m7, m5, m3)
		ROUND(m11, m8,m12, m0, m5, m2,m15,m13,m10,m14, m3, m6, m7, m1, m9, m4)
		ROUND( m7, m9, m3, m1,m13,m12,m11,m14, m2, m6, m5,m10, m4, m0,m15, m8)
		ROUND( m9, m0, m5, m7, m2, m4,m10,m15,m14, m1,m11,m12, m6, m8, m3,m13)
		ROUND( m2,m12, m6,m10, m0,m11, m8, m3, m4,m13, m7, m5,m15,m14, m1, m9)
		ROUND(m12, m5, m1,m15,m14,m13, m4,m10, m0, m7, m6, m3, m9, m2, m8,m11)
		ROUND(m13,m11, m7,m14,m12, m1, m3, m9, m5, m0,m15, m4, m8, m6, m2,m10)
		ROUND( m6,m15,m14, m9,m11, m3, m0, m8,m12, m2,m13, m7, m1, m4,m10, m5)
		ROUND(m10, m2, m8, m4, m7, m6, m1, m5,m15,m11, m9,m14, m3,m12,m13, m0)
		ROUND( m0, m1, m2, m3, m4, m5, m6, m7, m8, m9,m10,m11,m12,m13,m14,m15)
		ROUND(m14,m10, m4, m8, m9,m15,m13, m6, m1,m12, m0, m2,m11, m7, m5, m3)

		h0 ^= v0 ^ v8;
		h1 ^= v1 ^ v9;
		h2 ^= v2 ^ v10;
		h3 ^= v3 ^ v11;
		h4 ^= v4 ^ v12;
		h5 ^= v5 ^ v13;
		h6 ^= v6 ^ v14;
		h7 ^= v7 ^ v15;

		if (bytes <= 128)
			break;
		in += stride;
		bytes -= 128;
	}

	U64TO8(&S->h[0], h0);
	U64TO8(&S->h[8], h1);
	U64TO8(&S->h[16], h2);
	U64TO8(&S->h[24], h3);
	U64TO8(&S->h[32], h4);
	U64TO8(&S->h[40], h5);
	U64TO8(&S->h[48], h6);
	U64TO8(&S->h[56], h7);
	U64TO8(&S->t[0], t0);
	U64TO8(&S->t[8], t1);
}

#elif defined(HAVE_INT64)
	#define BLAKE2B_GENERIC BLAKE2B_IMPL(CPUID_GENERIC, "generic/3264", ref)
	//#include "blake2b/blake2b_ref-3264.inc"
typedef uint64_t blake2b_uint64;

static const unsigned char blake2b_sigma[12][16] = {
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
	{ 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3 },
	{ 11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4 },
	{ 7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8 },
	{ 9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13 },
	{ 2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9 },
	{ 12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11 },
	{ 13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10 },
	{ 6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5 },
	{ 10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0 },
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 },
	{ 14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3 }
};

static blake2b_uint64
ROTR64(blake2b_uint64 x, int k) {
	return ((x >> k) | (x << (64 - k)));
}

static blake2b_uint64
U8TO64(const unsigned char *p) {
	return
		((blake2b_uint64)p[0]      ) |
		((blake2b_uint64)p[1] <<  8) |
		((blake2b_uint64)p[2] << 16) |
		((blake2b_uint64)p[3] << 24) |
		((blake2b_uint64)p[4] << 32) |
		((blake2b_uint64)p[5] << 40) |
		((blake2b_uint64)p[6] << 48) |
		((blake2b_uint64)p[7] << 56);
}

static void
U64TO8(unsigned char *p, blake2b_uint64 v) {
	p[0] = (v      ) & 0xff;
	p[1] = (v >>  8) & 0xff;
	p[2] = (v >> 16) & 0xff;
	p[3] = (v >> 24) & 0xff;
	p[4] = (v >> 32) & 0xff;
	p[5] = (v >> 40) & 0xff;
	p[6] = (v >> 48) & 0xff;
	p[7] = (v >> 56) & 0xff;
}

static void
blake2b_blocks_ref(blake2b_state_internal *S, const unsigned char *in, size_t bytes, size_t stride) {
	const blake2b_uint64 f0 = U8TO64(&S->f[0]);
	const blake2b_uint64 f1 = U8TO64(&S->f[8]);

	const blake2b_uint64 w8 = 0x6a09e667f3bcc908ull;
	const blake2b_uint64 w9 = 0xbb67ae8584caa73bull;
	const blake2b_uint64 w10 = 0x3c6ef372fe94f82bull;
	const blake2b_uint64 w11 = 0xa54ff53a5f1d36f1ull;
	const blake2b_uint64 w12 = 0x510e527fade682d1ull;
	const blake2b_uint64 w13 = 0x9b05688c2b3e6c1full;
	const blake2b_uint64 w14 = 0x1f83d9abfb41bd6bull ^ f0;
	const blake2b_uint64 w15 = 0x5be0cd19137e2179ull ^ f1;

	const size_t inc = (bytes >= 128) ? 128 : bytes;

	blake2b_uint64 t0 = U8TO64(&S->t[0]);
	blake2b_uint64 t1 = U8TO64(&S->t[8]);

	blake2b_uint64 h[8];
	blake2b_uint64 v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
	unsigned char buffer[128];

	size_t i;

	if (f0) {
		memset(buffer, 0, sizeof(buffer));
		memcpy(buffer, in, bytes);
		in = buffer;
	}

	for (i = 0; i < 8; i++)
		h[i] = U8TO64(&S->h[i * 8]);

	while (1) {
		blake2b_uint64 m[16];

		t0 += inc;
		if (t0 < inc)
			t1 += 1;

		for (i = 0; i < 16; i++)
			m[i] = U8TO64(in + (i * 8));

		v0 = h[0];
		v1 = h[1];
		v2 = h[2];
		v3 = h[3];
		v4 = h[4];
		v5 = h[5];
		v6 = h[6];
		v7 = h[7];
		v8 = w8;
		v9 = w9;
		v10 = w10;
		v11 = w11;
		v12 = w12 ^ t0;
		v13 = w13 ^ t1;
		v14 = w14;
		v15 = w15;

		#define G(r,x,a,b,c,d)                       \
			a += b + m[blake2b_sigma[r][2*x+0]]; \
			d = ROTR64(d ^ a, 32);               \
			c += d;                              \
			b = ROTR64(b ^ c, 24);               \
			a += b + m[blake2b_sigma[r][2*x+1]]; \
			d = ROTR64(d ^ a, 16);               \
			c += d;                              \
			b = ROTR64(b ^ c, 63);

		for (i = 0; i < 12; i++) {
			G(i,0,v0,v4,v8,v12);
			G(i,1,v1,v5,v9,v13);
			G(i,2,v2,v6,v10,v14);
			G(i,3,v3,v7,v11,v15);
			G(i,4,v0,v5,v10,v15);
			G(i,5,v1,v6,v11,v12);
			G(i,6,v2,v7,v8,v13);
			G(i,7,v3,v4,v9,v14);
		}

		h[0] ^= (v0 ^ v8);
		h[1] ^= (v1 ^ v9);
		h[2] ^= (v2 ^ v10);
		h[3] ^= (v3 ^ v11);
		h[4] ^= (v4 ^ v12);
		h[5] ^= (v5 ^ v13);
		h[6] ^= (v6 ^ v14);
		h[7] ^= (v7 ^ v15);

		if (bytes <= 128)
			break;
		in += stride;
		bytes -= 128;
	}

	for (i = 0; i < 8; i++)
		U64TO8(&S->h[i * 8], h[i]);
	U64TO8(&S->t[0], t0);
	U64TO8(&S->t[8], t1);
}


#elif defined(HAVE_INT32)
	#define BLAKE2B_GENERIC BLAKE2B_IMPL(CPUID_GENERIC, "generic/32", ref)
	#include "blake2b/blake2b_ref-32.inc"
#elif defined(HAVE_INT16)
	#define BLAKE2B_GENERIC BLAKE2B_IMPL(CPUID_GENERIC, "generic/16", ref)
	#include "blake2b/blake2b_ref-16.inc"
#else
	#define BLAKE2B_GENERIC BLAKE2B_IMPL(CPUID_GENERIC, "generic/8", ref)
	#include "blake2b/blake2b_ref-8.inc"
#endif


/* list implemenations from most optimized to least, with generic as the last entry */
static const blake2b_impl_t blake2b_list[] = {
	/* x86 */
	#if defined(BLAKE2B_AVX2)
		BLAKE2B_AVX2,
	#endif
	#if defined(BLAKE2B_XOP)
		BLAKE2B_XOP,
	#endif
	#if defined(BLAKE2B_AVX)
		BLAKE2B_AVX,
	#endif
	#if defined(BLAKE2B_SSSE3)
		BLAKE2B_SSSE3,
	#endif
	#if defined(BLAKE2B_SSE2)
		BLAKE2B_SSE2,
	#endif
	#if defined(BLAKE2B_X86)
		BLAKE2B_X86,
	#endif

	/* arm */
	#if defined(BLAKE2B_NEON)
		BLAKE2B_NEON,
	#endif
	#if defined(BLAKE2B_ARMv6)
		BLAKE2B_ARMv6,
	#endif

	BLAKE2B_GENERIC
};

BLAKE2B_DECLARE(bootup)

static const blake2b_impl_t blake2b_bootup_impl = {
	CPUID_GENERIC,
	NULL,
	blake2b_blocks_bootup
};

static const blake2b_impl_t *blake2b_opt = &blake2b_bootup_impl;


/* is the pointer not aligned on a word boundary? */
static int
blake2b_not_aligned(const void *p) {
#if !defined(CPU_8BITS)
	return ((size_t)p & (sizeof(size_t) - 1)) != 0;
#else
	return 0;
#endif
}

static const union endian_test_t {
	unsigned char b[2];
	unsigned short s;
} blake2b_endian_test = {{1, 0}};

/* copy the hash from the internal state */
static void
blake2b_store_hash(blake2b_state_internal *state, unsigned char *hash) {
	if (blake2b_endian_test.s == 0x0001) {
		memcpy(hash, state->h, 64);
	} else {
		size_t i, j;
		for (i = 0; i < 8; i++, hash += 8) {
			for (j = 0; j < 8; j++)
				hash[7 - j] = state->h[(i * 8) + j];
		}
	}
}

/*
	Blake2b initialization constants for serial mode:

	0x6a09e667f3bcc908 ^ 0x0000000001010040;
	0xbb67ae8584caa73b
	0x3c6ef372fe94f82b
	0xa54ff53a5f1d36f1
	0x510e527fade682d1
	0x9b05688c2b3e6c1f
	0x1f83d9abfb41bd6b
	0x5be0cd19137e2179
*/

static const unsigned char blake2b_init_le[64] = {
	0x08^0x40,0xc9^0x00,0xbc^0x01,0xf3^0x01,0x67^0x00,0xe6^0x00,0x09^0x00,0x6a^0x00,
	0x3b,0xa7,0xca,0x84,0x85,0xae,0x67,0xbb,
	0x2b,0xf8,0x94,0xfe,0x72,0xf3,0x6e,0x3c,
	0xf1,0x36,0x1d,0x5f,0x3a,0xf5,0x4f,0xa5,
	0xd1,0x82,0xe6,0xad,0x7f,0x52,0x0e,0x51,
	0x1f,0x6c,0x3e,0x2b,0x8c,0x68,0x05,0x9b,
	0x6b,0xbd,0x41,0xfb,0xab,0xd9,0x83,0x1f,
	0x79,0x21,0x7e,0x13,0x19,0xcd,0xe0,0x5b,
};

/*
static const unsigned char blake2b_init_be[64] = {
	0x6a^0x00,0x09^0x00,0xe6^0x00,0x67^0x00,0xf3^0x01,0xbc^0x01,0xc9^0x00,0x08^0x40,
	0xbb,0x67,0xae,0x85,0x84,0xca,0xa7,0x3b,
	0x3c,0x6e,0xf3,0x72,0xfe,0x94,0xf8,0x2b,
	0xa5,0x4f,0xf5,0x3a,0x5f,0x1d,0x36,0xf1,
	0x51,0x0e,0x52,0x7f,0xad,0xe6,0x82,0xd1,
	0x9b,0x05,0x68,0x8c,0x2b,0x3e,0x6c,0x1f,
	0x1f,0x83,0xd9,0xab,0xfb,0x41,0xbd,0x6b,
	0x5b,0xe0,0xcd,0x19,0x13,0x7e,0x21,0x79,
};
*/

/* initialize the state in serial mode */
LIB_PUBLIC void
blake2b_init(blake2b_state *S) {
	blake2b_state_internal *state = (blake2b_state_internal *)S;
	/* assume state is fully little endian for now */
	memcpy(state, blake2b_init_le, 64);
	/*memcpy(state, (blake2b_endian_test.s == 1) ? blake2b_init_le : blake2b_init_be, 64);*/
	memset(state->t, 0, sizeof(state->t) + sizeof(state->f) + sizeof(state->leftover));
}

/* initialized the state in serial-key'd mode */
LIB_PUBLIC void
blake2b_keyed_init(blake2b_state *S, const unsigned char *key, size_t keylen) {
	unsigned char k[BLAKE2B_BLOCKBYTES] = {0};
	if (keylen > BLAKE2B_KEYBYTES) {
		//fprintf(stderr, "key size larger than %u passed to blake2b_keyed_init", BLAKE2B_KEYBYTES);
		exit(-1);
	} else {
		memcpy(k, key, keylen);
	}
	blake2b_init(S);
	blake2b_update(S, k, BLAKE2B_BLOCKBYTES);
}

/* hash inlen bytes from in, which may or may not be word aligned, returns the number of bytes used */
static size_t
blake2b_consume_blocks(blake2b_state_internal *state, const unsigned char *in, size_t inlen) {
	/* always need to leave at least BLAKE2B_BLOCKBYTES in case this is the final block */
	if (inlen <= BLAKE2B_BLOCKBYTES)
		return 0;

	inlen = ((inlen - 1) & ~(BLAKE2B_BLOCKBYTES - 1));
	if (blake2b_not_aligned(in)) {
		/* copy the unaligned data to an aligned buffer and process in chunks */
		unsigned char buffer[16 * BLAKE2B_BLOCKBYTES];
		size_t left = inlen;
		while (left) {
			const size_t bytes = (left > sizeof(buffer)) ? sizeof(buffer) : left;
			memcpy(buffer, in, bytes);
			blake2b_opt->blake2b_blocks(state, buffer, bytes, BLAKE2B_STRIDE);
			in += bytes;
			left -= bytes;
		}
	} else {
		/* word aligned, handle directly */
		blake2b_opt->blake2b_blocks(state, in, inlen, BLAKE2B_STRIDE);
	}

	return inlen;
}

/* update the hash state with inlen bytes from in */
LIB_PUBLIC void
blake2b_update(blake2b_state *S, const unsigned char *in, size_t inlen) {
	blake2b_state_internal *state = (blake2b_state_internal *)S;
	size_t bytes;

	/* blake2b processes the final <=BLOCKBYTES bytes raw, so we can only update if there are at least BLOCKBYTES+1 bytes available */
	if ((state->leftover + inlen) > BLAKE2B_BLOCKBYTES) {
		/* handle the previous data, we know there is enough for at least one block */
		if (state->leftover) {
			bytes = (BLAKE2B_BLOCKBYTES - state->leftover);
			memcpy(state->buffer + state->leftover, in, bytes);
			in += bytes;
			inlen -= bytes;
			state->leftover = 0;
			blake2b_opt->blake2b_blocks(state, state->buffer, BLAKE2B_BLOCKBYTES, BLAKE2B_STRIDE_NONE);
		}

		/* handle the direct data (if any) */
		bytes = blake2b_consume_blocks(state, in, inlen);
		inlen -= bytes;
		in += bytes;
	}

	/* handle leftover data */
	memcpy(state->buffer + state->leftover, in, inlen);
	state->leftover += inlen;
}

/* finalize the hash */
LIB_PUBLIC void
blake2b_final(blake2b_state *S, unsigned char *hash) {
	blake2b_state_internal *state = (blake2b_state_internal *)S;
	memset(&state->f[0], 0xff, 8);
	blake2b_opt->blake2b_blocks(state, state->buffer, state->leftover, BLAKE2B_STRIDE_NONE);
	blake2b_store_hash(state, hash);
}

/* one-shot hash inlen bytes from in */
LIB_PUBLIC void
blake2b(unsigned char *hash, const unsigned char *in, size_t inlen) {
	blake2b_state S;
	blake2b_state_internal *state = (blake2b_state_internal *)&S;
	size_t bytes;

	blake2b_init(&S);

	/* hash until <= 128 bytes left */
	bytes = blake2b_consume_blocks(state, in, inlen);
	in += bytes;
	inlen -= bytes;

	/* final block */
	memset(&state->f[0], 0xff, 8);
	blake2b_opt->blake2b_blocks(state, in, inlen, BLAKE2B_STRIDE_NONE);
	blake2b_store_hash(state, hash);
}

LIB_PUBLIC void
blake2b_keyed(unsigned char *hash, const unsigned char *in, size_t inlen, const unsigned char *key, size_t keylen) {
	blake2b_state S;
	blake2b_keyed_init(&S, key, keylen);
	blake2b_update(&S, in, inlen);
	blake2b_final(&S, hash);
}



/* initialize the state in serial mode, setting the counter to 0xffffffffffffffff:0xffffffffffffffff */
static void
blake2b_init_test(blake2b_state *S) {
	blake2b_state_internal *state = (blake2b_state_internal *)S;
	/*memcpy(state, (blake2b_endian_test.s == 1) ? blake2b_init_le : blake2b_init_be, 64);*/
	memcpy(state, blake2b_init_le, 64);
	memset(state->t, 0xff, sizeof(state->t));
	memset(state->f, 0x00, sizeof(state->f));
	state->leftover = 0;
}

/* hashes with the counter starting at 0xffffffffffffffff:0xffffffffffffffff */
static void
blake2b_test(unsigned char *hash, const unsigned char *in, size_t inlen) {
	blake2b_state S;
	blake2b_state_internal *state = (blake2b_state_internal *)&S;
	size_t bytes;

	blake2b_init_test(&S);

	/* hash until <= 128 bytes left */
	bytes = blake2b_consume_blocks(state, in, inlen);
	in += bytes;
	inlen -= bytes;

	/* final block */
	memset(&state->f[0], 0xff, 8);
	blake2b_opt->blake2b_blocks(state, in, inlen, BLAKE2B_STRIDE_NONE);
	blake2b_store_hash(state, hash);
}

/* hash the hashes of [],[0],[0,1],[0,1,2]..[0,1,..511] with the counter starting at 0xffffffffffffffff */
static int
blake2b_test_impl(const void *impl) {
  //TODO: testing just returning 0 here
  return 0;
	static const unsigned char expected[BLAKE2B_HASHBYTES] = {
		0xf8,0xc6,0x6d,0x48,0xd1,0xbf,0x16,0xe5,0x9d,0x4d,0x7a,0x02,0xe1,0x86,0x42,0x1e,
		0x41,0xb5,0x44,0xc6,0xb5,0xf2,0xc2,0x3f,0x18,0x97,0xaa,0x47,0x20,0x00,0x06,0xfa,
		0xc9,0x65,0xad,0xb4,0xde,0x90,0x52,0x9d,0x79,0x56,0xe9,0xb4,0xf8,0x46,0x66,0x19,
		0x5e,0xaa,0xeb,0xad,0xfb,0xdc,0x8e,0xcc,0x9b,0x62,0xa2,0xb0,0xc2,0xa6,0xd4,0xaa,
	};
	static size_t len = 512;
	blake2b_state st;
	unsigned char buf[512], hash[BLAKE2B_HASHBYTES];
	size_t i;

	blake2b_opt = (blake2b_impl_t *)impl;

	for(i = 0; i < len; i++)
		buf[i] = (unsigned char)i;

	blake2b_init_test(&st);
	for(i = 0; i <= len; i++) {
		blake2b_test(hash, buf, i);
		blake2b_update(&st, hash, BLAKE2B_HASHBYTES);
	}
	blake2b_final(&st, hash);
	return memcmp(expected, hash, BLAKE2B_HASHBYTES);
}

LIB_PUBLIC int
blake2b_startup(void) {
	const void *opt = LOCAL_PREFIX(cpu_select)(blake2b_list, sizeof(blake2b_impl_t), blake2b_test_impl);
	if (opt) {
		blake2b_opt = (const blake2b_impl_t *)opt;
		return 0;
	} else {
		return 1;
	}
}

void
blake2b_blocks_bootup(blake2b_state_internal *state, const unsigned char *in, size_t bytes, size_t stride) {
	if (blake2b_startup() == 0) {
		blake2b_opt->blake2b_blocks(state, in, bytes, stride);
	} else {
		//fprintf(stderr, "blake2b failed to startup\n");
		exit(1);
	}
}





void _main(){

  int length = eth2_blockDataSize(); //length in bytes
  unsigned char* in = (unsigned char*) malloc( length * sizeof(unsigned char));
  eth2_blockDataCopy( (i32ptr*)in, 0, length ); //get data to hash into memory
  unsigned char out[64];

  blake2b(out, in, length);

  eth2_savePostStateRoot((i32ptr*)out);

}

