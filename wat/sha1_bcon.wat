(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 4)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 3)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
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
  (func $sha1_transform (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 8
    global.set 0
    loop  ;; label = @1
      local.get 2
      local.get 8
      i32.add
      local.get 1
      local.get 2
      i32.add
      i32.load align=1
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
      i32.store
      local.get 2
      i32.const 4
      i32.add
      local.tee 2
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    loop  ;; label = @1
      local.get 4
      local.get 8
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
      local.get 4
      i32.const 4
      i32.add
      local.tee 4
      i32.const 256
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.load offset=100
    local.set 9
    local.get 0
    i32.const 96
    i32.add
    i32.load
    local.tee 13
    local.set 10
    local.get 0
    i32.const 92
    i32.add
    i32.load
    local.tee 14
    local.set 5
    local.get 0
    i32.const 88
    i32.add
    i32.load
    local.tee 15
    local.set 2
    local.get 0
    i32.const 84
    i32.add
    i32.load
    local.tee 16
    local.set 6
    local.get 0
    i32.load offset=80
    local.tee 17
    local.set 4
    loop  ;; label = @1
      local.get 7
      local.get 8
      i32.add
      i32.load
      local.get 9
      local.get 10
      i32.add
      local.get 5
      local.tee 11
      local.get 6
      i32.const -1
      i32.xor
      i32.and
      local.get 6
      local.get 2
      local.tee 3
      i32.and
      i32.or
      i32.add
      i32.add
      local.get 4
      local.tee 1
      i32.const 5
      i32.rotl
      i32.add
      local.set 4
      local.get 6
      i32.const 30
      i32.rotl
      local.set 2
      local.get 5
      local.set 10
      local.get 3
      local.set 5
      local.get 1
      local.set 6
      local.get 7
      i32.const 4
      i32.add
      local.tee 7
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 104
    i32.add
    i32.load
    local.set 9
    local.get 8
    i32.const 80
    i32.add
    local.set 12
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 12
      i32.add
      i32.load
      local.get 9
      local.get 11
      i32.add
      local.get 2
      local.tee 7
      local.get 3
      local.tee 10
      i32.xor
      local.get 1
      i32.xor
      i32.add
      i32.add
      local.get 4
      local.tee 6
      i32.const 5
      i32.rotl
      i32.add
      local.set 4
      local.get 1
      i32.const 30
      i32.rotl
      local.set 2
      local.get 3
      local.set 11
      local.get 7
      local.set 3
      local.get 6
      local.set 1
      local.get 5
      i32.const 4
      i32.add
      local.tee 5
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 108
    i32.add
    i32.load
    local.set 9
    local.get 8
    i32.const 160
    i32.add
    local.set 12
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 12
      i32.add
      i32.load
      local.get 9
      local.get 10
      i32.add
      local.get 2
      local.tee 1
      local.get 7
      local.tee 11
      i32.xor
      local.get 6
      i32.and
      local.get 1
      local.get 7
      i32.and
      i32.xor
      i32.add
      i32.add
      local.get 4
      local.tee 3
      i32.const 5
      i32.rotl
      i32.add
      local.set 4
      local.get 6
      i32.const 30
      i32.rotl
      local.set 2
      local.get 7
      local.set 10
      local.get 1
      local.set 7
      local.get 3
      local.set 6
      local.get 5
      i32.const 4
      i32.add
      local.tee 5
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 112
    i32.add
    i32.load
    local.set 9
    local.get 8
    i32.const 240
    i32.add
    local.set 12
    i32.const 0
    local.set 6
    loop  ;; label = @1
      local.get 6
      local.get 12
      i32.add
      i32.load
      local.get 9
      local.get 11
      i32.add
      local.get 2
      local.tee 7
      local.get 1
      local.tee 5
      i32.xor
      local.get 3
      i32.xor
      i32.add
      i32.add
      local.get 4
      local.tee 10
      i32.const 5
      i32.rotl
      i32.add
      local.set 4
      local.get 3
      i32.const 30
      i32.rotl
      local.set 2
      local.get 1
      local.set 11
      local.get 7
      local.set 1
      local.get 10
      local.set 3
      local.get 6
      i32.const 4
      i32.add
      local.tee 6
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 5
    local.get 13
    i32.add
    i32.store offset=96
    local.get 0
    local.get 1
    local.get 14
    i32.add
    i32.store offset=92
    local.get 0
    local.get 2
    local.get 15
    i32.add
    i32.store offset=88
    local.get 0
    local.get 3
    local.get 16
    i32.add
    i32.store offset=84
    local.get 0
    local.get 4
    local.get 17
    i32.add
    i32.store offset=80
    local.get 8
    i32.const 320
    i32.add
    global.set 0)
  (func $sha1_final (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    local.get 0
    local.get 0
    i32.load offset=64
    local.tee 2
    i32.add
    i32.const 128
    i32.store8
    local.get 2
    i32.const 1
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.const 56
      i32.ge_u
      if  ;; label = @2
        local.get 3
        i32.const 63
        i32.le_u
        if  ;; label = @3
          local.get 0
          local.get 3
          i32.add
          i32.const 63
          local.get 2
          i32.sub
          call $memset
        end
        local.get 0
        local.get 0
        call $sha1_transform
        local.get 0
        i32.const 48
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 40
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 24
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 16
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i32.const 8
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i64.const 0
        i64.store
        br 1 (;@1;)
      end
      local.get 3
      i32.const 55
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      i32.add
      i32.const 55
      local.get 2
      i32.sub
      call $memset
    end
    local.get 0
    local.get 0
    i64.load offset=72
    local.get 0
    i32.load offset=64
    i32.const 3
    i32.shl
    i64.extend_i32_u
    i64.add
    local.tee 6
    i64.store offset=72
    local.get 0
    local.get 6
    i64.store8 offset=63
    local.get 0
    local.get 6
    i64.const 8
    i64.shr_u
    i64.store8 offset=62
    local.get 0
    local.get 6
    i64.const 16
    i64.shr_u
    i64.store8 offset=61
    local.get 0
    local.get 6
    i64.const 24
    i64.shr_u
    i64.store8 offset=60
    local.get 0
    local.get 6
    i64.const 32
    i64.shr_u
    i64.store8 offset=59
    local.get 0
    local.get 6
    i64.const 40
    i64.shr_u
    i64.store8 offset=58
    local.get 0
    local.get 6
    i64.const 48
    i64.shr_u
    i64.store8 offset=57
    local.get 0
    local.get 6
    i64.const 56
    i64.shr_u
    i64.store8 offset=56
    local.get 0
    local.get 0
    call $sha1_transform
    local.get 1
    local.get 0
    i32.const 83
    i32.add
    i32.load8_u
    i32.store8
    local.get 1
    local.get 0
    i32.const 87
    i32.add
    i32.load8_u
    i32.store8 offset=4
    local.get 1
    local.get 0
    i32.const 91
    i32.add
    i32.load8_u
    i32.store8 offset=8
    local.get 1
    local.get 0
    i32.const 95
    i32.add
    i32.load8_u
    i32.store8 offset=12
    local.get 1
    local.get 0
    i32.const 99
    i32.add
    i32.load8_u
    i32.store8 offset=16
    local.get 1
    local.get 0
    i32.const 82
    i32.add
    i32.load16_u
    i32.store8 offset=1
    local.get 1
    local.get 0
    i32.const 86
    i32.add
    i32.load16_u
    i32.store8 offset=5
    local.get 1
    local.get 0
    i32.const 90
    i32.add
    i32.load16_u
    i32.store8 offset=9
    local.get 1
    local.get 0
    i32.const 94
    i32.add
    i32.load16_u
    i32.store8 offset=13
    local.get 1
    local.get 0
    i32.const 98
    i32.add
    i32.load16_u
    i32.store8 offset=17
    local.get 1
    local.get 0
    i32.load offset=80
    i32.const 8
    i32.shr_u
    i32.store8 offset=2
    local.get 1
    local.get 0
    i32.const 84
    i32.add
    local.tee 2
    i32.load
    i32.const 8
    i32.shr_u
    i32.store8 offset=6
    local.get 1
    local.get 0
    i32.const 88
    i32.add
    local.tee 3
    i32.load
    i32.const 8
    i32.shr_u
    i32.store8 offset=10
    local.get 1
    local.get 0
    i32.const 92
    i32.add
    local.tee 4
    i32.load
    i32.const 8
    i32.shr_u
    i32.store8 offset=14
    local.get 1
    local.get 0
    i32.const 96
    i32.add
    local.tee 5
    i32.load
    i32.const 8
    i32.shr_u
    i32.store8 offset=18
    local.get 1
    local.get 0
    i32.load offset=80
    i32.store8 offset=3
    local.get 1
    local.get 2
    i32.load
    i32.store8 offset=7
    local.get 1
    local.get 3
    i32.load
    i32.store8 offset=11
    local.get 1
    local.get 4
    i32.load
    i32.store8 offset=15
    local.get 1
    local.get 5
    i32.load
    i32.store8 offset=19)
  (func $_main (type 1)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 2
    call $malloc
    local.tee 3
    i32.const 0
    local.get 2
    call $eth2_blockDataCopy
    local.get 0
    i32.const 120
    i32.add
    i32.const -899497514
    i32.store
    local.get 0
    i32.const 112
    i32.add
    i64.const -8134700646976066655
    i64.store
    local.get 0
    i32.const 104
    i32.add
    i64.const 6521908911708234224
    i64.store
    local.get 0
    i32.const 96
    i32.add
    i64.const 1167088121787636990
    i64.store
    local.get 0
    i64.const -1167088121787636991
    i64.store offset=88
    local.get 0
    i64.const 0
    i64.store offset=80
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.add
        local.get 3
        i32.load8_u
        i32.store8
        local.get 0
        local.get 0
        i32.load offset=72
        i32.const 1
        i32.add
        local.tee 1
        i32.store offset=72
        local.get 1
        i32.const 64
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 8
          i32.add
          call $sha1_transform
          local.get 0
          i32.const 0
          i32.store offset=72
          local.get 0
          local.get 0
          i64.load offset=80
          i64.const 512
          i64.add
          i64.store offset=80
          i32.const 0
          local.set 1
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 128
    i32.add
    call $sha1_final
    local.get 0
    i32.const 128
    i32.add
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 160
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\10\04\01"))
