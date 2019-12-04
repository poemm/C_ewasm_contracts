
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
original spec: https://gist.github.com/axic/16158c5c88fbc7b1d09dfa8c658bc363

This prototype reduce size to minimal logic, for comparison with evm bytecode. Not compatible with current Ewasm.

*/



#include "ewasm.h"


// global data used in next function, will be allocated to WebAssembly memory
bytes32 addy[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
bytes32 balance[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void do_balance() {
  if (getCallDataSize() != 24)
    revert(0, 0);

  // get address to check balance of, note: padded to 32 bytes since used as key
  callDataCopy((i32ptr*)addy, 4, 20);

  // get balance
  storageLoad((i32ptr*)addy, (i32ptr*)balance);

  // return balance
  finish((i32ptr*)balance, 32);
}


// global data used in next function, will be allocated to WebAssembly memory
bytes32 sender[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
bytes32 recipient[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
bytes32 value[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
bytes32 recipient_balance[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
bytes32 sender_balance[] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void do_transfer() {
  if (getCallDataSize() != 32)
    revert(0, 0);

  // get caller
  getCaller((i32ptr*)sender);

  // get recipient from message at byte 4, length 20
  callDataCopy((i32ptr*)recipient, 4, 20);

  // get amount to transfer from message at byte 24, length 8
  callDataCopy((i32ptr*)value, 24, 8);

  // get balances
  storageLoad((i32ptr*)sender, (i32ptr*)sender_balance);
  storageLoad((i32ptr*)recipient, (i32ptr*)recipient_balance);

  // make sure sender has enough
  if (*(i64*)sender_balance < *(i64*)value)
    revert(0, 0);

  // adjust balances
  * (i64*)sender_balance -= * (i64*)value;
  * (i64*)recipient_balance += * (i64*)value;

  // store results
  storageStore((i32ptr*)sender, (i32ptr*)sender_balance);
  storageStore((i32ptr*)recipient, (i32ptr*)recipient_balance);

}

