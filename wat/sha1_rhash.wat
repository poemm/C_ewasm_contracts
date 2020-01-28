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
  (func $memcpy (type 1) (param i32 i32 i32)
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
  (func $memset (type 0) (param i32 i32)
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
  (func $rhash_sha1_process_block (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.load
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
    i32.store
    local.get 3
    local.get 1
    i32.load offset=4
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
    i32.store offset=4
    local.get 3
    local.get 1
    i32.load offset=8
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
    i32.store offset=8
    local.get 3
    local.get 1
    i32.load offset=12
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
    i32.store offset=12
    local.get 3
    local.get 1
    i32.load offset=16
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
    i32.store offset=16
    local.get 3
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
    i32.store offset=20
    local.get 3
    local.get 1
    i32.load offset=24
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
    i32.store offset=24
    local.get 3
    local.get 1
    i32.load offset=28
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
    i32.store offset=28
    local.get 3
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
    i32.store offset=32
    local.get 3
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
    i32.store offset=36
    local.get 3
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
    i32.store offset=40
    local.get 3
    local.get 1
    i32.load offset=44
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
    i32.store offset=44
    local.get 3
    local.get 1
    i32.load offset=48
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
    i32.store offset=48
    local.get 3
    local.get 1
    i32.load offset=52
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
    i32.store offset=52
    local.get 3
    local.get 1
    i32.load offset=56
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
    local.get 3
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
    i32.store offset=60
    loop  ;; label = @1
      local.get 3
      local.get 5
      i32.add
      local.tee 1
      i32.const -64
      i32.sub
      local.get 1
      i32.load
      local.get 1
      i32.const 8
      i32.add
      i32.load
      local.get 1
      i32.const 32
      i32.add
      i32.load
      local.get 1
      i32.const 52
      i32.add
      i32.load
      i32.xor
      i32.xor
      i32.xor
      i32.const 1
      i32.rotl
      i32.store
      local.get 5
      i32.const 4
      i32.add
      local.tee 5
      i32.const 256
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.load offset=16
    local.tee 12
    local.set 9
    local.get 0
    i32.load offset=12
    local.tee 13
    local.set 4
    local.get 0
    i32.load offset=8
    local.tee 14
    local.set 1
    local.get 0
    i32.load offset=4
    local.tee 15
    local.set 7
    local.get 0
    i32.load
    local.tee 16
    local.set 5
    loop  ;; label = @1
      local.get 3
      local.get 6
      i32.add
      i32.load
      local.get 9
      local.get 4
      local.get 1
      local.tee 2
      local.get 4
      local.tee 10
      i32.xor
      local.get 7
      i32.and
      i32.xor
      i32.add
      local.get 5
      local.tee 8
      i32.const 5
      i32.rotl
      i32.add
      i32.add
      i32.const 1518500249
      i32.add
      local.set 5
      local.get 7
      i32.const 30
      i32.rotl
      local.set 1
      local.get 4
      local.set 9
      local.get 2
      local.set 4
      local.get 8
      local.set 7
      local.get 6
      i32.const 4
      i32.add
      local.tee 6
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 80
    i32.add
    local.set 11
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 11
      i32.add
      i32.load
      local.get 10
      local.get 1
      local.tee 7
      local.get 2
      local.tee 9
      i32.xor
      local.get 8
      i32.xor
      i32.add
      local.get 5
      local.tee 6
      i32.const 5
      i32.rotl
      i32.add
      i32.add
      i32.const 1859775393
      i32.add
      local.set 5
      local.get 8
      i32.const 30
      i32.rotl
      local.set 1
      local.get 2
      local.set 10
      local.get 7
      local.set 2
      local.get 6
      local.set 8
      local.get 4
      i32.const 4
      i32.add
      local.tee 4
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 160
    i32.add
    local.set 11
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 4
      local.get 11
      i32.add
      i32.load
      local.get 9
      local.get 1
      local.tee 10
      local.get 7
      local.tee 8
      i32.or
      local.get 6
      i32.and
      local.get 1
      local.get 8
      i32.and
      i32.or
      i32.add
      local.get 5
      local.tee 2
      i32.const 5
      i32.rotl
      i32.add
      i32.add
      i32.const -1894007588
      i32.add
      local.set 5
      local.get 6
      i32.const 30
      i32.rotl
      local.set 1
      local.get 8
      local.set 9
      local.get 10
      local.set 7
      local.get 2
      local.set 6
      local.get 4
      i32.const 4
      i32.add
      local.tee 4
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 240
    i32.add
    local.set 11
    i32.const 0
    local.set 6
    loop  ;; label = @1
      local.get 6
      local.get 11
      i32.add
      i32.load
      local.get 8
      local.get 1
      local.tee 7
      local.get 10
      local.tee 4
      i32.xor
      local.get 2
      i32.xor
      i32.add
      local.get 5
      local.tee 9
      i32.const 5
      i32.rotl
      i32.add
      i32.add
      i32.const -899497514
      i32.add
      local.set 5
      local.get 2
      i32.const 30
      i32.rotl
      local.set 1
      local.get 4
      local.set 8
      local.get 7
      local.set 10
      local.get 9
      local.set 2
      local.get 6
      i32.const 4
      i32.add
      local.tee 6
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 4
    local.get 12
    i32.add
    i32.store offset=16
    local.get 0
    local.get 10
    local.get 13
    i32.add
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 14
    i32.add
    i32.store offset=8
    local.get 0
    local.get 2
    local.get 15
    i32.add
    i32.store offset=4
    local.get 0
    local.get 5
    local.get 16
    i32.add
    i32.store
    local.get 3
    i32.const 320
    i32.add
    global.set 0)
  (func $rhash_sha1_final (type 0) (param i32 i32)
    (local i32 i32 i32 i64)
    local.get 0
    local.get 0
    i64.load offset=64
    i32.wrap_i64
    local.tee 4
    i32.const 63
    i32.and
    local.tee 3
    i32.add
    i32.const 128
    i32.store8
    block  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 2
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.add
          i32.const 2
          local.get 4
          i32.sub
          i32.const 3
          i32.and
          local.tee 2
          i32.const 1
          i32.add
          call $memset
          local.get 2
          local.get 3
          i32.add
          i32.const 2
          i32.add
          local.set 2
        end
        local.get 2
        i32.const 60
        i32.ge_u
        if  ;; label = @3
          local.get 2
          i32.const 63
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 2
            i32.const 252
            i32.and
            local.tee 2
            i32.add
            i32.const 64
            local.get 2
            i32.sub
            call $memset
          end
          local.get 0
          i32.const 72
          i32.add
          local.get 0
          call $rhash_sha1_process_block
          i32.const 0
          br 1 (;@2;)
        end
        local.get 2
        i32.const 55
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 252
        i32.and
      end
      local.tee 2
      local.get 0
      i32.add
      i32.const 56
      local.get 2
      i32.sub
      call $memset
    end
    local.get 0
    local.get 0
    i64.load offset=64
    local.tee 5
    i32.wrap_i64
    local.tee 2
    i32.const 27
    i32.shl
    local.get 2
    i32.const 11
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 2
    i32.const 5
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 3
    i32.shl
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
    call $rhash_sha1_process_block
    local.get 1
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.or
      i32.const 3
      i32.and
      if  ;; label = @2
        local.get 1
        local.get 0
        i32.load8_u offset=72
        i32.store8 offset=3
        local.get 1
        local.get 0
        i32.load8_u offset=73
        i32.store8 offset=2
        local.get 1
        local.get 0
        i32.load8_u offset=74
        i32.store8 offset=1
        local.get 1
        local.get 0
        i32.load8_u offset=75
        i32.store8
        local.get 1
        local.get 0
        i32.const 76
        i32.add
        i32.load8_u
        i32.store8 offset=7
        local.get 1
        local.get 0
        i32.const 77
        i32.add
        i32.load8_u
        i32.store8 offset=6
        local.get 1
        local.get 0
        i32.const 78
        i32.add
        i32.load8_u
        i32.store8 offset=5
        local.get 1
        local.get 0
        i32.const 79
        i32.add
        i32.load8_u
        i32.store8 offset=4
        local.get 1
        local.get 0
        i32.const 80
        i32.add
        i32.load8_u
        i32.store8 offset=11
        local.get 1
        local.get 0
        i32.const 81
        i32.add
        i32.load8_u
        i32.store8 offset=10
        local.get 1
        local.get 0
        i32.const 82
        i32.add
        i32.load8_u
        i32.store8 offset=9
        local.get 1
        local.get 0
        i32.const 83
        i32.add
        i32.load8_u
        i32.store8 offset=8
        local.get 1
        local.get 0
        i32.const 84
        i32.add
        i32.load8_u
        i32.store8 offset=15
        local.get 1
        local.get 0
        i32.const 85
        i32.add
        i32.load8_u
        i32.store8 offset=14
        local.get 1
        local.get 0
        i32.const 86
        i32.add
        i32.load8_u
        i32.store8 offset=13
        local.get 1
        local.get 0
        i32.const 87
        i32.add
        i32.load8_u
        i32.store8 offset=12
        local.get 1
        local.get 0
        i32.const 88
        i32.add
        i32.load8_u
        i32.store8 offset=19
        local.get 1
        local.get 0
        i32.const 89
        i32.add
        i32.load8_u
        i32.store8 offset=18
        local.get 1
        local.get 0
        i32.const 90
        i32.add
        i32.load8_u
        i32.store8 offset=17
        local.get 1
        local.get 0
        i32.const 91
        i32.add
        i32.load8_u
        i32.store8 offset=16
        return
      end
      local.get 1
      local.get 0
      i32.load offset=72
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
      i32.store
      local.get 1
      local.get 0
      i32.const 76
      i32.add
      i32.load
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
      i32.store offset=4
      local.get 1
      local.get 0
      i32.const 80
      i32.add
      i32.load
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
      i32.store offset=8
      local.get 1
      local.get 0
      i32.const 84
      i32.add
      i32.load
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
      i32.store offset=12
      local.get 1
      local.get 0
      i32.const 88
      i32.add
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
      i32.store offset=16
    end)
  (func $_main (type 2)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 2
    call $malloc
    local.tee 1
    i32.const 0
    local.get 2
    call $eth2_blockDataCopy
    local.get 0
    i32.const 88
    i32.add
    i32.const -1009589776
    i32.store
    local.get 0
    i32.const 80
    i32.add
    i64.const 1167088121787636990
    i64.store
    local.get 0
    i64.const -1167088121787636991
    i64.store offset=72
    local.get 0
    local.get 2
    i64.extend_i32_u
    i64.store offset=64
    local.get 2
    i32.const 64
    i32.ge_u
    if  ;; label = @1
      local.get 0
      i32.const 72
      i32.add
      local.set 4
      local.get 2
      local.set 3
      loop  ;; label = @2
        local.get 4
        local.get 1
        i32.const 3
        i32.and
        if (result i32)  ;; label = @3
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
        call $rhash_sha1_process_block
        local.get 1
        i32.const -64
        i32.sub
        local.set 1
        local.get 3
        i32.const -64
        i32.add
        local.tee 3
        i32.const 63
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 63
      i32.and
      local.set 2
    end
    local.get 2
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $memcpy
    end
    local.get 0
    local.get 0
    i32.const 96
    i32.add
    call $rhash_sha1_final
    local.get 0
    i32.const 96
    i32.add
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 128
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\10\04\01"))
