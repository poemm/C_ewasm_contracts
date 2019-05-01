(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func))
  (import "ethereum" "getCallDataSize" (func (;0;) (type 0)))
  (import "ethereum" "callDataCopy" (func (;1;) (type 1)))
  (import "ethereum" "finish" (func (;2;) (type 2)))
  (func (;3;) (type 3) (param i32) (result i32)
    (local i32 i32)
    memory.size
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=1024
      local.get 0
      i32.add
      local.tee 2
      local.get 1
      i32.const 16
      i32.shl
      i32.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.shr_u
      i32.const 0
      local.get 2
      i32.const 65535
      i32.and
      i32.sub
      i32.ne
      local.get 1
      i32.sub
      memory.grow
      drop
    end
    i32.const 0
    local.get 2
    i32.store offset=1024
    local.get 2
    local.get 0
    i32.sub)
  (func (;4;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 24
    i32.shl
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or)
  (func (;5;) (type 4)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    i32.const 0
    local.set 0
    call 0
    local.tee 1
    call 3
    local.tee 2
    i32.const 0
    local.get 1
    call 1
    block  ;; label = @1
      local.get 1
      i32.const 2
      i32.shr_u
      local.tee 3
      i32.const -2
      i32.add
      local.tee 4
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.set 5
      loop  ;; label = @2
        local.get 5
        local.get 5
        i32.load
        call 4
        i32.store
        local.get 5
        i32.const 4
        i32.add
        local.set 5
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 1
    i32.add
    local.tee 5
    i32.const -8
    i32.add
    local.tee 6
    local.get 6
    i32.load
    call 4
    i32.store
    local.get 5
    i32.const -4
    i32.add
    local.tee 7
    local.get 7
    i32.load
    call 4
    i32.store
    i32.const 4
    call 3
    local.set 1
    block  ;; label = @1
      local.get 3
      i32.const -3
      i32.add
      local.tee 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.const 2
      i32.shl
      i32.add
      i32.const -12
      i32.add
      local.set 5
      local.get 6
      i32.load
      local.get 7
      i32.load
      local.tee 2
      i32.rem_u
      i64.extend_i32_u
      local.set 8
      local.get 2
      i64.extend_i32_u
      local.set 9
      i64.const 0
      local.set 10
      loop  ;; label = @2
        local.get 10
        i64.const 4294967295
        i64.and
        local.get 8
        i64.mul
        local.get 5
        i64.load32_u
        i64.add
        local.get 9
        i64.rem_u
        local.set 10
        local.get 5
        i32.const -4
        i32.add
        local.set 5
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
      end
      local.get 10
      i32.wrap_i64
      local.set 0
    end
    local.get 1
    local.get 0
    call 4
    i32.store
    local.get 1
    i32.const 4
    call 2)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (global (;1;) i32 (i32.const 66576))
  (global (;2;) i32 (i32.const 1028))
  (export "memory" (memory 0))
  (export "main" (func 5))
  (data (;0;) (i32.const 1024) "\04\04\00\00"))
