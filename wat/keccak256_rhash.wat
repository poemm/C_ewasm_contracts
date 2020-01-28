(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 4)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 3)))
  (func $malloc (type 5) (param i32) (result i32)
    (local i32 i32)
    i32.const 1216
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
    i32.const 1216
    local.get 1
    i32.store
    local.get 1
    local.get 0
    i32.sub)
  (func $memcpy (type 1) (param i32 i32 i32)
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
  (func $memset (type 0) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    local.tee 2
    i32.const 8
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i64.const 0
        i64.store
        local.get 2
        i32.const -8
        i32.add
        local.tee 3
        local.set 2
        local.get 0
        i32.const 8
        i32.add
        local.tee 4
        local.set 0
        local.get 3
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 7
      i32.and
      local.set 2
      local.get 4
      local.set 0
    end
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.tee 1
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        br_if 0 (;@2;)
      end
    end)
  (func $rhash_sha3_process_block (type 0) (param i32 i32)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    i32.const 1264
    local.get 0
    i64.load
    i32.const 1264
    i64.load
    i64.xor
    local.tee 33
    i64.store
    i32.const 1272
    local.get 0
    i64.load offset=8
    i32.const 1272
    i64.load
    i64.xor
    local.tee 13
    i64.store
    i32.const 1280
    local.get 0
    i64.load offset=16
    i32.const 1280
    i64.load
    i64.xor
    local.tee 24
    i64.store
    i32.const 1288
    local.get 0
    i64.load offset=24
    i32.const 1288
    i64.load
    i64.xor
    local.tee 14
    i64.store
    i32.const 1296
    local.get 0
    i64.load offset=32
    i32.const 1296
    i64.load
    i64.xor
    local.tee 15
    i64.store
    i32.const 1304
    local.get 0
    i64.load offset=40
    i32.const 1304
    i64.load
    i64.xor
    local.tee 8
    i64.store
    i32.const 1312
    local.get 0
    i64.load offset=48
    i32.const 1312
    i64.load
    i64.xor
    local.tee 3
    i64.store
    i32.const 1320
    local.get 0
    i64.load offset=56
    i32.const 1320
    i64.load
    i64.xor
    local.tee 4
    i64.store
    i32.const 1328
    local.get 0
    i64.load offset=64
    i32.const 1328
    i64.load
    i64.xor
    local.tee 34
    i64.store
    block  ;; label = @1
      local.get 1
      i32.const 72
      i32.le_u
      if  ;; label = @2
        i32.const 1344
        i64.load
        local.set 21
        i32.const 1360
        i64.load
        local.set 9
        i32.const 1336
        i64.load
        local.set 2
        i32.const 1352
        i64.load
        local.set 7
        br 1 (;@1;)
      end
      i32.const 1336
      local.get 0
      i64.load offset=72
      i32.const 1336
      i64.load
      i64.xor
      local.tee 2
      i64.store
      i32.const 1344
      local.get 0
      i64.load offset=80
      i32.const 1344
      i64.load
      i64.xor
      local.tee 21
      i64.store
      i32.const 1352
      local.get 0
      i64.load offset=88
      i32.const 1352
      i64.load
      i64.xor
      local.tee 7
      i64.store
      i32.const 1360
      local.get 0
      i64.load offset=96
      i32.const 1360
      i64.load
      i64.xor
      local.tee 9
      i64.store
      local.get 1
      i32.const 104
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1368
      local.get 0
      i64.load offset=104
      i32.const 1368
      i64.load
      i64.xor
      i64.store
      i32.const 1376
      local.get 0
      i64.load offset=112
      i32.const 1376
      i64.load
      i64.xor
      i64.store
      i32.const 1384
      local.get 0
      i64.load offset=120
      i32.const 1384
      i64.load
      i64.xor
      i64.store
      i32.const 1392
      local.get 0
      i64.load offset=128
      i32.const 1392
      i64.load
      i64.xor
      i64.store
      local.get 1
      i32.const 136
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1400
      local.get 0
      i64.load offset=136
      i32.const 1400
      i64.load
      i64.xor
      i64.store
    end
    i32.const 1448
    i64.load
    local.set 35
    i32.const 1408
    i64.load
    local.set 36
    i32.const 1368
    i64.load
    local.set 37
    i32.const 1424
    i64.load
    local.set 25
    i32.const 1384
    i64.load
    local.set 10
    i32.const 1440
    i64.load
    local.set 26
    i32.const 1400
    i64.load
    local.set 27
    i32.const 1456
    i64.load
    local.set 38
    i32.const 1416
    i64.load
    local.set 16
    i32.const 1376
    i64.load
    local.set 39
    local.get 2
    local.set 22
    i32.const 1432
    i64.load
    local.set 6
    i32.const 1392
    i64.load
    local.set 28
    local.get 3
    local.set 2
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 16
      local.get 38
      i64.xor
      local.get 39
      i64.xor
      local.get 22
      i64.xor
      local.get 15
      i64.xor
      local.tee 29
      local.get 6
      local.get 28
      i64.xor
      local.get 7
      i64.xor
      local.get 2
      i64.xor
      local.get 13
      i64.xor
      local.tee 17
      i64.const 1
      i64.shl
      local.get 17
      i64.const 63
      i64.shr_u
      i64.or
      i64.xor
      local.set 23
      local.get 10
      local.get 25
      i64.xor
      local.get 21
      i64.xor
      local.get 8
      i64.xor
      local.get 33
      i64.xor
      local.tee 30
      local.get 26
      local.get 27
      i64.xor
      local.get 9
      i64.xor
      local.get 4
      i64.xor
      local.get 24
      i64.xor
      local.tee 3
      i64.const 1
      i64.shl
      local.get 3
      i64.const 63
      i64.shr_u
      i64.or
      i64.xor
      local.set 11
      local.get 17
      local.get 35
      local.get 36
      i64.xor
      local.get 37
      i64.xor
      local.get 34
      i64.xor
      local.get 14
      i64.xor
      local.tee 18
      i64.const 1
      i64.shl
      local.get 18
      i64.const 63
      i64.shr_u
      i64.or
      i64.xor
      local.set 5
      local.get 14
      local.get 29
      i64.const 1
      i64.shl
      local.get 29
      i64.const 63
      i64.shr_u
      i64.or
      local.get 3
      i64.xor
      local.tee 19
      i64.xor
      local.set 3
      local.get 15
      local.get 30
      i64.const 1
      i64.shl
      local.get 30
      i64.const 63
      i64.shr_u
      i64.or
      local.get 18
      i64.xor
      local.tee 20
      i64.xor
      local.set 12
      local.get 2
      local.get 11
      i64.xor
      local.tee 2
      i64.const 44
      i64.shl
      local.get 2
      i64.const 20
      i64.shr_u
      i64.or
      local.tee 40
      local.get 19
      local.get 36
      i64.xor
      local.tee 2
      i64.const 21
      i64.shl
      local.get 2
      i64.const 43
      i64.shr_u
      i64.or
      local.tee 14
      local.get 5
      local.get 9
      i64.xor
      local.tee 2
      i64.const 43
      i64.shl
      local.get 2
      i64.const 21
      i64.shr_u
      i64.or
      local.tee 41
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.get 20
      local.get 38
      i64.xor
      local.tee 2
      i64.const 14
      i64.shl
      local.get 2
      i64.const 50
      i64.shr_u
      i64.or
      local.tee 42
      local.get 14
      i64.const -1
      i64.xor
      i64.and
      local.get 41
      i64.xor
      local.get 3
      i64.const 28
      i64.shl
      local.get 3
      i64.const 36
      i64.shr_u
      i64.or
      local.tee 43
      local.get 21
      local.get 23
      i64.xor
      local.tee 2
      i64.const 3
      i64.shl
      local.get 2
      i64.const 61
      i64.shr_u
      i64.or
      local.tee 3
      local.get 20
      local.get 22
      i64.xor
      local.tee 2
      i64.const 20
      i64.shl
      local.get 2
      i64.const 44
      i64.shr_u
      i64.or
      local.tee 44
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.get 11
      local.get 28
      i64.xor
      local.tee 2
      i64.const 45
      i64.shl
      local.get 2
      i64.const 19
      i64.shr_u
      i64.or
      local.tee 31
      local.get 3
      i64.const -1
      i64.xor
      i64.and
      local.get 44
      i64.xor
      local.set 30
      local.get 3
      local.get 5
      local.get 26
      i64.xor
      local.tee 2
      i64.const 61
      i64.shl
      local.get 2
      i64.const 3
      i64.shr_u
      i64.or
      local.tee 45
      local.get 31
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 18
      local.get 11
      local.get 13
      i64.xor
      local.tee 2
      i64.const 1
      i64.shl
      local.get 2
      i64.const 63
      i64.shr_u
      i64.or
      local.tee 46
      local.get 19
      local.get 37
      i64.xor
      local.tee 2
      i64.const 25
      i64.shl
      local.get 2
      i64.const 39
      i64.shr_u
      i64.or
      local.tee 3
      local.get 4
      local.get 5
      i64.xor
      local.tee 2
      i64.const 6
      i64.shl
      local.get 2
      i64.const 58
      i64.shr_u
      i64.or
      local.tee 47
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 21
      local.get 16
      local.get 20
      i64.xor
      local.tee 2
      i64.const 8
      i64.shl
      local.get 2
      i64.const 56
      i64.shr_u
      i64.or
      local.tee 32
      local.get 3
      i64.const -1
      i64.xor
      i64.and
      local.get 47
      i64.xor
      local.set 13
      local.get 23
      local.get 25
      i64.xor
      local.tee 2
      i64.const 18
      i64.shl
      local.get 2
      i64.const 46
      i64.shr_u
      i64.or
      local.tee 48
      local.get 32
      i64.const -1
      i64.xor
      i64.and
      local.get 3
      i64.xor
      local.set 22
      local.get 12
      i64.const 27
      i64.shl
      local.get 12
      i64.const 37
      i64.shr_u
      i64.or
      local.tee 49
      local.get 7
      local.get 11
      i64.xor
      local.tee 2
      i64.const 10
      i64.shl
      local.get 2
      i64.const 54
      i64.shr_u
      i64.or
      local.tee 4
      local.get 8
      local.get 23
      i64.xor
      local.tee 2
      i64.const 36
      i64.shl
      local.get 2
      i64.const 28
      i64.shr_u
      i64.or
      local.tee 15
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.get 5
      local.get 27
      i64.xor
      local.tee 2
      i64.const 15
      i64.shl
      local.get 2
      i64.const 49
      i64.shr_u
      i64.or
      local.tee 8
      local.get 4
      i64.const -1
      i64.xor
      i64.and
      local.get 15
      i64.xor
      local.set 28
      local.get 4
      local.get 19
      local.get 35
      i64.xor
      local.tee 2
      i64.const 56
      i64.shl
      local.get 2
      i64.const 8
      i64.shr_u
      i64.or
      local.tee 16
      local.get 8
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 27
      local.get 5
      local.get 24
      i64.xor
      local.tee 2
      i64.const 62
      i64.shl
      local.get 2
      i64.const 2
      i64.shr_u
      i64.or
      local.tee 5
      local.get 20
      local.get 39
      i64.xor
      local.tee 2
      i64.const 39
      i64.shl
      local.get 2
      i64.const 25
      i64.shr_u
      i64.or
      local.tee 4
      local.get 19
      local.get 34
      i64.xor
      local.tee 2
      i64.const 55
      i64.shl
      local.get 2
      i64.const 9
      i64.shr_u
      i64.or
      local.tee 12
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 25
      local.get 10
      local.get 23
      i64.xor
      local.tee 2
      i64.const 41
      i64.shl
      local.get 2
      i64.const 23
      i64.shr_u
      i64.or
      local.tee 10
      local.get 4
      i64.const -1
      i64.xor
      i64.and
      local.get 12
      i64.xor
      local.set 2
      local.get 4
      local.get 6
      local.get 11
      i64.xor
      local.tee 6
      i64.const 2
      i64.shl
      local.get 6
      i64.const 62
      i64.shr_u
      i64.or
      local.tee 7
      local.get 10
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 26
      local.get 7
      i64.const -1
      i64.xor
      local.get 5
      i64.and
      local.get 10
      i64.xor
      local.tee 50
      local.set 35
      local.get 16
      i64.const -1
      i64.xor
      local.get 49
      i64.and
      local.get 8
      i64.xor
      local.tee 11
      local.set 36
      local.get 48
      i64.const -1
      i64.xor
      local.get 46
      i64.and
      local.get 32
      i64.xor
      local.tee 19
      local.set 37
      local.get 45
      i64.const -1
      i64.xor
      local.get 43
      i64.and
      local.get 31
      i64.xor
      local.tee 20
      local.set 34
      local.get 23
      local.get 33
      i64.xor
      local.tee 6
      local.get 42
      i64.const -1
      i64.xor
      i64.and
      local.get 14
      i64.xor
      local.tee 31
      local.set 14
      local.set 10
      local.set 8
      local.get 40
      i64.const -1
      i64.xor
      local.get 41
      i64.and
      local.get 0
      i32.const 3
      i32.shl
      i32.const 1024
      i32.add
      i64.load
      local.get 6
      i64.xor
      i64.xor
      local.tee 32
      local.set 33
      local.get 22
      local.set 9
      local.get 18
      local.set 4
      local.set 24
      local.get 5
      i64.const -1
      i64.xor
      local.get 12
      i64.and
      local.get 7
      i64.xor
      local.tee 5
      local.set 38
      local.get 49
      i64.const -1
      i64.xor
      local.get 15
      i64.and
      local.get 16
      i64.xor
      local.tee 12
      local.set 16
      local.get 46
      i64.const -1
      i64.xor
      local.get 47
      i64.and
      local.get 48
      i64.xor
      local.tee 17
      local.set 39
      local.get 43
      i64.const -1
      i64.xor
      local.get 44
      i64.and
      local.get 45
      i64.xor
      local.tee 18
      local.set 22
      local.get 6
      i64.const -1
      i64.xor
      local.get 40
      i64.and
      local.get 42
      i64.xor
      local.tee 3
      local.set 15
      local.get 2
      local.set 6
      local.get 13
      local.set 7
      local.get 30
      local.set 2
      local.set 13
      local.get 0
      i32.const 1
      i32.add
      local.tee 1
      local.set 0
      local.get 1
      i32.const 24
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 1272
    local.get 13
    i64.store
    i32.const 1312
    local.get 2
    i64.store
    i32.const 1352
    local.get 7
    i64.store
    i32.const 1392
    local.get 28
    i64.store
    i32.const 1432
    local.get 6
    i64.store
    i32.const 1296
    local.get 3
    i64.store
    i32.const 1336
    local.get 18
    i64.store
    i32.const 1376
    local.get 17
    i64.store
    i32.const 1416
    local.get 12
    i64.store
    i32.const 1456
    local.get 5
    i64.store
    i32.const 1280
    local.get 24
    i64.store
    i32.const 1320
    local.get 4
    i64.store
    i32.const 1360
    local.get 9
    i64.store
    i32.const 1400
    local.get 27
    i64.store
    i32.const 1440
    local.get 26
    i64.store
    i32.const 1264
    local.get 32
    i64.store
    i32.const 1304
    local.get 8
    i64.store
    i32.const 1344
    local.get 21
    i64.store
    i32.const 1384
    local.get 10
    i64.store
    i32.const 1424
    local.get 25
    i64.store
    i32.const 1288
    local.get 31
    i64.store
    i32.const 1328
    local.get 20
    i64.store
    i32.const 1368
    local.get 19
    i64.store
    i32.const 1408
    local.get 11
    i64.store
    i32.const 1448
    local.get 50
    i64.store)
  (func $_main (type 2)
    (local i32 i32 i32)
    call $eth2_blockDataSize
    local.tee 0
    call $malloc
    local.tee 1
    i32.const 0
    local.get 0
    call $eth2_blockDataCopy
    i32.const 1264
    i32.const 400
    call $memset
    i32.const 1660
    i32.const 136
    i32.store
    i32.const 1656
    local.get 0
    i32.const 136
    i32.rem_u
    i32.store
    local.get 0
    i32.const 136
    i32.ge_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.const 7
        i32.and
        if (result i32)  ;; label = @3
          i32.const 1464
          local.get 1
          i32.const 136
          call $memcpy
          i32.const 1464
        else
          local.get 1
        end
        i32.const 136
        call $rhash_sha3_process_block
        local.get 1
        i32.const 136
        i32.add
        local.set 1
        i32.const -136
        i32.add
        local.tee 2
        local.set 0
        local.get 2
        i32.const 136
        i32.ge_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    if  ;; label = @1
      i32.const 1464
      local.get 1
      local.get 0
      call $memcpy
    end
    i32.const 1660
    i32.load
    local.set 1
    i32.const 1656
    i32.load
    local.tee 0
    i32.const 0
    i32.ge_s
    if  ;; label = @1
      local.get 0
      i32.const 1464
      i32.add
      local.get 1
      local.get 0
      i32.sub
      call $memset
      i32.const 1656
      i32.load
      i32.const 1464
      i32.add
      local.tee 0
      local.get 0
      i32.load8_u
      i32.const 1
      i32.or
      i32.store8
      local.get 1
      i32.const -1
      i32.add
      local.get 1
      i32.const 1463
      i32.add
      i32.load8_u
      i32.const -128
      i32.or
      i32.store8 offset=1464
      i32.const 1464
      local.get 1
      call $rhash_sha3_process_block
      i32.const 1656
      i32.const -2147483648
      i32.store
    end
    i32.const 1232
    i32.const 1264
    i32.const 100
    local.get 1
    i32.const 1
    i32.shr_u
    i32.sub
    call $memcpy
    i32.const 1232
    call $eth2_savePostStateRoot)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\09\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\09\80\00\80\00\00\00\00\0a\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\0a\80\00\00\00\00\00\00\0a\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80")
  (data (;1;) (i32.const 1216) "\90\06\01"))
