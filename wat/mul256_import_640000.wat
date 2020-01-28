(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 0)))
  (import "env" "eth2_mul256" (func $eth2_mul256 (type 0)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $_main (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    i32.const 1152
    local.set 4
    i32.const 36
    local.set 5
    i32.const 32
    local.set 6
    i32.const 1024
    local.set 7
    i32.const 4
    local.set 8
    local.get 7
    local.get 8
    local.get 6
    call $eth2_blockDataCopy
    local.get 4
    local.get 5
    local.get 6
    call $eth2_blockDataCopy
    local.get 2
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 10000
        local.set 9
        local.get 2
        i32.load offset=12
        local.set 10
        local.get 10
        local.set 11
        local.get 9
        local.set 12
        local.get 11
        local.get 12
        i32.lt_s
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i32.eqz
        br_if 1 (;@1;)
        i32.const 1152
        local.set 16
        i32.const 1280
        local.set 17
        i32.const 1024
        local.set 18
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 16
        local.get 18
        local.get 17
        call $eth2_mul256
        local.get 16
        local.get 17
        local.get 18
        call $eth2_mul256
        local.get 2
        i32.load offset=12
        local.set 19
        i32.const 1
        local.set 20
        local.get 19
        local.get 20
        i32.add
        local.set 21
        local.get 2
        local.get 21
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 1024
    local.set 22
    local.get 22
    call $eth2_savePostStateRoot
    i32.const 16
    local.set 23
    local.get 2
    local.get 23
    i32.add
    local.set 24
    local.get 24
    global.set 0
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66944))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
