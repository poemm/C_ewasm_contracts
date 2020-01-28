#include "ewasm.h"

i32ptr x[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
i32ptr y[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
i32ptr out[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

// ewasm entry point
void _main(){

  eth2_blockDataCopy(x, 4, 32);
  eth2_blockDataCopy(y, 36, 32);

  for( int i=0; i<10000; ++i ){
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);

    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);

    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);

    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
    eth2_mul256(y,x,out); eth2_mul256(y,out,x); eth2_mul256(y,x,out); eth2_mul256(y,out,x);
  }

  eth2_savePostStateRoot(x);

}
