(module
  (type (;0;) (func (param i32 i32 i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 1)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 3)))
  (func $malloc (type 4) (param i32) (result i32)
    (local i32 i32)
    memory.size
    local.set 2
    i32.const 10000
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
    i32.const 10000
    local.get 1
    i32.store
    local.get 1
    local.get 0
    i32.sub)
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 8
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.set 3
      local.get 2
      local.set 4
      loop  ;; label = @2
        local.get 3
        local.get 1
        i64.load
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 4
        i32.const -8
        i32.add
        local.tee 4
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
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
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
    end
    local.get 0)
  (func $memset (type 7) (param i32 i32)
    (local i32)
    local.get 1
    i32.const 9
    i32.ge_u
    if  ;; label = @1
      local.get 1
      local.set 2
      loop  ;; label = @2
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.set 0
        local.get 2
        i32.const -8
        i32.add
        local.tee 2
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 7
      i32.and
      local.set 1
    end
    local.get 1
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
    end)
  (func $blake2b_blocks_bootup (type 0) (param i32 i32 i32 i32)
    i32.const 10004
    i32.const 10080
    i32.store
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $blake2b_blocks_ref)
  (func $blake2b_blocks_ref (type 0) (param i32 i32 i32 i32)
    (local i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 4
    global.set 0
    local.get 0
    i32.const 88
    i32.add
    i64.load align=1
    local.get 0
    i32.const 72
    i32.add
    i64.load align=1
    local.set 49
    local.get 0
    i64.load offset=56 align=1
    local.set 42
    local.get 0
    i64.load offset=48 align=1
    local.set 43
    local.get 0
    i64.load offset=40 align=1
    local.set 44
    local.get 0
    i64.load offset=32 align=1
    local.set 45
    local.get 0
    i64.load offset=24 align=1
    local.set 23
    local.get 0
    i64.load offset=16 align=1
    local.set 46
    local.get 0
    i64.load offset=8 align=1
    local.set 47
    local.get 0
    i64.load align=1
    local.set 41
    local.get 0
    i64.load offset=64 align=1
    local.set 48
    local.get 0
    i64.load offset=80 align=1
    local.tee 31
    i64.eqz
    i32.eqz
    if  ;; label = @1
      local.get 2
      local.get 4
      i32.add
      i32.const 0
      i32.const 128
      local.get 2
      i32.sub
      local.get 2
      i32.const 127
      i32.gt_u
      select
      call $memset
      local.get 4
      local.get 1
      local.get 2
      call $memcpy
      local.set 1
    end
    local.get 2
    i32.const 128
    local.get 2
    i32.const 128
    i32.lt_u
    select
    local.set 5
    local.get 31
    i64.const 2270897969802886507
    i64.xor
    local.set 51
    i64.const 6620516959819538809
    i64.xor
    local.set 52
    local.get 1
    i32.const 127
    i32.add
    local.set 1
    local.get 2
    i32.const 128
    i32.add
    local.set 2
    local.get 5
    i64.extend_i32_u
    local.set 50
    loop  ;; label = @1
      local.get 23
      local.get 1
      i32.const -7
      i32.add
      i64.load align=1
      local.tee 27
      local.get 1
      i32.const -39
      i32.add
      i64.load align=1
      local.tee 31
      local.get 1
      i32.const -47
      i32.add
      i64.load align=1
      local.tee 32
      local.get 1
      i32.const -87
      i32.add
      i64.load align=1
      local.tee 33
      local.get 1
      i32.const -95
      i32.add
      i64.load align=1
      local.tee 36
      local.get 43
      local.get 46
      i64.add
      i64.add
      local.tee 28
      i64.add
      local.get 28
      local.get 51
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 28
      i64.const 4354685564936845355
      i64.add
      local.tee 34
      local.get 43
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 38
      i64.add
      local.tee 29
      local.get 28
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 35
      local.get 34
      i64.add
      local.tee 10
      local.get 38
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 38
      local.get 1
      i32.const -103
      i32.add
      i64.load align=1
      local.tee 28
      local.get 1
      i32.const -111
      i32.add
      i64.load align=1
      local.tee 34
      local.get 44
      local.get 47
      i64.add
      i64.add
      local.tee 37
      i64.add
      local.get 49
      local.get 48
      local.get 50
      i64.add
      local.tee 48
      local.get 50
      i64.lt_u
      i64.extend_i32_u
      i64.add
      local.tee 49
      local.get 37
      i64.xor
      i64.const -7276294671716946913
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      i64.const -4942790177534073029
      i64.add
      local.tee 7
      local.get 44
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 8
      i64.add
      local.tee 14
      i64.add
      i64.add
      local.tee 39
      i64.add
      local.get 38
      local.get 39
      local.get 1
      i32.const -119
      i32.add
      i64.load align=1
      local.tee 38
      local.get 1
      i32.const -127
      i32.add
      i64.load align=1
      local.tee 37
      local.get 41
      local.get 45
      i64.add
      i64.add
      local.tee 30
      i64.add
      local.get 30
      local.get 48
      i64.xor
      i64.const 5840696475078001361
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 30
      i64.const 7640891576956012808
      i64.add
      local.tee 11
      local.get 45
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
      i64.add
      local.tee 13
      local.get 30
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 15
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 26
      local.get 1
      i32.const -71
      i32.add
      i64.load align=1
      local.tee 39
      local.get 1
      i32.const -79
      i32.add
      i64.load align=1
      local.tee 30
      local.get 23
      local.get 42
      i64.add
      i64.add
      local.tee 23
      i64.add
      local.get 23
      local.get 52
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 23
      i64.const -6534734903238641935
      i64.add
      local.tee 40
      local.get 42
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 17
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 40
      i64.add
      local.tee 16
      i64.add
      local.tee 23
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 40
      i64.add
      local.tee 19
      local.get 26
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 20
      local.get 23
      i64.add
      local.tee 21
      local.get 40
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 1
      i32.const -55
      i32.add
      i64.load align=1
      local.tee 23
      i64.add
      local.get 1
      i32.const -23
      i32.add
      i64.load align=1
      local.tee 26
      local.get 1
      i32.const -31
      i32.add
      i64.load align=1
      local.tee 40
      local.get 29
      local.get 6
      local.get 16
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 29
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 9
      local.get 14
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 14
      local.get 11
      local.get 15
      i64.add
      local.tee 11
      i64.add
      local.tee 15
      local.get 29
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 16
      i64.add
      local.tee 29
      i64.add
      local.get 22
      local.get 29
      local.get 27
      local.get 1
      i32.const -15
      i32.add
      i64.load align=1
      local.tee 29
      local.get 17
      local.get 11
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 11
      i64.add
      i64.add
      local.tee 12
      i64.add
      local.get 12
      local.get 35
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 35
      local.get 7
      local.get 9
      i64.add
      local.tee 9
      i64.add
      local.tee 7
      local.get 11
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
      i64.add
      local.tee 12
      local.get 35
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 22
      local.get 23
      local.get 1
      i32.const -63
      i32.add
      i64.load align=1
      local.tee 35
      local.get 8
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 9
      local.get 13
      i64.add
      i64.add
      local.tee 8
      i64.add
      local.get 9
      local.get 10
      local.get 8
      local.get 18
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      i64.add
      local.tee 9
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 8
      i64.add
      local.tee 13
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 9
      i64.add
      local.tee 9
      i64.add
      local.tee 18
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 24
      i64.add
      local.tee 25
      local.get 31
      i64.add
      local.get 12
      local.get 14
      local.get 16
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 14
      local.get 15
      i64.add
      local.tee 12
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 15
      local.get 26
      i64.add
      i64.add
      local.tee 6
      local.get 30
      i64.add
      local.get 15
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 21
      i64.add
      local.tee 15
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 16
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 15
      i64.add
      local.tee 15
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 39
      i64.add
      local.get 6
      local.get 7
      local.get 17
      i64.add
      local.tee 7
      local.get 11
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 11
      local.get 13
      local.get 29
      i64.add
      i64.add
      local.tee 13
      local.get 32
      i64.add
      local.get 11
      local.get 13
      local.get 20
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 11
      local.get 12
      i64.add
      local.tee 12
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 6
      local.get 11
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 11
      local.get 12
      i64.add
      local.tee 12
      local.get 21
      local.get 8
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 9
      local.get 36
      i64.add
      local.get 19
      i64.add
      local.tee 8
      local.get 35
      i64.add
      local.get 9
      local.get 7
      local.get 8
      local.get 14
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 8
      i64.add
      local.tee 14
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 17
      i64.add
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 21
      local.get 17
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 19
      i64.add
      local.tee 19
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 20
      local.get 27
      i64.add
      local.get 12
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 12
      local.get 16
      local.get 33
      i64.add
      i64.add
      local.tee 13
      local.get 28
      i64.add
      local.get 12
      local.get 13
      local.get 22
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 13
      local.get 7
      local.get 9
      i64.add
      local.tee 9
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 16
      i64.add
      local.tee 22
      i64.add
      local.tee 25
      local.get 26
      i64.add
      local.get 20
      local.get 25
      local.get 8
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 9
      local.get 38
      i64.add
      local.get 6
      i64.add
      local.tee 8
      local.get 40
      i64.add
      local.get 9
      local.get 8
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 12
      local.get 18
      i64.add
      local.tee 9
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
      i64.add
      local.tee 6
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 18
      local.get 9
      local.get 24
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 9
      local.get 14
      local.get 37
      i64.add
      i64.add
      local.tee 14
      local.get 34
      i64.add
      local.get 9
      local.get 11
      local.get 14
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 15
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 11
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
      i64.add
      local.tee 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 24
      i64.add
      local.tee 25
      local.get 23
      i64.add
      local.get 7
      local.get 13
      local.get 22
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.add
      local.tee 13
      local.get 16
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 16
      local.get 6
      local.get 31
      i64.add
      i64.add
      local.tee 6
      local.get 35
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 6
      local.get 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 16
      i64.add
      local.tee 19
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 6
      i64.add
      local.tee 6
      local.get 16
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 16
      i64.add
      local.tee 22
      local.get 36
      i64.add
      local.get 16
      local.get 22
      local.get 11
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 14
      local.get 21
      local.get 33
      i64.add
      i64.add
      local.tee 11
      local.get 34
      i64.add
      local.get 7
      local.get 11
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 10
      i64.add
      local.tee 10
      i64.add
      local.tee 8
      local.get 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 14
      i64.add
      local.tee 11
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 16
      local.get 10
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 10
      local.get 15
      local.get 40
      i64.add
      i64.add
      local.tee 12
      local.get 37
      i64.add
      local.get 10
      local.get 12
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 13
      i64.add
      local.tee 12
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 12
      i64.add
      local.tee 12
      i64.add
      local.tee 17
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 22
      local.get 31
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 20
      i64.add
      local.tee 20
      local.get 24
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 24
      local.get 11
      local.get 39
      i64.add
      i64.add
      local.tee 11
      local.get 38
      i64.add
      local.get 10
      local.get 11
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 6
      i64.add
      local.tee 11
      local.get 24
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 29
      i64.add
      local.get 6
      local.get 25
      local.get 12
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 12
      local.get 19
      local.get 32
      i64.add
      i64.add
      local.tee 13
      local.get 29
      i64.add
      local.get 12
      local.get 13
      local.get 18
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 12
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
      local.get 12
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 18
      local.get 7
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 28
      i64.add
      i64.add
      local.tee 14
      local.get 30
      i64.add
      local.get 7
      local.get 9
      local.get 14
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
      local.tee 14
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 25
      local.get 27
      i64.add
      local.get 17
      local.get 16
      local.get 22
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      i64.add
      local.tee 16
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
      local.get 23
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
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
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 35
      i64.add
      local.get 6
      local.get 22
      local.get 7
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 24
      local.get 26
      i64.add
      i64.add
      local.tee 14
      local.get 40
      i64.add
      local.get 7
      local.get 14
      local.get 17
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 8
      local.get 12
      i64.add
      local.tee 8
      i64.add
      local.tee 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 28
      i64.add
      i64.add
      local.tee 13
      local.get 38
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 24
      local.get 32
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 20
      local.get 6
      local.get 36
      i64.add
      i64.add
      local.tee 6
      local.get 37
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 20
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 27
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 21
      local.get 34
      i64.add
      i64.add
      local.tee 13
      local.get 30
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 33
      i64.add
      i64.add
      local.tee 12
      local.get 32
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 25
      local.get 28
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 23
      i64.add
      i64.add
      local.tee 6
      local.get 37
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
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
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 26
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 20
      local.get 34
      i64.add
      i64.add
      local.tee 12
      local.get 36
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 33
      i64.add
      i64.add
      local.tee 13
      local.get 39
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 24
      local.get 35
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 30
      i64.add
      i64.add
      local.tee 6
      local.get 35
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 28
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 22
      local.get 29
      i64.add
      i64.add
      local.tee 13
      local.get 38
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 31
      i64.add
      i64.add
      local.tee 12
      local.get 40
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 25
      local.get 38
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 20
      local.get 6
      local.get 34
      i64.add
      i64.add
      local.tee 6
      local.get 40
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
      local.get 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 20
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 23
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 21
      local.get 37
      i64.add
      i64.add
      local.tee 12
      local.get 31
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 30
      i64.add
      i64.add
      local.tee 13
      local.get 32
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 24
      local.get 36
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
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
      local.get 29
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 32
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 20
      local.get 36
      i64.add
      i64.add
      local.tee 13
      local.get 26
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 39
      i64.add
      i64.add
      local.tee 12
      local.get 33
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 25
      local.get 35
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 40
      i64.add
      i64.add
      local.tee 6
      local.get 33
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
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
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 31
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 22
      local.get 29
      i64.add
      i64.add
      local.tee 12
      local.get 26
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 27
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 24
      local.get 28
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 20
      local.get 6
      local.get 23
      i64.add
      i64.add
      local.tee 6
      local.get 34
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 20
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 23
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 21
      local.get 37
      i64.add
      i64.add
      local.tee 13
      local.get 39
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 30
      i64.add
      i64.add
      local.tee 12
      local.get 28
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 25
      local.get 34
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
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
      local.get 31
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
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
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 32
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 20
      local.get 40
      i64.add
      i64.add
      local.tee 12
      local.get 38
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 39
      i64.add
      i64.add
      local.tee 13
      local.get 29
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 24
      local.get 37
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 35
      i64.add
      i64.add
      local.tee 6
      local.get 30
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 21
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 35
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 22
      local.get 33
      i64.add
      i64.add
      local.tee 13
      local.get 37
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 27
      i64.add
      i64.add
      local.tee 12
      local.get 36
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 25
      local.get 32
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 20
      local.get 6
      local.get 30
      i64.add
      i64.add
      local.tee 6
      local.get 27
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
      local.get 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 20
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 33
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 21
      local.get 31
      i64.add
      i64.add
      local.tee 12
      local.get 28
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 29
      i64.add
      i64.add
      local.tee 13
      local.get 23
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 24
      local.get 38
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 38
      i64.add
      i64.add
      local.tee 6
      local.get 36
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 22
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 22
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 33
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 20
      local.get 40
      i64.add
      i64.add
      local.tee 13
      local.get 34
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 26
      i64.add
      i64.add
      local.tee 12
      local.get 39
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 25
      local.get 26
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 21
      local.get 6
      local.get 32
      i64.add
      i64.add
      local.tee 6
      local.get 34
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
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
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 37
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 22
      local.get 39
      i64.add
      i64.add
      local.tee 12
      local.get 30
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 35
      i64.add
      i64.add
      local.tee 13
      local.get 36
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 22
      i64.add
      local.tee 24
      local.get 30
      i64.add
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 18
      local.get 19
      i64.add
      local.tee 19
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 20
      local.get 6
      local.get 28
      i64.add
      i64.add
      local.tee 6
      local.get 40
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 20
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 20
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 25
      local.get 39
      i64.add
      local.get 6
      local.get 25
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 21
      local.get 27
      i64.add
      i64.add
      local.tee 13
      local.get 31
      i64.add
      local.get 8
      local.get 13
      local.get 18
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
      local.tee 18
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 15
      local.get 23
      i64.add
      i64.add
      local.tee 12
      local.get 29
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 19
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
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
      local.tee 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 25
      local.get 29
      i64.add
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 17
      local.get 16
      i64.add
      local.tee 16
      local.get 22
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 22
      local.get 6
      local.get 37
      i64.add
      i64.add
      local.tee 6
      local.get 38
      i64.add
      local.get 6
      local.get 9
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 11
      i64.add
      local.tee 11
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
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 24
      local.get 27
      i64.add
      local.get 6
      local.get 24
      local.get 7
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 7
      local.get 20
      local.get 36
      i64.add
      i64.add
      local.tee 12
      local.get 33
      i64.add
      local.get 7
      local.get 12
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
      local.tee 12
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
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 15
      local.get 34
      i64.add
      i64.add
      local.tee 13
      local.get 28
      i64.add
      local.get 8
      local.get 10
      local.get 13
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 16
      i64.add
      local.tee 8
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 15
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 8
      i64.add
      local.tee 8
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 20
      i64.add
      local.tee 24
      local.get 26
      i64.add
      local.get 26
      local.get 18
      local.get 25
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 26
      local.get 19
      i64.add
      local.tee 18
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 19
      local.get 6
      local.get 40
      i64.add
      i64.add
      local.tee 6
      i64.add
      local.get 6
      local.get 10
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 19
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 6
      i64.add
      local.tee 19
      local.get 10
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      local.get 11
      i64.add
      local.tee 11
      local.get 6
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      i64.add
      local.tee 21
      local.get 30
      i64.add
      local.get 6
      local.get 21
      local.get 8
      local.get 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 30
      local.get 22
      local.get 35
      i64.add
      i64.add
      local.tee 8
      local.get 23
      i64.add
      local.get 30
      local.get 8
      local.get 26
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 30
      local.get 7
      local.get 14
      i64.add
      local.tee 26
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 8
      i64.add
      local.tee 14
      local.get 30
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 30
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 13
      local.get 12
      local.get 26
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 26
      local.get 15
      local.get 32
      i64.add
      i64.add
      local.tee 12
      local.get 31
      i64.add
      local.get 26
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 26
      local.get 18
      i64.add
      local.tee 9
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 12
      i64.add
      local.tee 15
      local.get 26
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 26
      local.get 9
      i64.add
      local.tee 9
      i64.add
      local.tee 6
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 18
      i64.add
      local.tee 21
      local.get 33
      i64.add
      local.get 32
      local.get 17
      local.get 24
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 32
      local.get 16
      i64.add
      local.tee 33
      local.get 20
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 17
      local.get 14
      local.get 29
      i64.add
      i64.add
      local.tee 29
      i64.add
      local.get 26
      local.get 29
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 26
      local.get 11
      i64.add
      local.tee 29
      local.get 17
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 14
      i64.add
      local.tee 11
      local.get 26
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 26
      local.get 29
      i64.add
      local.tee 29
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 14
      i64.add
      local.tee 17
      local.get 28
      i64.add
      local.get 17
      local.get 27
      local.get 9
      local.get 12
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 27
      local.get 19
      local.get 23
      i64.add
      i64.add
      local.tee 23
      i64.add
      local.get 27
      local.get 23
      local.get 32
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 23
      local.get 7
      local.get 30
      i64.add
      local.tee 27
      i64.add
      local.tee 32
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 28
      i64.add
      local.tee 30
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 23
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 9
      local.get 8
      local.get 27
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 27
      local.get 15
      local.get 36
      i64.add
      i64.add
      local.tee 36
      local.get 35
      i64.add
      local.get 27
      local.get 10
      local.get 36
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 27
      local.get 33
      i64.add
      local.tee 33
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 36
      i64.add
      local.tee 35
      local.get 27
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 27
      local.get 33
      i64.add
      local.tee 33
      i64.add
      local.tee 10
      local.get 14
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 7
      i64.add
      local.tee 8
      i64.xor
      local.get 23
      local.get 32
      i64.add
      local.tee 32
      local.get 28
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 23
      local.get 35
      local.get 37
      i64.add
      i64.add
      local.tee 28
      local.get 34
      i64.add
      local.get 23
      local.get 26
      local.get 28
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 23
      local.get 13
      local.get 21
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 28
      local.get 6
      i64.add
      local.tee 34
      i64.add
      local.tee 37
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 26
      i64.add
      local.tee 35
      local.get 23
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 14
      local.get 37
      i64.add
      local.tee 37
      i64.xor
      local.set 23
      local.get 10
      local.get 8
      local.get 9
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 10
      i64.add
      local.tee 9
      local.get 35
      local.get 47
      i64.xor
      i64.xor
      local.set 47
      local.get 18
      local.get 34
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 34
      local.get 30
      local.get 31
      i64.add
      i64.add
      local.tee 31
      local.get 39
      i64.add
      local.get 27
      local.get 31
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 27
      local.get 29
      i64.add
      local.tee 31
      local.get 34
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 34
      i64.add
      local.tee 39
      local.get 27
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 27
      local.get 31
      i64.add
      local.tee 31
      local.get 41
      local.get 33
      local.get 36
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 41
      local.get 11
      local.get 38
      i64.add
      i64.add
      local.tee 33
      local.get 40
      i64.add
      local.get 32
      local.get 28
      local.get 33
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 32
      i64.add
      local.tee 33
      local.get 41
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 36
      i64.add
      local.tee 28
      i64.xor
      i64.xor
      local.set 41
      local.get 10
      local.get 43
      i64.xor
      local.get 26
      local.get 37
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.set 43
      local.get 14
      local.get 45
      i64.xor
      local.get 7
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.set 45
      local.get 28
      local.get 32
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 32
      local.get 42
      i64.xor
      local.get 31
      local.get 34
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.set 42
      local.get 32
      local.get 33
      i64.add
      local.tee 31
      local.get 39
      local.get 46
      i64.xor
      i64.xor
      local.set 46
      local.get 27
      local.get 44
      i64.xor
      local.get 31
      local.get 36
      i64.xor
      i64.const 1
      i64.rotl
      i64.xor
      local.set 44
      local.get 1
      local.get 3
      i32.add
      local.set 1
      local.get 2
      i32.const -128
      i32.add
      local.tee 2
      i32.const 128
      i32.gt_u
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 49
    i64.store8 offset=72
    local.get 0
    local.get 48
    i64.store8 offset=64
    local.get 0
    local.get 42
    i64.store8 offset=56
    local.get 0
    local.get 43
    i64.store8 offset=48
    local.get 0
    local.get 44
    i64.store8 offset=40
    local.get 0
    local.get 45
    i64.store8 offset=32
    local.get 0
    local.get 23
    i64.store8 offset=24
    local.get 0
    local.get 46
    i64.store8 offset=16
    local.get 0
    local.get 47
    i64.store8 offset=8
    local.get 0
    local.get 41
    i64.store8
    local.get 0
    local.get 49
    i64.const 56
    i64.shr_u
    i64.store8 offset=79
    local.get 0
    local.get 49
    i64.const 48
    i64.shr_u
    i64.store8 offset=78
    local.get 0
    local.get 49
    i64.const 40
    i64.shr_u
    i64.store8 offset=77
    local.get 0
    local.get 49
    i64.const 32
    i64.shr_u
    i64.store8 offset=76
    local.get 0
    local.get 49
    i64.const 24
    i64.shr_u
    i64.store8 offset=75
    local.get 0
    local.get 49
    i64.const 16
    i64.shr_u
    i64.store8 offset=74
    local.get 0
    local.get 49
    i64.const 8
    i64.shr_u
    i64.store8 offset=73
    local.get 0
    local.get 48
    i64.const 56
    i64.shr_u
    i64.store8 offset=71
    local.get 0
    local.get 48
    i64.const 48
    i64.shr_u
    i64.store8 offset=70
    local.get 0
    local.get 48
    i64.const 40
    i64.shr_u
    i64.store8 offset=69
    local.get 0
    local.get 48
    i64.const 32
    i64.shr_u
    i64.store8 offset=68
    local.get 0
    local.get 48
    i64.const 24
    i64.shr_u
    i64.store8 offset=67
    local.get 0
    local.get 48
    i64.const 16
    i64.shr_u
    i64.store8 offset=66
    local.get 0
    local.get 48
    i64.const 8
    i64.shr_u
    i64.store8 offset=65
    local.get 0
    local.get 42
    i64.const 56
    i64.shr_u
    i64.store8 offset=63
    local.get 0
    local.get 42
    i64.const 48
    i64.shr_u
    i64.store8 offset=62
    local.get 0
    local.get 42
    i64.const 40
    i64.shr_u
    i64.store8 offset=61
    local.get 0
    local.get 42
    i64.const 32
    i64.shr_u
    i64.store8 offset=60
    local.get 0
    local.get 42
    i64.const 24
    i64.shr_u
    i64.store8 offset=59
    local.get 0
    local.get 42
    i64.const 16
    i64.shr_u
    i64.store8 offset=58
    local.get 0
    local.get 42
    i64.const 8
    i64.shr_u
    i64.store8 offset=57
    local.get 0
    local.get 43
    i64.const 56
    i64.shr_u
    i64.store8 offset=55
    local.get 0
    local.get 43
    i64.const 48
    i64.shr_u
    i64.store8 offset=54
    local.get 0
    local.get 43
    i64.const 40
    i64.shr_u
    i64.store8 offset=53
    local.get 0
    local.get 43
    i64.const 32
    i64.shr_u
    i64.store8 offset=52
    local.get 0
    local.get 43
    i64.const 24
    i64.shr_u
    i64.store8 offset=51
    local.get 0
    local.get 43
    i64.const 16
    i64.shr_u
    i64.store8 offset=50
    local.get 0
    local.get 43
    i64.const 8
    i64.shr_u
    i64.store8 offset=49
    local.get 0
    local.get 44
    i64.const 56
    i64.shr_u
    i64.store8 offset=47
    local.get 0
    local.get 44
    i64.const 48
    i64.shr_u
    i64.store8 offset=46
    local.get 0
    local.get 44
    i64.const 40
    i64.shr_u
    i64.store8 offset=45
    local.get 0
    local.get 44
    i64.const 32
    i64.shr_u
    i64.store8 offset=44
    local.get 0
    local.get 44
    i64.const 24
    i64.shr_u
    i64.store8 offset=43
    local.get 0
    local.get 44
    i64.const 16
    i64.shr_u
    i64.store8 offset=42
    local.get 0
    local.get 44
    i64.const 8
    i64.shr_u
    i64.store8 offset=41
    local.get 0
    local.get 45
    i64.const 56
    i64.shr_u
    i64.store8 offset=39
    local.get 0
    local.get 45
    i64.const 48
    i64.shr_u
    i64.store8 offset=38
    local.get 0
    local.get 45
    i64.const 40
    i64.shr_u
    i64.store8 offset=37
    local.get 0
    local.get 45
    i64.const 32
    i64.shr_u
    i64.store8 offset=36
    local.get 0
    local.get 45
    i64.const 24
    i64.shr_u
    i64.store8 offset=35
    local.get 0
    local.get 45
    i64.const 16
    i64.shr_u
    i64.store8 offset=34
    local.get 0
    local.get 45
    i64.const 8
    i64.shr_u
    i64.store8 offset=33
    local.get 0
    local.get 23
    i64.const 56
    i64.shr_u
    i64.store8 offset=31
    local.get 0
    local.get 23
    i64.const 48
    i64.shr_u
    i64.store8 offset=30
    local.get 0
    local.get 23
    i64.const 40
    i64.shr_u
    i64.store8 offset=29
    local.get 0
    local.get 23
    i64.const 32
    i64.shr_u
    i64.store8 offset=28
    local.get 0
    local.get 23
    i64.const 24
    i64.shr_u
    i64.store8 offset=27
    local.get 0
    local.get 23
    i64.const 16
    i64.shr_u
    i64.store8 offset=26
    local.get 0
    local.get 23
    i64.const 8
    i64.shr_u
    i64.store8 offset=25
    local.get 0
    local.get 46
    i64.const 56
    i64.shr_u
    i64.store8 offset=23
    local.get 0
    local.get 46
    i64.const 48
    i64.shr_u
    i64.store8 offset=22
    local.get 0
    local.get 46
    i64.const 40
    i64.shr_u
    i64.store8 offset=21
    local.get 0
    local.get 46
    i64.const 32
    i64.shr_u
    i64.store8 offset=20
    local.get 0
    local.get 46
    i64.const 24
    i64.shr_u
    i64.store8 offset=19
    local.get 0
    local.get 46
    i64.const 16
    i64.shr_u
    i64.store8 offset=18
    local.get 0
    local.get 46
    i64.const 8
    i64.shr_u
    i64.store8 offset=17
    local.get 0
    local.get 47
    i64.const 56
    i64.shr_u
    i64.store8 offset=15
    local.get 0
    local.get 47
    i64.const 48
    i64.shr_u
    i64.store8 offset=14
    local.get 0
    local.get 47
    i64.const 40
    i64.shr_u
    i64.store8 offset=13
    local.get 0
    local.get 47
    i64.const 32
    i64.shr_u
    i64.store8 offset=12
    local.get 0
    local.get 47
    i64.const 24
    i64.shr_u
    i64.store8 offset=11
    local.get 0
    local.get 47
    i64.const 16
    i64.shr_u
    i64.store8 offset=10
    local.get 0
    local.get 47
    i64.const 8
    i64.shr_u
    i64.store8 offset=9
    local.get 0
    local.get 41
    i64.const 56
    i64.shr_u
    i64.store8 offset=7
    local.get 0
    local.get 41
    i64.const 48
    i64.shr_u
    i64.store8 offset=6
    local.get 0
    local.get 41
    i64.const 40
    i64.shr_u
    i64.store8 offset=5
    local.get 0
    local.get 41
    i64.const 32
    i64.shr_u
    i64.store8 offset=4
    local.get 0
    local.get 41
    i64.const 24
    i64.shr_u
    i64.store8 offset=3
    local.get 0
    local.get 41
    i64.const 16
    i64.shr_u
    i64.store8 offset=2
    local.get 0
    local.get 41
    i64.const 8
    i64.shr_u
    i64.store8 offset=1
    local.get 4
    i32.const 128
    i32.add
    global.set 0)
  (func $_main (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 2368
    i32.sub
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 2
    call $malloc
    local.tee 8
    i32.const 0
    local.get 2
    call $eth2_blockDataCopy
    block  ;; label = @1
      local.get 2
      i32.const 49999
      i32.add
      local.get 2
      i32.div_s
      local.tee 9
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      i32.add
      local.set 1
      local.get 2
      i32.const 128
      i32.le_u
      if  ;; label = @2
        i32.const 10072
        i64.load
        local.set 18
        i32.const 10064
        i64.load
        local.set 19
        i32.const 10056
        i64.load
        local.set 20
        i32.const 10048
        i64.load
        local.set 21
        i32.const 10040
        i64.load
        local.set 22
        i32.const 10032
        i64.load
        local.set 23
        i32.const 10024
        i64.load
        local.set 24
        i32.const 10016
        i64.load
        local.set 25
        loop  ;; label = @3
          local.get 1
          i64.const 0
          i64.store align=4
          local.get 0
          i32.const 120
          i32.add
          local.tee 3
          local.get 18
          i64.store
          local.get 0
          i32.const 112
          i32.add
          local.tee 4
          local.get 19
          i64.store
          local.get 0
          i32.const 104
          i32.add
          local.tee 10
          local.get 20
          i64.store
          local.get 0
          i32.const 96
          i32.add
          local.tee 11
          local.get 21
          i64.store
          local.get 0
          i32.const 88
          i32.add
          local.tee 5
          local.get 22
          i64.store
          local.get 0
          i32.const 80
          i32.add
          local.tee 6
          local.get 23
          i64.store
          local.get 0
          i32.const 72
          i32.add
          local.tee 7
          local.get 24
          i64.store
          local.get 1
          i32.const 8
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 16
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 24
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 32
          i32.add
          i32.const 0
          i32.store
          local.get 0
          local.get 25
          i64.store offset=64
          local.get 0
          i64.const -1
          i64.store offset=144
          local.get 0
          i32.const -64
          i32.sub
          local.get 8
          local.get 2
          i32.const 0
          i32.const 10004
          i32.load
          i32.load offset=8
          call_indirect (type 0)
          local.get 0
          i32.const 56
          i32.add
          local.get 3
          i64.load
          i64.store
          local.get 0
          i32.const 48
          i32.add
          local.get 4
          i64.load
          i64.store
          local.get 0
          i32.const 40
          i32.add
          local.get 10
          i64.load
          i64.store
          local.get 0
          i32.const 32
          i32.add
          local.get 11
          i64.load
          i64.store
          local.get 0
          i32.const 24
          i32.add
          local.get 5
          i64.load
          i64.store
          local.get 0
          i32.const 16
          i32.add
          local.get 6
          i64.load
          i64.store
          local.get 0
          local.get 7
          i64.load
          i64.store offset=8
          local.get 0
          local.get 0
          i64.load offset=64
          i64.store
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 2
      local.get 2
      i32.const -1
      i32.add
      i32.const -128
      i32.and
      local.tee 2
      i32.sub
      local.set 10
      local.get 2
      local.get 8
      i32.add
      local.set 11
      local.get 8
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        i32.const 10072
        i64.load
        local.set 18
        i32.const 10064
        i64.load
        local.set 19
        i32.const 10056
        i64.load
        local.set 20
        i32.const 10048
        i64.load
        local.set 21
        i32.const 10040
        i64.load
        local.set 22
        i32.const 10032
        i64.load
        local.set 23
        i32.const 10024
        i64.load
        local.set 24
        i32.const 10016
        i64.load
        local.set 25
        loop  ;; label = @3
          local.get 1
          i64.const 0
          i64.store align=4
          local.get 0
          i32.const 120
          i32.add
          local.tee 3
          local.get 18
          i64.store
          local.get 0
          i32.const 112
          i32.add
          local.tee 4
          local.get 19
          i64.store
          local.get 0
          i32.const 104
          i32.add
          local.tee 5
          local.get 20
          i64.store
          local.get 0
          i32.const 96
          i32.add
          local.tee 6
          local.get 21
          i64.store
          local.get 0
          i32.const 88
          i32.add
          local.tee 7
          local.get 22
          i64.store
          local.get 0
          i32.const 80
          i32.add
          local.tee 12
          local.get 23
          i64.store
          local.get 0
          i32.const 72
          i32.add
          local.tee 13
          local.get 24
          i64.store
          local.get 1
          i32.const 8
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 16
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 24
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 32
          i32.add
          i32.const 0
          i32.store
          local.get 0
          local.get 25
          i64.store offset=64
          local.get 0
          i32.const -64
          i32.sub
          local.get 8
          local.get 2
          i32.const 128
          i32.const 10004
          i32.load
          i32.load offset=8
          call_indirect (type 0)
          local.get 0
          i64.const -1
          i64.store offset=144
          local.get 0
          i32.const -64
          i32.sub
          local.get 11
          local.get 10
          i32.const 0
          i32.const 10004
          i32.load
          i32.load offset=8
          call_indirect (type 0)
          local.get 0
          i32.const 56
          i32.add
          local.get 3
          i64.load
          i64.store
          local.get 0
          i32.const 48
          i32.add
          local.get 4
          i64.load
          i64.store
          local.get 0
          i32.const 40
          i32.add
          local.get 5
          i64.load
          i64.store
          local.get 0
          i32.const 32
          i32.add
          local.get 6
          i64.load
          i64.store
          local.get 0
          i32.const 24
          i32.add
          local.get 7
          i64.load
          i64.store
          local.get 0
          i32.const 16
          i32.add
          local.get 12
          i64.load
          i64.store
          local.get 0
          local.get 13
          i64.load
          i64.store offset=8
          local.get 0
          local.get 0
          i64.load offset=64
          i64.store
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 2
      if  ;; label = @2
        i32.const 10072
        i64.load
        local.set 18
        local.get 0
        i32.const 120
        i32.add
        local.set 6
        i32.const 10064
        i64.load
        local.set 19
        local.get 0
        i32.const 112
        i32.add
        local.set 7
        i32.const 10056
        i64.load
        local.set 20
        local.get 0
        i32.const 104
        i32.add
        local.set 12
        i32.const 10048
        i64.load
        local.set 21
        i32.const 10040
        i64.load
        local.set 22
        i32.const 10032
        i64.load
        local.set 23
        i32.const 10024
        i64.load
        local.set 24
        i32.const 10016
        i64.load
        local.set 25
        loop  ;; label = @3
          local.get 1
          i64.const 0
          i64.store align=4
          local.get 6
          local.get 18
          i64.store
          local.get 7
          local.get 19
          i64.store
          local.get 12
          local.get 20
          i64.store
          local.get 0
          i32.const 96
          i32.add
          local.tee 14
          local.get 21
          i64.store
          local.get 0
          i32.const 88
          i32.add
          local.tee 15
          local.get 22
          i64.store
          local.get 0
          i32.const 80
          i32.add
          local.tee 16
          local.get 23
          i64.store
          local.get 0
          i32.const 72
          i32.add
          local.tee 17
          local.get 24
          i64.store
          local.get 1
          i32.const 8
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 16
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 24
          i32.add
          i64.const 0
          i64.store align=4
          local.get 1
          i32.const 32
          i32.add
          i32.const 0
          i32.store
          local.get 0
          local.get 25
          i64.store offset=64
          local.get 2
          local.set 3
          local.get 8
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.const 320
            i32.add
            local.get 4
            local.get 3
            i32.const 2048
            local.get 3
            i32.const 2048
            i32.lt_u
            select
            local.tee 5
            call $memcpy
            drop
            local.get 0
            i32.const -64
            i32.sub
            local.get 0
            i32.const 320
            i32.add
            local.get 5
            i32.const 128
            i32.const 10004
            i32.load
            i32.load offset=8
            call_indirect (type 0)
            local.get 4
            local.get 5
            i32.add
            local.set 4
            local.get 3
            local.get 5
            i32.sub
            local.tee 3
            br_if 0 (;@4;)
          end
          local.get 0
          i64.const -1
          i64.store offset=144
          local.get 0
          i32.const -64
          i32.sub
          local.get 11
          local.get 10
          i32.const 0
          i32.const 10004
          i32.load
          i32.load offset=8
          call_indirect (type 0)
          local.get 0
          i32.const 56
          i32.add
          local.get 6
          i64.load
          i64.store
          local.get 0
          i32.const 48
          i32.add
          local.get 7
          i64.load
          i64.store
          local.get 0
          i32.const 40
          i32.add
          local.get 12
          i64.load
          i64.store
          local.get 0
          i32.const 32
          i32.add
          local.get 14
          i64.load
          i64.store
          local.get 0
          i32.const 24
          i32.add
          local.get 15
          i64.load
          i64.store
          local.get 0
          i32.const 16
          i32.add
          local.get 16
          i64.load
          i64.store
          local.get 0
          local.get 17
          i64.load
          i64.store offset=8
          local.get 0
          local.get 0
          i64.load offset=64
          i64.store
          local.get 13
          i32.const 1
          i32.add
          local.tee 13
          local.get 9
          i32.ne
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      i32.const 10072
      i64.load
      local.set 18
      i32.const 10064
      i64.load
      local.set 19
      i32.const 10056
      i64.load
      local.set 20
      i32.const 10048
      i64.load
      local.set 21
      i32.const 10040
      i64.load
      local.set 22
      i32.const 10032
      i64.load
      local.set 23
      i32.const 10024
      i64.load
      local.set 24
      i32.const 10016
      i64.load
      local.set 25
      loop  ;; label = @2
        local.get 1
        i64.const 0
        i64.store align=4
        local.get 0
        i32.const 120
        i32.add
        local.tee 8
        local.get 18
        i64.store
        local.get 0
        i32.const 112
        i32.add
        local.tee 2
        local.get 19
        i64.store
        local.get 0
        i32.const 104
        i32.add
        local.tee 3
        local.get 20
        i64.store
        local.get 0
        i32.const 96
        i32.add
        local.tee 4
        local.get 21
        i64.store
        local.get 0
        i32.const 88
        i32.add
        local.tee 5
        local.get 22
        i64.store
        local.get 0
        i32.const 80
        i32.add
        local.tee 6
        local.get 23
        i64.store
        local.get 0
        i32.const 72
        i32.add
        local.tee 7
        local.get 24
        i64.store
        local.get 1
        i32.const 8
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 16
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 24
        i32.add
        i64.const 0
        i64.store align=4
        local.get 1
        i32.const 32
        i32.add
        i32.const 0
        i32.store
        local.get 0
        local.get 25
        i64.store offset=64
        local.get 0
        i64.const -1
        i64.store offset=144
        local.get 0
        i32.const -64
        i32.sub
        local.get 11
        local.get 10
        i32.const 0
        i32.const 10004
        i32.load
        i32.load offset=8
        call_indirect (type 0)
        local.get 0
        i32.const 56
        i32.add
        local.get 8
        i64.load
        i64.store
        local.get 0
        i32.const 48
        i32.add
        local.get 2
        i64.load
        i64.store
        local.get 0
        i32.const 40
        i32.add
        local.get 3
        i64.load
        i64.store
        local.get 0
        i32.const 32
        i32.add
        local.get 4
        i64.load
        i64.store
        local.get 0
        i32.const 24
        i32.add
        local.get 5
        i64.load
        i64.store
        local.get 0
        i32.const 16
        i32.add
        local.get 6
        i64.load
        i64.store
        local.get 0
        local.get 7
        i64.load
        i64.store offset=8
        local.get 0
        local.get 0
        i64.load offset=64
        i64.store
        local.get 9
        i32.const -1
        i32.add
        local.tee 9
        br_if 0 (;@2;)
      end
    end
    local.get 0
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 2368
    i32.add
    global.set 0)
  (table (;0;) 3 3 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 10000))
  (global (;1;) i32 (i32.const 10115))
  (global (;2;) i32 (i32.const 10115))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (elem (;0;) (i32.const 1) $blake2b_blocks_ref $blake2b_blocks_bootup)
  (data (;0;) (i32.const 10000) "\83'\00\00l'")
  (data (;1;) (i32.const 10016) "H\c9\bd\f2g\e6\09j;\a7\ca\84\85\aeg\bb+\f8\94\fer\f3n<\f16\1d_:\f5O\a5\d1\82\e6\ad\7fR\0eQ\1fl>+\8ch\05\9bk\bdA\fb\ab\d9\83\1fy!~\13\19\cd\e0[\00\00\00\00x'\00\00\01")
  (data (;2;) (i32.const 10100) "\02\00\00\00generic/64"))
