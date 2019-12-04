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

# to use, read the makefile to make sure you have dependencies, then:
make

# to test with scout:
path/to/scout/target/debug/phase2-scout test.yaml

*/

#include "ewasm.h"

uint8_t pre_state_root[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
uint8_t post_state_root[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void _main(void) {

  eth2_loadPreStateRoot((uint32_t*)pre_state_root);

  uint32_t in_size = eth2_blockDataSize();
  if (in_size != 0){
    return;
  }

  for (int i=0; i<32; i++)
    post_state_root[i] = pre_state_root[i];

  eth2_savePostStateRoot((uint32_t*)post_state_root);

}

