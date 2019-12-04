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
