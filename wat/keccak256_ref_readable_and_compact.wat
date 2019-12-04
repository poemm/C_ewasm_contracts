(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 0)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 3) (param i32) (result i32)
    (local i32 i32)
    i32.const 1024
    i32.load
    local.get 0
    i32.add
    local.tee 1
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.gt_u
    if  ;; label = @1
      local.get 1
      i32.const 16
      i32.shr_u
      local.get 2
      i32.sub
      local.get 1
      i32.const 65535
      i32.and
      i32.const 0
      i32.ne
      i32.add
      memory.grow
      drop
    end
    i32.const 1024
    local.get 1
    i32.store
    local.get 1
    local.get 0
    i32.sub)
  (func $memset (type 5) (param i32)
    (local i32 i32 i32)
    i32.const 200
    local.tee 1
    i32.const 8
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i64.const 0
        i64.store
        local.get 1
        i32.const -8
        i32.add
        local.tee 3
        local.set 1
        local.get 0
        i32.const 8
        i32.add
        local.tee 2
        local.set 0
        local.get 3
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 1
      local.get 2
      local.set 0
    end
    local.get 1
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.store8
        local.get 1
        i32.const -1
        i32.add
        local.tee 2
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end)
  (func $KeccakF1600_StatePermute (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.set 13
    local.get 0
    i32.const 8
    i32.add
    local.set 18
    local.get 0
    i32.const 15
    i32.add
    local.set 19
    local.get 0
    i32.const 14
    i32.add
    local.set 20
    local.get 0
    i32.const 13
    i32.add
    local.set 21
    local.get 0
    i32.const 12
    i32.add
    local.set 22
    local.get 0
    i32.const 11
    i32.add
    local.set 23
    local.get 0
    i32.const 10
    i32.add
    local.set 24
    local.get 0
    i32.const 9
    i32.add
    local.set 25
    local.get 0
    i32.const 1
    i32.add
    local.set 14
    local.get 0
    i32.const 3
    i32.add
    local.set 15
    local.get 0
    i32.const 7
    i32.add
    local.set 16
    i32.const 1
    local.set 6
    loop  ;; label = @1
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 3
        i32.shl
        local.get 13
        i32.add
        local.get 1
        i32.const 3
        i32.shl
        local.tee 3
        local.get 0
        i32.add
        local.tee 2
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.get 3
        i32.const 40
        i32.add
        local.get 0
        i32.add
        local.tee 2
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u
        i64.extend_i32_u
        i64.or
        i64.xor
        local.get 3
        i32.const 80
        i32.add
        local.get 0
        i32.add
        local.tee 2
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u
        i64.extend_i32_u
        i64.or
        i64.xor
        local.get 3
        i32.const 120
        i32.add
        local.get 0
        i32.add
        local.tee 2
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u
        i64.extend_i32_u
        i64.or
        i64.xor
        local.get 3
        i32.const 160
        i32.add
        local.get 0
        i32.add
        local.tee 2
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u
        i64.extend_i32_u
        i64.or
        i64.xor
        i64.store
        local.get 1
        i32.const 1
        i32.add
        local.tee 3
        local.set 1
        i32.const 0
        local.set 2
        local.get 3
        i32.const 5
        i32.ne
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 2
        local.tee 1
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.const 3
        i32.shl
        local.tee 26
        local.get 0
        i32.add
        local.tee 3
        local.get 1
        i32.const 4
        i32.add
        i32.const 255
        i32.and
        i32.const 5
        i32.rem_u
        i32.const 3
        i32.shl
        local.get 13
        i32.add
        i64.load
        local.get 2
        i32.const 255
        i32.and
        i32.const 5
        i32.rem_u
        i32.const 3
        i32.shl
        local.get 13
        i32.add
        i64.load
        i64.const 1
        i64.rotl
        i64.xor
        local.tee 27
        i32.wrap_i64
        local.tee 5
        local.get 3
        i32.load8_u
        i32.xor
        i32.store8
        local.get 3
        local.get 27
        i64.const 8
        i64.shr_u
        i32.wrap_i64
        local.tee 4
        local.get 3
        i32.load8_u offset=1
        i32.xor
        i32.store8 offset=1
        local.get 3
        local.get 27
        i64.const 16
        i64.shr_u
        i32.wrap_i64
        local.tee 7
        local.get 3
        i32.load8_u offset=2
        i32.xor
        i32.store8 offset=2
        local.get 3
        local.get 27
        i64.const 24
        i64.shr_u
        i32.wrap_i64
        local.tee 8
        local.get 3
        i32.load8_u offset=3
        i32.xor
        i32.store8 offset=3
        local.get 3
        local.get 27
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.tee 9
        local.get 3
        i32.load8_u offset=4
        i32.xor
        i32.store8 offset=4
        local.get 3
        local.get 27
        i64.const 40
        i64.shr_u
        i32.wrap_i64
        local.tee 10
        local.get 3
        i32.load8_u offset=5
        i32.xor
        i32.store8 offset=5
        local.get 3
        local.get 27
        i64.const 48
        i64.shr_u
        i32.wrap_i64
        local.tee 11
        local.get 3
        i32.load8_u offset=6
        i32.xor
        i32.store8 offset=6
        local.get 3
        local.get 27
        i64.const 56
        i64.shr_u
        i32.wrap_i64
        local.tee 12
        local.get 3
        i32.load8_u offset=7
        i32.xor
        i32.store8 offset=7
        local.get 3
        i32.const 40
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 5
        i32.xor
        i32.store8
        local.get 3
        i32.const 41
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 4
        i32.xor
        i32.store8
        local.get 3
        i32.const 42
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 7
        i32.xor
        i32.store8
        local.get 3
        i32.const 43
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 8
        i32.xor
        i32.store8
        local.get 3
        i32.const 44
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 9
        i32.xor
        i32.store8
        local.get 3
        i32.const 45
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 10
        i32.xor
        i32.store8
        local.get 3
        i32.const 46
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 11
        i32.xor
        i32.store8
        local.get 3
        i32.const 47
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 12
        i32.xor
        i32.store8
        local.get 3
        i32.const 80
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 5
        i32.xor
        i32.store8
        local.get 3
        i32.const 81
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 4
        i32.xor
        i32.store8
        local.get 3
        i32.const 82
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 7
        i32.xor
        i32.store8
        local.get 3
        i32.const 83
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 8
        i32.xor
        i32.store8
        local.get 3
        i32.const 84
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 9
        i32.xor
        i32.store8
        local.get 3
        i32.const 85
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 10
        i32.xor
        i32.store8
        local.get 3
        i32.const 86
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 11
        i32.xor
        i32.store8
        local.get 3
        i32.const 87
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 12
        i32.xor
        i32.store8
        local.get 3
        i32.const 120
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 5
        i32.xor
        i32.store8
        local.get 3
        i32.const 121
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 4
        i32.xor
        i32.store8
        local.get 3
        i32.const 122
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 7
        i32.xor
        i32.store8
        local.get 3
        i32.const 123
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 8
        i32.xor
        i32.store8
        local.get 3
        i32.const 124
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 9
        i32.xor
        i32.store8
        local.get 3
        i32.const 125
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 10
        i32.xor
        i32.store8
        local.get 3
        i32.const 126
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 11
        i32.xor
        i32.store8
        local.get 3
        i32.const 127
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 12
        i32.xor
        i32.store8
        local.get 26
        i32.const 160
        i32.add
        local.get 0
        i32.add
        local.tee 1
        local.get 1
        i32.load8_u
        local.get 5
        i32.xor
        i32.store8
        local.get 1
        local.get 1
        i32.load8_u offset=1
        local.get 4
        i32.xor
        i32.store8 offset=1
        local.get 1
        local.get 1
        i32.load8_u offset=2
        local.get 7
        i32.xor
        i32.store8 offset=2
        local.get 1
        local.get 1
        i32.load8_u offset=3
        local.get 8
        i32.xor
        i32.store8 offset=3
        local.get 1
        local.get 1
        i32.load8_u offset=4
        local.get 9
        i32.xor
        i32.store8 offset=4
        local.get 1
        local.get 1
        i32.load8_u offset=5
        local.get 10
        i32.xor
        i32.store8 offset=5
        local.get 1
        local.get 1
        i32.load8_u offset=6
        local.get 11
        i32.xor
        i32.store8 offset=6
        local.get 1
        local.get 1
        i32.load8_u offset=7
        local.get 12
        i32.xor
        i32.store8 offset=7
        local.get 2
        i32.const 5
        i32.ne
        br_if 0 (;@2;)
      end
      i32.const 1
      local.set 3
      i32.const 0
      local.set 2
      local.get 18
      i32.load8_u
      i64.extend_i32_u
      local.get 25
      i32.load8_u
      i64.extend_i32_u
      local.get 24
      i32.load8_u
      i64.extend_i32_u
      local.get 23
      i32.load8_u
      i64.extend_i32_u
      local.get 22
      i32.load8_u
      i64.extend_i32_u
      local.get 21
      i32.load8_u
      i64.extend_i32_u
      local.get 20
      i32.load8_u
      i64.extend_i32_u
      local.get 19
      i32.load8_u
      i64.extend_i32_u
      i64.const 8
      i64.shl
      i64.or
      i64.const 8
      i64.shl
      i64.or
      i64.const 8
      i64.shl
      i64.or
      i64.const 8
      i64.shl
      i64.or
      i64.const 8
      i64.shl
      i64.or
      i64.const 8
      i64.shl
      i64.or
      i64.const 8
      i64.shl
      i64.or
      local.set 27
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 2
        i32.const 3
        i32.mul
        local.get 3
        i32.const 1
        i32.shl
        i32.add
        i32.const 5
        i32.rem_u
        local.tee 5
        i32.const 5
        i32.mul
        local.get 2
        i32.add
        i32.const 3
        i32.shl
        local.get 0
        i32.add
        local.tee 3
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.get 3
        local.get 27
        local.get 1
        i32.const 1
        i32.add
        local.tee 4
        local.get 1
        i32.const 2
        i32.add
        i32.mul
        i32.const 1
        i32.shr_u
        i32.const 63
        i32.and
        local.tee 1
        i64.extend_i32_u
        i64.shl
        local.get 27
        i32.const 64
        local.get 1
        i32.sub
        i64.extend_i32_u
        i64.shr_u
        i64.xor
        local.tee 27
        i64.store8
        local.get 3
        local.get 27
        i64.const 8
        i64.shr_u
        i64.store8 offset=1
        local.get 3
        local.get 27
        i64.const 16
        i64.shr_u
        i64.store8 offset=2
        local.get 3
        local.get 27
        i64.const 24
        i64.shr_u
        i64.store8 offset=3
        local.get 3
        local.get 27
        i64.const 32
        i64.shr_u
        i64.store8 offset=4
        local.get 3
        local.get 27
        i64.const 40
        i64.shr_u
        i64.store8 offset=5
        local.get 3
        local.get 27
        i64.const 48
        i64.shr_u
        i64.store8 offset=6
        local.get 3
        local.get 27
        i64.const 56
        i64.shr_u
        i64.store8 offset=7
        local.get 2
        local.set 3
        local.get 5
        local.set 2
        local.set 27
        i32.const 0
        local.set 7
        local.get 4
        local.tee 1
        i32.const 24
        i32.ne
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 7
        i32.const 40
        i32.mul
        local.tee 4
        local.get 0
        i32.add
        local.tee 2
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 2
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.set 28
        local.get 4
        i32.const 24
        i32.add
        local.get 0
        i32.add
        local.tee 1
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 1
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.set 29
        local.get 4
        i32.const 32
        i32.add
        local.get 0
        i32.add
        local.tee 3
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 3
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.set 30
        local.get 2
        local.get 4
        i32.const 16
        i32.add
        local.get 0
        i32.add
        local.tee 5
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 5
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.tee 31
        local.get 4
        i32.const 8
        i32.add
        local.get 0
        i32.add
        local.tee 4
        i32.load8_u offset=7
        i64.extend_i32_u
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u offset=6
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u offset=5
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u offset=4
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u offset=3
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u offset=2
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u offset=1
        i64.extend_i32_u
        i64.or
        i64.const 8
        i64.shl
        local.get 4
        i32.load8_u
        i64.extend_i32_u
        i64.or
        local.tee 32
        i64.const -1
        i64.xor
        i64.and
        local.get 28
        i64.xor
        local.tee 27
        i64.store8
        local.get 2
        local.get 27
        i64.const 8
        i64.shr_u
        i64.store8 offset=1
        local.get 2
        local.get 27
        i64.const 16
        i64.shr_u
        i64.store8 offset=2
        local.get 2
        local.get 27
        i64.const 24
        i64.shr_u
        i64.store8 offset=3
        local.get 2
        local.get 27
        i64.const 32
        i64.shr_u
        i64.store8 offset=4
        local.get 2
        local.get 27
        i64.const 40
        i64.shr_u
        i64.store8 offset=5
        local.get 2
        local.get 27
        i64.const 48
        i64.shr_u
        i64.store8 offset=6
        local.get 2
        local.get 27
        i64.const 56
        i64.shr_u
        i64.store8 offset=7
        local.get 4
        local.get 31
        i64.const -1
        i64.xor
        local.get 29
        i64.and
        local.get 32
        i64.xor
        local.tee 27
        i64.store8
        local.get 4
        local.get 27
        i64.const 8
        i64.shr_u
        i64.store8 offset=1
        local.get 4
        local.get 27
        i64.const 16
        i64.shr_u
        i64.store8 offset=2
        local.get 4
        local.get 27
        i64.const 24
        i64.shr_u
        i64.store8 offset=3
        local.get 4
        local.get 27
        i64.const 32
        i64.shr_u
        i64.store8 offset=4
        local.get 4
        local.get 27
        i64.const 40
        i64.shr_u
        i64.store8 offset=5
        local.get 4
        local.get 27
        i64.const 48
        i64.shr_u
        i64.store8 offset=6
        local.get 4
        local.get 27
        i64.const 56
        i64.shr_u
        i64.store8 offset=7
        local.get 5
        local.get 29
        i64.const -1
        i64.xor
        local.get 30
        i64.and
        local.get 31
        i64.xor
        local.tee 27
        i64.store8
        local.get 5
        local.get 27
        i64.const 8
        i64.shr_u
        i64.store8 offset=1
        local.get 5
        local.get 27
        i64.const 16
        i64.shr_u
        i64.store8 offset=2
        local.get 5
        local.get 27
        i64.const 24
        i64.shr_u
        i64.store8 offset=3
        local.get 5
        local.get 27
        i64.const 32
        i64.shr_u
        i64.store8 offset=4
        local.get 5
        local.get 27
        i64.const 40
        i64.shr_u
        i64.store8 offset=5
        local.get 5
        local.get 27
        i64.const 48
        i64.shr_u
        i64.store8 offset=6
        local.get 5
        local.get 27
        i64.const 56
        i64.shr_u
        i64.store8 offset=7
        local.get 1
        local.get 30
        i64.const -1
        i64.xor
        local.get 28
        i64.and
        local.get 29
        i64.xor
        local.tee 27
        i64.store8
        local.get 1
        local.get 27
        i64.const 8
        i64.shr_u
        i64.store8 offset=1
        local.get 1
        local.get 27
        i64.const 16
        i64.shr_u
        i64.store8 offset=2
        local.get 1
        local.get 27
        i64.const 24
        i64.shr_u
        i64.store8 offset=3
        local.get 1
        local.get 27
        i64.const 32
        i64.shr_u
        i64.store8 offset=4
        local.get 1
        local.get 27
        i64.const 40
        i64.shr_u
        i64.store8 offset=5
        local.get 1
        local.get 27
        i64.const 48
        i64.shr_u
        i64.store8 offset=6
        local.get 1
        local.get 27
        i64.const 56
        i64.shr_u
        i64.store8 offset=7
        local.get 3
        local.get 28
        i64.const -1
        i64.xor
        local.get 32
        i64.and
        local.get 30
        i64.xor
        local.tee 27
        i64.store8
        local.get 3
        local.get 27
        i64.const 8
        i64.shr_u
        i64.store8 offset=1
        local.get 3
        local.get 27
        i64.const 16
        i64.shr_u
        i64.store8 offset=2
        local.get 3
        local.get 27
        i64.const 24
        i64.shr_u
        i64.store8 offset=3
        local.get 3
        local.get 27
        i64.const 32
        i64.shr_u
        i64.store8 offset=4
        local.get 3
        local.get 27
        i64.const 40
        i64.shr_u
        i64.store8 offset=5
        local.get 3
        local.get 27
        i64.const 48
        i64.shr_u
        i64.store8 offset=6
        local.get 3
        local.get 27
        i64.const 56
        i64.shr_u
        i64.store8 offset=7
        local.get 7
        i32.const 1
        i32.add
        local.tee 2
        local.set 7
        local.get 2
        i32.const 5
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 6
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.load8_u
        i32.const 1
        i32.xor
        i32.store8
      end
      local.get 6
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 2
      i32.const 113
      i32.xor
      local.get 2
      local.get 6
      i32.const 128
      i32.and
      select
      local.tee 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.load8_u
        i32.const 2
        i32.xor
        i32.store8
      end
      local.get 2
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 6
      i32.const 113
      i32.xor
      local.get 6
      local.get 2
      i32.const 128
      i32.and
      select
      local.tee 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.load8_u
        i32.const 8
        i32.xor
        i32.store8
      end
      local.get 2
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 6
      i32.const 113
      i32.xor
      local.get 6
      local.get 2
      i32.const 128
      i32.and
      select
      local.tee 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 0
        i32.load8_u
        i32.const -128
        i32.xor
        i32.store8
      end
      local.get 2
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 6
      i32.const 113
      i32.xor
      local.get 6
      local.get 2
      i32.const 128
      i32.and
      select
      local.tee 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 14
        local.get 14
        i32.load8_u
        i32.const -128
        i32.xor
        i32.store8
      end
      local.get 2
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 6
      i32.const 113
      i32.xor
      local.get 6
      local.get 2
      i32.const 128
      i32.and
      select
      local.tee 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 15
        local.get 15
        i32.load8_u
        i32.const -128
        i32.xor
        i32.store8
      end
      local.get 2
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 6
      i32.const 113
      i32.xor
      local.get 6
      local.get 2
      i32.const 128
      i32.and
      select
      local.tee 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 16
        local.get 16
        i32.load8_u
        i32.const -128
        i32.xor
        i32.store8
      end
      local.get 17
      i32.const 1
      i32.add
      local.tee 1
      local.set 17
      local.get 2
      i32.const 1
      i32.shl
      i32.const 510
      i32.and
      local.tee 6
      i32.const 113
      i32.xor
      local.get 6
      local.get 2
      i32.const 128
      i32.and
      select
      local.set 6
      local.get 1
      i32.const 24
      i32.ne
      br_if 0 (;@1;)
    end)
  (func $_main (type 4)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.set 0
    call $eth2_blockDataSize
    local.tee 1
    call $malloc
    local.tee 4
    i32.const 0
    local.get 1
    call $eth2_blockDataCopy
    local.get 0
    call $memset
    i32.const 1
    local.set 3
    local.get 1
    if  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 5
      loop  ;; label = @2
        i32.const 0
        local.set 1
        block (result i64)  ;; label = @3
          local.get 5
          i64.const 136
          local.get 5
          i64.const 136
          i64.lt_u
          select
          local.tee 6
          i32.wrap_i64
          local.tee 2
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 2
            local.get 5
            local.get 6
            i64.sub
            br 1 (;@3;)
          end
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.add
            local.tee 3
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            local.get 3
            i32.load8_u
            i32.xor
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            local.set 1
            local.get 3
            local.get 2
            i32.lt_u
            br_if 0 (;@4;)
          end
          local.get 2
          local.get 4
          i32.add
          local.tee 1
          local.set 4
          local.get 5
          local.get 6
          i64.sub
          local.tee 6
          local.get 2
          i32.const 136
          i32.ne
          br_if 0 (;@3;)
          drop
          local.get 0
          call $KeccakF1600_StatePermute
          local.get 1
          local.set 4
          i32.const 0
          local.set 2
          local.get 6
        end
        local.tee 5
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
      local.get 0
      local.get 2
      i32.add
      i32.load8_u
      i32.const 1
      i32.xor
      local.set 3
    end
    local.get 0
    local.get 2
    i32.add
    local.get 3
    i32.store8
    local.get 0
    local.get 0
    i32.load8_u offset=135
    i32.const -128
    i32.xor
    i32.store8 offset=135
    local.get 0
    call $KeccakF1600_StatePermute
    i32.const 1040
    local.get 0
    i64.load
    i64.store
    i32.const 1064
    local.get 0
    i32.const 24
    i32.add
    i64.load
    i64.store
    i32.const 1056
    local.get 0
    i32.const 16
    i32.add
    i64.load
    i64.store
    i32.const 1048
    local.get 0
    i32.const 8
    i32.add
    i64.load
    i64.store
    i32.const 1040
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 208
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66608))
  (global (;1;) i32 (i32.const 66608))
  (global (;2;) i32 (i32.const 1072))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "0\04\01"))
