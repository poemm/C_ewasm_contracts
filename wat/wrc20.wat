(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i64) (result i64)))
  (type (;5;) (func))
  (import "ethereum" "getCallDataSize" (func (;0;) (type 0)))
  (import "ethereum" "revert" (func (;1;) (type 1)))
  (import "ethereum" "callDataCopy" (func (;2;) (type 2)))
  (import "ethereum" "storageLoad" (func (;3;) (type 1)))
  (import "ethereum" "finish" (func (;4;) (type 1)))
  (import "ethereum" "getCaller" (func (;5;) (type 3)))
  (import "ethereum" "storageStore" (func (;6;) (type 1)))
  (func (;7;) (type 4) (param i64) (result i64)
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
  (func (;8;) (type 5)
    block  ;; label = @1
      call 0
      i32.const 24
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 1
    end
    i32.const 1024
    i32.const 4
    i32.const 20
    call 2
    i32.const 1024
    i32.const 1056
    call 3
    i32.const 1056
    i32.const 32
    call 4)
  (func (;9;) (type 5)
    (local i64 i64)
    block  ;; label = @1
      call 0
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 1
    end
    i32.const 1088
    call 5
    i32.const 1120
    i32.const 4
    i32.const 20
    call 2
    i32.const 1152
    i32.const 24
    i32.const 8
    call 2
    i32.const 0
    i32.const 0
    i64.load offset=1152
    call 7
    i64.store offset=1152
    i32.const 1088
    i32.const 1216
    call 3
    i32.const 1120
    i32.const 1184
    call 3
    i32.const 0
    i32.const 0
    i64.load offset=1216
    call 7
    local.tee 0
    i64.store offset=1216
    i32.const 0
    i32.const 0
    i64.load offset=1184
    call 7
    i64.store offset=1184
    block  ;; label = @1
      local.get 0
      i32.const 0
      i64.load offset=1152
      i64.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 1
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
    call 7
    i64.store offset=1216
    i32.const 0
    local.get 0
    local.get 1
    i64.add
    call 7
    i64.store offset=1184
    i32.const 1088
    i32.const 1216
    call 6
    i32.const 1120
    i32.const 1184
    call 6)
  (func (;10;) (type 5)
    (local i32)
    block  ;; label = @1
      call 0
      i32.const 3
      i32.gt_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call 1
    end
    i32.const 1248
    i32.const 0
    i32.const 4
    call 2
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
        call 8
        return
      end
      call 9
      return
    end
    i32.const 0
    i32.const 0
    call 1)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66800))
  (global (;1;) i32 (i32.const 66800))
  (global (;2;) i32 (i32.const 1252))
  (export "memory" (memory 0))
  (export "main" (func 10))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
