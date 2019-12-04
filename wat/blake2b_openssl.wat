(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32 i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 1)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 3)))
  (func $malloc (type 4) (param i32) (result i32)
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
  (func $memcpy (type 6) (param i32 i32 i32)
    (local i32)
    local.get 2
    i32.const 8
    i32.ge_u
    if  ;; label = @1
      local.get 2
      local.set 3
      loop  ;; label = @2
        local.get 0
        local.get 1
        i64.load
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        i32.const 8
        i32.add
        local.set 0
        local.get 3
        i32.const -8
        i32.add
        local.tee 3
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
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end)
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i64)
    local.get 2
    i32.const 9
    i32.ge_u
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
      local.set 4
      local.get 2
      local.set 3
      loop  ;; label = @2
        local.get 0
        local.get 4
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.set 0
        local.get 3
        i32.const -8
        i32.add
        local.tee 3
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
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $blake2b_compress (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    local.get 2
    i32.const 128
    local.get 2
    i32.const 128
    i32.lt_u
    select
    local.tee 5
    i64.extend_i32_u
    local.set 41
    local.get 0
    i64.load offset=56
    local.set 9
    local.get 0
    i64.load offset=48
    local.set 12
    local.get 0
    i64.load offset=40
    local.set 7
    local.get 0
    i64.load offset=32
    local.set 8
    local.get 0
    i64.load offset=24
    local.set 14
    local.get 0
    i64.load offset=16
    local.set 11
    local.get 0
    i64.load offset=8
    local.set 10
    local.get 0
    i64.load
    local.set 13
    loop  ;; label = @1
      local.get 1
      local.get 4
      i32.add
      local.tee 3
      i32.const 104
      i32.add
      i64.load align=1
      local.set 28
      local.get 3
      i32.const 96
      i32.add
      i64.load align=1
      local.set 26
      local.get 3
      i32.const 88
      i32.add
      i64.load align=1
      local.set 32
      local.get 3
      i32.const 80
      i32.add
      i64.load align=1
      local.set 25
      local.get 3
      i32.const 120
      i32.add
      i64.load align=1
      local.set 30
      local.get 3
      i32.const 112
      i32.add
      i64.load align=1
      local.set 27
      local.get 3
      i32.const 40
      i32.add
      i64.load align=1
      local.set 33
      local.get 3
      i32.const 32
      i32.add
      i64.load align=1
      local.set 29
      local.get 3
      i32.const 56
      i32.add
      i64.load align=1
      local.set 34
      local.get 3
      i32.const 48
      i32.add
      i64.load align=1
      local.set 35
      local.get 3
      i32.const 72
      i32.add
      i64.load align=1
      local.set 31
      local.get 3
      i32.const 24
      i32.add
      i64.load align=1
      local.set 38
      local.get 3
      i32.const 16
      i32.add
      i64.load align=1
      local.set 39
      local.get 3
      i32.const -64
      i32.sub
      i64.load align=1
      local.set 36
      local.get 3
      i32.const 8
      i32.add
      i64.load align=1
      local.set 37
      local.get 3
      i64.load align=1
      local.set 40
      local.get 0
      local.get 0
      i64.load offset=64
      local.tee 15
      local.get 41
      i64.add
      local.tee 6
      i64.store offset=64
      local.get 0
      local.get 0
      i64.load offset=72
      local.get 6
      local.get 15
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.tee 15
      i64.store offset=72
      local.get 0
      local.get 26
      local.get 37
      local.get 25
      local.get 27
      local.get 31
      local.get 36
      local.get 37
      local.get 40
      local.get 32
      local.get 30
      local.get 39
      local.get 25
      local.get 39
      local.get 26
      local.get 30
      local.get 35
      local.get 40
      local.get 33
      local.get 32
      local.get 28
      local.get 34
      local.get 40
      local.get 33
      local.get 26
      local.get 28
      local.get 29
      local.get 26
      local.get 39
      local.get 37
      local.get 27
      local.get 40
      local.get 31
      local.get 35
      local.get 39
      local.get 31
      local.get 34
      local.get 27
      local.get 25
      local.get 36
      local.get 32
      local.get 26
      local.get 37
      local.get 25
      local.get 27
      local.get 31
      local.get 38
      local.get 39
      local.get 7
      local.get 10
      i64.add
      i64.add
      local.tee 10
      i64.add
      local.get 7
      local.get 10
      local.get 15
      i64.xor
      i64.const -7276294671716946913
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      i64.const -4942790177534073029
      i64.add
      local.tee 10
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 15
      i64.add
      local.tee 20
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      local.get 10
      i64.add
      local.tee 10
      local.get 15
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 15
      local.get 36
      local.get 37
      local.get 40
      local.get 8
      local.get 13
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 8
      local.get 6
      local.get 13
      i64.xor
      i64.const 5840696475078001361
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      i64.const 7640891576956012808
      i64.add
      local.tee 13
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 17
      i64.add
      i64.add
      local.tee 18
      i64.add
      local.get 15
      local.get 18
      local.get 34
      local.get 35
      local.get 9
      local.get 14
      i64.add
      i64.add
      local.tee 14
      i64.add
      local.get 9
      local.get 14
      local.get 0
      i64.load offset=88
      i64.xor
      i64.const 6620516959819538809
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      i64.const -6534734903238641935
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 15
      i64.add
      local.tee 16
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 18
      local.get 33
      local.get 29
      local.get 11
      local.get 12
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 12
      local.get 11
      local.get 0
      i64.load offset=80
      i64.xor
      i64.const 2270897969802886507
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      i64.const 4354685564936845355
      i64.add
      local.tee 11
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 21
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 11
      i64.add
      local.tee 11
      i64.add
      local.tee 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 24
      i64.add
      local.tee 23
      i64.add
      local.get 30
      local.get 8
      local.get 17
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      local.get 13
      i64.add
      local.tee 13
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      local.get 16
      local.get 27
      i64.add
      i64.add
      local.tee 17
      i64.add
      local.get 12
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 17
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 16
      i64.add
      local.get 6
      local.get 16
      local.get 32
      local.get 11
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 11
      local.get 20
      local.get 25
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 9
      local.get 14
      i64.add
      local.tee 9
      i64.add
      local.tee 14
      local.get 11
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 28
      local.get 9
      local.get 15
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 9
      local.get 21
      local.get 26
      i64.add
      i64.add
      local.tee 15
      i64.add
      local.get 9
      local.get 7
      local.get 15
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 13
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 21
      i64.add
      local.get 36
      local.get 18
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 22
      i64.add
      local.tee 22
      local.get 24
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 24
      local.get 6
      local.get 29
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 24
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 35
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 17
      local.get 28
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 18
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 30
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 31
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 22
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 23
      i64.add
      local.get 38
      local.get 20
      local.get 21
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 33
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 19
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      i64.add
      local.get 6
      local.get 21
      local.get 39
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 24
      local.get 40
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 34
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 32
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 24
      i64.add
      local.get 40
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 26
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 28
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 19
      local.get 30
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 39
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 33
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 23
      i64.add
      local.get 29
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 31
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      i64.add
      local.get 6
      local.get 24
      local.get 35
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 22
      local.get 38
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 37
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 34
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 24
      i64.add
      local.get 37
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 38
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 19
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 27
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 21
      local.get 32
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 26
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 28
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 23
      i64.add
      local.get 36
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 30
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      i64.add
      local.get 6
      local.get 24
      local.get 25
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 19
      local.get 33
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 40
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 29
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 24
      i64.add
      local.get 34
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 33
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 30
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 22
      local.get 25
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 29
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 39
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 23
      i64.add
      local.get 28
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 38
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 19
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      i64.add
      local.get 6
      local.get 24
      local.get 26
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 21
      local.get 32
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 36
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 35
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 24
      i64.add
      local.get 25
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 35
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 38
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 19
      local.get 36
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 32
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 40
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 23
      i64.add
      local.get 31
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 37
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      i64.add
      local.get 6
      local.get 24
      local.get 33
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 22
      local.get 34
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 27
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 30
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 24
      i64.add
      local.get 30
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 37
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 19
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 25
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 21
      local.get 29
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 28
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 27
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 23
      i64.add
      local.get 32
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 36
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      i64.add
      local.get 6
      local.get 24
      local.get 38
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 19
      local.get 35
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 39
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 31
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 24
      i64.add
      local.get 27
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 34
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 31
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 22
      local.get 38
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 37
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 26
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 23
      i64.add
      local.get 25
      local.get 6
      local.get 39
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 6
      local.get 16
      i64.add
      local.tee 20
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 16
      i64.add
      i64.add
      local.tee 19
      i64.add
      local.get 12
      local.get 19
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 16
      i64.add
      local.tee 19
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 16
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 16
      i64.add
      local.tee 24
      i64.add
      local.get 16
      local.get 24
      local.get 29
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 21
      local.get 30
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 6
      local.get 11
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 16
      local.get 35
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 36
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 20
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 24
      i64.add
      local.get 31
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 27
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 36
      local.get 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 19
      local.get 40
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 7
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 38
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 32
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 23
      i64.add
      local.get 33
      local.get 6
      local.get 25
      local.get 16
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 6
      local.get 20
      i64.add
      local.tee 20
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 16
      i64.add
      i64.add
      local.tee 21
      i64.add
      local.get 12
      local.get 21
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 16
      i64.add
      local.tee 21
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 16
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 16
      i64.add
      local.tee 24
      i64.add
      local.get 16
      local.get 29
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 14
      local.get 15
      local.get 37
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 14
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 20
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 14
      i64.add
      local.tee 14
      local.get 24
      local.get 34
      local.get 8
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 22
      local.get 28
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 8
      local.get 7
      local.get 6
      local.get 11
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 24
      i64.add
      local.get 29
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 36
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 19
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 33
      local.get 13
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 14
      local.get 21
      local.get 37
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 14
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 14
      local.get 7
      local.get 8
      i64.add
      local.tee 7
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 14
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 14
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 35
      local.get 7
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 34
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 7
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 23
      i64.add
      local.get 40
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 28
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      i64.add
      local.get 6
      local.get 24
      local.get 27
      local.get 7
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 19
      local.get 31
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 7
      local.get 11
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 6
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 20
      local.get 26
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 38
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 8
      local.get 9
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 19
      i64.add
      local.tee 24
      i64.add
      local.get 38
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 18
      i64.add
      local.tee 18
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 39
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 10
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 23
      i64.add
      local.get 6
      local.get 23
      local.get 34
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 22
      local.get 35
      i64.add
      i64.add
      local.tee 13
      i64.add
      local.get 8
      local.get 13
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 7
      local.get 14
      i64.add
      local.tee 7
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 8
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      local.get 33
      local.get 7
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 29
      i64.add
      i64.add
      local.tee 11
      i64.add
      local.get 7
      local.get 11
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
      local.get 18
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 15
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 7
      i64.add
      local.tee 7
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 23
      i64.add
      local.get 30
      local.get 20
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 16
      i64.add
      local.tee 16
      local.get 19
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 27
      i64.add
      i64.add
      local.tee 27
      i64.add
      local.get 12
      local.get 27
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 27
      local.get 10
      i64.add
      local.tee 12
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 10
      i64.add
      local.tee 6
      local.get 27
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 27
      local.get 12
      i64.add
      local.tee 12
      local.get 10
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 10
      i64.add
      local.tee 19
      i64.add
      local.get 10
      local.get 28
      local.get 8
      local.get 14
      i64.add
      local.tee 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 14
      local.get 15
      local.get 26
      i64.add
      i64.add
      local.tee 10
      i64.add
      local.get 14
      local.get 9
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 16
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 10
      i64.add
      local.tee 13
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 14
      i64.add
      local.tee 14
      local.get 19
      local.get 32
      local.get 7
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 21
      local.get 25
      i64.add
      i64.add
      local.tee 25
      i64.add
      local.get 7
      local.get 20
      local.get 25
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 25
      local.get 8
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 8
      i64.add
      local.tee 11
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 25
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 15
      i64.add
      local.tee 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 16
      i64.add
      local.tee 19
      i64.add
      local.get 36
      local.get 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 37
      local.get 18
      i64.add
      local.tee 17
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 18
      local.get 11
      local.get 29
      i64.add
      i64.add
      local.tee 29
      i64.add
      local.get 9
      local.get 29
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 29
      local.get 12
      i64.add
      local.tee 36
      local.get 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 9
      i64.add
      local.tee 12
      local.get 29
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 29
      local.get 36
      i64.add
      local.tee 36
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 9
      i64.add
      local.tee 11
      i64.add
      local.get 9
      local.get 11
      local.get 35
      local.get 10
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 26
      local.get 6
      local.get 28
      i64.add
      i64.add
      local.tee 28
      i64.add
      local.get 26
      local.get 28
      local.get 37
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 28
      local.get 7
      local.get 25
      i64.add
      local.tee 26
      i64.add
      local.tee 25
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 35
      i64.add
      local.tee 37
      local.get 28
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 28
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 30
      local.get 8
      local.get 26
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 26
      local.get 13
      local.get 31
      i64.add
      i64.add
      local.tee 31
      i64.add
      local.get 26
      local.get 27
      local.get 31
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 26
      local.get 17
      i64.add
      local.tee 30
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 27
      i64.add
      local.tee 31
      local.get 26
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 26
      local.get 30
      i64.add
      local.tee 30
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 8
      i64.add
      local.tee 11
      local.get 0
      i64.load
      i64.xor
      local.get 34
      local.get 25
      local.get 28
      i64.add
      local.tee 28
      local.get 35
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 25
      local.get 31
      local.get 32
      i64.add
      i64.add
      local.tee 32
      i64.add
      local.get 25
      local.get 29
      local.get 32
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 32
      local.get 15
      local.get 19
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 25
      local.get 20
      i64.add
      local.tee 29
      i64.add
      local.tee 34
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 35
      i64.add
      local.tee 31
      local.get 32
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 32
      local.get 34
      i64.add
      local.tee 34
      i64.xor
      local.tee 13
      i64.store
      local.get 0
      local.get 39
      local.get 27
      local.get 30
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 30
      local.get 12
      local.get 40
      i64.add
      i64.add
      local.tee 27
      i64.add
      local.get 28
      local.get 25
      local.get 27
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 28
      i64.add
      local.tee 25
      local.get 30
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 30
      i64.add
      local.tee 27
      local.get 28
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 28
      local.get 25
      i64.add
      local.tee 25
      local.get 38
      local.get 33
      local.get 16
      local.get 29
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 29
      i64.add
      local.get 37
      i64.add
      local.tee 33
      i64.add
      local.get 26
      local.get 33
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 26
      local.get 36
      i64.add
      local.tee 33
      local.get 29
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 29
      i64.add
      local.tee 38
      local.get 0
      i64.load offset=24
      i64.xor
      i64.xor
      local.tee 14
      i64.store offset=24
      local.get 0
      local.get 26
      local.get 38
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 26
      local.get 33
      i64.add
      local.tee 33
      local.get 27
      local.get 0
      i64.load offset=8
      i64.xor
      i64.xor
      local.tee 10
      i64.store offset=8
      local.get 0
      local.get 31
      local.get 9
      local.get 11
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 27
      local.get 7
      i64.add
      local.tee 31
      local.get 0
      i64.load offset=16
      i64.xor
      i64.xor
      local.tee 11
      i64.store offset=16
      local.get 0
      local.get 26
      local.get 0
      i64.load offset=48
      i64.xor
      local.get 25
      local.get 30
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 12
      i64.store offset=48
      local.get 0
      local.get 32
      local.get 0
      i64.load offset=40
      i64.xor
      local.get 8
      local.get 31
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 7
      i64.store offset=40
      local.get 0
      local.get 28
      local.get 0
      i64.load offset=32
      i64.xor
      local.get 29
      local.get 33
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 8
      i64.store offset=32
      local.get 0
      local.get 27
      local.get 0
      i64.load offset=56
      i64.xor
      local.get 34
      local.get 35
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 9
      i64.store offset=56
      local.get 2
      local.get 4
      local.get 5
      i32.add
      local.tee 4
      i32.ne
      br_if 0 (;@1;)
    end)
  (func $blake2b (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 368
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      local.get 2
      i32.const 0
      i32.ne
      i32.and
      br_if 0 (;@1;)
      local.get 3
      i32.const 72
      i32.add
      i32.const 0
      i32.const 168
      call $memset
      drop
      local.get 3
      i64.const 6620516959819538809
      i64.store offset=64
      local.get 3
      i64.const 2270897969802886507
      i64.store offset=56
      local.get 3
      i64.const -7276294671716946913
      i64.store offset=48
      local.get 3
      i64.const 5840696475078001361
      i64.store offset=40
      local.get 3
      i64.const -6534734903238641935
      i64.store offset=32
      local.get 3
      i64.const 4354685564936845355
      i64.store offset=24
      local.get 3
      i64.const -4942790177534073029
      i64.store offset=16
      local.get 3
      i64.const 7640891576939301192
      i64.store offset=8
      local.get 3
      i32.const 64
      i32.store offset=236
      block  ;; label = @2
        i32.const 128
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 129
        i32.lt_u
        br_if 0 (;@2;)
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
        local.get 3
        i32.load offset=232
        local.set 4
      end
      local.get 4
      local.get 3
      i32.const 104
      i32.add
      local.tee 5
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      local.get 3
      local.get 3
      i32.load offset=232
      local.get 2
      i32.add
      local.tee 1
      i32.store offset=232
      local.get 3
      i32.const 296
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 288
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 280
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 272
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 264
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i32.const 256
      i32.add
      i64.const 0
      i64.store
      local.get 3
      i64.const -1
      i64.store offset=88
      local.get 3
      i64.const 0
      i64.store offset=248
      local.get 3
      i64.const 0
      i64.store offset=240
      local.get 3
      i32.load offset=236
      local.set 2
      local.get 1
      local.get 5
      i32.add
      i32.const 0
      i32.const 128
      local.get 1
      i32.sub
      call $memset
      drop
      local.get 3
      i32.const 8
      i32.add
      local.get 5
      local.get 3
      i32.load offset=232
      call $blake2b_compress
      local.get 3
      i32.const 240
      i32.add
      local.get 0
      local.get 2
      i32.const 7
      i32.and
      select
      local.set 1
      local.get 2
      i32.const 7
      i32.add
      local.tee 2
      i32.const 8
      i32.ge_u
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.const 8
        i32.add
        local.get 2
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
        local.get 3
        i32.load offset=236
        call $memcpy
      end
      local.get 3
      i32.const 8
      i32.add
      i32.const 0
      i32.const 232
      i32.const 1028
      i32.load
      call_indirect (type 0)
      drop
    end
    local.get 3
    i32.const 368
    i32.add
    global.set 0)
  (func $_main (type 5)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    call $eth2_blockDataSize
    local.tee 0
    call $malloc
    local.tee 3
    i32.const 0
    local.get 0
    call $eth2_blockDataCopy
    local.get 0
    i32.const 49999
    i32.add
    local.get 0
    i32.const 1
    i32.add
    i32.div_s
    local.tee 2
    i32.const 1
    i32.ge_s
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        local.get 3
        local.get 0
        call $blake2b
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 1
    call $eth2_savePostStateRoot
    local.get 1
    i32.const -64
    i32.sub
    global.set 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (global (;1;) i32 (i32.const 66576))
  (global (;2;) i32 (i32.const 1032))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (elem (;0;) (i32.const 1) $memset)
  (data (;0;) (i32.const 1024) "\10\04\01\00\01"))
