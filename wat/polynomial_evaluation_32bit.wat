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
    local.set 2
    i32.const 1024
    i32.load
    local.get 0
    i32.add
    local.tee 1
    local.get 2
    i32.const 16
    i32.shl
    i32.gt_u
    if  ;; label = @1
      i32.const 0
      local.get 1
      i32.const 65535
      i32.and
      i32.sub
      local.get 1
      i32.const 16
      i32.shr_u
      i32.ne
      local.get 2
      i32.sub
      memory.grow
      drop
    end
    i32.const 1024
    local.get 1
    i32.store
    local.get 1
    local.get 0
    i32.sub)
  (func (;4;) (type 4)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    call 0
    local.tee 3
    call 3
    local.tee 1
    i32.const 0
    local.get 3
    call 1
    local.get 3
    i32.const 2
    i32.shr_u
    local.tee 5
    i32.const -2
    i32.add
    local.tee 4
    i32.const 1
    i32.ge_s
    if  ;; label = @1
      local.get 1
      local.set 0
      loop  ;; label = @2
        local.get 0
        local.get 0
        i32.load
        local.tee 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 2
        i32.const 24
        i32.shl
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 4
        i32.add
        local.set 0
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 3
    i32.add
    local.tee 0
    i32.const -8
    i32.add
    local.tee 6
    local.get 6
    i32.load
    local.tee 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 2
    i32.const 24
    i32.shl
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    local.get 3
    i32.load
    local.tee 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 0
    i32.const 24
    i32.shl
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
    i32.or
    i32.store
    i32.const 4
    call 3
    local.tee 2
    local.get 5
    i32.const -3
    i32.add
    local.tee 4
    i32.const 0
    i32.ge_s
    if (result i32)  ;; label = @1
      local.get 1
      local.get 5
      i32.const 2
      i32.shl
      i32.add
      i32.const -12
      i32.add
      local.set 0
      local.get 6
      i32.load
      local.get 3
      i32.load
      local.tee 1
      i32.rem_u
      i64.extend_i32_u
      local.set 8
      local.get 1
      i64.extend_i32_u
      local.set 9
      loop  ;; label = @2
        local.get 0
        i64.load32_u
        local.get 7
        i64.const 4294967295
        i64.and
        local.get 8
        i64.mul
        i64.add
        local.get 9
        i64.rem_u
        local.set 7
        local.get 0
        i32.const -4
        i32.add
        local.set 0
        local.get 4
        i32.const -1
        i32.add
        local.tee 4
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
      end
      local.get 7
      i32.wrap_i64
    else
      i32.const 0
    end
    local.tee 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store
    local.get 2
    i32.const 4
    call 2)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "main" (func 4))
  (data (;0;) (i32.const 1024) "\04\04"))
