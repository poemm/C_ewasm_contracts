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



#include "ewasm.h"




#define ITER(a,b,c) \
  t = (uint64_t)(u[a]) * (uint64_t)(v[b]) + w[c] + k; \
  w[c] = (uint32_t)t; \
  k = t >> 32;  //carry

#define ITERLAST(a,b,c) \
  t = (uint64_t)(u[a]) * (uint64_t)(v[b]) + w[c] + k; \
  w[c] = (uint32_t)t; \
  k = 0;


// takes two 256-bit values, each as 8 32-bit limbs, and multiplies them modulo 2^256
// algorithm and notation taken from Knuth TAOCP, Volume 3, section 4.3.1, algorithm M, but some multiplications can be omitted, and everything is unrolled for speed
void mul256(uint32_t *u_in, uint32_t* v_in, uint32_t* out){

  uint32_t u[] = {u_in[7],u_in[6],u_in[5],u_in[4],u_in[3],u_in[2],u_in[1],u_in[0]};
  uint32_t v[] = {v_in[7],v_in[6],v_in[5],v_in[4],v_in[3],v_in[2],v_in[1],v_in[0]};

  uint32_t w[] = {0,0,0,0,0,0,0,0};

  uint32_t k = 0; //carry
  uint64_t t = 0;

  ITER(7,7,7)
  ITER(6,7,6)
  ITER(5,7,5)
  ITER(4,7,4)
  ITER(3,7,3)
  ITER(2,7,2)
  ITER(1,7,1)
  ITERLAST(0,7,0)
  ITER(7,6,6)
  ITER(6,6,5)
  ITER(5,6,4)
  ITER(4,6,3)
  ITER(3,6,2)
  ITER(2,6,1)
  ITERLAST(1,6,0)
  ITER(7,5,5)
  ITER(6,5,4)
  ITER(5,5,3)
  ITER(4,5,2)
  ITER(3,5,1)
  ITERLAST(2,5,0)
  ITER(7,4,4)
  ITER(6,4,3)
  ITER(5,4,2)
  ITER(4,4,1)
  ITERLAST(3,4,0)
  ITER(7,3,3)
  ITER(6,3,2)
  ITER(5,3,1)
  ITERLAST(4,3,0)
  ITER(7,2,2)
  ITER(6,2,1)
  ITERLAST(5,2,0)
  ITER(7,1,1)
  ITERLAST(6,1,0)
  ITERLAST(7,0,0)

  out[0]=w[7];
  out[1]=w[6];
  out[2]=w[5];
  out[3]=w[4];
  out[4]=w[3];
  out[5]=w[2];
  out[6]=w[1];
  out[7]=w[0];


/* below is big endian
  uint32_t u[] = {u_in[0],u_in[1],u_in[2],u_in[3],u_in[4],u_in[5],u_in[6],u_in[7]};
  uint32_t v[] = {v_in[0],v_in[1],v_in[2],v_in[3],v_in[4],v_in[5],v_in[6],v_in[7]};
  uint32_t w[] = {0,0,0,0,0,0,0,0};

  uint32_t k = 0; //carry
  uint64_t t = 0;

  ITER(7,7,7)
  ITER(6,7,6)
  ITER(5,7,5)
  ITER(4,7,4)
  ITER(3,7,3)
  ITER(2,7,2)
  ITER(1,7,1)
  ITERLAST(0,7,0)
  ITER(7,6,6)
  ITER(6,6,5)
  ITER(5,6,4)
  ITER(4,6,3)
  ITER(3,6,2)
  ITER(2,6,1)
  ITERLAST(1,6,0)
  ITER(7,5,5)
  ITER(6,5,4)
  ITER(5,5,3)
  ITER(4,5,2)
  ITER(3,5,1)
  ITERLAST(2,5,0)
  ITER(7,4,4)
  ITER(6,4,3)
  ITER(5,4,2)
  ITER(4,4,1)
  ITERLAST(3,4,0)
  ITER(7,3,3)
  ITER(6,3,2)
  ITER(5,3,1)
  ITERLAST(4,3,0)
  ITER(7,2,2)
  ITER(6,2,1)
  ITERLAST(5,2,0)
  ITER(7,1,1)
  ITERLAST(6,1,0)
  ITERLAST(7,0,0)

  out[0]=w[0];
  out[1]=w[1];
  out[2]=w[2];
  out[3]=w[3];
  out[4]=w[4];
  out[5]=w[5];
  out[6]=w[6];
  out[7]=w[7];
*/

}



// global arrays map to wasm memory
i32ptr x[] = {0,0,0,0,0,0,0,0};
i32ptr y[] = {0,0,0,0,0,0,0,0};
i32ptr z[] = {0,0,0,0,0,0,0,0};

// ewasm entry point
void _main(){

  callDataCopy(x, 4, 32);
  callDataCopy(y, 36, 32);

  mul256(x,y,z);

  finish(z, 32);

}

