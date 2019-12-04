/*
Implementation by the Keccak, Keyak and Ketje Teams, namely, Guido Bertoni,
Joan Daemen, Michaël Peeters, Gilles Van Assche and Ronny Van Keer, hereby
denoted as "the implementer".
For more information, feedback or questions, please refer to our websites:
http://keccak.noekeon.org/
http://keyak.noekeon.org/
http://ketje.noekeon.org/
To the extent possible under law, the implementer has waived all copyright
and related or neighboring rights to the source code in this file.
http://creativecommons.org/publicdomain/zero/1.0/
*/



#include "ewasm.h"





// align.h
//#define ALIGN(x) __attribute__ ((aligned(x)))
#define ALIGN(x)




//#include "brg_endian.h"
#define IS_BIG_ENDIAN      4321 /* byte 0 is most significant (mc68k) */
#define IS_LITTLE_ENDIAN   1234 /* byte 0 is least significant (i386) */
#define PLATFORM_BYTE_ORDER IS_LITTLE_ENDIAN




//#include "KeccakP-1600-opt64-config.h"
//#define KeccakP1600_implementation_config "lane complementing, all rounds unrolled"
#define KeccakP1600_fullUnrolling
#define KeccakP1600_useLaneComplementing



// from #include "KeccakP-1600-opt64.c", more below
#if defined(KeccakP1600_useLaneComplementing)
#define UseBebigokimisa
#endif





//#include "KeccakP-1600-SnP-opt64.h"

//#define KeccakP1600_implementation      "generic 64-bit optimized implementation (" KeccakP1600_implementation_config ")"
#define KeccakP1600_stateSizeInBytes    200
#define KeccakP1600_stateAlignment      8
#define KeccakF1600_FastLoop_supported

#define KeccakP1600_StaticInitialize()
void KeccakP1600_Initialize(void *state);
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
#define KeccakP1600_AddByte(state, byte, offset) \
    ((unsigned char*)(state))[(offset)] ^= (byte)
#else
void KeccakP1600_AddByte(void *state, unsigned char data, unsigned int offset);
#endif
void KeccakP1600_AddBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length);
void KeccakP1600_OverwriteBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length);
void KeccakP1600_OverwriteWithZeroes(void *state, unsigned int byteCount);
void KeccakP1600_Permute_12rounds(void *state);
void KeccakP1600_Permute_24rounds(void *state);
void KeccakP1600_ExtractBytes(const void *state, unsigned char *data, unsigned int offset, unsigned int length);
void KeccakP1600_ExtractAndAddBytes(const void *state, const unsigned char *input, unsigned char *output, unsigned int offset, unsigned int length);
size_t KeccakF1600_FastLoop_Absorb(void *state, unsigned int laneCount, const unsigned char *data, size_t dataByteLen);





//#include "KeccakSponge.h"
#define KCP_DeclareSpongeStructure(prefix, size, alignment) \
    ALIGN(alignment) typedef struct prefix##_SpongeInstanceStruct { \
        unsigned char state[size]; \
        unsigned int rate; \
        unsigned int byteIOIndex; \
        int squeezing; \
    } prefix##_SpongeInstance;

#define KCP_DeclareSpongeFunctions(prefix) \
    int prefix##_Sponge(unsigned int rate, unsigned int capacity, const unsigned char *input, size_t inputByteLen, unsigned char suffix, unsigned char *output, size_t outputByteLen); \
    int prefix##_SpongeInitialize(prefix##_SpongeInstance *spongeInstance, unsigned int rate, unsigned int capacity); \
    int prefix##_SpongeAbsorb(prefix##_SpongeInstance *spongeInstance, const unsigned char *data, size_t dataByteLen); \
    int prefix##_SpongeAbsorbLastFewBits(prefix##_SpongeInstance *spongeInstance, unsigned char delimitedData); \
    int prefix##_SpongeSqueeze(prefix##_SpongeInstance *spongeInstance, unsigned char *data, size_t dataByteLen);

KCP_DeclareSpongeStructure(KeccakWidth1600, KeccakP1600_stateSizeInBytes, KeccakP1600_stateAlignment)
KCP_DeclareSpongeFunctions(KeccakWidth1600)




//#include "KeccakHash.h"
typedef unsigned char BitSequence;
typedef size_t DataLength;
typedef enum { SUCCESS = 0, FAIL = 1, BAD_HASHLEN = 2 } HashReturn;

typedef struct {
    KeccakWidth1600_SpongeInstance sponge;
    unsigned int fixedOutputLength;
    unsigned char delimitedSuffix;
} Keccak_HashInstance;









//#include "KeccakSponge.c"
    #define prefix KeccakWidth1600
    #define SnP KeccakP1600
    #define SnP_width 1600
    #define SnP_Permute KeccakP1600_Permute_24rounds
    #if defined(KeccakF1600_FastLoop_supported)
        #define SnP_FastLoop_Absorb KeccakF1600_FastLoop_Absorb
    #endif
//        #include "KeccakSponge.inc"


//#KeccakSponge.inc
#define JOIN0(a, b)                     a ## b
#define JOIN(a, b)                      JOIN0(a, b)

#define Sponge                          JOIN(prefix, _Sponge)
#define SpongeInstance                  JOIN(prefix, _SpongeInstance)
#define SpongeInitialize                JOIN(prefix, _SpongeInitialize)
#define SpongeAbsorb                    JOIN(prefix, _SpongeAbsorb)
#define SpongeAbsorbLastFewBits         JOIN(prefix, _SpongeAbsorbLastFewBits)
#define SpongeSqueeze                   JOIN(prefix, _SpongeSqueeze)

#define SnP_stateSizeInBytes            JOIN(SnP, _stateSizeInBytes)
#define SnP_stateAlignment              JOIN(SnP, _stateAlignment)
#define SnP_StaticInitialize            JOIN(SnP, _StaticInitialize)
#define SnP_Initialize                  JOIN(SnP, _Initialize)
#define SnP_AddByte                     JOIN(SnP, _AddByte)
#define SnP_AddBytes                    JOIN(SnP, _AddBytes)
#define SnP_ExtractBytes                JOIN(SnP, _ExtractBytes)

int Sponge(unsigned int rate, unsigned int capacity, const unsigned char *input, size_t inputByteLen, unsigned char suffix, unsigned char *output, size_t outputByteLen)
{
    ALIGN(SnP_stateAlignment) unsigned char state[SnP_stateSizeInBytes];
    unsigned int partialBlock;
    const unsigned char *curInput = input;
    unsigned char *curOutput = output;
    unsigned int rateInBytes = rate/8;

    if (rate+capacity != SnP_width)
        return 1;
    if ((rate <= 0) || (rate > SnP_width) || ((rate % 8) != 0))
        return 1;
    if (suffix == 0)
        return 1;

    /* Initialize the state */

    SnP_StaticInitialize();
    SnP_Initialize(state);

    /* First, absorb whole blocks */

#ifdef SnP_FastLoop_Absorb
    if (((rateInBytes % (SnP_width/200)) == 0) && (inputByteLen >= rateInBytes)) {
        /* fast lane: whole lane rate */

        size_t j;
        j = SnP_FastLoop_Absorb(state, rateInBytes/(SnP_width/200), curInput, inputByteLen);
        curInput += j;
        inputByteLen -= j;
    }
#endif
    while(inputByteLen >= (size_t)rateInBytes) {
        #ifdef KeccakReference
        displayBytes(1, "Block to be absorbed", curInput, rateInBytes);
        #endif
        SnP_AddBytes(state, curInput, 0, rateInBytes);
        SnP_Permute(state);
        curInput += rateInBytes;
        inputByteLen -= rateInBytes;
    }

    /* Then, absorb what remains */

    partialBlock = (unsigned int)inputByteLen;
    #ifdef KeccakReference
    displayBytes(1, "Block to be absorbed (part)", curInput, partialBlock);
    #endif
    SnP_AddBytes(state, curInput, 0, partialBlock);

    /* Finally, absorb the suffix */

    #ifdef KeccakReference
    {
        unsigned char delimitedData1[1];
        delimitedData1[0] = suffix;
        displayBytes(1, "Block to be absorbed (last few bits + first bit of padding)", delimitedData1, 1);
    }
    #endif
    /* Last few bits, whose delimiter coincides with first bit of padding */

    SnP_AddByte(state, suffix, partialBlock);
    /* If the first bit of padding is at position rate-1, we need a whole new block for the second bit of padding */

    if ((suffix >= 0x80) && (partialBlock == (rateInBytes-1)))
        SnP_Permute(state);
    /* Second bit of padding */

    SnP_AddByte(state, 0x80, rateInBytes-1);
    #ifdef KeccakReference
    {
        unsigned char block[SnP_width/8];
        memset(block, 0, SnP_width/8);
        block[rateInBytes-1] = 0x80;
        displayBytes(1, "Second bit of padding", block, rateInBytes);
    }
    #endif
    SnP_Permute(state);
    #ifdef KeccakReference
    displayText(1, "--- Switching to squeezing phase ---");
    #endif

    /* First, output whole blocks */

    while(outputByteLen > (size_t)rateInBytes) {
        SnP_ExtractBytes(state, curOutput, 0, rateInBytes);
        SnP_Permute(state);
        #ifdef KeccakReference
        displayBytes(1, "Squeezed block", curOutput, rateInBytes);
        #endif
        curOutput += rateInBytes;
        outputByteLen -= rateInBytes;
    }

    /* Finally, output what remains */

    partialBlock = (unsigned int)outputByteLen;
    SnP_ExtractBytes(state, curOutput, 0, partialBlock);
    #ifdef KeccakReference
    displayBytes(1, "Squeezed block (part)", curOutput, partialBlock);
    #endif

    return 0;
}

/* ---------------------------------------------------------------- */
/* ---------------------------------------------------------------- */
/* ---------------------------------------------------------------- */

int SpongeInitialize(SpongeInstance *instance, unsigned int rate, unsigned int capacity)
{
    if (rate+capacity != SnP_width)
        return 1;
    if ((rate <= 0) || (rate > SnP_width) || ((rate % 8) != 0))
        return 1;
    SnP_StaticInitialize();
    SnP_Initialize(instance->state);
    instance->rate = rate;
    instance->byteIOIndex = 0;
    instance->squeezing = 0;

    return 0;
}

/* ---------------------------------------------------------------- */

int SpongeAbsorb(SpongeInstance *instance, const unsigned char *data, size_t dataByteLen)
{
    size_t i, j;
    unsigned int partialBlock;
    const unsigned char *curData;
    unsigned int rateInBytes = instance->rate/8;

    if (instance->squeezing)
        return 1; /* Too late for additional input */


    i = 0;
    curData = data;
    while(i < dataByteLen) {
        if ((instance->byteIOIndex == 0) && (dataByteLen >= (i + rateInBytes))) {
#ifdef SnP_FastLoop_Absorb
            /* processing full blocks first */

            if ((rateInBytes % (SnP_width/200)) == 0) {
                /* fast lane: whole lane rate */

                j = SnP_FastLoop_Absorb(instance->state, rateInBytes/(SnP_width/200), curData, dataByteLen - i);
                i += j;
                curData += j;
            }
            else {
#endif
                for(j=dataByteLen-i; j>=rateInBytes; j-=rateInBytes) {
                    #ifdef KeccakReference
                    displayBytes(1, "Block to be absorbed", curData, rateInBytes);
                    #endif
                    SnP_AddBytes(instance->state, curData, 0, rateInBytes);
                    SnP_Permute(instance->state);
                    curData+=rateInBytes;
                }
                i = dataByteLen - j;
#ifdef SnP_FastLoop_Absorb
            }
#endif
        }
        else {
            /* normal lane: using the message queue */

            partialBlock = (unsigned int)(dataByteLen - i);
            if (partialBlock+instance->byteIOIndex > rateInBytes)
                partialBlock = rateInBytes-instance->byteIOIndex;
            #ifdef KeccakReference
            displayBytes(1, "Block to be absorbed (part)", curData, partialBlock);
            #endif
            i += partialBlock;

            SnP_AddBytes(instance->state, curData, instance->byteIOIndex, partialBlock);
            curData += partialBlock;
            instance->byteIOIndex += partialBlock;
            if (instance->byteIOIndex == rateInBytes) {
                SnP_Permute(instance->state);
                instance->byteIOIndex = 0;
            }
        }
    }
    return 0;
}

/* ---------------------------------------------------------------- */

int SpongeAbsorbLastFewBits(SpongeInstance *instance, unsigned char delimitedData)
{
    unsigned int rateInBytes = instance->rate/8;

    if (delimitedData == 0)
        return 1;
    if (instance->squeezing)
        return 1; /* Too late for additional input */


    #ifdef KeccakReference
    {
        unsigned char delimitedData1[1];
        delimitedData1[0] = delimitedData;
        displayBytes(1, "Block to be absorbed (last few bits + first bit of padding)", delimitedData1, 1);
    }
    #endif
    /* Last few bits, whose delimiter coincides with first bit of padding */

    SnP_AddByte(instance->state, delimitedData, instance->byteIOIndex);
    /* If the first bit of padding is at position rate-1, we need a whole new block for the second bit of padding */

    if ((delimitedData >= 0x80) && (instance->byteIOIndex == (rateInBytes-1)))
        SnP_Permute(instance->state);
    /* Second bit of padding */

    SnP_AddByte(instance->state, 0x80, rateInBytes-1);
    #ifdef KeccakReference
    {
        unsigned char block[SnP_width/8];
        memset(block, 0, SnP_width/8);
        block[rateInBytes-1] = 0x80;
        displayBytes(1, "Second bit of padding", block, rateInBytes);
    }
    #endif
    SnP_Permute(instance->state);
    instance->byteIOIndex = 0;
    instance->squeezing = 1;
    #ifdef KeccakReference
    displayText(1, "--- Switching to squeezing phase ---");
    #endif
    return 0;
}

/* ---------------------------------------------------------------- */

