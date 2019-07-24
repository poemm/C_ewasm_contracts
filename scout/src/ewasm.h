/*
    Copyright 2019 Paul Dworzanski et al.

    This file is part of c_ewasm_contracts.

    c_ewasm_contracts is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    c_ewasm_contracts is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with c_ewasm_contracts.  If not, see <https://www.gnu.org/licenses/>.
*/

#ifndef EWASM_H
#define EWASM_H


///////////
// Types //
///////////

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;

#ifdef NATIVE
#else
typedef char int8_t;
typedef long long int64_t;
#endif
typedef short int16_t;
typedef int int32_t;

#define NULL (void*)0	//TODO: check how libc defines NULL, I think this affects many things

typedef unsigned long size_t;

//////////////////////////
// Types For Wasm Stuff //
//////////////////////////

typedef uint32_t i32; // same as i32 in WebAssembly
typedef uint64_t i64; // same as i64 in WebAssembly



//////////////////////////////
// Types for Ethereum Stuff //
//////////////////////////////

typedef uint8_t* bytes; // an array of bytes with unrestricted length
typedef uint8_t bytes32[32]; // an array of 32 bytes
typedef uint8_t address[20]; // an array of 20 bytes
typedef unsigned __int128 u128; // a 128 bit number, represented as a 16 bytes long little endian unsigned integer in memory, not sure if this works
//typedef uint256_t u256; // a 256 bit number, represented as a 32 bytes long little endian unsigned integer in memory, doesn't work
typedef uint32_t i32ptr; // same as i32 in WebAssembly, but treated as a pointer to a WebAssembly memory offset
// ethereum interface functions




////////////////////////////
// EEI Method Declaration //
////////////////////////////

void eth2_loadPreStateRoot(uint32_t* offset);
uint32_t eth2_blockDataSize();
void eth2_blockDataCopy(uint32_t* outputOfset, uint32_t offset, uint32_t length);
void eth2_savePostStateRoot(uint32_t* offset);
void eth2_pushNewDeposit(uint32_t* offset, uint32_t length);

#ifdef NATIVE
// dummy functions
void eth2_loadPreStateRoot(uint32_t* offset){return;}
uint32_t eth2_blockDataSize(){return 1;}
void eth2_blockDataCopy(uint32_t offset, uint32_t length, uint32_t* outputOfset){return;}
void eth2_savePostStateRoot(const uint32_t* offset){return;}
void eth2_pushNewDeposit(uint32_t* offset, uint32_t length){return;}
#endif



// testing experimental
#define BIGINT true
#if BIGINT==true
void mul256(i32ptr* out, i32ptr* x, i32ptr* y);
#endif



///////////////////////////////////////////////////
// Useful Intrinsics, Not Including Memory Stuff //
///////////////////////////////////////////////////

extern void __builtin_unreachable();			// wasm unreachable opcode
extern int __builtin_ctz(unsigned int); 		// wasm i32.ctz opcode
extern int __builtin_ctzll(unsigned long long); 	// wasm i64.ctz opcode
// there are many more like this



////////////////////////////
// Memory Managment Stuff //
////////////////////////////

#define PAGE_SIZE 65536
#define GROWABLE_MEMORY true	// whether we want memory to be growable; true/false

extern unsigned char __heap_base;	// heap_base is immutable position where their model of heap grows down from, can ignore
extern unsigned char __data_end;	// data_end is immutable position in memory up to where statically allocated things are
extern unsigned long __builtin_wasm_memory_grow(int, unsigned long);	// first arg is mem idx 0, second arg is pages
extern unsigned long __builtin_wasm_memory_size(int);	// arg must be zero until more memory instances are available

// sample uses:
//  unsigned char* heap_base = &__heap_base;
//  unsigned char* data_end = &__data_end;
//  unsigned int memory_size = __builtin_wasm_memory_size(0);


