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

/*
Implemented following: Knuth TAOCP, Volume 3, section 4.3.1, algorithm M: Multiplication of nonnegative integers. But since modulo 2^256, removed as many multiplcations as possible.
*/


#include "ewasm.h"







i32ptr x[] = {0,0,0,0,0,0,0,0};
i32ptr y[] = {0,0,0,0,0,0,0,0};
i32ptr z[] = {0,0,0,0,0,0,0,0};

// ewasm entry point
void _main(){

  callDataCopy(x, 4, 32);
  callDataCopy(y, 36, 32);

  for( int i=0; i<100000; ++i ){
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);

    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);

    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);

    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
    mul256(y,x,z); mul256(y,z,x); mul256(y,x,z); mul256(y,z,x);
  }

  finish(x, 32);

}





/*
// this test passes. These values were cross-tested in python.
int test(){

  // test values found https://github.com/cdetrio/fluence-wasm-bencher/blob/evm-runner/evmrace/ewasm-code/mul256/src/lib.rs
  uint32_t x[] = {2149855663, 3419283393, 2496260772, 397605735, 3698698589, 2965143238, 2982719249, 3748273577};
  uint32_t y[] = {2717231809, 931619968, 623795658, 3324785998, 3235130230, 2959354721, 2179795352, 1240079703};
  uint32_t* z = mul256(x,y);
  uint32_t z_correct[] = {3394174510, 1855079414, 1621212820, 1846600096, 2986217620, 3881882806, 1184205870, 1072052591};
  for (int i=0; i<8; i++){
    if(z[i]!=z_correct[i])
      return -1;
  }

  return 0;
}
*/




// can export start fuction
/*
void _start(){
  _main();
}
*/
