#include "ewasm.h"

i32ptr x[] = {0,0,0,0,0,0,0,0};
i32ptr y[] = {0,0,0,0,0,0,0,0};
i32ptr out[] = {0,0,0,0,0,0,0,0};

// ewasm entry point
void _main(){

  callDataCopy(x, 4, 32);
  callDataCopy(y, 36, 32);

  for( int i=0; i<10000; ++i ){
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);

    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);

    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);

    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
    mul256(y,x,out); mul256(y,out,x); mul256(y,x,out); mul256(y,out,x);
  }

  finish(x, 32);

}