#ifdef NATIVE
#include<stdlib.h> //malloc
#include<string.h> //memcpy
#else
__attribute__ ((noinline))
void* malloc(const size_t size){
  //  Our malloc is naive: we only append to the end of the previous allocation, starting at data_end. This is tuned for short runtimes where memory management cost is expensive, not many things are allocated, or not many things are freed.
  //  It seems (in May 2019) that LLVM->Wasm starts data_end at 1024 plus anything that is statically stored in memory at compile-time. So our heap starts at data_end and grows upwards.
  //  WARNING: There is a bug. LLVM may output code which uses a stack which grows down from `heap_base`. If this is the case, then heap and stack can collide. We are still evaluating our options, but for now, we leave this because it is memory efficient.

  // this heap pointer starts at data_end and always increments upward
  static uint8_t* heap_ptr = &__data_end;

  uint32_t total_bytes_needed = ((uint32_t)heap_ptr)+size;
  // check whether we have enough memory, and handle if we don't
  if (total_bytes_needed > __builtin_wasm_memory_size(0)*PAGE_SIZE){ // if exceed current memory size
    #if GROWABLE_MEMORY==true
      uint32_t total_pages_needed = total_bytes_needed/PAGE_SIZE + (total_bytes_needed%PAGE_SIZE)?1:0;
      __builtin_wasm_memory_grow(0, total_pages_needed - __builtin_wasm_memory_size(0));
      // note: if we go over the limit of 2^32 bytes of memory, then this memory_grow will trap
    #else
      // for conciseness, we do nothing here, but if we access memory outside of bounds, then it will trap
    #endif
  }

  heap_ptr = (uint8_t*)total_bytes_needed;
  return (void*)(heap_ptr-size);
}

__attribute__ ((noinline))
void* memcpy(void* restrict destination, const void* restrict source, size_t len) {
  uint8_t* destination_ptr = (uint8_t*) destination;
  uint8_t* source_ptr = (uint8_t*) source;
  // copy 8-byte chunks
  while (len > 7) {
    *(uint64_t*)destination_ptr = *(uint64_t*)source_ptr;
    destination_ptr+=8;
    source_ptr+=8;
    len-=8;
  }
  // copy rest 1-byte at a time
  while (len-- > 0)
    *destination_ptr++ = *source_ptr++;
  return destination;
}

__attribute__ ((noinline))
void* memset(void* restrict in, int c, size_t len) {
  uint8_t* in_ptr = (uint8_t*)in;
  if (len>8){
    // set in 8-byte chunks
    uint64_t c64 = c + (c<<8) + (c<<16) + (c<<24) + (((uint64_t)c)<<32) + (((uint64_t)c)<<40) + (((uint64_t)c)<<56);
    while (len > 7) {
      *(uint64_t*)in_ptr = c64;
      in_ptr+=8;
      len-=8;
    }
  }
  // set rest 1-byte at a time
  while (len-- > 0) {
    *in_ptr++ = c;
  }
  return in_ptr;
}

//__attribute__ ((noinline))
int memcmp ( const void * in1, const void * in2, size_t num ){
  // TODO: do this in 64-bit chunks, then 8-bit chunks at end
  uint8_t* in1_ptr = (uint8_t*) in1;
  uint8_t* in2_ptr = (uint8_t*) in2;
  int ret=0;
  for (int i=0;i<num;++i){
    if (in1_ptr[i]!=in2_ptr[i]){
      if (in1_ptr[i]!=in2_ptr[i])
        ret=1;
      else
        ret=-1;
      break;
    }
  }
  return ret;
}
#endif


///////////
// Other //
///////////

/*
Below are some things which you can use to give LLVM hints to do certain things.

__attribute__((import_module("ethereum")))	- doesn't work
__attribute__((import_name("funcname")))	- doesn't work
__attribute__((visibility("default"))) 		- make function exported
__attribute__((visibility("hidden")))		- make thing not exported
__attribute__((visibility("used")))		- make variable const global and exported
__attribute__((noinline))			- don't inline this function, since llvm tries to inline it since code size is less important for LLVM
__attribute__((always_inline))
__attribute__((noreturn))

e.g. create a global variable (but it will be immutable, don't know how to create a mutable one):
   __attribute__((used))
   static int heap_ptr=0;

*/

void exit(int i){ __builtin_unreachable(); }

// convert between big-endian and little-endian
__attribute__ ((noinline))
i32 reverse_bytes_32(i32 a){
  i32 b = 0;
  b |= (a & 0xff000000)>>24;
  b |= (a & 0x00ff0000)>>8;
  b |= (a & 0x0000ff00)<<8;
  b |= (a & 0x000000ff)<<24;
  return b;
}

__attribute__ ((noinline))
i64 reverse_bytes_64(i64 a){
  i64 b = 0;
  b |= (a & 0xff00000000000000)>>56;
  b |= (a & 0x00ff000000000000)>>40;
  b |= (a & 0x0000ff0000000000)>>24;
  b |= (a & 0x000000ff00000000)>>8;
  b |= (a & 0x00000000ff000000)<<8;
  b |= (a & 0x0000000000ff0000)<<24;
  b |= (a & 0x000000000000ff00)<<40;
  b |= (a & 0x00000000000000ff)<<56;
  return b;
}

// needed for ecrecover, not sure where these belong
/*
#define SIZE_MAX 65535
long long __multi3 (long long a, long long b){
  return a*b;
}
*/

// for testing, can export start fuction
//void _start(){  _main(); }

#endif

