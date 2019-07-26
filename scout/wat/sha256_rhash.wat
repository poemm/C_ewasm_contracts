(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 0)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 3) (param i32) (result i32)
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
  (func $memcpy (type 4) (param i32 i32 i32) (result i32)
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
  (func $rhash_sha256_process_block (type 5) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.load
    local.tee 5
    i32.const 24
    i32.shl
    local.get 5
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 5
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 5
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 22
    local.get 0
    i32.load offset=28
    local.tee 35
    local.get 0
    i32.load offset=16
    local.tee 28
    i32.const 26
    i32.rotl
    local.get 28
    i32.const 21
    i32.rotl
    i32.xor
    local.get 28
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    local.get 0
    i32.load offset=24
    local.tee 32
    local.get 0
    i32.load offset=20
    local.tee 30
    i32.xor
    local.get 28
    i32.and
    local.get 32
    i32.xor
    i32.add
    i32.add
    i32.const 1116352408
    i32.add
    local.tee 6
    local.get 0
    i32.load offset=8
    local.tee 33
    local.get 0
    i32.load offset=4
    local.tee 31
    local.get 0
    i32.load
    local.tee 23
    i32.xor
    i32.and
    local.get 23
    local.get 31
    i32.and
    i32.xor
    local.get 23
    i32.const 30
    i32.rotl
    local.get 23
    i32.const 19
    i32.rotl
    i32.xor
    local.get 23
    i32.const 10
    i32.rotl
    i32.xor
    i32.add
    i32.add
    local.tee 5
    i32.const 30
    i32.rotl
    local.get 5
    i32.const 19
    i32.rotl
    i32.xor
    local.get 5
    i32.const 10
    i32.rotl
    i32.xor
    local.get 5
    local.get 23
    i32.xor
    local.get 31
    i32.and
    local.get 5
    local.get 23
    i32.and
    i32.xor
    i32.add
    local.get 32
    local.get 1
    i32.load offset=4
    local.tee 8
    i32.const 24
    i32.shl
    local.get 8
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 8
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 8
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 24
    i32.add
    local.get 6
    local.get 0
    i32.load offset=12
    local.tee 36
    i32.add
    local.tee 7
    local.get 28
    local.get 30
    i32.xor
    i32.and
    local.get 30
    i32.xor
    i32.add
    local.get 7
    i32.const 26
    i32.rotl
    local.get 7
    i32.const 21
    i32.rotl
    i32.xor
    local.get 7
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 1899447441
    i32.add
    local.tee 9
    i32.add
    local.tee 8
    i32.const 30
    i32.rotl
    local.get 8
    i32.const 19
    i32.rotl
    i32.xor
    local.get 8
    i32.const 10
    i32.rotl
    i32.xor
    local.get 5
    local.get 8
    i32.xor
    local.get 23
    i32.and
    local.get 5
    local.get 8
    i32.and
    i32.xor
    i32.add
    local.get 30
    local.get 1
    i32.load offset=8
    local.tee 6
    i32.const 24
    i32.shl
    local.get 6
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 6
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 6
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 25
    i32.add
    local.get 9
    local.get 33
    i32.add
    local.tee 2
    local.get 7
    local.get 28
    i32.xor
    i32.and
    local.get 28
    i32.xor
    i32.add
    local.get 2
    i32.const 26
    i32.rotl
    local.get 2
    i32.const 21
    i32.rotl
    i32.xor
    local.get 2
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -1245643825
    i32.add
    local.tee 3
    i32.add
    local.tee 6
    i32.const 30
    i32.rotl
    local.get 6
    i32.const 19
    i32.rotl
    i32.xor
    local.get 6
    i32.const 10
    i32.rotl
    i32.xor
    local.get 6
    local.get 8
    i32.xor
    local.get 5
    i32.and
    local.get 6
    local.get 8
    i32.and
    i32.xor
    i32.add
    local.get 28
    local.get 1
    i32.load offset=12
    local.tee 9
    i32.const 24
    i32.shl
    local.get 9
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 9
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 9
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 26
    i32.add
    local.get 3
    local.get 31
    i32.add
    local.tee 3
    local.get 2
    local.get 7
    i32.xor
    i32.and
    local.get 7
    i32.xor
    i32.add
    local.get 3
    i32.const 26
    i32.rotl
    local.get 3
    i32.const 21
    i32.rotl
    i32.xor
    local.get 3
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -373957723
    i32.add
    local.tee 14
    i32.add
    local.tee 9
    i32.const 30
    i32.rotl
    local.get 9
    i32.const 19
    i32.rotl
    i32.xor
    local.get 9
    i32.const 10
    i32.rotl
    i32.xor
    local.get 6
    local.get 9
    i32.xor
    local.get 8
    i32.and
    local.get 6
    local.get 9
    i32.and
    i32.xor
    i32.add
    local.get 7
    local.get 1
    i32.load offset=16
    local.tee 4
    i32.const 24
    i32.shl
    local.get 4
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 4
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 4
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 27
    i32.add
    local.get 14
    local.get 23
    i32.add
    local.tee 4
    local.get 2
    local.get 3
    i32.xor
    i32.and
    local.get 2
    i32.xor
    i32.add
    local.get 4
    i32.const 26
    i32.rotl
    local.get 4
    i32.const 21
    i32.rotl
    i32.xor
    local.get 4
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 961987163
    i32.add
    local.tee 15
    i32.add
    local.tee 7
    i32.const 30
    i32.rotl
    local.get 7
    i32.const 19
    i32.rotl
    i32.xor
    local.get 7
    i32.const 10
    i32.rotl
    i32.xor
    local.get 7
    local.get 9
    i32.xor
    local.get 6
    i32.and
    local.get 7
    local.get 9
    i32.and
    i32.xor
    i32.add
    local.get 2
    local.get 1
    i32.load offset=20
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    local.tee 14
    i32.add
    local.get 5
    local.get 15
    i32.add
    local.tee 2
    local.get 3
    local.get 4
    i32.xor
    i32.and
    local.get 3
    i32.xor
    i32.add
    local.get 2
    i32.const 26
    i32.rotl
    local.get 2
    i32.const 21
    i32.rotl
    i32.xor
    local.get 2
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 1508970993
    i32.add
    local.tee 16
    i32.add
    local.tee 5
    i32.const 30
    i32.rotl
    local.get 5
    i32.const 19
    i32.rotl
    i32.xor
    local.get 5
    i32.const 10
    i32.rotl
    i32.xor
    local.get 5
    local.get 7
    i32.xor
    local.get 9
    i32.and
    local.get 5
    local.get 7
    i32.and
    i32.xor
    i32.add
    local.get 3
    local.get 1
    i32.load offset=24
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 15
    i32.add
    local.get 8
    local.get 16
    i32.add
    local.tee 3
    local.get 2
    local.get 4
    i32.xor
    i32.and
    local.get 4
    i32.xor
    i32.add
    local.get 3
    i32.const 26
    i32.rotl
    local.get 3
    i32.const 21
    i32.rotl
    i32.xor
    local.get 3
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -1841331548
    i32.add
    local.tee 17
    i32.add
    local.tee 8
    i32.const 30
    i32.rotl
    local.get 8
    i32.const 19
    i32.rotl
    i32.xor
    local.get 8
    i32.const 10
    i32.rotl
    i32.xor
    local.get 5
    local.get 8
    i32.xor
    local.get 7
    i32.and
    local.get 5
    local.get 8
    i32.and
    i32.xor
    i32.add
    local.get 4
    local.get 1
    i32.load offset=28
    local.tee 4
    i32.const 24
    i32.shl
    local.get 4
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 4
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 4
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 16
    i32.add
    local.get 6
    local.get 17
    i32.add
    local.tee 4
    local.get 2
    local.get 3
    i32.xor
    i32.and
    local.get 2
    i32.xor
    i32.add
    local.get 4
    i32.const 26
    i32.rotl
    local.get 4
    i32.const 21
    i32.rotl
    i32.xor
    local.get 4
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -1424204075
    i32.add
    local.tee 18
    i32.add
    local.tee 6
    i32.const 30
    i32.rotl
    local.get 6
    i32.const 19
    i32.rotl
    i32.xor
    local.get 6
    i32.const 10
    i32.rotl
    i32.xor
    local.get 6
    local.get 8
    i32.xor
    local.get 5
    i32.and
    local.get 6
    local.get 8
    i32.and
    i32.xor
    i32.add
    local.get 2
    local.get 1
    i32.load offset=32
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    local.tee 17
    i32.add
    local.get 9
    local.get 18
    i32.add
    local.tee 11
    local.get 3
    local.get 4
    i32.xor
    i32.and
    local.get 3
    i32.xor
    i32.add
    local.get 11
    i32.const 26
    i32.rotl
    local.get 11
    i32.const 21
    i32.rotl
    i32.xor
    local.get 11
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -670586216
    i32.add
    local.tee 19
    i32.add
    local.tee 9
    i32.const 30
    i32.rotl
    local.get 9
    i32.const 19
    i32.rotl
    i32.xor
    local.get 9
    i32.const 10
    i32.rotl
    i32.xor
    local.get 6
    local.get 9
    i32.xor
    local.get 8
    i32.and
    local.get 6
    local.get 9
    i32.and
    i32.xor
    i32.add
    local.get 1
    i32.load offset=36
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    local.tee 18
    local.get 3
    i32.add
    local.get 7
    local.get 19
    i32.add
    local.tee 3
    local.get 4
    local.get 11
    i32.xor
    i32.and
    local.get 4
    i32.xor
    i32.add
    local.get 3
    i32.const 26
    i32.rotl
    local.get 3
    i32.const 21
    i32.rotl
    i32.xor
    local.get 3
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 310598401
    i32.add
    local.tee 20
    i32.add
    local.tee 7
    i32.const 30
    i32.rotl
    local.get 7
    i32.const 19
    i32.rotl
    i32.xor
    local.get 7
    i32.const 10
    i32.rotl
    i32.xor
    local.get 7
    local.get 9
    i32.xor
    local.get 6
    i32.and
    local.get 7
    local.get 9
    i32.and
    i32.xor
    i32.add
    local.get 1
    i32.load offset=40
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    local.tee 19
    local.get 4
    i32.add
    local.get 5
    local.get 20
    i32.add
    local.tee 12
    local.get 3
    local.get 11
    i32.xor
    i32.and
    local.get 11
    i32.xor
    i32.add
    local.get 12
    i32.const 26
    i32.rotl
    local.get 12
    i32.const 21
    i32.rotl
    i32.xor
    local.get 12
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 607225278
    i32.add
    local.tee 4
    i32.add
    local.tee 2
    i32.const 30
    i32.rotl
    local.get 2
    i32.const 19
    i32.rotl
    i32.xor
    local.get 2
    i32.const 10
    i32.rotl
    i32.xor
    local.get 2
    local.get 7
    i32.xor
    local.get 9
    i32.and
    local.get 2
    local.get 7
    i32.and
    i32.xor
    i32.add
    local.get 11
    local.get 1
    i32.load offset=44
    local.tee 5
    i32.const 24
    i32.shl
    local.get 5
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 5
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 5
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 11
    i32.add
    local.get 4
    local.get 8
    i32.add
    local.tee 13
    local.get 3
    local.get 12
    i32.xor
    i32.and
    local.get 3
    i32.xor
    i32.add
    local.get 13
    i32.const 26
    i32.rotl
    local.get 13
    i32.const 21
    i32.rotl
    i32.xor
    local.get 13
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 1426881987
    i32.add
    local.tee 8
    i32.add
    local.tee 4
    i32.const 30
    i32.rotl
    local.get 4
    i32.const 19
    i32.rotl
    i32.xor
    local.get 4
    i32.const 10
    i32.rotl
    i32.xor
    local.get 2
    local.get 4
    i32.xor
    local.get 7
    i32.and
    local.get 2
    local.get 4
    i32.and
    i32.xor
    i32.add
    local.get 1
    i32.load offset=48
    local.tee 5
    i32.const 24
    i32.shl
    local.get 5
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 5
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 5
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 20
    local.get 3
    i32.add
    local.get 6
    local.get 8
    i32.add
    local.tee 3
    local.get 12
    local.get 13
    i32.xor
    i32.and
    local.get 12
    i32.xor
    i32.add
    local.get 3
    i32.const 26
    i32.rotl
    local.get 3
    i32.const 21
    i32.rotl
    i32.xor
    local.get 3
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const 1925078388
    i32.add
    local.tee 6
    i32.add
    local.tee 5
    i32.const 30
    i32.rotl
    local.get 5
    i32.const 19
    i32.rotl
    i32.xor
    local.get 5
    i32.const 10
    i32.rotl
    i32.xor
    local.get 4
    local.get 5
    i32.xor
    local.get 2
    i32.and
    local.get 4
    local.get 5
    i32.and
    i32.xor
    i32.add
    local.get 12
    local.get 1
    i32.load offset=52
    local.tee 8
    i32.const 24
    i32.shl
    local.get 8
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 8
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 8
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 12
    i32.add
    local.get 6
    local.get 9
    i32.add
    local.tee 6
    local.get 3
    local.get 13
    i32.xor
    i32.and
    local.get 13
    i32.xor
    i32.add
    local.get 6
    i32.const 26
    i32.rotl
    local.get 6
    i32.const 21
    i32.rotl
    i32.xor
    local.get 6
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -2132889090
    i32.add
    local.tee 21
    i32.add
    local.tee 8
    i32.const 30
    i32.rotl
    local.get 8
    i32.const 19
    i32.rotl
    i32.xor
    local.get 8
    i32.const 10
    i32.rotl
    i32.xor
    local.get 5
    local.get 8
    i32.xor
    local.get 4
    i32.and
    local.get 5
    local.get 8
    i32.and
    i32.xor
    i32.add
    local.get 13
    local.get 1
    i32.load offset=56
    local.tee 9
    i32.const 24
    i32.shl
    local.get 9
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 9
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 9
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    local.tee 13
    i32.add
    local.get 7
    local.get 21
    i32.add
    local.tee 7
    local.get 3
    local.get 6
    i32.xor
    i32.and
    local.get 3
    i32.xor
    i32.add
    local.get 7
    i32.const 26
    i32.rotl
    local.get 7
    i32.const 21
    i32.rotl
    i32.xor
    local.get 7
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -1680079193
    i32.add
    local.tee 10
    i32.add
    local.tee 9
    i32.const 30
    i32.rotl
    local.get 9
    i32.const 19
    i32.rotl
    i32.xor
    local.get 9
    i32.const 10
    i32.rotl
    i32.xor
    local.get 8
    local.get 9
    i32.xor
    local.get 5
    i32.and
    local.get 8
    local.get 9
    i32.and
    i32.xor
    i32.add
    local.get 1
    i32.load offset=60
    local.tee 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    local.tee 21
    local.get 3
    i32.add
    local.get 2
    local.get 10
    i32.add
    local.tee 2
    local.get 6
    local.get 7
    i32.xor
    i32.and
    local.get 6
    i32.xor
    i32.add
    local.get 2
    i32.const 26
    i32.rotl
    local.get 2
    i32.const 21
    i32.rotl
    i32.xor
    local.get 2
    i32.const 7
    i32.rotl
    i32.xor
    i32.add
    i32.const -1046744716
    i32.add
    local.tee 1
    i32.add
    local.set 3
    local.get 1
    local.get 4
    i32.add
    local.set 4
    i32.const 1136
    local.set 1
    i32.const 16
    local.set 34
    loop  ;; label = @1
      local.get 18
      local.get 13
      i32.const 10
      i32.shr_u
      local.get 13
      i32.const 13
      i32.rotl
      i32.xor
      local.get 13
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.get 22
      i32.add
      local.get 24
      i32.const 3
      i32.shr_u
      local.get 24
      i32.const 14
      i32.rotl
      i32.xor
      local.get 24
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.tee 22
      local.get 1
      i32.load
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      local.get 6
      i32.add
      local.get 2
      local.get 7
      i32.xor
      local.get 4
      i32.and
      local.get 7
      i32.xor
      i32.add
      i32.add
      i32.add
      local.tee 10
      local.get 3
      i32.const 30
      i32.rotl
      local.get 3
      i32.const 19
      i32.rotl
      i32.xor
      local.get 3
      i32.const 10
      i32.rotl
      i32.xor
      local.get 3
      local.get 9
      i32.xor
      local.get 8
      i32.and
      local.get 3
      local.get 9
      i32.and
      i32.xor
      i32.add
      i32.add
      local.tee 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      local.get 3
      local.get 6
      i32.xor
      local.get 9
      i32.and
      local.get 3
      local.get 6
      i32.and
      i32.xor
      i32.add
      local.get 19
      local.get 21
      i32.const 10
      i32.shr_u
      local.get 21
      i32.const 13
      i32.rotl
      i32.xor
      local.get 21
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.get 24
      i32.add
      local.get 25
      i32.const 3
      i32.shr_u
      local.get 25
      i32.const 14
      i32.rotl
      i32.xor
      local.get 25
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.tee 24
      local.get 1
      i32.const 4
      i32.add
      i32.load
      local.get 7
      i32.add
      i32.add
      local.get 5
      local.get 10
      i32.add
      local.tee 7
      local.get 2
      local.get 4
      i32.xor
      i32.and
      local.get 2
      i32.xor
      i32.add
      local.get 7
      i32.const 26
      i32.rotl
      local.get 7
      i32.const 21
      i32.rotl
      i32.xor
      local.get 7
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 5
      i32.const 30
      i32.rotl
      local.get 5
      i32.const 19
      i32.rotl
      i32.xor
      local.get 5
      i32.const 10
      i32.rotl
      i32.xor
      local.get 5
      local.get 6
      i32.xor
      local.get 3
      i32.and
      local.get 5
      local.get 6
      i32.and
      i32.xor
      i32.add
      local.get 11
      local.get 25
      i32.add
      local.get 26
      i32.const 3
      i32.shr_u
      local.get 26
      i32.const 14
      i32.rotl
      i32.xor
      local.get 26
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 22
      i32.const 10
      i32.shr_u
      local.get 22
      i32.const 13
      i32.rotl
      i32.xor
      local.get 22
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 25
      local.get 1
      i32.const 8
      i32.add
      i32.load
      local.get 2
      i32.add
      i32.add
      local.get 8
      local.get 10
      i32.add
      local.tee 2
      local.get 4
      local.get 7
      i32.xor
      i32.and
      local.get 4
      i32.xor
      i32.add
      local.get 2
      i32.const 26
      i32.rotl
      local.get 2
      i32.const 21
      i32.rotl
      i32.xor
      local.get 2
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      local.get 5
      local.get 8
      i32.xor
      local.get 6
      i32.and
      local.get 5
      local.get 8
      i32.and
      i32.xor
      i32.add
      local.get 20
      local.get 26
      i32.add
      local.get 27
      i32.const 3
      i32.shr_u
      local.get 27
      i32.const 14
      i32.rotl
      i32.xor
      local.get 27
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 24
      i32.const 10
      i32.shr_u
      local.get 24
      i32.const 13
      i32.rotl
      i32.xor
      local.get 24
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 26
      local.get 1
      i32.const 12
      i32.add
      i32.load
      local.get 4
      i32.add
      i32.add
      local.get 9
      local.get 10
      i32.add
      local.tee 4
      local.get 2
      local.get 7
      i32.xor
      i32.and
      local.get 7
      i32.xor
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      local.get 8
      local.get 9
      i32.xor
      local.get 5
      i32.and
      local.get 8
      local.get 9
      i32.and
      i32.xor
      i32.add
      local.get 12
      local.get 27
      i32.add
      local.get 14
      i32.const 3
      i32.shr_u
      local.get 14
      i32.const 14
      i32.rotl
      i32.xor
      local.get 14
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 25
      i32.const 10
      i32.shr_u
      local.get 25
      i32.const 13
      i32.rotl
      i32.xor
      local.get 25
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 27
      local.get 7
      local.get 1
      i32.const 16
      i32.add
      i32.load
      i32.add
      i32.add
      local.get 3
      local.get 10
      i32.add
      local.tee 3
      local.get 2
      local.get 4
      i32.xor
      i32.and
      local.get 2
      i32.xor
      i32.add
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      local.get 9
      i32.xor
      local.get 8
      i32.and
      local.get 7
      local.get 9
      i32.and
      i32.xor
      i32.add
      local.get 13
      local.get 14
      i32.add
      local.get 15
      i32.const 3
      i32.shr_u
      local.get 15
      i32.const 14
      i32.rotl
      i32.xor
      local.get 15
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 26
      i32.const 10
      i32.shr_u
      local.get 26
      i32.const 13
      i32.rotl
      i32.xor
      local.get 26
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 14
      local.get 1
      i32.const 20
      i32.add
      i32.load
      i32.add
      local.get 2
      i32.add
      local.get 6
      local.get 10
      i32.add
      local.tee 2
      local.get 3
      local.get 4
      i32.xor
      i32.and
      local.get 4
      i32.xor
      i32.add
      local.get 2
      i32.const 26
      i32.rotl
      local.get 2
      i32.const 21
      i32.rotl
      i32.xor
      local.get 2
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      local.get 6
      local.get 7
      i32.xor
      local.get 9
      i32.and
      local.get 6
      local.get 7
      i32.and
      i32.xor
      i32.add
      local.get 15
      local.get 21
      i32.add
      local.get 16
      i32.const 3
      i32.shr_u
      local.get 16
      i32.const 14
      i32.rotl
      i32.xor
      local.get 16
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 27
      i32.const 10
      i32.shr_u
      local.get 27
      i32.const 13
      i32.rotl
      i32.xor
      local.get 27
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 15
      local.get 1
      i32.const 24
      i32.add
      i32.load
      i32.add
      local.get 4
      i32.add
      local.get 5
      local.get 10
      i32.add
      local.tee 4
      local.get 2
      local.get 3
      i32.xor
      i32.and
      local.get 3
      i32.xor
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 5
      i32.const 30
      i32.rotl
      local.get 5
      i32.const 19
      i32.rotl
      i32.xor
      local.get 5
      i32.const 10
      i32.rotl
      i32.xor
      local.get 5
      local.get 6
      i32.xor
      local.get 7
      i32.and
      local.get 5
      local.get 6
      i32.and
      i32.xor
      i32.add
      local.get 17
      i32.const 3
      i32.shr_u
      local.get 17
      i32.const 14
      i32.rotl
      i32.xor
      local.get 17
      i32.const 25
      i32.rotl
      i32.xor
      local.get 16
      i32.add
      local.get 22
      i32.add
      local.get 14
      i32.const 10
      i32.shr_u
      local.get 14
      i32.const 13
      i32.rotl
      i32.xor
      local.get 14
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 16
      local.get 1
      i32.const 28
      i32.add
      i32.load
      i32.add
      local.get 3
      i32.add
      local.get 8
      local.get 10
      i32.add
      local.tee 3
      local.get 2
      local.get 4
      i32.xor
      i32.and
      local.get 2
      i32.xor
      i32.add
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.tee 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      local.get 5
      local.get 8
      i32.xor
      local.get 6
      i32.and
      local.get 5
      local.get 8
      i32.and
      i32.xor
      i32.add
      local.get 18
      i32.const 3
      i32.shr_u
      local.get 18
      i32.const 14
      i32.rotl
      i32.xor
      local.get 18
      i32.const 25
      i32.rotl
      i32.xor
      local.get 17
      i32.add
      local.get 24
      i32.add
      local.get 15
      i32.const 10
      i32.shr_u
      local.get 15
      i32.const 13
      i32.rotl
      i32.xor
      local.get 15
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 17
      local.get 1
      i32.const 32
      i32.add
      i32.load
      i32.add
      local.get 2
      i32.add
      local.get 9
      local.get 10
      i32.add
      local.tee 10
      local.get 3
      local.get 4
      i32.xor
      i32.and
      local.get 4
      i32.xor
      i32.add
      local.get 10
      i32.const 26
      i32.rotl
      local.get 10
      i32.const 21
      i32.rotl
      i32.xor
      local.get 10
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 2
      i32.add
      local.tee 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      local.get 8
      local.get 9
      i32.xor
      local.get 5
      i32.and
      local.get 8
      local.get 9
      i32.and
      i32.xor
      i32.add
      local.get 19
      i32.const 3
      i32.shr_u
      local.get 19
      i32.const 14
      i32.rotl
      i32.xor
      local.get 19
      i32.const 25
      i32.rotl
      i32.xor
      local.get 18
      i32.add
      local.get 25
      i32.add
      local.get 16
      i32.const 10
      i32.shr_u
      local.get 16
      i32.const 13
      i32.rotl
      i32.xor
      local.get 16
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 18
      local.get 1
      i32.const 36
      i32.add
      i32.load
      i32.add
      local.get 4
      i32.add
      local.get 2
      local.get 7
      i32.add
      local.tee 29
      local.get 3
      local.get 10
      i32.xor
      i32.and
      local.get 3
      i32.xor
      i32.add
      local.get 29
      i32.const 26
      i32.rotl
      local.get 29
      i32.const 21
      i32.rotl
      i32.xor
      local.get 29
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 2
      i32.add
      local.tee 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      local.get 9
      i32.xor
      local.get 8
      i32.and
      local.get 7
      local.get 9
      i32.and
      i32.xor
      i32.add
      local.get 11
      i32.const 3
      i32.shr_u
      local.get 11
      i32.const 14
      i32.rotl
      i32.xor
      local.get 11
      i32.const 25
      i32.rotl
      i32.xor
      local.get 19
      i32.add
      local.get 26
      i32.add
      local.get 17
      i32.const 10
      i32.shr_u
      local.get 17
      i32.const 13
      i32.rotl
      i32.xor
      local.get 17
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 19
      local.get 1
      i32.const 40
      i32.add
      i32.load
      i32.add
      local.get 3
      i32.add
      local.get 2
      local.get 6
      i32.add
      local.tee 6
      local.get 10
      local.get 29
      i32.xor
      i32.and
      local.get 10
      i32.xor
      i32.add
      local.get 6
      i32.const 26
      i32.rotl
      local.get 6
      i32.const 21
      i32.rotl
      i32.xor
      local.get 6
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 3
      i32.add
      local.tee 2
      i32.const 30
      i32.rotl
      local.get 2
      i32.const 19
      i32.rotl
      i32.xor
      local.get 2
      i32.const 10
      i32.rotl
      i32.xor
      local.get 2
      local.get 7
      i32.xor
      local.get 9
      i32.and
      local.get 2
      local.get 7
      i32.and
      i32.xor
      i32.add
      local.get 20
      i32.const 3
      i32.shr_u
      local.get 20
      i32.const 14
      i32.rotl
      i32.xor
      local.get 20
      i32.const 25
      i32.rotl
      i32.xor
      local.get 11
      i32.add
      local.get 27
      i32.add
      local.get 18
      i32.const 10
      i32.shr_u
      local.get 18
      i32.const 13
      i32.rotl
      i32.xor
      local.get 18
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 11
      local.get 1
      i32.const 44
      i32.add
      i32.load
      i32.add
      local.get 10
      i32.add
      local.get 3
      local.get 5
      i32.add
      local.tee 3
      local.get 6
      local.get 29
      i32.xor
      i32.and
      local.get 29
      i32.xor
      i32.add
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 5
      i32.add
      local.tee 4
      i32.const 30
      i32.rotl
      local.get 4
      i32.const 19
      i32.rotl
      i32.xor
      local.get 4
      i32.const 10
      i32.rotl
      i32.xor
      local.get 2
      local.get 4
      i32.xor
      local.get 7
      i32.and
      local.get 2
      local.get 4
      i32.and
      i32.xor
      i32.add
      local.get 12
      i32.const 3
      i32.shr_u
      local.get 12
      i32.const 14
      i32.rotl
      i32.xor
      local.get 12
      i32.const 25
      i32.rotl
      i32.xor
      local.get 20
      i32.add
      local.get 14
      i32.add
      local.get 19
      i32.const 10
      i32.shr_u
      local.get 19
      i32.const 13
      i32.rotl
      i32.xor
      local.get 19
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 20
      local.get 1
      i32.const 48
      i32.add
      i32.load
      i32.add
      local.get 29
      i32.add
      local.get 5
      local.get 8
      i32.add
      local.tee 10
      local.get 3
      local.get 6
      i32.xor
      i32.and
      local.get 6
      i32.xor
      i32.add
      local.get 10
      i32.const 26
      i32.rotl
      local.get 10
      i32.const 21
      i32.rotl
      i32.xor
      local.get 10
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 8
      i32.add
      local.tee 5
      i32.const 30
      i32.rotl
      local.get 5
      i32.const 19
      i32.rotl
      i32.xor
      local.get 5
      i32.const 10
      i32.rotl
      i32.xor
      local.get 4
      local.get 5
      i32.xor
      local.get 2
      i32.and
      local.get 4
      local.get 5
      i32.and
      i32.xor
      i32.add
      local.get 13
      i32.const 3
      i32.shr_u
      local.get 13
      i32.const 14
      i32.rotl
      i32.xor
      local.get 13
      i32.const 25
      i32.rotl
      i32.xor
      local.get 12
      i32.add
      local.get 15
      i32.add
      local.get 11
      i32.const 10
      i32.shr_u
      local.get 11
      i32.const 13
      i32.rotl
      i32.xor
      local.get 11
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      local.get 1
      i32.const 52
      i32.add
      i32.load
      i32.add
      local.get 6
      i32.add
      local.get 8
      local.get 9
      i32.add
      local.tee 6
      local.get 3
      local.get 10
      i32.xor
      i32.and
      local.get 3
      i32.xor
      i32.add
      local.get 6
      i32.const 26
      i32.rotl
      local.get 6
      i32.const 21
      i32.rotl
      i32.xor
      local.get 6
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 9
      i32.add
      local.tee 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      local.get 5
      local.get 8
      i32.xor
      local.get 4
      i32.and
      local.get 5
      local.get 8
      i32.and
      i32.xor
      i32.add
      local.get 21
      i32.const 3
      i32.shr_u
      local.get 21
      i32.const 14
      i32.rotl
      i32.xor
      local.get 21
      i32.const 25
      i32.rotl
      i32.xor
      local.get 13
      i32.add
      local.get 16
      i32.add
      local.get 20
      i32.const 10
      i32.shr_u
      local.get 20
      i32.const 13
      i32.rotl
      i32.xor
      local.get 20
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 13
      local.get 1
      i32.const 56
      i32.add
      i32.load
      i32.add
      local.get 3
      i32.add
      local.get 7
      local.get 9
      i32.add
      local.tee 7
      local.get 6
      local.get 10
      i32.xor
      i32.and
      local.get 10
      i32.xor
      i32.add
      local.get 7
      i32.const 26
      i32.rotl
      local.get 7
      i32.const 21
      i32.rotl
      i32.xor
      local.get 7
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 3
      i32.add
      local.tee 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      local.get 8
      local.get 9
      i32.xor
      local.get 5
      i32.and
      local.get 8
      local.get 9
      i32.and
      i32.xor
      i32.add
      local.get 22
      i32.const 3
      i32.shr_u
      local.get 22
      i32.const 14
      i32.rotl
      i32.xor
      local.get 22
      i32.const 25
      i32.rotl
      i32.xor
      local.get 21
      i32.add
      local.get 17
      i32.add
      local.get 12
      i32.const 10
      i32.shr_u
      local.get 12
      i32.const 13
      i32.rotl
      i32.xor
      local.get 12
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 21
      local.get 1
      i32.const 60
      i32.add
      i32.load
      i32.add
      local.get 10
      i32.add
      local.get 2
      local.get 3
      i32.add
      local.tee 2
      local.get 6
      local.get 7
      i32.xor
      i32.and
      local.get 6
      i32.xor
      i32.add
      local.get 2
      i32.const 26
      i32.rotl
      local.get 2
      i32.const 21
      i32.rotl
      i32.xor
      local.get 2
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 10
      i32.add
      local.set 3
      local.get 4
      local.get 10
      i32.add
      local.set 4
      local.get 1
      i32.const -64
      i32.sub
      local.set 1
      local.get 34
      i32.const 16
      i32.add
      local.tee 34
      i32.const 64
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    local.get 35
    i32.add
    i32.store offset=28
    local.get 0
    local.get 7
    local.get 32
    i32.add
    i32.store offset=24
    local.get 0
    local.get 2
    local.get 30
    i32.add
    i32.store offset=20
    local.get 0
    local.get 4
    local.get 28
    i32.add
    i32.store offset=16
    local.get 0
    local.get 5
    local.get 36
    i32.add
    i32.store offset=12
    local.get 0
    local.get 8
    local.get 33
    i32.add
    i32.store offset=8
    local.get 0
    local.get 9
    local.get 31
    i32.add
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 23
    i32.add
    i32.store)
  (func $rhash_sha256_final (type 5) (param i32 i32)
    (local i32 i32 i32 i64)
    local.get 0
    local.get 0
    i64.load offset=64
    local.tee 5
    i32.wrap_i64
    local.tee 2
    i32.const 2
    i32.shr_u
    i32.const 15
    i32.and
    local.tee 4
    i32.const 2
    i32.shl
    i32.add
    local.tee 3
    local.get 3
    i32.load
    i32.const -1
    local.get 2
    i32.const 3
    i32.shl
    local.tee 2
    i32.const 24
    i32.and
    local.tee 3
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    i32.const 128
    local.get 3
    i32.shl
    i32.xor
    i32.store
    local.get 4
    i32.const 1
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 14
        i32.ge_u
        if  ;; label = @3
          local.get 3
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 3
            i32.const 2
            i32.shl
            i32.add
            i32.const 60
            local.get 4
            i32.const 2
            i32.shl
            i32.sub
            call $memset
          end
          local.get 0
          i32.const 72
          i32.add
          local.get 0
          call $rhash_sha256_process_block
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 3
        i32.const 13
        i32.gt_u
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.const 2
      i32.shl
      local.tee 2
      i32.add
      i32.const 56
      local.get 2
      i32.sub
      call $memset
      local.get 0
      i64.load offset=64
      local.tee 5
      i32.wrap_i64
      i32.const 3
      i32.shl
      local.set 2
    end
    local.get 0
    local.get 2
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
    i32.store offset=60
    local.get 0
    local.get 5
    i64.const 29
    i64.shr_u
    i32.wrap_i64
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    i32.store offset=56
    local.get 0
    i32.const 72
    i32.add
    local.tee 2
    local.get 0
    call $rhash_sha256_process_block
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=104
      local.tee 3
      local.get 1
      local.get 2
      i32.or
      i32.or
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 3
        i32.const 1
        i32.lt_s
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 1
          local.get 2
          i32.load
          local.tee 0
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
          i32.or
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 72
      i32.add
      local.set 2
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 1
        local.get 0
        i32.const 3
        i32.xor
        i32.add
        local.get 0
        local.get 2
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $_main (type 6)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 3
    call $malloc
    local.tee 6
    i32.const 0
    local.get 3
    call $eth2_blockDataCopy
    block  ;; label = @1
      local.get 3
      i32.const 49999
      i32.add
      local.get 3
      i32.const 1
      i32.add
      i32.div_s
      local.tee 5
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      i64.extend_i32_u
      local.set 17
      local.get 0
      i32.const 72
      i32.add
      local.set 2
      local.get 3
      i32.const 63
      i32.le_u
      if  ;; label = @2
        local.get 3
        if  ;; label = @3
          i32.const 1040
          i64.load
          local.set 13
          local.get 2
          i32.const 8
          i32.add
          local.set 7
          i32.const 1048
          i64.load
          local.set 14
          local.get 2
          i32.const 16
          i32.add
          local.set 4
          i32.const 1056
          i64.load
          local.set 15
          local.get 2
          i32.const 24
          i32.add
          local.set 1
          i32.const 1064
          i64.load
          local.set 16
          loop  ;; label = @4
            local.get 2
            local.get 13
            i64.store
            local.get 7
            local.get 14
            i64.store
            local.get 4
            local.get 15
            i64.store
            local.get 1
            local.get 16
            i64.store
            local.get 0
            i32.const 32
            i32.store offset=104
            local.get 0
            local.get 17
            i64.store offset=64
            local.get 0
            local.get 6
            local.get 3
            call $memcpy
            local.tee 8
            local.get 8
            i32.const 112
            i32.add
            call $rhash_sha256_final
            local.get 5
            i32.const -1
            i32.add
            local.tee 5
            br_if 0 (;@4;)
          end
          br 2 (;@1;)
        end
        i32.const 1040
        i64.load
        local.set 13
        local.get 2
        i32.const 8
        i32.add
        local.set 6
        i32.const 1048
        i64.load
        local.set 14
        local.get 2
        i32.const 16
        i32.add
        local.set 1
        i32.const 1056
        i64.load
        local.set 15
        local.get 2
        i32.const 24
        i32.add
        local.set 8
        i32.const 1064
        i64.load
        local.set 16
        loop  ;; label = @3
          local.get 2
          local.get 13
          i64.store
          local.get 6
          local.get 14
          i64.store
          local.get 1
          local.get 15
          i64.store
          local.get 8
          local.get 16
          i64.store
          local.get 0
          i32.const 32
          i32.store offset=104
          local.get 0
          local.get 17
          i64.store offset=64
          local.get 0
          local.get 0
          i32.const 112
          i32.add
          call $rhash_sha256_final
          local.get 5
          i32.const -1
          i32.add
          local.tee 5
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 63
      i32.and
      local.tee 12
      if  ;; label = @2
        i32.const 1040
        i64.load
        local.set 13
        local.get 2
        i32.const 8
        i32.add
        local.set 10
        i32.const 1048
        i64.load
        local.set 14
        local.get 2
        i32.const 16
        i32.add
        local.set 11
        i32.const 1056
        i64.load
        local.set 15
        local.get 2
        i32.const 24
        i32.add
        local.set 7
        i32.const 1064
        i64.load
        local.set 16
        loop  ;; label = @3
          local.get 2
          local.get 13
          i64.store
          local.get 10
          local.get 14
          i64.store
          local.get 11
          local.get 15
          i64.store
          local.get 7
          local.get 16
          i64.store
          local.get 0
          i32.const 32
          i32.store offset=104
          local.get 0
          local.get 17
          i64.store offset=64
          local.get 6
          local.set 1
          local.get 3
          local.set 4
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.const 3
            i32.and
            if (result i32)  ;; label = @5
              local.get 0
              i32.const 56
              i32.add
              local.get 1
              i32.const 56
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              i32.const 48
              i32.add
              local.get 1
              i32.const 48
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              i32.const 40
              i32.add
              local.get 1
              i32.const 40
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              i32.const 32
              i32.add
              local.get 1
              i32.const 32
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              i32.const 24
              i32.add
              local.get 1
              i32.const 24
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              i32.const 16
              i32.add
              local.get 1
              i32.const 16
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              i32.const 8
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i64.load align=1
              i64.store
              local.get 0
              local.get 1
              i64.load align=1
              i64.store
              local.get 0
            else
              local.get 1
            end
            call $rhash_sha256_process_block
            local.get 1
            i32.const -64
            i32.sub
            local.set 1
            local.get 4
            i32.const -64
            i32.add
            local.tee 4
            i32.const 63
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 0
          local.get 1
          local.get 12
          call $memcpy
          local.tee 8
          local.get 8
          i32.const 112
          i32.add
          call $rhash_sha256_final
          local.get 9
          i32.const 1
          i32.add
          local.tee 9
          local.get 5
          i32.ne
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      i32.const 1040
      i64.load
      local.set 13
      local.get 2
      i32.const 8
      i32.add
      local.set 10
      i32.const 1048
      i64.load
      local.set 14
      local.get 2
      i32.const 16
      i32.add
      local.set 11
      i32.const 1056
      i64.load
      local.set 15
      local.get 2
      i32.const 24
      i32.add
      local.set 7
      i32.const 1064
      i64.load
      local.set 16
      loop  ;; label = @2
        local.get 2
        local.get 13
        i64.store
        local.get 10
        local.get 14
        i64.store
        local.get 11
        local.get 15
        i64.store
        local.get 7
        local.get 16
        i64.store
        local.get 0
        i32.const 32
        i32.store offset=104
        local.get 0
        local.get 17
        i64.store offset=64
        local.get 6
        local.set 1
        local.get 3
        local.set 4
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.const 3
          i32.and
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 56
            i32.add
            local.get 1
            i32.const 56
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            i32.const 48
            i32.add
            local.get 1
            i32.const 48
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            i32.const 40
            i32.add
            local.get 1
            i32.const 40
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            i32.const 32
            i32.add
            local.get 1
            i32.const 32
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            i32.const 24
            i32.add
            local.get 1
            i32.const 24
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            i32.const 16
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i64.load align=1
            i64.store
            local.get 0
            local.get 1
            i64.load align=1
            i64.store
            local.get 0
          else
            local.get 1
          end
          call $rhash_sha256_process_block
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          local.get 4
          i32.const -64
          i32.add
          local.tee 4
          i32.const 63
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 0
        i32.const 112
        i32.add
        call $rhash_sha256_final
        local.get 9
        i32.const 1
        i32.add
        local.tee 9
        local.get 5
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 112
    i32.add
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 144
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66864))
  (global (;1;) i32 (i32.const 66864))
  (global (;2;) i32 (i32.const 1328))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "0\05\01")
  (data (;1;) (i32.const 1040) "g\e6\09j\85\aeg\bbr\f3n<:\f5O\a5\7fR\0eQ\8ch\05\9b\ab\d9\83\1f\19\cd\e0[\98/\8aB\91D7q\cf\fb\c0\b5\a5\db\b5\e9[\c2V9\f1\11\f1Y\a4\82?\92\d5^\1c\ab\98\aa\07\d8\01[\83\12\be\851$\c3}\0cUt]\ber\fe\b1\de\80\a7\06\dc\9bt\f1\9b\c1\c1i\9b\e4\86G\be\ef\c6\9d\c1\0f\cc\a1\0c$o,\e9-\aa\84tJ\dc\a9\b0\5c\da\88\f9vRQ>\98m\c61\a8\c8'\03\b0\c7\7fY\bf\f3\0b\e0\c6G\91\a7\d5Qc\ca\06g))\14\85\0a\b7'8!\1b.\fcm,M\13\0d8STs\0ae\bb\0ajv.\c9\c2\81\85,r\92\a1\e8\bf\a2Kf\1a\a8p\8bK\c2\a3Ql\c7\19\e8\92\d1$\06\99\d6\855\0e\f4p\a0j\10\16\c1\a4\19\08l7\1eLwH'\b5\bc\b04\b3\0c\1c9J\aa\d8NO\ca\9c[\f3o.h\ee\82\8ftoc\a5x\14x\c8\84\08\02\c7\8c\fa\ff\be\90\eblP\a4\f7\a3\f9\be\f2xq\c6"))