int SpongeSqueeze(SpongeInstance *instance, unsigned char *data, size_t dataByteLen)
{
    size_t i, j;
    unsigned int partialBlock;
    unsigned int rateInBytes = instance->rate/8;
    unsigned char *curData;

    if (!instance->squeezing)
        SpongeAbsorbLastFewBits(instance, 0x01);

    i = 0;
    curData = data;
    while(i < dataByteLen) {
        if ((instance->byteIOIndex == rateInBytes) && (dataByteLen >= (i + rateInBytes))) {
            for(j=dataByteLen-i; j>=rateInBytes; j-=rateInBytes) {
                SnP_Permute(instance->state);
                SnP_ExtractBytes(instance->state, curData, 0, rateInBytes);
                #ifdef KeccakReference
                displayBytes(1, "Squeezed block", curData, rateInBytes);
                #endif
                curData+=rateInBytes;
            }
            i = dataByteLen - j;
        }
        else {
            /* normal lane: using the message queue */

            if (instance->byteIOIndex == rateInBytes) {
                SnP_Permute(instance->state);
                instance->byteIOIndex = 0;
            }
            partialBlock = (unsigned int)(dataByteLen - i);
            if (partialBlock+instance->byteIOIndex > rateInBytes)
                partialBlock = rateInBytes-instance->byteIOIndex;
            i += partialBlock;

            SnP_ExtractBytes(instance->state, curData, instance->byteIOIndex, partialBlock);
            #ifdef KeccakReference
            displayBytes(1, "Squeezed block (part)", curData, partialBlock);
            #endif
            curData += partialBlock;
            instance->byteIOIndex += partialBlock;
        }
    }
    return 0;
}

/* ---------------------------------------------------------------- */

#undef Sponge
#undef SpongeInstance
#undef SpongeInitialize
#undef SpongeAbsorb
#undef SpongeAbsorbLastFewBits
#undef SpongeSqueeze
#undef SnP_stateSizeInBytes
#undef SnP_stateAlignment
#undef SnP_StaticInitialize
#undef SnP_Initialize
#undef SnP_AddByte
#undef SnP_AddBytes
#undef SnP_ExtractBytes



//#include "KeccakSponge.c" continued
    #undef prefix
    #undef SnP
    #undef SnP_width
    #undef SnP_Permute
    #undef SnP_FastLoop_Absorb





//#include "KeccakHash.c"

/* ---------------------------------------------------------------- */

HashReturn Keccak_HashInitialize(Keccak_HashInstance *instance, unsigned int rate, unsigned int capacity, unsigned int hashbitlen, unsigned char delimitedSuffix)
{
    HashReturn result;

    if (delimitedSuffix == 0)
        return FAIL;
    result = (HashReturn)KeccakWidth1600_SpongeInitialize(&instance->sponge, rate, capacity);
    if (result != SUCCESS)
        return result;
    instance->fixedOutputLength = hashbitlen;
    instance->delimitedSuffix = delimitedSuffix;
    return SUCCESS;
}

/* ---------------------------------------------------------------- */

HashReturn Keccak_HashUpdate(Keccak_HashInstance *instance, const BitSequence *data, DataLength databitlen)
{
    if ((databitlen % 8) == 0)
        return (HashReturn)KeccakWidth1600_SpongeAbsorb(&instance->sponge, data, databitlen/8);
    else {
        HashReturn ret = (HashReturn)KeccakWidth1600_SpongeAbsorb(&instance->sponge, data, databitlen/8);
        if (ret == SUCCESS) {
            /* The last partial byte is assumed to be aligned on the least significant bits */

            unsigned char lastByte = data[databitlen/8];
            /* Concatenate the last few bits provided here with those of the suffix */


            unsigned short delimitedLastBytes = (unsigned short)((unsigned short)lastByte | ((unsigned short)instance->delimitedSuffix << (databitlen % 8)));
            if ((delimitedLastBytes & 0xFF00) == 0x0000) {
                instance->delimitedSuffix = delimitedLastBytes & 0xFF;
            }
            else {
                unsigned char oneByte[1];
                oneByte[0] = delimitedLastBytes & 0xFF;
                ret = (HashReturn)KeccakWidth1600_SpongeAbsorb(&instance->sponge, oneByte, 1);
                instance->delimitedSuffix = (delimitedLastBytes >> 8) & 0xFF;
            }
        }
        return ret;
    }
}

/* ---------------------------------------------------------------- */

HashReturn Keccak_HashFinal(Keccak_HashInstance *instance, BitSequence *hashval)
{
    HashReturn ret = (HashReturn)KeccakWidth1600_SpongeAbsorbLastFewBits(&instance->sponge, instance->delimitedSuffix);
    if (ret == SUCCESS)
        return (HashReturn)KeccakWidth1600_SpongeSqueeze(&instance->sponge, hashval, instance->fixedOutputLength/8);
    else
        return ret;
}

/* ---------------------------------------------------------------- */

HashReturn Keccak_HashSqueeze(Keccak_HashInstance *instance, BitSequence *data, DataLength databitlen)
{
    if ((databitlen % 8) != 0)
        return FAIL;
    return (HashReturn)KeccakWidth1600_SpongeSqueeze(&instance->sponge, data, databitlen/8);
}







//#include "KeccakP-1600-64.macros"
#define declareABCDE \
    UINT64 Aba, Abe, Abi, Abo, Abu; \
    UINT64 Aga, Age, Agi, Ago, Agu; \
    UINT64 Aka, Ake, Aki, Ako, Aku; \
    UINT64 Ama, Ame, Ami, Amo, Amu; \
    UINT64 Asa, Ase, Asi, Aso, Asu; \
    UINT64 Bba, Bbe, Bbi, Bbo, Bbu; \
    UINT64 Bga, Bge, Bgi, Bgo, Bgu; \
    UINT64 Bka, Bke, Bki, Bko, Bku; \
    UINT64 Bma, Bme, Bmi, Bmo, Bmu; \
    UINT64 Bsa, Bse, Bsi, Bso, Bsu; \
    UINT64 Ca, Ce, Ci, Co, Cu; \
    UINT64 Da, De, Di, Do, Du; \
    UINT64 Eba, Ebe, Ebi, Ebo, Ebu; \
    UINT64 Ega, Ege, Egi, Ego, Egu; \
    UINT64 Eka, Eke, Eki, Eko, Eku; \
    UINT64 Ema, Eme, Emi, Emo, Emu; \
    UINT64 Esa, Ese, Esi, Eso, Esu; \

#define prepareTheta \
    Ca = Aba^Aga^Aka^Ama^Asa; \
    Ce = Abe^Age^Ake^Ame^Ase; \
    Ci = Abi^Agi^Aki^Ami^Asi; \
    Co = Abo^Ago^Ako^Amo^Aso; \
    Cu = Abu^Agu^Aku^Amu^Asu; \

#ifdef UseBebigokimisa
/* --- Code for round, with prepare-theta (lane complementing pattern 'bebigokimisa') */

/* --- 64-bit lanes mapped to 64-bit words */

#define thetaRhoPiChiIotaPrepareTheta(i, A, E) \
    Da = Cu^ROL64(Ce, 1); \
    De = Ca^ROL64(Ci, 1); \
    Di = Ce^ROL64(Co, 1); \
    Do = Ci^ROL64(Cu, 1); \
    Du = Co^ROL64(Ca, 1); \
