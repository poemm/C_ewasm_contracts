(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i64) (result i64)))
  (type (;5;) (func))
  (import "env" "getCallDataSize" (func $getCallDataSize (type 0)))
  (import "env" "revert" (func $revert (type 1)))
  (import "env" "callDataCopy" (func $callDataCopy (type 2)))
  (import "env" "storageLoad" (func $storageLoad (type 1)))
  (import "env" "finish" (func $finish (type 1)))
  (import "env" "getCaller" (func $getCaller (type 3)))
  (import "env" "storageStore" (func $storageStore (type 1)))
  (func $reverse_bytes_64 (type 4) (param i64) (result i64)
    local.get 0
    i64.const 56
    i64.shl
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or)
  (func $do_balance (type 5)
    block  ;; label = @1
      call $getCallDataSize
      i32.const 24
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $revert
    end
    i32.const 1024
    i32.const 4
    i32.const 20
    call $callDataCopy
    i32.const 1024
    i32.const 1056
    call $storageLoad
    i32.const 1056
    i32.const 32
    call $finish)
  (func $do_transfer (type 5)
    (local i64 i64)
    block  ;; label = @1
      call $getCallDataSize
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $revert
    end
    i32.const 1088
    call $getCaller
    i32.const 1120
    i32.const 4
    i32.const 20
    call $callDataCopy
    i32.const 1152
    i32.const 24
    i32.const 8
    call $callDataCopy
    i32.const 0
    i32.const 0
    i64.load offset=1152
    call $reverse_bytes_64
    i64.store offset=1152
    i32.const 1088
    i32.const 1216
    call $storageLoad
    i32.const 1120
    i32.const 1184
    call $storageLoad
    i32.const 0
    i32.const 0
    i64.load offset=1216
    call $reverse_bytes_64
    local.tee 0
    i64.store offset=1216
    i32.const 0
    i32.const 0
    i64.load offset=1184
    call $reverse_bytes_64
    i64.store offset=1184
    block  ;; label = @1
      local.get 0
      i32.const 0
      i64.load offset=1152
      i64.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $revert
    end
    i32.const 0
    i64.load offset=1184
    local.set 0
    i32.const 0
    i32.const 0
    i64.load offset=1216
    i32.const 0
    i64.load offset=1152
    local.tee 1
    i64.sub
    call $reverse_bytes_64
    i64.store offset=1216
    i32.const 0
    local.get 0
    local.get 1
    i64.add
    call $reverse_bytes_64
    i64.store offset=1184
    i32.const 1088
    i32.const 1216
    call $storageStore
    i32.const 1120
    i32.const 1184
    call $storageStore)
  (func $_main (type 5)
    (local i32)
    block  ;; label = @1
      call $getCallDataSize
      i32.const 3
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $revert
    end
    i32.const 1248
    i32.const 0
    i32.const 4
    call $callDataCopy
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1248
        local.tee 0
        i32.const -1113639587
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 436376473
        i32.ne
        br_if 1 (;@1;)
        call $do_balance
        return
      end
      call $do_transfer
      return
    end
    i32.const 0
    i32.const 0
    call $revert)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66800))
  (global (;1;) i32 (i32.const 66800))
  (global (;2;) i32 (i32.const 1252))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "_main" (func $_main))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
