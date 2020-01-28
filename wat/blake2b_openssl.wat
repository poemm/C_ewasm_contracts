(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 4)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 0)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 3)))
  (func $malloc (type 5) (param i32) (result i32)
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
  (func $memcpy (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.set 3
    local.get 0
    local.set 4
    local.get 2
    local.set 5
    local.get 2
    i32.const 7
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 4
        local.get 3
        i64.load
        i64.store
        local.get 3
        i32.const 8
        i32.add
        local.tee 1
        local.set 3
        local.get 4
        i32.const 8
        i32.add
        local.tee 0
        local.set 4
        local.get 5
        i32.const -8
        i32.add
        local.tee 6
        local.set 5
        local.get 6
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 7
      i32.and
      local.set 2
    end
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 3
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end)
  (func $memset (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    local.get 2
    local.tee 3
    i32.const 8
    i32.gt_u
    if  ;; label = @1
      local.get 1
      i32.const 16843009
      i32.mul
      i64.extend_i32_s
      local.get 1
      i64.extend_i32_s
      i64.const 72058697844523008
      i64.mul
      i64.add
      local.set 6
      loop  ;; label = @2
        local.get 0
        local.get 6
        i64.store
        local.get 3
        i32.const -8
        i32.add
        local.tee 5
        local.set 3
        local.get 0
        i32.const 8
        i32.add
        local.tee 4
        local.set 0
        local.get 5
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 7
      i32.and
      local.set 3
      local.get 4
      local.set 0
    end
    local.get 0
    local.set 2
    local.get 3
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.store8
        local.get 3
        i32.const -1
        i32.add
        local.tee 4
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $blake2b_compress (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    local.get 0
    i32.const 8
    i32.add
    local.set 3
    local.get 0
    i32.const 16
    i32.add
    local.set 4
    local.get 0
    i32.const 24
    i32.add
    local.set 5
    local.get 0
    i32.const 32
    i32.add
    local.set 6
    local.get 0
    i32.const 40
    i32.add
    local.set 7
    local.get 0
    i32.const 48
    i32.add
    local.set 8
    local.get 0
    i32.const 56
    i32.add
    local.set 9
    local.get 2
    i32.const 128
    local.get 2
    i32.const 128
    i32.lt_u
    select
    local.tee 10
    i64.extend_i32_u
    local.set 48
    local.get 0
    i32.const -64
    i32.sub
    local.set 11
    local.get 0
    i32.const 72
    i32.add
    local.set 12
    local.get 0
    i64.load offset=80
    local.set 49
    local.get 0
    i64.load offset=88
    local.set 50
    local.get 0
    i64.load offset=56
    local.set 15
    local.get 0
    i64.load offset=48
    local.set 16
    local.get 0
    i64.load offset=40
    local.set 14
    local.get 0
    i64.load offset=24
    local.set 18
    local.get 0
    i64.load offset=16
    local.set 24
    local.get 0
    i64.load offset=8
    local.set 23
    local.get 0
    i64.load offset=32
    local.set 17
    local.get 0
    i64.load
    local.set 19
    loop  ;; label = @1
      local.get 1
      i64.load align=1
      local.set 37
      local.get 1
      i64.load offset=8 align=1
      local.set 38
      local.get 1
      i64.load offset=16 align=1
      local.set 41
      local.get 1
      i64.load offset=24 align=1
      local.set 42
      local.get 1
      i64.load offset=32 align=1
      local.set 31
      local.get 1
      i64.load offset=40 align=1
      local.set 43
      local.get 1
      i64.load offset=48 align=1
      local.set 39
      local.get 1
      i64.load offset=56 align=1
      local.set 44
      local.get 1
      i64.load offset=64 align=1
      local.set 34
      local.get 1
      i64.load offset=72 align=1
      local.set 32
      local.get 1
      i64.load offset=80 align=1
      local.set 40
      local.get 1
      i64.load offset=88 align=1
      local.set 46
      local.get 1
      i64.load offset=96 align=1
      local.set 47
      local.get 1
      i64.load offset=104 align=1
      local.set 35
      local.get 1
      i64.load offset=112 align=1
      local.set 36
      local.get 1
      i64.load offset=120 align=1
      local.set 45
      local.get 11
      local.get 11
      i64.load
      local.get 48
      i64.add
      local.tee 20
      i64.store
      local.get 12
      local.get 12
      i64.load
      local.get 20
      local.get 48
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.tee 25
      i64.store
      local.get 17
      local.get 19
      i64.add
      local.get 37
      i64.add
      local.tee 19
      i64.const 5840696475078001361
      i64.xor
      local.get 20
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.const 7640891576956012808
      i64.add
      local.tee 22
      local.get 20
      local.get 17
      local.get 22
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 19
      local.get 38
      i64.add
      i64.add
      local.tee 19
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.set 17
      local.get 14
      local.get 23
      i64.add
      local.get 41
      i64.add
      local.tee 23
      i64.const -7276294671716946913
      i64.xor
      local.get 25
      i64.xor
      local.tee 25
      i64.const 32
      i64.shr_u
      local.get 25
      i64.const 32
      i64.shl
      i64.or
      local.tee 25
      i64.const -4942790177534073029
      i64.add
      local.tee 27
      local.get 25
      local.get 14
      local.get 27
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 25
      local.get 23
      local.get 42
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 27
      i64.add
      local.set 14
      local.get 15
      local.get 18
      i64.add
      local.get 39
      i64.add
      local.tee 18
      i64.const 6620516959819538809
      i64.xor
      local.get 50
      i64.xor
      local.tee 28
      i64.const 32
      i64.shr_u
      local.get 28
      i64.const 32
      i64.shl
      i64.or
      local.tee 28
      i64.const -6534734903238641935
      i64.add
      local.tee 21
      local.get 28
      local.get 15
      local.get 21
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 28
      local.get 18
      local.get 44
      i64.add
      i64.add
      local.tee 21
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 18
      i64.add
      local.set 15
      local.get 16
      local.get 24
      i64.add
      local.get 31
      i64.add
      local.tee 24
      i64.const 2270897969802886507
      i64.xor
      local.get 49
      i64.xor
      local.tee 26
      i64.const 32
      i64.shr_u
      local.get 26
      i64.const 32
      i64.shl
      i64.or
      local.tee 26
      i64.const 4354685564936845355
      i64.add
      local.tee 29
      local.get 26
      local.get 16
      local.get 29
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 26
      local.get 24
      local.get 43
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 30
      local.get 18
      local.get 14
      local.get 25
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 19
      local.get 34
      i64.add
      i64.add
      local.tee 18
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 16
      local.get 25
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 18
      local.get 32
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 16
      local.get 26
      local.get 30
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 23
      local.get 40
      i64.add
      i64.add
      local.tee 23
      local.get 22
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 15
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 23
      local.get 46
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 17
      local.get 20
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 21
      local.get 36
      i64.add
      i64.add
      local.tee 20
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 20
      local.get 45
      i64.add
      i64.add
      local.tee 20
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 17
      local.get 15
      local.get 28
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 24
      local.get 47
      i64.add
      i64.add
      local.tee 17
      local.get 27
      i64.xor
      local.tee 24
      i64.const 32
      i64.shr_u
      local.get 24
      i64.const 32
      i64.shl
      i64.or
      local.tee 24
      i64.add
      local.tee 27
      local.get 24
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 24
      local.get 17
      local.get 35
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 28
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 25
      local.get 36
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 25
      local.get 40
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 23
      local.get 31
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 23
      i64.const 32
      i64.shr_u
      local.get 23
      i64.const 32
      i64.shl
      i64.or
      local.tee 23
      i64.add
      local.tee 19
      local.get 23
      local.get 14
      local.get 19
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 23
      local.get 17
      local.get 34
      i64.add
      i64.add
      local.tee 19
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 30
      i64.add
      local.set 14
      local.get 24
      local.get 28
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 20
      local.get 35
      i64.add
      i64.add
      local.tee 24
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 39
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 32
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 45
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 23
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 25
      local.get 38
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 25
      i64.const 32
      i64.shr_u
      local.get 25
      i64.const 32
      i64.shl
      i64.or
      local.tee 25
      i64.add
      local.tee 28
      local.get 25
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 25
      local.get 23
      local.get 47
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 19
      local.get 37
      i64.add
      i64.add
      local.tee 19
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 19
      local.get 41
      i64.add
      i64.add
      local.tee 19
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 43
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 42
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 46
      i64.add
      i64.add
      local.tee 17
      local.get 30
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 44
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 46
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 34
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 25
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 19
      local.get 47
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 37
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 45
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 35
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 43
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 41
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 40
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 36
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 42
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 39
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 32
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 31
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 44
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 38
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 44
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 32
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 42
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 38
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 46
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 36
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 35
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 47
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 41
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 39
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 43
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 40
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 45
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 34
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 31
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 37
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 32
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 37
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 43
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 44
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 40
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 45
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 41
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 31
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 36
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 38
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 46
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 47
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 42
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 35
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 39
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 34
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 41
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 47
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 39
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 40
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 34
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 42
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 37
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 46
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 31
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 35
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 44
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 43
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 38
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 32
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 45
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 36
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 47
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 43
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 38
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 45
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 31
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 40
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 36
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 35
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 37
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 44
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 39
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 42
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 34
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 46
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 32
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 41
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 35
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 46
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 44
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 36
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 42
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 32
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 47
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 38
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 43
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 37
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 45
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 31
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 41
      i64.add
      local.get 24
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 40
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 34
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 39
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 39
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 45
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 36
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 32
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 37
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 34
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 46
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 42
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 47
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 41
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 35
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 44
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 40
      i64.add
      local.get 24
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 43
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 38
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 31
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 40
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 41
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 34
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 31
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 38
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 43
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 44
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 39
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 45
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 46
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 32
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 36
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 35
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 37
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 42
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 47
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 37
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 26
      local.get 21
      local.get 15
      local.get 26
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 23
      local.get 38
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 41
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 25
      local.get 19
      local.get 14
      local.get 25
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 42
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 33
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 39
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      local.get 18
      i64.add
      local.tee 28
      local.get 20
      local.get 17
      local.get 28
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 24
      local.get 44
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 31
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      i64.add
      local.tee 27
      local.get 22
      local.get 16
      local.get 27
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 18
      local.get 43
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.tee 18
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 34
      i64.add
      i64.add
      local.tee 23
      local.get 28
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 28
      local.get 19
      local.get 16
      local.get 28
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 23
      local.get 32
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 28
      i64.add
      local.set 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 18
      i64.const 63
      i64.shr_u
      local.get 18
      i64.const 1
      i64.shl
      i64.or
      local.tee 18
      local.get 25
      local.get 40
      i64.add
      i64.add
      local.tee 25
      local.get 26
      i64.xor
      local.tee 22
      i64.const 32
      i64.shr_u
      local.get 22
      i64.const 32
      i64.shl
      i64.or
      local.tee 22
      local.get 17
      i64.add
      local.tee 26
      local.get 22
      local.get 18
      local.get 26
      i64.xor
      local.tee 18
      i64.const 24
      i64.shr_u
      local.get 18
      i64.const 40
      i64.shl
      i64.or
      local.tee 22
      local.get 25
      local.get 46
      i64.add
      i64.add
      local.tee 25
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 26
      i64.add
      local.set 18
      local.get 14
      local.get 15
      local.get 21
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 24
      local.get 36
      i64.add
      i64.add
      local.tee 24
      local.get 29
      i64.xor
      local.tee 21
      i64.const 32
      i64.shr_u
      local.get 21
      i64.const 32
      i64.shl
      i64.or
      local.tee 21
      i64.add
      local.tee 29
      local.get 21
      local.get 14
      local.get 29
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 21
      local.get 24
      local.get 45
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 29
      i64.add
      local.set 14
      local.get 15
      local.get 17
      local.get 20
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 27
      local.get 47
      i64.add
      i64.add
      local.tee 17
      local.get 33
      i64.xor
      local.tee 20
      i64.const 32
      i64.shr_u
      local.get 20
      i64.const 32
      i64.shl
      i64.or
      local.tee 20
      i64.add
      local.tee 27
      local.get 20
      local.get 15
      local.get 27
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 20
      local.get 17
      local.get 35
      i64.add
      i64.add
      local.tee 27
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 17
      i64.add
      local.tee 30
      local.get 14
      local.get 21
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 23
      local.get 36
      i64.add
      i64.add
      local.tee 23
      local.get 26
      i64.xor
      local.tee 36
      i64.const 32
      i64.shr_u
      local.get 36
      i64.const 32
      i64.shl
      i64.or
      local.tee 36
      i64.add
      local.tee 21
      local.get 36
      local.get 15
      local.get 21
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 36
      local.get 23
      local.get 40
      i64.add
      i64.add
      local.tee 23
      i64.xor
      local.tee 15
      i64.const 16
      i64.shr_u
      local.get 15
      i64.const 48
      i64.shl
      i64.or
      local.tee 40
      i64.add
      local.set 15
      local.get 14
      local.get 17
      local.get 16
      local.get 19
      i64.xor
      local.tee 14
      i64.const 63
      i64.shr_u
      local.get 14
      i64.const 1
      i64.shl
      i64.or
      local.tee 14
      local.get 25
      local.get 31
      i64.add
      i64.add
      local.tee 17
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 31
      local.get 19
      local.get 14
      local.get 31
      i64.xor
      local.tee 14
      i64.const 24
      i64.shr_u
      local.get 14
      i64.const 40
      i64.shl
      i64.or
      local.tee 19
      local.get 17
      local.get 34
      i64.add
      i64.add
      local.tee 31
      i64.xor
      local.tee 14
      i64.const 16
      i64.shr_u
      local.get 14
      i64.const 48
      i64.shl
      i64.or
      local.tee 34
      i64.add
      local.set 14
      local.get 20
      local.get 30
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 24
      local.get 35
      i64.add
      i64.add
      local.tee 24
      local.get 28
      i64.xor
      local.tee 35
      i64.const 32
      i64.shr_u
      local.get 35
      i64.const 32
      i64.shl
      i64.or
      local.tee 35
      local.get 18
      i64.add
      local.tee 20
      local.get 35
      local.get 17
      local.get 20
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 35
      local.get 24
      local.get 39
      i64.add
      i64.add
      local.tee 24
      i64.xor
      local.tee 17
      i64.const 16
      i64.shr_u
      local.get 17
      i64.const 48
      i64.shl
      i64.or
      local.tee 39
      i64.add
      local.set 17
      local.get 16
      local.get 18
      local.get 22
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 27
      local.get 32
      i64.add
      i64.add
      local.tee 18
      local.get 29
      i64.xor
      local.tee 32
      i64.const 32
      i64.shr_u
      local.get 32
      i64.const 32
      i64.shl
      i64.or
      local.tee 32
      i64.add
      local.tee 20
      local.get 32
      local.get 16
      local.get 20
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 32
      local.get 18
      local.get 45
      i64.add
      i64.add
      local.tee 18
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 45
      i64.add
      local.tee 20
      local.get 14
      local.get 19
      i64.xor
      local.tee 16
      i64.const 63
      i64.shr_u
      local.get 16
      i64.const 1
      i64.shl
      i64.or
      local.tee 16
      local.get 23
      local.get 38
      i64.add
      i64.add
      local.tee 23
      local.get 39
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      i64.add
      local.tee 38
      local.get 16
      local.get 38
      i64.xor
      local.tee 16
      i64.const 24
      i64.shr_u
      local.get 16
      i64.const 40
      i64.shl
      i64.or
      local.tee 38
      local.get 23
      local.get 47
      i64.add
      i64.add
      local.tee 23
      local.get 19
      i64.xor
      local.tee 16
      i64.const 16
      i64.shr_u
      local.get 16
      i64.const 48
      i64.shl
      i64.or
      local.tee 39
      i64.add
      local.set 16
      local.get 20
      local.get 32
      i64.xor
      local.tee 19
      i64.const 63
      i64.shr_u
      local.get 19
      i64.const 1
      i64.shl
      i64.or
      local.tee 19
      local.get 31
      local.get 37
      i64.add
      i64.add
      local.tee 37
      local.get 40
      i64.xor
      local.tee 31
      i64.const 32
      i64.shr_u
      local.get 31
      i64.const 32
      i64.shl
      i64.or
      local.tee 31
      local.get 17
      i64.add
      local.tee 32
      local.get 31
      local.get 19
      local.get 32
      i64.xor
      local.tee 19
      i64.const 24
      i64.shr_u
      local.get 19
      i64.const 40
      i64.shl
      i64.or
      local.tee 31
      local.get 37
      local.get 41
      i64.add
      i64.add
      local.tee 41
      i64.xor
      local.tee 19
      i64.const 16
      i64.shr_u
      local.get 19
      i64.const 48
      i64.shl
      i64.or
      local.tee 32
      i64.add
      local.set 37
      local.get 0
      local.get 17
      local.get 35
      i64.xor
      local.tee 17
      i64.const 63
      i64.shr_u
      local.get 17
      i64.const 1
      i64.shl
      i64.or
      local.tee 17
      local.get 18
      local.get 46
      i64.add
      i64.add
      local.tee 18
      local.get 34
      i64.xor
      local.tee 19
      i64.const 32
      i64.shr_u
      local.get 19
      i64.const 32
      i64.shl
      i64.or
      local.tee 19
      local.get 15
      i64.add
      local.tee 34
      local.get 17
      local.get 34
      i64.xor
      local.tee 17
      i64.const 24
      i64.shr_u
      local.get 17
      i64.const 40
      i64.shl
      i64.or
      local.tee 34
      local.get 18
      local.get 44
      i64.add
      i64.add
      local.tee 17
      local.get 19
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 44
      i64.add
      local.tee 40
      local.get 0
      i64.load
      local.get 23
      i64.xor
      i64.xor
      local.tee 19
      i64.store
      local.get 3
      local.get 14
      local.get 15
      local.get 36
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.tee 15
      local.get 43
      i64.add
      local.get 24
      i64.add
      local.tee 14
      local.get 45
      i64.xor
      local.tee 18
      i64.const 32
      i64.shr_u
      local.get 18
      i64.const 32
      i64.shl
      i64.or
      local.tee 18
      i64.add
      local.tee 24
      local.get 15
      local.get 24
      i64.xor
      local.tee 15
      i64.const 24
      i64.shr_u
      local.get 15
      i64.const 40
      i64.shl
      i64.or
      local.tee 15
      local.get 14
      local.get 42
      i64.add
      i64.add
      local.tee 14
      local.get 18
      i64.xor
      local.tee 18
      i64.const 16
      i64.shr_u
      local.get 18
      i64.const 48
      i64.shl
      i64.or
      local.tee 42
      i64.add
      local.tee 43
      local.get 3
      i64.load
      local.get 41
      i64.xor
      i64.xor
      local.tee 23
      i64.store
      local.get 4
      local.get 4
      i64.load
      local.get 16
      i64.xor
      local.get 17
      i64.xor
      local.tee 24
      i64.store
      local.get 5
      local.get 5
      i64.load
      local.get 14
      i64.xor
      local.get 37
      i64.xor
      local.tee 18
      i64.store
      local.get 6
      local.get 15
      local.get 43
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.get 6
      i64.load
      local.get 32
      i64.xor
      i64.xor
      local.tee 17
      i64.store
      local.get 7
      local.get 16
      local.get 38
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.get 7
      i64.load
      local.get 44
      i64.xor
      i64.xor
      local.tee 14
      i64.store
      local.get 8
      local.get 31
      local.get 37
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.get 8
      i64.load
      local.get 42
      i64.xor
      i64.xor
      local.tee 16
      i64.store
      local.get 9
      local.get 34
      local.get 40
      i64.xor
      local.tee 15
      i64.const 63
      i64.shr_u
      local.get 15
      i64.const 1
      i64.shl
      i64.or
      local.get 9
      i64.load
      local.get 39
      i64.xor
      i64.xor
      local.tee 15
      i64.store
      local.get 2
      local.get 10
      i32.sub
      local.tee 13
      local.set 2
      local.get 1
      local.get 10
      i32.add
      local.set 1
      local.get 13
      br_if 0 (;@1;)
    end)
  (func $blake2b (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 432
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.set 8
    local.get 0
    i32.eqz
    local.get 1
    i32.eqz
    local.get 2
    i32.const 0
    i32.ne
    i32.and
    i32.or
    if (result i32)  ;; label = @1
      i32.const -1
    else
      local.get 3
      i32.const 8
      i32.add
      local.tee 4
      i32.const -64
      i32.sub
      i32.const 0
      i32.const 168
      call $memset
      drop
      local.get 3
      i32.const 64
      i32.store offset=236
      local.get 3
      i64.const 7640891576939301192
      i64.store offset=8
      local.get 3
      i64.const -4942790177534073029
      i64.store offset=16
      local.get 3
      i64.const 4354685564936845355
      i64.store offset=24
      local.get 3
      i64.const -6534734903238641935
      i64.store offset=32
      local.get 3
      i64.const 5840696475078001361
      i64.store offset=40
      local.get 3
      i64.const -7276294671716946913
      i64.store offset=48
      local.get 3
      i64.const 2270897969802886507
      i64.store offset=56
      local.get 3
      i64.const 6620516959819538809
      i64.store offset=64
      local.get 4
      i32.const 228
      i32.add
      local.set 9
      local.get 3
      i32.const 232
      i32.add
      local.set 5
      block (result i32)  ;; label = @2
        i32.const 0
        i32.const 128
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        drop
        i32.const 0
        local.get 2
        i32.const 128
        i32.le_u
        br_if 0 (;@2;)
        drop
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        local.get 2
        i32.const 127
        i32.and
        local.tee 2
        i32.const 128
        local.get 2
        select
        local.tee 2
        i32.sub
        local.tee 4
        call $blake2b_compress
        local.get 1
        local.get 4
        i32.add
        local.set 1
        local.get 5
        i32.load
      end
      local.get 3
      i32.const 240
      i32.add
      local.set 4
      local.get 3
      i32.const 8
      i32.add
      local.tee 7
      i32.const 96
      i32.add
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      local.get 5
      local.get 5
      i32.load
      local.get 2
      i32.add
      local.tee 2
      i32.store
      local.get 4
      i64.const 0
      i64.store
      local.get 4
      i32.const 56
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 48
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 40
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 32
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 24
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 8
      i32.add
      i64.const 0
      i64.store
      local.get 9
      i32.load
      local.tee 1
      i32.const 7
      i32.add
      local.set 6
      local.get 4
      local.get 0
      local.get 1
      i32.const 7
      i32.and
      select
      local.set 1
      local.get 3
      i64.const -1
      i64.store offset=88
      local.get 7
      i32.const 96
      i32.add
      local.set 4
      local.get 7
      i32.const 96
      i32.add
      local.get 2
      i32.add
      i32.const 0
      i32.const 128
      local.get 2
      i32.sub
      call $memset
      drop
      local.get 7
      local.get 4
      local.get 5
      i32.load
      call $blake2b_compress
      local.get 6
      i32.const 8
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 8
        local.get 6
        i32.const -8
        i32.and
        call $memcpy
      end
      local.get 0
      local.get 1
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 9
        i32.load
        call $memcpy
      end
      local.get 8
      i32.const 0
      i32.const 232
      i32.const 1028
      i32.load
      call_indirect (type 1)
      drop
      i32.const 0
    end
    drop
    local.get 3
    i32.const 432
    i32.add
    global.set 0)
  (func $_main (type 2)
    (local i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 1
    call $malloc
    local.tee 2
    i32.const 0
    local.get 1
    call $eth2_blockDataCopy
    local.get 0
    local.get 2
    local.get 1
    call $blake2b
    local.get 0
    call $eth2_savePostStateRoot
    local.get 0
    i32.const -64
    i32.sub
    global.set 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (elem (;0;) (i32.const 1) func $memset)
  (data (;0;) (i32.const 1024) "\10\04\01\00\01"))