\
    A##ba ^= Da; \
    Bba = A##ba; \
    A##ge ^= De; \
    Bbe = ROL64(A##ge, 44); \
    A##ki ^= Di; \
    Bbi = ROL64(A##ki, 43); \
    A##mo ^= Do; \
    Bbo = ROL64(A##mo, 21); \
    A##su ^= Du; \
    Bbu = ROL64(A##su, 14); \
    E##ba =   Bba ^(  Bbe |  Bbi ); \
    E##ba ^= KeccakF1600RoundConstants[i]; \
    Ca = E##ba; \
    E##be =   Bbe ^((~Bbi)|  Bbo ); \
    Ce = E##be; \
    E##bi =   Bbi ^(  Bbo &  Bbu ); \
    Ci = E##bi; \
    E##bo =   Bbo ^(  Bbu |  Bba ); \
    Co = E##bo; \
    E##bu =   Bbu ^(  Bba &  Bbe ); \
    Cu = E##bu; \
\
    A##bo ^= Do; \
    Bga = ROL64(A##bo, 28); \
    A##gu ^= Du; \
    Bge = ROL64(A##gu, 20); \
    A##ka ^= Da; \
    Bgi = ROL64(A##ka, 3); \
    A##me ^= De; \
    Bgo = ROL64(A##me, 45); \
    A##si ^= Di; \
    Bgu = ROL64(A##si, 61); \
    E##ga =   Bga ^(  Bge |  Bgi ); \
    Ca ^= E##ga; \
    E##ge =   Bge ^(  Bgi &  Bgo ); \
    Ce ^= E##ge; \
    E##gi =   Bgi ^(  Bgo |(~Bgu)); \
    Ci ^= E##gi; \
    E##go =   Bgo ^(  Bgu |  Bga ); \
    Co ^= E##go; \
    E##gu =   Bgu ^(  Bga &  Bge ); \
    Cu ^= E##gu; \
\
    A##be ^= De; \
    Bka = ROL64(A##be, 1); \
    A##gi ^= Di; \
    Bke = ROL64(A##gi, 6); \
    A##ko ^= Do; \
    Bki = ROL64(A##ko, 25); \
    A##mu ^= Du; \
    Bko = ROL64(A##mu, 8); \
    A##sa ^= Da; \
    Bku = ROL64(A##sa, 18); \
    E##ka =   Bka ^(  Bke |  Bki ); \
    Ca ^= E##ka; \
    E##ke =   Bke ^(  Bki &  Bko ); \
    Ce ^= E##ke; \
    E##ki =   Bki ^((~Bko)&  Bku ); \
    Ci ^= E##ki; \
    E##ko = (~Bko)^(  Bku |  Bka ); \
    Co ^= E##ko; \
    E##ku =   Bku ^(  Bka &  Bke ); \
    Cu ^= E##ku; \
\
    A##bu ^= Du; \
    Bma = ROL64(A##bu, 27); \
    A##ga ^= Da; \
    Bme = ROL64(A##ga, 36); \
    A##ke ^= De; \
    Bmi = ROL64(A##ke, 10); \
    A##mi ^= Di; \
    Bmo = ROL64(A##mi, 15); \
    A##so ^= Do; \
    Bmu = ROL64(A##so, 56); \
    E##ma =   Bma ^(  Bme &  Bmi ); \
    Ca ^= E##ma; \
    E##me =   Bme ^(  Bmi |  Bmo ); \
    Ce ^= E##me; \
    E##mi =   Bmi ^((~Bmo)|  Bmu ); \
    Ci ^= E##mi; \
    E##mo = (~Bmo)^(  Bmu &  Bma ); \
    Co ^= E##mo; \
    E##mu =   Bmu ^(  Bma |  Bme ); \
    Cu ^= E##mu; \
\
    A##bi ^= Di; \
    Bsa = ROL64(A##bi, 62); \
    A##go ^= Do; \
    Bse = ROL64(A##go, 55); \
    A##ku ^= Du; \
    Bsi = ROL64(A##ku, 39); \
    A##ma ^= Da; \
    Bso = ROL64(A##ma, 41); \
    A##se ^= De; \
    Bsu = ROL64(A##se, 2); \
    E##sa =   Bsa ^((~Bse)&  Bsi ); \
    Ca ^= E##sa; \
    E##se = (~Bse)^(  Bsi |  Bso ); \
    Ce ^= E##se; \
    E##si =   Bsi ^(  Bso &  Bsu ); \
    Ci ^= E##si; \
    E##so =   Bso ^(  Bsu |  Bsa ); \
    Co ^= E##so; \
    E##su =   Bsu ^(  Bsa &  Bse ); \
    Cu ^= E##su; \
\

/* --- Code for round (lane complementing pattern 'bebigokimisa') */

/* --- 64-bit lanes mapped to 64-bit words */

#define thetaRhoPiChiIota(i, A, E) \
    Da = Cu^ROL64(Ce, 1); \
    De = Ca^ROL64(Ci, 1); \
    Di = Ce^ROL64(Co, 1); \
    Do = Ci^ROL64(Cu, 1); \
    Du = Co^ROL64(Ca, 1); \
\
    A##ba ^= Da; \
    Bba = A##ba; \
    A##ge ^= De; \
    Bbe = ROL64(A##ge, 44); \
    A##ki ^= Di; \
    Bbi = ROL64(A##ki, 43); \
    A##mo ^= Do; \
    Bbo = ROL64(A##mo, 21); \
    A##su ^= Du; \
    Bbu = ROL64(A##su, 14); \
    E##ba =   Bba ^(  Bbe |  Bbi ); \
    E##ba ^= KeccakF1600RoundConstants[i]; \
    E##be =   Bbe ^((~Bbi)|  Bbo ); \
    E##bi =   Bbi ^(  Bbo &  Bbu ); \
    E##bo =   Bbo ^(  Bbu |  Bba ); \
    E##bu =   Bbu ^(  Bba &  Bbe ); \
\
    A##bo ^= Do; \
    Bga = ROL64(A##bo, 28); \
    A##gu ^= Du; \
    Bge = ROL64(A##gu, 20); \
    A##ka ^= Da; \
    Bgi = ROL64(A##ka, 3); \
    A##me ^= De; \
    Bgo = ROL64(A##me, 45); \
    A##si ^= Di; \
    Bgu = ROL64(A##si, 61); \
    E##ga =   Bga ^(  Bge |  Bgi ); \
    E##ge =   Bge ^(  Bgi &  Bgo ); \
    E##gi =   Bgi ^(  Bgo |(~Bgu)); \
    E##go =   Bgo ^(  Bgu |  Bga ); \
    E##gu =   Bgu ^(  Bga &  Bge ); \
\
    A##be ^= De; \
    Bka = ROL64(A##be, 1); \
    A##gi ^= Di; \
    Bke = ROL64(A##gi, 6); \
    A##ko ^= Do; \
    Bki = ROL64(A##ko, 25); \
    A##mu ^= Du; \
    Bko = ROL64(A##mu, 8); \
    A##sa ^= Da; \
    Bku = ROL64(A##sa, 18); \
    E##ka =   Bka ^(  Bke |  Bki ); \
    E##ke =   Bke ^(  Bki &  Bko ); \
    E##ki =   Bki ^((~Bko)&  Bku ); \
    E##ko = (~Bko)^(  Bku |  Bka ); \
    E##ku =   Bku ^(  Bka &  Bke ); \
\
    A##bu ^= Du; \
    Bma = ROL64(A##bu, 27); \
    A##ga ^= Da; \
    Bme = ROL64(A##ga, 36); \
    A##ke ^= De; \
    Bmi = ROL64(A##ke, 10); \
    A##mi ^= Di; \
    Bmo = ROL64(A##mi, 15); \
    A##so ^= Do; \
    Bmu = ROL64(A##so, 56); \
    E##ma =   Bma ^(  Bme &  Bmi ); \
    E##me =   Bme ^(  Bmi |  Bmo ); \
    E##mi =   Bmi ^((~Bmo)|  Bmu ); \
    E##mo = (~Bmo)^(  Bmu &  Bma ); \
    E##mu =   Bmu ^(  Bma |  Bme ); \
\
    A##bi ^= Di; \
    Bsa = ROL64(A##bi, 62); \
    A##go ^= Do; \
    Bse = ROL64(A##go, 55); \
    A##ku ^= Du; \
    Bsi = ROL64(A##ku, 39); \
    A##ma ^= Da; \
    Bso = ROL64(A##ma, 41); \
    A##se ^= De; \
    Bsu = ROL64(A##se, 2); \
    E##sa =   Bsa ^((~Bse)&  Bsi ); \
    E##se = (~Bse)^(  Bsi |  Bso ); \
    E##si =   Bsi ^(  Bso &  Bsu ); \
    E##so =   Bso ^(  Bsu |  Bsa ); \
    E##su =   Bsu ^(  Bsa &  Bse ); \
\

#else /* UseBebigokimisa */

/* --- Code for round, with prepare-theta */

/* --- 64-bit lanes mapped to 64-bit words */

#define thetaRhoPiChiIotaPrepareTheta(i, A, E) \
    Da = Cu^ROL64(Ce, 1); \
    De = Ca^ROL64(Ci, 1); \
    Di = Ce^ROL64(Co, 1); \
    Do = Ci^ROL64(Cu, 1); \
    Du = Co^ROL64(Ca, 1); \
\
    A##ba ^= Da; \
    Bba = A##ba; \
    A##ge ^= De; \
    Bbe = ROL64(A##ge, 44); \
    A##ki ^= Di; \
    Bbi = ROL64(A##ki, 43); \
    A##mo ^= Do; \
    Bbo = ROL64(A##mo, 21); \
    A##su ^= Du; \
    Bbu = ROL64(A##su, 14); \
    E##ba =   Bba ^((~Bbe)&  Bbi ); \
    E##ba ^= KeccakF1600RoundConstants[i]; \
    Ca = E##ba; \
    E##be =   Bbe ^((~Bbi)&  Bbo ); \
    Ce = E##be; \
    E##bi =   Bbi ^((~Bbo)&  Bbu ); \
    Ci = E##bi; \
    E##bo =   Bbo ^((~Bbu)&  Bba ); \
    Co = E##bo; \
    E##bu =   Bbu ^((~Bba)&  Bbe ); \
    Cu = E##bu; \
\
    A##bo ^= Do; \
    Bga = ROL64(A##bo, 28); \
    A##gu ^= Du; \
    Bge = ROL64(A##gu, 20); \
    A##ka ^= Da; \
    Bgi = ROL64(A##ka, 3); \
    A##me ^= De; \
    Bgo = ROL64(A##me, 45); \
    A##si ^= Di; \
    Bgu = ROL64(A##si, 61); \
    E##ga =   Bga ^((~Bge)&  Bgi ); \
    Ca ^= E##ga; \
    E##ge =   Bge ^((~Bgi)&  Bgo ); \
    Ce ^= E##ge; \
    E##gi =   Bgi ^((~Bgo)&  Bgu ); \
    Ci ^= E##gi; \
    E##go =   Bgo ^((~Bgu)&  Bga ); \
    Co ^= E##go; \
    E##gu =   Bgu ^((~Bga)&  Bge ); \
    Cu ^= E##gu; \
\
    A##be ^= De; \
    Bka = ROL64(A##be, 1); \
    A##gi ^= Di; \
    Bke = ROL64(A##gi, 6); \
    A##ko ^= Do; \
    Bki = ROL64(A##ko, 25); \
    A##mu ^= Du; \
    Bko = ROL64(A##mu, 8); \
    A##sa ^= Da; \
    Bku = ROL64(A##sa, 18); \
    E##ka =   Bka ^((~Bke)&  Bki ); \
    Ca ^= E##ka; \
    E##ke =   Bke ^((~Bki)&  Bko ); \
    Ce ^= E##ke; \
    E##ki =   Bki ^((~Bko)&  Bku ); \
    Ci ^= E##ki; \
    E##ko =   Bko ^((~Bku)&  Bka ); \
    Co ^= E##ko; \
    E##ku =   Bku ^((~Bka)&  Bke ); \
    Cu ^= E##ku; \
\
    A##bu ^= Du; \
    Bma = ROL64(A##bu, 27); \
    A##ga ^= Da; \
    Bme = ROL64(A##ga, 36); \
    A##ke ^= De; \
    Bmi = ROL64(A##ke, 10); \
    A##mi ^= Di; \
    Bmo = ROL64(A##mi, 15); \
    A##so ^= Do; \
    Bmu = ROL64(A##so, 56); \
    E##ma =   Bma ^((~Bme)&  Bmi ); \
    Ca ^= E##ma; \
    E##me =   Bme ^((~Bmi)&  Bmo ); \
    Ce ^= E##me; \
    E##mi =   Bmi ^((~Bmo)&  Bmu ); \
    Ci ^= E##mi; \
    E##mo =   Bmo ^((~Bmu)&  Bma ); \
    Co ^= E##mo; \
    E##mu =   Bmu ^((~Bma)&  Bme ); \
    Cu ^= E##mu; \
\
    A##bi ^= Di; \
    Bsa = ROL64(A##bi, 62); \
    A##go ^= Do; \
    Bse = ROL64(A##go, 55); \
    A##ku ^= Du; \
    Bsi = ROL64(A##ku, 39); \
    A##ma ^= Da; \
    Bso = ROL64(A##ma, 41); \
    A##se ^= De; \
    Bsu = ROL64(A##se, 2); \
    E##sa =   Bsa ^((~Bse)&  Bsi ); \
    Ca ^= E##sa; \
    E##se =   Bse ^((~Bsi)&  Bso ); \
    Ce ^= E##se; \
    E##si =   Bsi ^((~Bso)&  Bsu ); \
    Ci ^= E##si; \
    E##so =   Bso ^((~Bsu)&  Bsa ); \
    Co ^= E##so; \
    E##su =   Bsu ^((~Bsa)&  Bse ); \
    Cu ^= E##su; \
\

/* --- Code for round */

/* --- 64-bit lanes mapped to 64-bit words */

#define thetaRhoPiChiIota(i, A, E) \
    Da = Cu^ROL64(Ce, 1); \
    De = Ca^ROL64(Ci, 1); \
    Di = Ce^ROL64(Co, 1); \
    Do = Ci^ROL64(Cu, 1); \
    Du = Co^ROL64(Ca, 1); \
\
    A##ba ^= Da; \
    Bba = A##ba; \
    A##ge ^= De; \
    Bbe = ROL64(A##ge, 44); \
    A##ki ^= Di; \
    Bbi = ROL64(A##ki, 43); \
    A##mo ^= Do; \
    Bbo = ROL64(A##mo, 21); \
    A##su ^= Du; \
    Bbu = ROL64(A##su, 14); \
    E##ba =   Bba ^((~Bbe)&  Bbi ); \
    E##ba ^= KeccakF1600RoundConstants[i]; \
    E##be =   Bbe ^((~Bbi)&  Bbo ); \
    E##bi =   Bbi ^((~Bbo)&  Bbu ); \
    E##bo =   Bbo ^((~Bbu)&  Bba ); \
    E##bu =   Bbu ^((~Bba)&  Bbe ); \
\
    A##bo ^= Do; \
    Bga = ROL64(A##bo, 28); \
    A##gu ^= Du; \
    Bge = ROL64(A##gu, 20); \
    A##ka ^= Da; \
    Bgi = ROL64(A##ka, 3); \
    A##me ^= De; \
    Bgo = ROL64(A##me, 45); \
    A##si ^= Di; \
    Bgu = ROL64(A##si, 61); \
    E##ga =   Bga ^((~Bge)&  Bgi ); \
    E##ge =   Bge ^((~Bgi)&  Bgo ); \
    E##gi =   Bgi ^((~Bgo)&  Bgu ); \
    E##go =   Bgo ^((~Bgu)&  Bga ); \
    E##gu =   Bgu ^((~Bga)&  Bge ); \
\
    A##be ^= De; \
    Bka = ROL64(A##be, 1); \
    A##gi ^= Di; \
    Bke = ROL64(A##gi, 6); \
    A##ko ^= Do; \
    Bki = ROL64(A##ko, 25); \
    A##mu ^= Du; \
    Bko = ROL64(A##mu, 8); \
    A##sa ^= Da; \
    Bku = ROL64(A##sa, 18); \
    E##ka =   Bka ^((~Bke)&  Bki ); \
    E##ke =   Bke ^((~Bki)&  Bko ); \
    E##ki =   Bki ^((~Bko)&  Bku ); \
    E##ko =   Bko ^((~Bku)&  Bka ); \
    E##ku =   Bku ^((~Bka)&  Bke ); \
\
    A##bu ^= Du; \
    Bma = ROL64(A##bu, 27); \
    A##ga ^= Da; \
    Bme = ROL64(A##ga, 36); \
    A##ke ^= De; \
    Bmi = ROL64(A##ke, 10); \
    A##mi ^= Di; \
    Bmo = ROL64(A##mi, 15); \
    A##so ^= Do; \
    Bmu = ROL64(A##so, 56); \
    E##ma =   Bma ^((~Bme)&  Bmi ); \
    E##me =   Bme ^((~Bmi)&  Bmo ); \
    E##mi =   Bmi ^((~Bmo)&  Bmu ); \
    E##mo =   Bmo ^((~Bmu)&  Bma ); \
    E##mu =   Bmu ^((~Bma)&  Bme ); \
\
    A##bi ^= Di; \
    Bsa = ROL64(A##bi, 62); \
    A##go ^= Do; \
    Bse = ROL64(A##go, 55); \
    A##ku ^= Du; \
    Bsi = ROL64(A##ku, 39); \
    A##ma ^= Da; \
    Bso = ROL64(A##ma, 41); \
    A##se ^= De; \
    Bsu = ROL64(A##se, 2); \
    E##sa =   Bsa ^((~Bse)&  Bsi ); \
    E##se =   Bse ^((~Bsi)&  Bso ); \
    E##si =   Bsi ^((~Bso)&  Bsu ); \
    E##so =   Bso ^((~Bsu)&  Bsa ); \
    E##su =   Bsu ^((~Bsa)&  Bse ); \
\

#endif /* UseBebigokimisa */


#define copyFromState(X, state) \
    X##ba = state[ 0]; \
    X##be = state[ 1]; \
    X##bi = state[ 2]; \
    X##bo = state[ 3]; \
    X##bu = state[ 4]; \
    X##ga = state[ 5]; \
    X##ge = state[ 6]; \
    X##gi = state[ 7]; \
    X##go = state[ 8]; \
    X##gu = state[ 9]; \
    X##ka = state[10]; \
    X##ke = state[11]; \
    X##ki = state[12]; \
    X##ko = state[13]; \
    X##ku = state[14]; \
    X##ma = state[15]; \
    X##me = state[16]; \
    X##mi = state[17]; \
    X##mo = state[18]; \
    X##mu = state[19]; \
    X##sa = state[20]; \
    X##se = state[21]; \
    X##si = state[22]; \
    X##so = state[23]; \
    X##su = state[24]; \

#define copyToState(state, X) \
    state[ 0] = X##ba; \
    state[ 1] = X##be; \
    state[ 2] = X##bi; \
    state[ 3] = X##bo; \
    state[ 4] = X##bu; \
    state[ 5] = X##ga; \
    state[ 6] = X##ge; \
    state[ 7] = X##gi; \
    state[ 8] = X##go; \
    state[ 9] = X##gu; \
    state[10] = X##ka; \
    state[11] = X##ke; \
    state[12] = X##ki; \
    state[13] = X##ko; \
    state[14] = X##ku; \
    state[15] = X##ma; \
    state[16] = X##me; \
    state[17] = X##mi; \
    state[18] = X##mo; \
    state[19] = X##mu; \
    state[20] = X##sa; \
    state[21] = X##se; \
    state[22] = X##si; \
    state[23] = X##so; \
    state[24] = X##su; \

#define copyStateVariables(X, Y) \
    X##ba = Y##ba; \
    X##be = Y##be; \
    X##bi = Y##bi; \
    X##bo = Y##bo; \
    X##bu = Y##bu; \
    X##ga = Y##ga; \
    X##ge = Y##ge; \
    X##gi = Y##gi; \
    X##go = Y##go; \
    X##gu = Y##gu; \
    X##ka = Y##ka; \
    X##ke = Y##ke; \
    X##ki = Y##ki; \
    X##ko = Y##ko; \
    X##ku = Y##ku; \
    X##ma = Y##ma; \
    X##me = Y##me; \
    X##mi = Y##mi; \
    X##mo = Y##mo; \
    X##mu = Y##mu; \
    X##sa = Y##sa; \
    X##se = Y##se; \
    X##si = Y##si; \
    X##so = Y##so; \
    X##su = Y##su; \

#define copyFromStateAndAdd(X, state, input, laneCount) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    if (laneCount < 1) { \
                        X##ba = state[ 0]; \
                    } \
                    else { \
                        X##ba = state[ 0]^input[ 0]; \
                    } \
                    X##be = state[ 1]; \
                    X##bi = state[ 2]; \
                } \
                else { \
                    X##ba = state[ 0]^input[ 0]; \
                    X##be = state[ 1]^input[ 1]; \
                    if (laneCount < 3) { \
                        X##bi = state[ 2]; \
                    } \
                    else { \
                        X##bi = state[ 2]^input[ 2]; \
                    } \
                } \
                X##bo = state[ 3]; \
                X##bu = state[ 4]; \
                X##ga = state[ 5]; \
                X##ge = state[ 6]; \
            } \
            else { \
                X##ba = state[ 0]^input[ 0]; \
                X##be = state[ 1]^input[ 1]; \
                X##bi = state[ 2]^input[ 2]; \
                X##bo = state[ 3]^input[ 3]; \
                if (laneCount < 6) { \
                    if (laneCount < 5) { \
                        X##bu = state[ 4]; \
                    } \
                    else { \
                        X##bu = state[ 4]^input[ 4]; \
                    } \
                    X##ga = state[ 5]; \
                    X##ge = state[ 6]; \
                } \
                else { \
                    X##bu = state[ 4]^input[ 4]; \
                    X##ga = state[ 5]^input[ 5]; \
                    if (laneCount < 7) { \
                        X##ge = state[ 6]; \
                    } \
                    else { \
                        X##ge = state[ 6]^input[ 6]; \
                    } \
                } \
            } \
            X##gi = state[ 7]; \
            X##go = state[ 8]; \
            X##gu = state[ 9]; \
            X##ka = state[10]; \
            X##ke = state[11]; \
            X##ki = state[12]; \
            X##ko = state[13]; \
            X##ku = state[14]; \
        } \
        else { \
            X##ba = state[ 0]^input[ 0]; \
            X##be = state[ 1]^input[ 1]; \
            X##bi = state[ 2]^input[ 2]; \
            X##bo = state[ 3]^input[ 3]; \
            X##bu = state[ 4]^input[ 4]; \
            X##ga = state[ 5]^input[ 5]; \
            X##ge = state[ 6]^input[ 6]; \
            X##gi = state[ 7]^input[ 7]; \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    if (laneCount < 9) { \
                        X##go = state[ 8]; \
                    } \
                    else { \
                        X##go = state[ 8]^input[ 8]; \
                    } \
                    X##gu = state[ 9]; \
                    X##ka = state[10]; \
                } \
                else { \
                    X##go = state[ 8]^input[ 8]; \
                    X##gu = state[ 9]^input[ 9]; \
                    if (laneCount < 11) { \
                        X##ka = state[10]; \
                    } \
                    else { \
                        X##ka = state[10]^input[10]; \
                    } \
                } \
                X##ke = state[11]; \
                X##ki = state[12]; \
                X##ko = state[13]; \
                X##ku = state[14]; \
            } \
            else { \
                X##go = state[ 8]^input[ 8]; \
                X##gu = state[ 9]^input[ 9]; \
                X##ka = state[10]^input[10]; \
                X##ke = state[11]^input[11]; \
                if (laneCount < 14) { \
                    if (laneCount < 13) { \
                        X##ki = state[12]; \
                    } \
                    else { \
                        X##ki = state[12]^input[12]; \
                    } \
                    X##ko = state[13]; \
                    X##ku = state[14]; \
                } \
                else { \
                    X##ki = state[12]^input[12]; \
                    X##ko = state[13]^input[13]; \
                    if (laneCount < 15) { \
                        X##ku = state[14]; \
                    } \
                    else { \
                        X##ku = state[14]^input[14]; \
                    } \
                } \
            } \
        } \
        X##ma = state[15]; \
        X##me = state[16]; \
        X##mi = state[17]; \
        X##mo = state[18]; \
        X##mu = state[19]; \
        X##sa = state[20]; \
        X##se = state[21]; \
        X##si = state[22]; \
        X##so = state[23]; \
        X##su = state[24]; \
    } \
    else { \
        X##ba = state[ 0]^input[ 0]; \
        X##be = state[ 1]^input[ 1]; \
        X##bi = state[ 2]^input[ 2]; \
        X##bo = state[ 3]^input[ 3]; \
        X##bu = state[ 4]^input[ 4]; \
        X##ga = state[ 5]^input[ 5]; \
        X##ge = state[ 6]^input[ 6]; \
        X##gi = state[ 7]^input[ 7]; \
        X##go = state[ 8]^input[ 8]; \
        X##gu = state[ 9]^input[ 9]; \
        X##ka = state[10]^input[10]; \
        X##ke = state[11]^input[11]; \
        X##ki = state[12]^input[12]; \
        X##ko = state[13]^input[13]; \
        X##ku = state[14]^input[14]; \
        X##ma = state[15]^input[15]; \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    if (laneCount < 17) { \
                        X##me = state[16]; \
                    } \
                    else { \
                        X##me = state[16]^input[16]; \
                    } \
                    X##mi = state[17]; \
                    X##mo = state[18]; \
                } \
                else { \
                    X##me = state[16]^input[16]; \
                    X##mi = state[17]^input[17]; \
                    if (laneCount < 19) { \
                        X##mo = state[18]; \
                    } \
                    else { \
                        X##mo = state[18]^input[18]; \
                    } \
                } \
                X##mu = state[19]; \
                X##sa = state[20]; \
                X##se = state[21]; \
                X##si = state[22]; \
            } \
            else { \
                X##me = state[16]^input[16]; \
                X##mi = state[17]^input[17]; \
                X##mo = state[18]^input[18]; \
                X##mu = state[19]^input[19]; \
                if (laneCount < 22) { \
                    if (laneCount < 21) { \
                        X##sa = state[20]; \
                    } \
                    else { \
                        X##sa = state[20]^input[20]; \
                    } \
                    X##se = state[21]; \
                    X##si = state[22]; \
                } \
                else { \
                    X##sa = state[20]^input[20]; \
                    X##se = state[21]^input[21]; \
                    if (laneCount < 23) { \
                        X##si = state[22]; \
                    } \
                    else { \
                        X##si = state[22]^input[22]; \
                    } \
                } \
            } \
            X##so = state[23]; \
            X##su = state[24]; \
        } \
        else { \
            X##me = state[16]^input[16]; \
            X##mi = state[17]^input[17]; \
            X##mo = state[18]^input[18]; \
            X##mu = state[19]^input[19]; \
            X##sa = state[20]^input[20]; \
            X##se = state[21]^input[21]; \
            X##si = state[22]^input[22]; \
            X##so = state[23]^input[23]; \
            if (laneCount < 25) { \
                X##su = state[24]; \
            } \
            else { \
                X##su = state[24]^input[24]; \
            } \
        } \
    }

#define addInput(X, input, laneCount) \
    if (laneCount == 21) { \
        X##ba ^= input[ 0]; \
        X##be ^= input[ 1]; \
        X##bi ^= input[ 2]; \
        X##bo ^= input[ 3]; \
        X##bu ^= input[ 4]; \
        X##ga ^= input[ 5]; \
        X##ge ^= input[ 6]; \
        X##gi ^= input[ 7]; \
        X##go ^= input[ 8]; \
        X##gu ^= input[ 9]; \
        X##ka ^= input[10]; \
        X##ke ^= input[11]; \
        X##ki ^= input[12]; \
        X##ko ^= input[13]; \
        X##ku ^= input[14]; \
        X##ma ^= input[15]; \
        X##me ^= input[16]; \
        X##mi ^= input[17]; \
        X##mo ^= input[18]; \
        X##mu ^= input[19]; \
        X##sa ^= input[20]; \
    } \
    else if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    if (laneCount < 1) { \
                    } \
                    else { \
                        X##ba ^= input[ 0]; \
                    } \
                } \
                else { \
                    X##ba ^= input[ 0]; \
                    X##be ^= input[ 1]; \
                    if (laneCount < 3) { \
                    } \
                    else { \
                        X##bi ^= input[ 2]; \
                    } \
                } \
            } \
            else { \
                X##ba ^= input[ 0]; \
                X##be ^= input[ 1]; \
                X##bi ^= input[ 2]; \
                X##bo ^= input[ 3]; \
                if (laneCount < 6) { \
                    if (laneCount < 5) { \
                    } \
                    else { \
                        X##bu ^= input[ 4]; \
                    } \
                } \
                else { \
                    X##bu ^= input[ 4]; \
                    X##ga ^= input[ 5]; \
                    if (laneCount < 7) { \
                    } \
                    else { \
                        X##ge ^= input[ 6]; \
                    } \
                } \
            } \
        } \
        else { \
            X##ba ^= input[ 0]; \
            X##be ^= input[ 1]; \
            X##bi ^= input[ 2]; \
            X##bo ^= input[ 3]; \
            X##bu ^= input[ 4]; \
            X##ga ^= input[ 5]; \
            X##ge ^= input[ 6]; \
            X##gi ^= input[ 7]; \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    if (laneCount < 9) { \
                    } \
                    else { \
                        X##go ^= input[ 8]; \
                    } \
                } \
                else { \
                    X##go ^= input[ 8]; \
                    X##gu ^= input[ 9]; \
                    if (laneCount < 11) { \
                    } \
                    else { \
                        X##ka ^= input[10]; \
                    } \
                } \
            } \
            else { \
                X##go ^= input[ 8]; \
                X##gu ^= input[ 9]; \
                X##ka ^= input[10]; \
                X##ke ^= input[11]; \
                if (laneCount < 14) { \
                    if (laneCount < 13) { \
                    } \
                    else { \
                        X##ki ^= input[12]; \
                    } \
                } \
                else { \
                    X##ki ^= input[12]; \
                    X##ko ^= input[13]; \
                    if (laneCount < 15) { \
                    } \
                    else { \
                        X##ku ^= input[14]; \
                    } \
                } \
            } \
        } \
    } \
    else { \
        X##ba ^= input[ 0]; \
        X##be ^= input[ 1]; \
        X##bi ^= input[ 2]; \
        X##bo ^= input[ 3]; \
        X##bu ^= input[ 4]; \
        X##ga ^= input[ 5]; \
        X##ge ^= input[ 6]; \
        X##gi ^= input[ 7]; \
        X##go ^= input[ 8]; \
        X##gu ^= input[ 9]; \
        X##ka ^= input[10]; \
        X##ke ^= input[11]; \
        X##ki ^= input[12]; \
        X##ko ^= input[13]; \
        X##ku ^= input[14]; \
        X##ma ^= input[15]; \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    if (laneCount < 17) { \
                    } \
                    else { \
                        X##me ^= input[16]; \
                    } \
                } \
                else { \
                    X##me ^= input[16]; \
                    X##mi ^= input[17]; \
                    if (laneCount < 19) { \
                    } \
                    else { \
                        X##mo ^= input[18]; \
                    } \
                } \
            } \
            else { \
                X##me ^= input[16]; \
                X##mi ^= input[17]; \
                X##mo ^= input[18]; \
                X##mu ^= input[19]; \
                if (laneCount < 22) { \
                    if (laneCount < 21) { \
                    } \
                    else { \
                        X##sa ^= input[20]; \
                    } \
                } \
                else { \
                    X##sa ^= input[20]; \
                    X##se ^= input[21]; \
                    if (laneCount < 23) { \
                    } \
                    else { \
                        X##si ^= input[22]; \
                    } \
                } \
            } \
        } \
        else { \
            X##me ^= input[16]; \
            X##mi ^= input[17]; \
            X##mo ^= input[18]; \
            X##mu ^= input[19]; \
            X##sa ^= input[20]; \
            X##se ^= input[21]; \
            X##si ^= input[22]; \
            X##so ^= input[23]; \
            if (laneCount < 25) { \
            } \
            else { \
                X##su ^= input[24]; \
            } \
        } \
    }

#ifdef UseBebigokimisa

#define copyToStateAndOutput(X, state, output, laneCount) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    state[ 0] = X##ba; \
                    if (laneCount >= 1) { \
                        output[ 0] = X##ba; \
                    } \
                    state[ 1] = X##be; \
                    state[ 2] = X##bi; \
                } \
                else { \
                    state[ 0] = X##ba; \
                    output[ 0] = X##ba; \
                    state[ 1] = X##be; \
                    output[ 1] = ~X##be; \
                    state[ 2] = X##bi; \
                    if (laneCount >= 3) { \
                        output[ 2] = ~X##bi; \
                    } \
                } \
                state[ 3] = X##bo; \
                state[ 4] = X##bu; \
                state[ 5] = X##ga; \
                state[ 6] = X##ge; \
            } \
            else { \
                state[ 0] = X##ba; \
                output[ 0] = X##ba; \
                state[ 1] = X##be; \
                output[ 1] = ~X##be; \
                state[ 2] = X##bi; \
                output[ 2] = ~X##bi; \
                state[ 3] = X##bo; \
                output[ 3] = X##bo; \
                if (laneCount < 6) { \
                    state[ 4] = X##bu; \
                    if (laneCount >= 5) { \
                        output[ 4] = X##bu; \
                    } \
                    state[ 5] = X##ga; \
                    state[ 6] = X##ge; \
                } \
                else { \
                    state[ 4] = X##bu; \
                    output[ 4] = X##bu; \
                    state[ 5] = X##ga; \
                    output[ 5] = X##ga; \
                    state[ 6] = X##ge; \
                    if (laneCount >= 7) { \
                        output[ 6] = X##ge; \
                    } \
                } \
            } \
            state[ 7] = X##gi; \
            state[ 8] = X##go; \
            state[ 9] = X##gu; \
            state[10] = X##ka; \
            state[11] = X##ke; \
            state[12] = X##ki; \
            state[13] = X##ko; \
            state[14] = X##ku; \
        } \
        else { \
            state[ 0] = X##ba; \
            output[ 0] = X##ba; \
            state[ 1] = X##be; \
            output[ 1] = ~X##be; \
            state[ 2] = X##bi; \
            output[ 2] = ~X##bi; \
            state[ 3] = X##bo; \
            output[ 3] = X##bo; \
            state[ 4] = X##bu; \
            output[ 4] = X##bu; \
            state[ 5] = X##ga; \
            output[ 5] = X##ga; \
            state[ 6] = X##ge; \
            output[ 6] = X##ge; \
            state[ 7] = X##gi; \
            output[ 7] = X##gi; \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    state[ 8] = X##go; \
                    if (laneCount >= 9) { \
                        output[ 8] = ~X##go; \
                    } \
                    state[ 9] = X##gu; \
                    state[10] = X##ka; \
                } \
                else { \
                    state[ 8] = X##go; \
                    output[ 8] = ~X##go; \
                    state[ 9] = X##gu; \
                    output[ 9] = X##gu; \
                    state[10] = X##ka; \
                    if (laneCount >= 11) { \
                        output[10] = X##ka; \
                    } \
                } \
                state[11] = X##ke; \
                state[12] = X##ki; \
                state[13] = X##ko; \
                state[14] = X##ku; \
            } \
            else { \
                state[ 8] = X##go; \
                output[ 8] = ~X##go; \
                state[ 9] = X##gu; \
                output[ 9] = X##gu; \
                state[10] = X##ka; \
                output[10] = X##ka; \
                state[11] = X##ke; \
                output[11] = X##ke; \
                if (laneCount < 14) { \
                    state[12] = X##ki; \
                    if (laneCount >= 13) { \
                        output[12] = ~X##ki; \
                    } \
                    state[13] = X##ko; \
                    state[14] = X##ku; \
                } \
                else { \
                    state[12] = X##ki; \
                    output[12] = ~X##ki; \
                    state[13] = X##ko; \
                    output[13] = X##ko; \
                    state[14] = X##ku; \
                    if (laneCount >= 15) { \
                        output[14] = X##ku; \
                    } \
                } \
            } \
        } \
        state[15] = X##ma; \
        state[16] = X##me; \
        state[17] = X##mi; \
        state[18] = X##mo; \
        state[19] = X##mu; \
        state[20] = X##sa; \
        state[21] = X##se; \
        state[22] = X##si; \
        state[23] = X##so; \
        state[24] = X##su; \
    } \
    else { \
        state[ 0] = X##ba; \
        output[ 0] = X##ba; \
        state[ 1] = X##be; \
        output[ 1] = ~X##be; \
        state[ 2] = X##bi; \
        output[ 2] = ~X##bi; \
        state[ 3] = X##bo; \
        output[ 3] = X##bo; \
        state[ 4] = X##bu; \
        output[ 4] = X##bu; \
        state[ 5] = X##ga; \
        output[ 5] = X##ga; \
        state[ 6] = X##ge; \
        output[ 6] = X##ge; \
        state[ 7] = X##gi; \
        output[ 7] = X##gi; \
        state[ 8] = X##go; \
        output[ 8] = ~X##go; \
        state[ 9] = X##gu; \
        output[ 9] = X##gu; \
        state[10] = X##ka; \
        output[10] = X##ka; \
        state[11] = X##ke; \
        output[11] = X##ke; \
        state[12] = X##ki; \
        output[12] = ~X##ki; \
        state[13] = X##ko; \
        output[13] = X##ko; \
        state[14] = X##ku; \
        output[14] = X##ku; \
        state[15] = X##ma; \
        output[15] = X##ma; \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    state[16] = X##me; \
                    if (laneCount >= 17) { \
                        output[16] = X##me; \
                    } \
                    state[17] = X##mi; \
                    state[18] = X##mo; \
                } \
                else { \
                    state[16] = X##me; \
                    output[16] = X##me; \
                    state[17] = X##mi; \
                    output[17] = ~X##mi; \
                    state[18] = X##mo; \
                    if (laneCount >= 19) { \
                        output[18] = X##mo; \
                    } \
                } \
                state[19] = X##mu; \
                state[20] = X##sa; \
                state[21] = X##se; \
                state[22] = X##si; \
            } \
            else { \
                state[16] = X##me; \
                output[16] = X##me; \
                state[17] = X##mi; \
                output[17] = ~X##mi; \
                state[18] = X##mo; \
                output[18] = X##mo; \
                state[19] = X##mu; \
                output[19] = X##mu; \
                if (laneCount < 22) { \
                    state[20] = X##sa; \
                    if (laneCount >= 21) { \
                        output[20] = ~X##sa; \
                    } \
                    state[21] = X##se; \
                    state[22] = X##si; \
                } \
                else { \
                    state[20] = X##sa; \
                    output[20] = ~X##sa; \
                    state[21] = X##se; \
                    output[21] = X##se; \
                    state[22] = X##si; \
                    if (laneCount >= 23) { \
                        output[22] = X##si; \
                    } \
                } \
            } \
            state[23] = X##so; \
            state[24] = X##su; \
        } \
        else { \
            state[16] = X##me; \
            output[16] = X##me; \
            state[17] = X##mi; \
            output[17] = ~X##mi; \
            state[18] = X##mo; \
            output[18] = X##mo; \
            state[19] = X##mu; \
            output[19] = X##mu; \
            state[20] = X##sa; \
            output[20] = ~X##sa; \
            state[21] = X##se; \
            output[21] = X##se; \
            state[22] = X##si; \
            output[22] = X##si; \
            state[23] = X##so; \
            output[23] = X##so; \
            state[24] = X##su; \
            if (laneCount >= 25) { \
                output[24] = X##su; \
            } \
        } \
    }

#define output(X, output, laneCount) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    if (laneCount >= 1) { \
                        output[ 0] = X##ba; \
                    } \
                } \
                else { \
                    output[ 0] = X##ba; \
                    output[ 1] = ~X##be; \
                    if (laneCount >= 3) { \
                        output[ 2] = ~X##bi; \
                    } \
                } \
            } \
            else { \
                output[ 0] = X##ba; \
                output[ 1] = ~X##be; \
                output[ 2] = ~X##bi; \
                output[ 3] = X##bo; \
                if (laneCount < 6) { \
                    if (laneCount >= 5) { \
                        output[ 4] = X##bu; \
                    } \
                } \
                else { \
                    output[ 4] = X##bu; \
                    output[ 5] = X##ga; \
                    if (laneCount >= 7) { \
                        output[ 6] = X##ge; \
                    } \
                } \
            } \
        } \
        else { \
            output[ 0] = X##ba; \
            output[ 1] = ~X##be; \
            output[ 2] = ~X##bi; \
            output[ 3] = X##bo; \
            output[ 4] = X##bu; \
            output[ 5] = X##ga; \
            output[ 6] = X##ge; \
            output[ 7] = X##gi; \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    if (laneCount >= 9) { \
                        output[ 8] = ~X##go; \
                    } \
                } \
                else { \
                    output[ 8] = ~X##go; \
                    output[ 9] = X##gu; \
                    if (laneCount >= 11) { \
                        output[10] = X##ka; \
                    } \
                } \
            } \
            else { \
                output[ 8] = ~X##go; \
                output[ 9] = X##gu; \
                output[10] = X##ka; \
                output[11] = X##ke; \
                if (laneCount < 14) { \
                    if (laneCount >= 13) { \
                        output[12] = ~X##ki; \
                    } \
                } \
                else { \
                    output[12] = ~X##ki; \
                    output[13] = X##ko; \
                    if (laneCount >= 15) { \
                        output[14] = X##ku; \
                    } \
                } \
            } \
        } \
    } \
    else { \
        output[ 0] = X##ba; \
        output[ 1] = ~X##be; \
        output[ 2] = ~X##bi; \
        output[ 3] = X##bo; \
        output[ 4] = X##bu; \
        output[ 5] = X##ga; \
        output[ 6] = X##ge; \
        output[ 7] = X##gi; \
        output[ 8] = ~X##go; \
        output[ 9] = X##gu; \
        output[10] = X##ka; \
        output[11] = X##ke; \
        output[12] = ~X##ki; \
        output[13] = X##ko; \
        output[14] = X##ku; \
        output[15] = X##ma; \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    if (laneCount >= 17) { \
                        output[16] = X##me; \
                    } \
                } \
                else { \
                    output[16] = X##me; \
                    output[17] = ~X##mi; \
                    if (laneCount >= 19) { \
                        output[18] = X##mo; \
                    } \
                } \
            } \
            else { \
                output[16] = X##me; \
                output[17] = ~X##mi; \
                output[18] = X##mo; \
                output[19] = X##mu; \
                if (laneCount < 22) { \
                    if (laneCount >= 21) { \
                        output[20] = ~X##sa; \
                    } \
                } \
                else { \
                    output[20] = ~X##sa; \
                    output[21] = X##se; \
                    if (laneCount >= 23) { \
                        output[22] = X##si; \
                    } \
                } \
            } \
        } \
        else { \
            output[16] = X##me; \
            output[17] = ~X##mi; \
            output[18] = X##mo; \
            output[19] = X##mu; \
            output[20] = ~X##sa; \
            output[21] = X##se; \
            output[22] = X##si; \
            output[23] = X##so; \
            if (laneCount >= 25) { \
                output[24] = X##su; \
            } \
        } \
    }

#define wrapOne(X, input, output, index, name) \
    X##name ^= input[index]; \
    output[index] = X##name;

#define wrapOneInvert(X, input, output, index, name) \
    X##name ^= input[index]; \
    output[index] = ~X##name;

#define unwrapOne(X, input, output, index, name) \
    output[index] = input[index] ^ X##name; \
    X##name ^= output[index];

#define unwrapOneInvert(X, input, output, index, name) \
    output[index] = ~(input[index] ^ X##name); \
    X##name ^= output[index]; \

#else /* UseBebigokimisa */


#define copyToStateAndOutput(X, state, output, laneCount) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    state[ 0] = X##ba; \
                    if (laneCount >= 1) { \
                        output[ 0] = X##ba; \
                    } \
                    state[ 1] = X##be; \
                    state[ 2] = X##bi; \
                } \
                else { \
                    state[ 0] = X##ba; \
                    output[ 0] = X##ba; \
                    state[ 1] = X##be; \
                    output[ 1] = X##be; \
                    state[ 2] = X##bi; \
                    if (laneCount >= 3) { \
                        output[ 2] = X##bi; \
                    } \
                } \
                state[ 3] = X##bo; \
                state[ 4] = X##bu; \
                state[ 5] = X##ga; \
                state[ 6] = X##ge; \
            } \
            else { \
                state[ 0] = X##ba; \
                output[ 0] = X##ba; \
                state[ 1] = X##be; \
                output[ 1] = X##be; \
                state[ 2] = X##bi; \
                output[ 2] = X##bi; \
                state[ 3] = X##bo; \
                output[ 3] = X##bo; \
                if (laneCount < 6) { \
                    state[ 4] = X##bu; \
                    if (laneCount >= 5) { \
                        output[ 4] = X##bu; \
                    } \
                    state[ 5] = X##ga; \
                    state[ 6] = X##ge; \
                } \
                else { \
                    state[ 4] = X##bu; \
                    output[ 4] = X##bu; \
                    state[ 5] = X##ga; \
                    output[ 5] = X##ga; \
                    state[ 6] = X##ge; \
                    if (laneCount >= 7) { \
                        output[ 6] = X##ge; \
                    } \
                } \
            } \
            state[ 7] = X##gi; \
            state[ 8] = X##go; \
            state[ 9] = X##gu; \
            state[10] = X##ka; \
            state[11] = X##ke; \
            state[12] = X##ki; \
            state[13] = X##ko; \
            state[14] = X##ku; \
        } \
        else { \
            state[ 0] = X##ba; \
            output[ 0] = X##ba; \
            state[ 1] = X##be; \
            output[ 1] = X##be; \
            state[ 2] = X##bi; \
            output[ 2] = X##bi; \
            state[ 3] = X##bo; \
            output[ 3] = X##bo; \
            state[ 4] = X##bu; \
            output[ 4] = X##bu; \
            state[ 5] = X##ga; \
            output[ 5] = X##ga; \
            state[ 6] = X##ge; \
            output[ 6] = X##ge; \
            state[ 7] = X##gi; \
            output[ 7] = X##gi; \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    state[ 8] = X##go; \
                    if (laneCount >= 9) { \
                        output[ 8] = X##go; \
                    } \
                    state[ 9] = X##gu; \
                    state[10] = X##ka; \
                } \
                else { \
                    state[ 8] = X##go; \
                    output[ 8] = X##go; \
                    state[ 9] = X##gu; \
                    output[ 9] = X##gu; \
                    state[10] = X##ka; \
                    if (laneCount >= 11) { \
                        output[10] = X##ka; \
                    } \
                } \
                state[11] = X##ke; \
                state[12] = X##ki; \
                state[13] = X##ko; \
                state[14] = X##ku; \
            } \
            else { \
                state[ 8] = X##go; \
                output[ 8] = X##go; \
                state[ 9] = X##gu; \
                output[ 9] = X##gu; \
                state[10] = X##ka; \
                output[10] = X##ka; \
                state[11] = X##ke; \
                output[11] = X##ke; \
                if (laneCount < 14) { \
                    state[12] = X##ki; \
                    if (laneCount >= 13) { \
                        output[12]= X##ki; \
                    } \
                    state[13] = X##ko; \
                    state[14] = X##ku; \
                } \
                else { \
                    state[12] = X##ki; \
                    output[12]= X##ki; \
                    state[13] = X##ko; \
                    output[13] = X##ko; \
                    state[14] = X##ku; \
                    if (laneCount >= 15) { \
                        output[14] = X##ku; \
                    } \
                } \
            } \
        } \
        state[15] = X##ma; \
        state[16] = X##me; \
        state[17] = X##mi; \
        state[18] = X##mo; \
        state[19] = X##mu; \
        state[20] = X##sa; \
        state[21] = X##se; \
        state[22] = X##si; \
        state[23] = X##so; \
        state[24] = X##su; \
    } \
    else { \
        state[ 0] = X##ba; \
        output[ 0] = X##ba; \
        state[ 1] = X##be; \
        output[ 1] = X##be; \
        state[ 2] = X##bi; \
        output[ 2] = X##bi; \
        state[ 3] = X##bo; \
        output[ 3] = X##bo; \
        state[ 4] = X##bu; \
        output[ 4] = X##bu; \
        state[ 5] = X##ga; \
        output[ 5] = X##ga; \
        state[ 6] = X##ge; \
        output[ 6] = X##ge; \
        state[ 7] = X##gi; \
        output[ 7] = X##gi; \
        state[ 8] = X##go; \
        output[ 8] = X##go; \
        state[ 9] = X##gu; \
        output[ 9] = X##gu; \
        state[10] = X##ka; \
        output[10] = X##ka; \
        state[11] = X##ke; \
        output[11] = X##ke; \
        state[12] = X##ki; \
        output[12]= X##ki; \
        state[13] = X##ko; \
        output[13] = X##ko; \
        state[14] = X##ku; \
        output[14] = X##ku; \
        state[15] = X##ma; \
        output[15] = X##ma; \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    state[16] = X##me; \
                    if (laneCount >= 17) { \
                        output[16] = X##me; \
                    } \
                    state[17] = X##mi; \
                    state[18] = X##mo; \
                } \
                else { \
                    state[16] = X##me; \
                    output[16] = X##me; \
                    state[17] = X##mi; \
                    output[17] = X##mi; \
                    state[18] = X##mo; \
                    if (laneCount >= 19) { \
                        output[18] = X##mo; \
                    } \
                } \
                state[19] = X##mu; \
                state[20] = X##sa; \
                state[21] = X##se; \
                state[22] = X##si; \
            } \
            else { \
                state[16] = X##me; \
                output[16] = X##me; \
                state[17] = X##mi; \
                output[17] = X##mi; \
                state[18] = X##mo; \
                output[18] = X##mo; \
                state[19] = X##mu; \
                output[19] = X##mu; \
                if (laneCount < 22) { \
                    state[20] = X##sa; \
                    if (laneCount >= 21) { \
                        output[20] = X##sa; \
                    } \
                    state[21] = X##se; \
                    state[22] = X##si; \
                } \
                else { \
                    state[20] = X##sa; \
                    output[20] = X##sa; \
                    state[21] = X##se; \
                    output[21] = X##se; \
                    state[22] = X##si; \
                    if (laneCount >= 23) { \
                        output[22] = X##si; \
                    } \
                } \
            } \
            state[23] = X##so; \
            state[24] = X##su; \
        } \
        else { \
            state[16] = X##me; \
            output[16] = X##me; \
            state[17] = X##mi; \
            output[17] = X##mi; \
            state[18] = X##mo; \
            output[18] = X##mo; \
            state[19] = X##mu; \
            output[19] = X##mu; \
            state[20] = X##sa; \
            output[20] = X##sa; \
            state[21] = X##se; \
            output[21] = X##se; \
            state[22] = X##si; \
            output[22] = X##si; \
            state[23] = X##so; \
            output[23] = X##so; \
            state[24] = X##su; \
            if (laneCount >= 25) { \
                output[24] = X##su; \
            } \
        } \
    }

#define output(X, output, laneCount) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    if (laneCount >= 1) { \
                        output[ 0] = X##ba; \
                    } \
                } \
                else { \
                    output[ 0] = X##ba; \
                    output[ 1] = X##be; \
                    if (laneCount >= 3) { \
                        output[ 2] = X##bi; \
                    } \
                } \
            } \
            else { \
                output[ 0] = X##ba; \
                output[ 1] = X##be; \
                output[ 2] = X##bi; \
                output[ 3] = X##bo; \
                if (laneCount < 6) { \
                    if (laneCount >= 5) { \
                        output[ 4] = X##bu; \
                    } \
                } \
                else { \
                    output[ 4] = X##bu; \
                    output[ 5] = X##ga; \
                    if (laneCount >= 7) { \
                        output[ 6] = X##ge; \
                    } \
                } \
            } \
        } \
        else { \
            output[ 0] = X##ba; \
            output[ 1] = X##be; \
            output[ 2] = X##bi; \
            output[ 3] = X##bo; \
            output[ 4] = X##bu; \
            output[ 5] = X##ga; \
            output[ 6] = X##ge; \
            output[ 7] = X##gi; \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    if (laneCount >= 9) { \
                        output[ 8] = X##go; \
                    } \
                } \
                else { \
                    output[ 8] = X##go; \
                    output[ 9] = X##gu; \
                    if (laneCount >= 11) { \
                        output[10] = X##ka; \
                    } \
                } \
            } \
            else { \
                output[ 8] = X##go; \
                output[ 9] = X##gu; \
                output[10] = X##ka; \
                output[11] = X##ke; \
                if (laneCount < 14) { \
                    if (laneCount >= 13) { \
                        output[12] = X##ki; \
                    } \
                } \
                else { \
                    output[12] = X##ki; \
                    output[13] = X##ko; \
                    if (laneCount >= 15) { \
                        output[14] = X##ku; \
                    } \
                } \
            } \
        } \
    } \
    else { \
        output[ 0] = X##ba; \
        output[ 1] = X##be; \
        output[ 2] = X##bi; \
        output[ 3] = X##bo; \
        output[ 4] = X##bu; \
        output[ 5] = X##ga; \
        output[ 6] = X##ge; \
        output[ 7] = X##gi; \
        output[ 8] = X##go; \
        output[ 9] = X##gu; \
        output[10] = X##ka; \
        output[11] = X##ke; \
        output[12] = X##ki; \
        output[13] = X##ko; \
        output[14] = X##ku; \
        output[15] = X##ma; \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    if (laneCount >= 17) { \
                        output[16] = X##me; \
                    } \
                } \
                else { \
                    output[16] = X##me; \
                    output[17] = X##mi; \
                    if (laneCount >= 19) { \
                        output[18] = X##mo; \
                    } \
                } \
            } \
            else { \
                output[16] = X##me; \
                output[17] = X##mi; \
                output[18] = X##mo; \
                output[19] = X##mu; \
                if (laneCount < 22) { \
                    if (laneCount >= 21) { \
                        output[20] = X##sa; \
                    } \
                } \
                else { \
                    output[20] = X##sa; \
                    output[21] = X##se; \
                    if (laneCount >= 23) { \
                        output[22] = X##si; \
                    } \
                } \
            } \
        } \
        else { \
            output[16] = X##me; \
            output[17] = X##mi; \
            output[18] = X##mo; \
            output[19] = X##mu; \
            output[20] = X##sa; \
            output[21] = X##se; \
            output[22] = X##si; \
            output[23] = X##so; \
            if (laneCount >= 25) { \
                output[24] = X##su; \
            } \
        } \
    }

#define wrapOne(X, input, output, index, name) \
    X##name ^= input[index]; \
    output[index] = X##name;

#define wrapOneInvert(X, input, output, index, name) \
    X##name ^= input[index]; \
    output[index] = X##name;

#define unwrapOne(X, input, output, index, name) \
    output[index] = input[index] ^ X##name; \
    X##name ^= output[index];

#define unwrapOneInvert(X, input, output, index, name) \
    output[index] = input[index] ^ X##name; \
    X##name ^= output[index];

#endif

#define wrap(X, input, output, laneCount, trailingBits) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    if (laneCount < 1) { \
                        X##ba ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 0, ba) \
                        X##be ^= trailingBits; \
                    } \
                } \
                else { \
                    wrapOne(X, input, output, 0, ba) \
                    wrapOneInvert(X, input, output, 1, be) \
                    if (laneCount < 3) { \
                        X##bi ^= trailingBits; \
                    } \
                    else { \
                        wrapOneInvert(X, input, output, 2, bi) \
                        X##bo ^= trailingBits; \
                    } \
                } \
            } \
            else { \
                wrapOne(X, input, output, 0, ba) \
                wrapOneInvert(X, input, output, 1, be) \
                wrapOneInvert(X, input, output, 2, bi) \
                wrapOne(X, input, output, 3, bo) \
                if (laneCount < 6) { \
                    if (laneCount < 5) { \
                        X##bu ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 4, bu) \
                        X##ga ^= trailingBits; \
                    } \
                } \
                else { \
                    wrapOne(X, input, output, 4, bu) \
                    wrapOne(X, input, output, 5, ga) \
                    if (laneCount < 7) { \
                        X##ge ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 6, ge) \
                        X##gi ^= trailingBits; \
                    } \
                } \
            } \
        } \
        else { \
            wrapOne(X, input, output, 0, ba) \
            wrapOneInvert(X, input, output, 1, be) \
            wrapOneInvert(X, input, output, 2, bi) \
            wrapOne(X, input, output, 3, bo) \
            wrapOne(X, input, output, 4, bu) \
            wrapOne(X, input, output, 5, ga) \
            wrapOne(X, input, output, 6, ge) \
            wrapOne(X, input, output, 7, gi) \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    if (laneCount < 9) { \
                        X##go ^= trailingBits; \
                    } \
                    else { \
                        wrapOneInvert(X, input, output, 8, go) \
                        X##gu ^= trailingBits; \
                    } \
                } \
                else { \
                    wrapOneInvert(X, input, output, 8, go) \
                    wrapOne(X, input, output, 9, gu) \
                    if (laneCount < 11) { \
                        X##ka ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 10, ka) \
                        X##ke ^= trailingBits; \
                    } \
                } \
            } \
            else { \
                wrapOneInvert(X, input, output, 8, go) \
                wrapOne(X, input, output, 9, gu) \
                wrapOne(X, input, output, 10, ka) \
                wrapOne(X, input, output, 11, ke) \
                if (laneCount < 14) { \
                    if (laneCount < 13) { \
                        X##ki ^= trailingBits; \
                    } \
                    else { \
                        wrapOneInvert(X, input, output, 12, ki) \
                        X##ko ^= trailingBits; \
                    } \
                } \
                else { \
                    wrapOneInvert(X, input, output, 12, ki) \
                    wrapOne(X, input, output, 13, ko) \
                    if (laneCount < 15) { \
                        X##ku ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 14, ku) \
                        X##ma ^= trailingBits; \
                    } \
                } \
            } \
        } \
    } \
    else { \
        wrapOne(X, input, output, 0, ba) \
        wrapOneInvert(X, input, output, 1, be) \
        wrapOneInvert(X, input, output, 2, bi) \
        wrapOne(X, input, output, 3, bo) \
        wrapOne(X, input, output, 4, bu) \
        wrapOne(X, input, output, 5, ga) \
        wrapOne(X, input, output, 6, ge) \
        wrapOne(X, input, output, 7, gi) \
        wrapOneInvert(X, input, output, 8, go) \
        wrapOne(X, input, output, 9, gu) \
        wrapOne(X, input, output, 10, ka) \
        wrapOne(X, input, output, 11, ke) \
        wrapOneInvert(X, input, output, 12, ki) \
        wrapOne(X, input, output, 13, ko) \
        wrapOne(X, input, output, 14, ku) \
        wrapOne(X, input, output, 15, ma) \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    if (laneCount < 17) { \
                        X##me ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 16, me) \
                        X##mi ^= trailingBits; \
                    } \
                } \
                else { \
                    wrapOne(X, input, output, 16, me) \
                    wrapOneInvert(X, input, output, 17, mi) \
                    if (laneCount < 19) { \
                        X##mo ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 18, mo) \
                        X##mu ^= trailingBits; \
                    } \
                } \
            } \
            else { \
                wrapOne(X, input, output, 16, me) \
                wrapOneInvert(X, input, output, 17, mi) \
                wrapOne(X, input, output, 18, mo) \
                wrapOne(X, input, output, 19, mu) \
                if (laneCount < 22) { \
                    if (laneCount < 21) { \
                        X##sa ^= trailingBits; \
                    } \
                    else { \
                        wrapOneInvert(X, input, output, 20, sa) \
                        X##se ^= trailingBits; \
                    } \
                } \
                else { \
                    wrapOneInvert(X, input, output, 20, sa) \
                    wrapOne(X, input, output, 21, se) \
                    if (laneCount < 23) { \
                        X##si ^= trailingBits; \
                    } \
                    else { \
                        wrapOne(X, input, output, 22, si) \
                        X##so ^= trailingBits; \
                    } \
                } \
            } \
        } \
        else { \
            wrapOne(X, input, output, 16, me) \
            wrapOneInvert(X, input, output, 17, mi) \
            wrapOne(X, input, output, 18, mo) \
            wrapOne(X, input, output, 19, mu) \
            wrapOneInvert(X, input, output, 20, sa) \
            wrapOne(X, input, output, 21, se) \
            wrapOne(X, input, output, 22, si) \
            wrapOne(X, input, output, 23, so) \
            if (laneCount < 25) { \
                X##su ^= trailingBits; \
            } \
            else { \
                wrapOne(X, input, output, 24, su) \
            } \
        } \
    }

#define unwrap(X, input, output, laneCount, trailingBits) \
    if (laneCount < 16) { \
        if (laneCount < 8) { \
            if (laneCount < 4) { \
                if (laneCount < 2) { \
                    if (laneCount < 1) { \
                        X##ba ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 0, ba) \
                        X##be ^= trailingBits; \
                    } \
                } \
                else { \
                    unwrapOne(X, input, output, 0, ba) \
                    unwrapOneInvert(X, input, output, 1, be) \
                    if (laneCount < 3) { \
                        X##bi ^= trailingBits; \
                    } \
                    else { \
                        unwrapOneInvert(X, input, output, 2, bi) \
                        X##bo ^= trailingBits; \
                    } \
                } \
            } \
            else { \
                unwrapOne(X, input, output, 0, ba) \
                unwrapOneInvert(X, input, output, 1, be) \
                unwrapOneInvert(X, input, output, 2, bi) \
                unwrapOne(X, input, output, 3, bo) \
                if (laneCount < 6) { \
                    if (laneCount < 5) { \
                        X##bu ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 4, bu) \
                        X##ga ^= trailingBits; \
                    } \
                } \
                else { \
                    unwrapOne(X, input, output, 4, bu) \
                    unwrapOne(X, input, output, 5, ga) \
                    if (laneCount < 7) { \
                        X##ge ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 6, ge) \
                        X##gi ^= trailingBits; \
                    } \
                } \
            } \
        } \
        else { \
            unwrapOne(X, input, output, 0, ba) \
            unwrapOneInvert(X, input, output, 1, be) \
            unwrapOneInvert(X, input, output, 2, bi) \
            unwrapOne(X, input, output, 3, bo) \
            unwrapOne(X, input, output, 4, bu) \
            unwrapOne(X, input, output, 5, ga) \
            unwrapOne(X, input, output, 6, ge) \
            unwrapOne(X, input, output, 7, gi) \
            if (laneCount < 12) { \
                if (laneCount < 10) { \
                    if (laneCount < 9) { \
                        X##go ^= trailingBits; \
                    } \
                    else { \
                        unwrapOneInvert(X, input, output, 8, go) \
                        X##gu ^= trailingBits; \
                    } \
                } \
                else { \
                    unwrapOneInvert(X, input, output, 8, go) \
                    unwrapOne(X, input, output, 9, gu) \
                    if (laneCount < 11) { \
                        X##ka ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 10, ka) \
                        X##ke ^= trailingBits; \
                    } \
                } \
            } \
            else { \
                unwrapOneInvert(X, input, output, 8, go) \
                unwrapOne(X, input, output, 9, gu) \
                unwrapOne(X, input, output, 10, ka) \
                unwrapOne(X, input, output, 11, ke) \
                if (laneCount < 14) { \
                    if (laneCount < 13) { \
                        X##ki ^= trailingBits; \
                    } \
                    else { \
                        unwrapOneInvert(X, input, output, 12, ki) \
                        X##ko ^= trailingBits; \
                    } \
                } \
                else { \
                    unwrapOneInvert(X, input, output, 12, ki) \
                    unwrapOne(X, input, output, 13, ko) \
                    if (laneCount < 15) { \
                        X##ku ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 14, ku) \
                        X##ma ^= trailingBits; \
                    } \
                } \
            } \
        } \
    } \
    else { \
        unwrapOne(X, input, output, 0, ba) \
        unwrapOneInvert(X, input, output, 1, be) \
        unwrapOneInvert(X, input, output, 2, bi) \
        unwrapOne(X, input, output, 3, bo) \
        unwrapOne(X, input, output, 4, bu) \
        unwrapOne(X, input, output, 5, ga) \
        unwrapOne(X, input, output, 6, ge) \
        unwrapOne(X, input, output, 7, gi) \
        unwrapOneInvert(X, input, output, 8, go) \
        unwrapOne(X, input, output, 9, gu) \
        unwrapOne(X, input, output, 10, ka) \
        unwrapOne(X, input, output, 11, ke) \
        unwrapOneInvert(X, input, output, 12, ki) \
        unwrapOne(X, input, output, 13, ko) \
        unwrapOne(X, input, output, 14, ku) \
        unwrapOne(X, input, output, 15, ma) \
        if (laneCount < 24) { \
            if (laneCount < 20) { \
                if (laneCount < 18) { \
                    if (laneCount < 17) { \
                        X##me ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 16, me) \
                        X##mi ^= trailingBits; \
                    } \
                } \
                else { \
                    unwrapOne(X, input, output, 16, me) \
                    unwrapOneInvert(X, input, output, 17, mi) \
                    if (laneCount < 19) { \
                        X##mo ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 18, mo) \
                        X##mu ^= trailingBits; \
                    } \
                } \
            } \
            else { \
                unwrapOne(X, input, output, 16, me) \
                unwrapOneInvert(X, input, output, 17, mi) \
                unwrapOne(X, input, output, 18, mo) \
                unwrapOne(X, input, output, 19, mu) \
                if (laneCount < 22) { \
                    if (laneCount < 21) { \
                        X##sa ^= trailingBits; \
                    } \
                    else { \
                        unwrapOneInvert(X, input, output, 20, sa) \
                        X##se ^= trailingBits; \
                    } \
                } \
                else { \
                    unwrapOneInvert(X, input, output, 20, sa) \
                    unwrapOne(X, input, output, 21, se) \
                    if (laneCount < 23) { \
                        X##si ^= trailingBits; \
                    } \
                    else { \
                        unwrapOne(X, input, output, 22, si) \
                        X##so ^= trailingBits; \
                    } \
                } \
            } \
        } \
        else { \
            unwrapOne(X, input, output, 16, me) \
            unwrapOneInvert(X, input, output, 17, mi) \
            unwrapOne(X, input, output, 18, mo) \
            unwrapOne(X, input, output, 19, mu) \
            unwrapOneInvert(X, input, output, 20, sa) \
            unwrapOne(X, input, output, 21, se) \
            unwrapOne(X, input, output, 22, si) \
            unwrapOne(X, input, output, 23, so) \
            if (laneCount < 25) { \
                X##su ^= trailingBits; \
            } \
            else { \
                unwrapOne(X, input, output, 24, su) \
            } \
        } \
    }



//#include "KeccakP-1600-opt64.c"

#ifdef KeccakP1600_fullUnrolling
#define FullUnrolling
#else
#define Unrolling KeccakP1600_unrolling
#endif



//#include "KeccakP-1600-unrolling.macros"

#if (defined(FullUnrolling))
#define rounds24 \
    prepareTheta \
    thetaRhoPiChiIotaPrepareTheta( 0, A, E) \
    thetaRhoPiChiIotaPrepareTheta( 1, E, A) \
    thetaRhoPiChiIotaPrepareTheta( 2, A, E) \
    thetaRhoPiChiIotaPrepareTheta( 3, E, A) \
    thetaRhoPiChiIotaPrepareTheta( 4, A, E) \
    thetaRhoPiChiIotaPrepareTheta( 5, E, A) \
    thetaRhoPiChiIotaPrepareTheta( 6, A, E) \
    thetaRhoPiChiIotaPrepareTheta( 7, E, A) \
    thetaRhoPiChiIotaPrepareTheta( 8, A, E) \
    thetaRhoPiChiIotaPrepareTheta( 9, E, A) \
    thetaRhoPiChiIotaPrepareTheta(10, A, E) \
    thetaRhoPiChiIotaPrepareTheta(11, E, A) \
    thetaRhoPiChiIotaPrepareTheta(12, A, E) \
    thetaRhoPiChiIotaPrepareTheta(13, E, A) \
    thetaRhoPiChiIotaPrepareTheta(14, A, E) \
    thetaRhoPiChiIotaPrepareTheta(15, E, A) \
    thetaRhoPiChiIotaPrepareTheta(16, A, E) \
    thetaRhoPiChiIotaPrepareTheta(17, E, A) \
    thetaRhoPiChiIotaPrepareTheta(18, A, E) \
    thetaRhoPiChiIotaPrepareTheta(19, E, A) \
    thetaRhoPiChiIotaPrepareTheta(20, A, E) \
    thetaRhoPiChiIotaPrepareTheta(21, E, A) \
    thetaRhoPiChiIotaPrepareTheta(22, A, E) \
    thetaRhoPiChiIota(23, E, A) \

#define rounds12 \
    prepareTheta \
    thetaRhoPiChiIotaPrepareTheta(12, A, E) \
    thetaRhoPiChiIotaPrepareTheta(13, E, A) \
    thetaRhoPiChiIotaPrepareTheta(14, A, E) \
    thetaRhoPiChiIotaPrepareTheta(15, E, A) \
    thetaRhoPiChiIotaPrepareTheta(16, A, E) \
    thetaRhoPiChiIotaPrepareTheta(17, E, A) \
    thetaRhoPiChiIotaPrepareTheta(18, A, E) \
    thetaRhoPiChiIotaPrepareTheta(19, E, A) \
    thetaRhoPiChiIotaPrepareTheta(20, A, E) \
    thetaRhoPiChiIotaPrepareTheta(21, E, A) \
    thetaRhoPiChiIotaPrepareTheta(22, A, E) \
    thetaRhoPiChiIota(23, E, A) \

#elif (Unrolling == 12)
#define rounds24 \
    prepareTheta \
    for(i=0; i<24; i+=12) { \
        thetaRhoPiChiIotaPrepareTheta(i   , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+ 1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+ 2, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+ 3, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+ 4, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+ 5, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+ 6, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+ 7, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+ 8, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+ 9, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+10, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+11, E, A) \
    } \

#define rounds12 \
    prepareTheta \
    thetaRhoPiChiIotaPrepareTheta(12, A, E) \
    thetaRhoPiChiIotaPrepareTheta(13, E, A) \
    thetaRhoPiChiIotaPrepareTheta(14, A, E) \
    thetaRhoPiChiIotaPrepareTheta(15, E, A) \
    thetaRhoPiChiIotaPrepareTheta(16, A, E) \
    thetaRhoPiChiIotaPrepareTheta(17, E, A) \
    thetaRhoPiChiIotaPrepareTheta(18, A, E) \
    thetaRhoPiChiIotaPrepareTheta(19, E, A) \
    thetaRhoPiChiIotaPrepareTheta(20, A, E) \
    thetaRhoPiChiIotaPrepareTheta(21, E, A) \
    thetaRhoPiChiIotaPrepareTheta(22, A, E) \
    thetaRhoPiChiIota(23, E, A) \

#elif (Unrolling == 6)
#define rounds24 \
    prepareTheta \
    for(i=0; i<24; i+=6) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+2, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+3, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+4, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+5, E, A) \
    } \

#define rounds12 \
    prepareTheta \
    for(i=12; i<24; i+=6) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+2, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+3, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+4, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+5, E, A) \
    } \

#elif (Unrolling == 4)
#define rounds24 \
    prepareTheta \
    for(i=0; i<24; i+=4) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+2, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+3, E, A) \
    } \

#define rounds12 \
    prepareTheta \
    for(i=12; i<24; i+=4) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+2, A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+3, E, A) \
    } \

#elif (Unrolling == 3)
#define rounds24 \
    prepareTheta \
    for(i=0; i<24; i+=3) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+2, A, E) \
        copyStateVariables(A, E) \
    } \

#define rounds12 \
    prepareTheta \
    for(i=12; i<24; i+=3) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
        thetaRhoPiChiIotaPrepareTheta(i+2, A, E) \
        copyStateVariables(A, E) \
    } \

#elif (Unrolling == 2)
#define rounds24 \
    prepareTheta \
    for(i=0; i<24; i+=2) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
    } \

#define rounds12 \
    prepareTheta \
    for(i=12; i<24; i+=2) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        thetaRhoPiChiIotaPrepareTheta(i+1, E, A) \
    } \

#elif (Unrolling == 1)
#define rounds24 \
    prepareTheta \
    for(i=0; i<24; i++) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        copyStateVariables(A, E) \
    } \

#define rounds12 \
    prepareTheta \
    for(i=12; i<24; i++) { \
        thetaRhoPiChiIotaPrepareTheta(i  , A, E) \
        copyStateVariables(A, E) \
    } \

#else
#error "Unrolling is not correctly specified!"
#endif




//#include "SnP-Relaned.h"
#define SnP_AddBytes(state, data, offset, length, SnP_AddLanes, SnP_AddBytesInLane, SnP_laneLengthInBytes) \
    { \
        if ((offset) == 0) { \
            SnP_AddLanes(state, data, (length)/SnP_laneLengthInBytes); \
            SnP_AddBytesInLane(state, \
                (length)/SnP_laneLengthInBytes, \
                (data)+((length)/SnP_laneLengthInBytes)*SnP_laneLengthInBytes, \
                0, \
                (length)%SnP_laneLengthInBytes); \
        } \
        else { \
            unsigned int _sizeLeft = (length); \
            unsigned int _lanePosition = (offset)/SnP_laneLengthInBytes; \
            unsigned int _offsetInLane = (offset)%SnP_laneLengthInBytes; \
            const unsigned char *_curData = (data); \
            while(_sizeLeft > 0) { \
                unsigned int _bytesInLane = SnP_laneLengthInBytes - _offsetInLane; \
                if (_bytesInLane > _sizeLeft) \
                    _bytesInLane = _sizeLeft; \
                SnP_AddBytesInLane(state, _lanePosition, _curData, _offsetInLane, _bytesInLane); \
                _sizeLeft -= _bytesInLane; \
                _lanePosition++; \
                _offsetInLane = 0; \
                _curData += _bytesInLane; \
            } \
        } \
    }

#define SnP_OverwriteBytes(state, data, offset, length, SnP_OverwriteLanes, SnP_OverwriteBytesInLane, SnP_laneLengthInBytes) \
    { \
        if ((offset) == 0) { \
            SnP_OverwriteLanes(state, data, (length)/SnP_laneLengthInBytes); \
            SnP_OverwriteBytesInLane(state, \
                (length)/SnP_laneLengthInBytes, \
                (data)+((length)/SnP_laneLengthInBytes)*SnP_laneLengthInBytes, \
                0, \
                (length)%SnP_laneLengthInBytes); \
        } \
        else { \
            unsigned int _sizeLeft = (length); \
            unsigned int _lanePosition = (offset)/SnP_laneLengthInBytes; \
            unsigned int _offsetInLane = (offset)%SnP_laneLengthInBytes; \
            const unsigned char *_curData = (data); \
            while(_sizeLeft > 0) { \
                unsigned int _bytesInLane = SnP_laneLengthInBytes - _offsetInLane; \
                if (_bytesInLane > _sizeLeft) \
                    _bytesInLane = _sizeLeft; \
                SnP_OverwriteBytesInLane(state, _lanePosition, _curData, _offsetInLane, _bytesInLane); \
                _sizeLeft -= _bytesInLane; \
                _lanePosition++; \
                _offsetInLane = 0; \
                _curData += _bytesInLane; \
            } \
        } \
    }

#define SnP_ExtractBytes(state, data, offset, length, SnP_ExtractLanes, SnP_ExtractBytesInLane, SnP_laneLengthInBytes) \
    { \
        if ((offset) == 0) { \
            SnP_ExtractLanes(state, data, (length)/SnP_laneLengthInBytes); \
            SnP_ExtractBytesInLane(state, \
                (length)/SnP_laneLengthInBytes, \
                (data)+((length)/SnP_laneLengthInBytes)*SnP_laneLengthInBytes, \
                0, \
                (length)%SnP_laneLengthInBytes); \
        } \
        else { \
            unsigned int _sizeLeft = (length); \
            unsigned int _lanePosition = (offset)/SnP_laneLengthInBytes; \
            unsigned int _offsetInLane = (offset)%SnP_laneLengthInBytes; \
            unsigned char *_curData = (data); \
            while(_sizeLeft > 0) { \
                unsigned int _bytesInLane = SnP_laneLengthInBytes - _offsetInLane; \
                if (_bytesInLane > _sizeLeft) \
                    _bytesInLane = _sizeLeft; \
                SnP_ExtractBytesInLane(state, _lanePosition, _curData, _offsetInLane, _bytesInLane); \
                _sizeLeft -= _bytesInLane; \
                _lanePosition++; \
                _offsetInLane = 0; \
                _curData += _bytesInLane; \
            } \
        } \
    }

#define SnP_ExtractAndAddBytes(state, input, output, offset, length, SnP_ExtractAndAddLanes, SnP_ExtractAndAddBytesInLane, SnP_laneLengthInBytes) \
    { \
        if ((offset) == 0) { \
            SnP_ExtractAndAddLanes(state, input, output, (length)/SnP_laneLengthInBytes); \
            SnP_ExtractAndAddBytesInLane(state, \
                (length)/SnP_laneLengthInBytes, \
                (input)+((length)/SnP_laneLengthInBytes)*SnP_laneLengthInBytes, \
                (output)+((length)/SnP_laneLengthInBytes)*SnP_laneLengthInBytes, \
                0, \
                (length)%SnP_laneLengthInBytes); \
        } \
        else { \
            unsigned int _sizeLeft = (length); \
            unsigned int _lanePosition = (offset)/SnP_laneLengthInBytes; \
            unsigned int _offsetInLane = (offset)%SnP_laneLengthInBytes; \
            const unsigned char *_curInput = (input); \
            unsigned char *_curOutput = (output); \
            while(_sizeLeft > 0) { \
                unsigned int _bytesInLane = SnP_laneLengthInBytes - _offsetInLane; \
                if (_bytesInLane > _sizeLeft) \
                    _bytesInLane = _sizeLeft; \
                SnP_ExtractAndAddBytesInLane(state, _lanePosition, _curInput, _curOutput, _offsetInLane, _bytesInLane); \
                _sizeLeft -= _bytesInLane; \
                _lanePosition++; \
                _offsetInLane = 0; \
                _curInput += _bytesInLane; \
                _curOutput += _bytesInLane; \
            } \
        } \
    }




//#include "KeccakP-1600-opt64.c"
typedef unsigned char UINT8;
typedef unsigned long long int UINT64;

// this was pasted above
//#if defined(KeccakP1600_useLaneComplementing)
//#define UseBebigokimisa
//#endif

#if defined(_MSC_VER)
#define ROL64(a, offset) _rotl64(a, offset)
#elif defined(KeccakP1600_useSHLD)
    #define ROL64(x,N) ({ \
    register UINT64 __out; \
    register UINT64 __in = x; \
    __asm__ ("shld %2,%0,%0" : "=r"(__out) : "0"(__in), "i"(N)); \
    __out; \
    })
#else
#define ROL64(a, offset) ((((UINT64)a) << offset) ^ (((UINT64)a) >> (64-offset)))
#endif

// Paul commented this out and put it above
//#include "KeccakP-1600-64.macros"
//#ifdef KeccakP1600_fullUnrolling
//#define FullUnrolling
//#else
//#define Unrolling KeccakP1600_unrolling
//#endif
//#include "KeccakP-1600-unrolling.macros"
//#include "SnP-Relaned.h"

static const UINT64 KeccakF1600RoundConstants[24] = {
    0x0000000000000001ULL,
    0x0000000000008082ULL,
    0x800000000000808aULL,
    0x8000000080008000ULL,
    0x000000000000808bULL,
    0x0000000080000001ULL,
    0x8000000080008081ULL,
    0x8000000000008009ULL,
    0x000000000000008aULL,
    0x0000000000000088ULL,
    0x0000000080008009ULL,
    0x000000008000000aULL,
    0x000000008000808bULL,
    0x800000000000008bULL,
    0x8000000000008089ULL,
    0x8000000000008003ULL,
    0x8000000000008002ULL,
    0x8000000000000080ULL,
    0x000000000000800aULL,
    0x800000008000000aULL,
    0x8000000080008081ULL,
    0x8000000000008080ULL,
    0x0000000080000001ULL,
    0x8000000080008008ULL };

/* ---------------------------------------------------------------- */

void KeccakP1600_Initialize(void *state)
{
    memset(state, 0, 200);
#ifdef KeccakP1600_useLaneComplementing
    ((UINT64*)state)[ 1] = ~(UINT64)0;
    ((UINT64*)state)[ 2] = ~(UINT64)0;
    ((UINT64*)state)[ 8] = ~(UINT64)0;
    ((UINT64*)state)[12] = ~(UINT64)0;
    ((UINT64*)state)[17] = ~(UINT64)0;
    ((UINT64*)state)[20] = ~(UINT64)0;
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_AddBytesInLane(void *state, unsigned int lanePosition, const unsigned char *data, unsigned int offset, unsigned int length)
{
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
    UINT64 lane;
    if (length == 0)
        return;
    if (length == 1)
        lane = data[0];
    else {
        lane = 0;
        memcpy(&lane, data, length);
    }
    lane <<= offset*8;
#else
    UINT64 lane = 0;
    unsigned int i;
    for(i=0; i<length; i++)
        lane |= ((UINT64)data[i]) << ((i+offset)*8);
#endif
    ((UINT64*)state)[lanePosition] ^= lane;
}

/* ---------------------------------------------------------------- */

void KeccakP1600_AddLanes(void *state, const unsigned char *data, unsigned int laneCount)
{
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
    unsigned int i = 0;
#ifdef NO_MISALIGNED_ACCESSES
    /* If either pointer is misaligned, fall back to byte-wise xor. */

    if (((((uintptr_t)state) & 7) != 0) || ((((uintptr_t)data) & 7) != 0)) {
      for (i = 0; i < laneCount * 8; i++) {
        ((unsigned char*)state)[i] ^= data[i];
      }
    }
    else
#endif
    {
      /* Otherwise... */

      for( ; (i+8)<=laneCount; i+=8) {
          ((UINT64*)state)[i+0] ^= ((UINT64*)data)[i+0];
          ((UINT64*)state)[i+1] ^= ((UINT64*)data)[i+1];
          ((UINT64*)state)[i+2] ^= ((UINT64*)data)[i+2];
          ((UINT64*)state)[i+3] ^= ((UINT64*)data)[i+3];
          ((UINT64*)state)[i+4] ^= ((UINT64*)data)[i+4];
          ((UINT64*)state)[i+5] ^= ((UINT64*)data)[i+5];
          ((UINT64*)state)[i+6] ^= ((UINT64*)data)[i+6];
          ((UINT64*)state)[i+7] ^= ((UINT64*)data)[i+7];
      }
      for( ; (i+4)<=laneCount; i+=4) {
          ((UINT64*)state)[i+0] ^= ((UINT64*)data)[i+0];
          ((UINT64*)state)[i+1] ^= ((UINT64*)data)[i+1];
          ((UINT64*)state)[i+2] ^= ((UINT64*)data)[i+2];
          ((UINT64*)state)[i+3] ^= ((UINT64*)data)[i+3];
      }
      for( ; (i+2)<=laneCount; i+=2) {
          ((UINT64*)state)[i+0] ^= ((UINT64*)data)[i+0];
          ((UINT64*)state)[i+1] ^= ((UINT64*)data)[i+1];
      }
      if (i<laneCount) {
          ((UINT64*)state)[i+0] ^= ((UINT64*)data)[i+0];
      }
    }
#else
    unsigned int i;
    UINT8 *curData = data;
    for(i=0; i<laneCount; i++, curData+=8) {
        UINT64 lane = (UINT64)curData[0]
            | ((UINT64)curData[1] << 8)
            | ((UINT64)curData[2] << 16)
            | ((UINT64)curData[3] << 24)
            | ((UINT64)curData[4] <<32)
            | ((UINT64)curData[5] << 40)
            | ((UINT64)curData[6] << 48)
            | ((UINT64)curData[7] << 56);
        ((UINT64*)state)[i] ^= lane;
    }
#endif
}

/* ---------------------------------------------------------------- */

#if (PLATFORM_BYTE_ORDER != IS_LITTLE_ENDIAN)
void KeccakP1600_AddByte(void *state, unsigned char byte, unsigned int offset)
{
    UINT64 lane = byte;
    lane <<= (offset%8)*8;
    ((UINT64*)state)[offset/8] ^= lane;
}
#endif

/* ---------------------------------------------------------------- */

void KeccakP1600_AddBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length)
{
    SnP_AddBytes(state, data, offset, length, KeccakP1600_AddLanes, KeccakP1600_AddBytesInLane, 8);
}

/* ---------------------------------------------------------------- */

void KeccakP1600_OverwriteBytesInLane(void *state, unsigned int lanePosition, const unsigned char *data, unsigned int offset, unsigned int length)
{
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
#ifdef KeccakP1600_useLaneComplementing
    if ((lanePosition == 1) || (lanePosition == 2) || (lanePosition == 8) || (lanePosition == 12) || (lanePosition == 17) || (lanePosition == 20)) {
        unsigned int i;
        for(i=0; i<length; i++)
            ((unsigned char*)state)[lanePosition*8+offset+i] = ~data[i];
    }
    else
#endif
    {
        memcpy((unsigned char*)state+lanePosition*8+offset, data, length);
    }
#else
#error "Not yet implemented"
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_OverwriteLanes(void *state, const unsigned char *data, unsigned int laneCount)
{
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
#ifdef KeccakP1600_useLaneComplementing
    unsigned int lanePosition;

    for(lanePosition=0; lanePosition<laneCount; lanePosition++)
        if ((lanePosition == 1) || (lanePosition == 2) || (lanePosition == 8) || (lanePosition == 12) || (lanePosition == 17) || (lanePosition == 20))
            ((UINT64*)state)[lanePosition] = ~((const UINT64*)data)[lanePosition];
        else
            ((UINT64*)state)[lanePosition] = ((const UINT64*)data)[lanePosition];
#else
    memcpy(state, data, laneCount*8);
#endif
#else
#error "Not yet implemented"
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_OverwriteBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length)
{
    SnP_OverwriteBytes(state, data, offset, length, KeccakP1600_OverwriteLanes, KeccakP1600_OverwriteBytesInLane, 8);
}

/* ---------------------------------------------------------------- */

void KeccakP1600_OverwriteWithZeroes(void *state, unsigned int byteCount)
{
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
#ifdef KeccakP1600_useLaneComplementing
    unsigned int lanePosition;

    for(lanePosition=0; lanePosition<byteCount/8; lanePosition++)
        if ((lanePosition == 1) || (lanePosition == 2) || (lanePosition == 8) || (lanePosition == 12) || (lanePosition == 17) || (lanePosition == 20))
            ((UINT64*)state)[lanePosition] = ~0;
        else
            ((UINT64*)state)[lanePosition] = 0;
    if (byteCount%8 != 0) {
        lanePosition = byteCount/8;
        if ((lanePosition == 1) || (lanePosition == 2) || (lanePosition == 8) || (lanePosition == 12) || (lanePosition == 17) || (lanePosition == 20))
            memset((unsigned char*)state+lanePosition*8, 0xFF, byteCount%8);
        else
            memset((unsigned char*)state+lanePosition*8, 0, byteCount%8);
    }
#else
    memset(state, 0, byteCount);
#endif
#else
#error "Not yet implemented"
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_Permute_24rounds(void *state)
{
    declareABCDE
    #ifndef KeccakP1600_fullUnrolling
    unsigned int i;
    #endif
    UINT64 *stateAsLanes = (UINT64*)state;

    copyFromState(A, stateAsLanes)
    rounds24
    copyToState(stateAsLanes, A)
}

/* ---------------------------------------------------------------- */

void KeccakP1600_Permute_12rounds(void *state)
{
    declareABCDE
    #ifndef KeccakP1600_fullUnrolling
    unsigned int i;
    #endif
    UINT64 *stateAsLanes = (UINT64*)state;

    copyFromState(A, stateAsLanes)
    rounds12
    copyToState(stateAsLanes, A)
}

/* ---------------------------------------------------------------- */

void KeccakP1600_ExtractBytesInLane(const void *state, unsigned int lanePosition, unsigned char *data, unsigned int offset, unsigned int length)
{
    UINT64 lane = ((UINT64*)state)[lanePosition];
#ifdef KeccakP1600_useLaneComplementing
    if ((lanePosition == 1) || (lanePosition == 2) || (lanePosition == 8) || (lanePosition == 12) || (lanePosition == 17) || (lanePosition == 20))
        lane = ~lane;
#endif
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
    {
        UINT64 lane1[1];
        lane1[0] = lane;
        memcpy(data, (UINT8*)lane1+offset, length);
    }
#else
    unsigned int i;
    lane >>= offset*8;
    for(i=0; i<length; i++) {
        data[i] = lane & 0xFF;
        lane >>= 8;
    }
#endif
}

/* ---------------------------------------------------------------- */

#if (PLATFORM_BYTE_ORDER != IS_LITTLE_ENDIAN)
void fromWordToBytes(UINT8 *bytes, const UINT64 word)
{
    unsigned int i;

    for(i=0; i<(64/8); i++)
        bytes[i] = (word >> (8*i)) & 0xFF;
}
#endif

void KeccakP1600_ExtractLanes(const void *state, unsigned char *data, unsigned int laneCount)
{
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
    memcpy(data, state, laneCount*8);
#else
    unsigned int i;

    for(i=0; i<laneCount; i++)
        fromWordToBytes(data+(i*8), ((const UINT64*)state)[i]);
#endif
#ifdef KeccakP1600_useLaneComplementing
    if (laneCount > 1) {
        ((UINT64*)data)[ 1] = ~((UINT64*)data)[ 1];
        if (laneCount > 2) {
            ((UINT64*)data)[ 2] = ~((UINT64*)data)[ 2];
            if (laneCount > 8) {
                ((UINT64*)data)[ 8] = ~((UINT64*)data)[ 8];
                if (laneCount > 12) {
                    ((UINT64*)data)[12] = ~((UINT64*)data)[12];
                    if (laneCount > 17) {
                        ((UINT64*)data)[17] = ~((UINT64*)data)[17];
                        if (laneCount > 20) {
                            ((UINT64*)data)[20] = ~((UINT64*)data)[20];
                        }
                    }
                }
            }
        }
    }
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_ExtractBytes(const void *state, unsigned char *data, unsigned int offset, unsigned int length)
{
    SnP_ExtractBytes(state, data, offset, length, KeccakP1600_ExtractLanes, KeccakP1600_ExtractBytesInLane, 8);
}

/* ---------------------------------------------------------------- */

void KeccakP1600_ExtractAndAddBytesInLane(const void *state, unsigned int lanePosition, const unsigned char *input, unsigned char *output, unsigned int offset, unsigned int length)
{
    UINT64 lane = ((UINT64*)state)[lanePosition];
#ifdef KeccakP1600_useLaneComplementing
    if ((lanePosition == 1) || (lanePosition == 2) || (lanePosition == 8) || (lanePosition == 12) || (lanePosition == 17) || (lanePosition == 20))
        lane = ~lane;
#endif
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
    {
        unsigned int i;
        UINT64 lane1[1];
        lane1[0] = lane;
        for(i=0; i<length; i++)
            output[i] = input[i] ^ ((UINT8*)lane1)[offset+i];
    }
#else
    unsigned int i;
    lane >>= offset*8;
    for(i=0; i<length; i++) {
        output[i] = input[i] ^ (lane & 0xFF);
        lane >>= 8;
    }
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_ExtractAndAddLanes(const void *state, const unsigned char *input, unsigned char *output, unsigned int laneCount)
{
    unsigned int i;
#if (PLATFORM_BYTE_ORDER != IS_LITTLE_ENDIAN)
    unsigned char temp[8];
    unsigned int j;
#endif

    for(i=0; i<laneCount; i++) {
#if (PLATFORM_BYTE_ORDER == IS_LITTLE_ENDIAN)
        ((UINT64*)output)[i] = ((UINT64*)input)[i] ^ ((const UINT64*)state)[i];
#else
        fromWordToBytes(temp, ((const UINT64*)state)[i]);
        for(j=0; j<8; j++)
            output[i*8+j] = input[i*8+j] ^ temp[j];
#endif
    }
#ifdef KeccakP1600_useLaneComplementing
    if (laneCount > 1) {
        ((UINT64*)output)[ 1] = ~((UINT64*)output)[ 1];
        if (laneCount > 2) {
            ((UINT64*)output)[ 2] = ~((UINT64*)output)[ 2];
            if (laneCount > 8) {
                ((UINT64*)output)[ 8] = ~((UINT64*)output)[ 8];
                if (laneCount > 12) {
                    ((UINT64*)output)[12] = ~((UINT64*)output)[12];
                    if (laneCount > 17) {
                        ((UINT64*)output)[17] = ~((UINT64*)output)[17];
                        if (laneCount > 20) {
                            ((UINT64*)output)[20] = ~((UINT64*)output)[20];
                        }
                    }
                }
            }
        }
    }
#endif
}

/* ---------------------------------------------------------------- */

void KeccakP1600_ExtractAndAddBytes(const void *state, const unsigned char *input, unsigned char *output, unsigned int offset, unsigned int length)
{
    SnP_ExtractAndAddBytes(state, input, output, offset, length, KeccakP1600_ExtractAndAddLanes, KeccakP1600_ExtractAndAddBytesInLane, 8);
}

/* ---------------------------------------------------------------- */

size_t KeccakF1600_FastLoop_Absorb(void *state, unsigned int laneCount, const unsigned char *data, size_t dataByteLen)
{
    size_t originalDataByteLen = dataByteLen;
    declareABCDE
    #ifndef KeccakP1600_fullUnrolling
    unsigned int i;
    #endif
    UINT64 *stateAsLanes = (UINT64*)state;
    UINT64 *inDataAsLanes = (UINT64*)data;

    copyFromState(A, stateAsLanes)
    while(dataByteLen >= laneCount*8) {
        addInput(A, inDataAsLanes, laneCount)
        rounds24
        inDataAsLanes += laneCount;
        dataByteLen -= laneCount*8;
    }
    copyToState(stateAsLanes, A)
    return originalDataByteLen - dataByteLen;
}















unsigned char out[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};


void _main(){

  int length = eth2_blockDataSize(); //length in bytes
  unsigned char* in = (unsigned char*) malloc(length);
  eth2_blockDataCopy( (uint32_t*)in, 0, length ); //get data to hash into memory
  //unsigned char out[32];

Keccak_HashInstance hashInstance;
Keccak_HashInitialize(&hashInstance, 1088, 512, 256, 0x01);
Keccak_HashUpdate(&hashInstance, in, length);
Keccak_HashFinal(&hashInstance, out);

  eth2_savePostStateRoot((i32ptr*)out);

}
