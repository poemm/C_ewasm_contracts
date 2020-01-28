(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 4)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 0)))
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
  (func $memset (type 0) (param i32)
    (local i32)
    i32.const 56
    local.set 1
    loop  ;; label = @1
      local.get 1
      i32.const 7
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i64.const 0
        i64.store
        local.get 0
        i32.const 8
        i32.add
        local.set 0
        local.get 1
        i32.const -8
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      local.get 1
      if  ;; label = @2
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
        local.set 1
        br 1 (;@1;)
      end
    end)
  (func $ROTLEFT (type 6) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.shl
    local.get 0
    i32.const 32
    local.get 1
    i32.sub
    i32.shr_u
    i32.or)
  (func $sha1_transform (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 7
    global.set 0
    loop  ;; label = @1
      i32.const 16
      local.set 2
      local.get 4
      i32.const 16
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 4
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        local.get 3
        i32.const 3
        i32.or
        local.get 1
        i32.add
        i32.load8_u
        local.get 1
        local.get 3
        i32.add
        i32.load8_u
        i32.const 24
        i32.shl
        local.get 3
        i32.const 1
        i32.or
        local.get 1
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        local.get 3
        i32.const 2
        i32.or
        local.get 1
        i32.add
        i32.load8_u
        i32.const 8
        i32.shl
        i32.or
        i32.or
        i32.store
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 3
        i32.const 4
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      local.get 2
      i32.const 80
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        local.get 2
        i32.const -16
        i32.add
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 2
        i32.const -14
        i32.add
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 2
        i32.const -3
        i32.add
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 2
        i32.const -8
        i32.add
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        i32.xor
        i32.xor
        i32.xor
        local.tee 1
        i32.const 1
        i32.shl
        local.get 1
        i32.const 31
        i32.shr_u
        i32.or
        i32.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    local.get 0
    i32.const 84
    i32.add
    local.set 11
    local.get 0
    i32.const 88
    i32.add
    local.set 12
    local.get 0
    i32.const 92
    i32.add
    local.set 13
    local.get 0
    i32.const 96
    i32.add
    local.set 14
    local.get 0
    i32.load offset=100
    local.set 9
    local.get 0
    i32.load offset=80
    local.tee 15
    local.set 2
    local.get 0
    i32.load offset=84
    local.tee 16
    local.set 5
    local.get 0
    i32.load offset=88
    local.tee 17
    local.set 1
    local.get 0
    i32.load offset=92
    local.tee 18
    local.set 4
    local.get 0
    i32.load offset=96
    local.tee 19
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.set 8
        local.get 4
        local.set 3
        local.get 1
        local.set 4
        local.get 5
        local.set 1
        local.get 2
        local.set 5
        local.get 6
        i32.const 20
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.load offset=104
          local.set 9
          local.get 1
          local.set 2
          local.get 8
          local.set 1
          i32.const 20
          local.set 6
          br 1 (;@2;)
        end
        local.get 5
        i32.const 5
        call $ROTLEFT
        local.set 2
        local.get 6
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 8
        local.get 9
        i32.add
        local.get 1
        local.get 4
        i32.and
        local.get 1
        i32.const -1
        i32.xor
        local.get 3
        i32.and
        i32.or
        i32.add
        local.get 2
        i32.add
        i32.add
        local.set 2
        local.get 1
        i32.const 30
        call $ROTLEFT
        local.set 1
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.set 8
        local.get 3
        local.set 1
        local.get 4
        local.set 3
        local.get 2
        local.set 4
        local.get 5
        local.set 2
        local.get 6
        i32.const 40
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.load offset=108
          local.set 9
          local.get 4
          local.set 2
          local.get 3
          local.set 4
          local.get 1
          local.set 3
          local.get 8
          local.set 1
          i32.const 40
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        i32.const 5
        call $ROTLEFT
        local.set 5
        local.get 6
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 3
        local.get 4
        i32.xor
        local.get 1
        i32.xor
        local.get 9
        i32.add
        local.get 8
        i32.add
        local.get 5
        i32.add
        i32.add
        local.set 5
        local.get 4
        i32.const 30
        call $ROTLEFT
        local.set 4
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.set 8
        local.get 3
        local.set 1
        local.get 4
        local.set 3
        local.get 2
        local.set 4
        local.get 5
        local.set 2
        local.get 6
        i32.const 60
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.load offset=112
          local.set 6
          local.get 8
          local.set 0
          i32.const 60
          local.set 5
          br 1 (;@2;)
        end
        local.get 2
        i32.const 5
        call $ROTLEFT
        local.set 5
        local.get 6
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 8
        local.get 9
        i32.add
        local.get 1
        local.get 3
        i32.xor
        local.get 4
        i32.and
        local.get 1
        local.get 3
        i32.and
        i32.xor
        i32.add
        local.get 5
        i32.add
        i32.add
        local.set 5
        local.get 4
        i32.const 30
        call $ROTLEFT
        local.set 4
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.set 8
        local.get 1
        local.set 0
        local.get 3
        local.set 1
        local.get 4
        local.set 3
        local.get 2
        local.set 4
        local.get 5
        i32.const 80
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const 5
        call $ROTLEFT
        local.set 2
        local.get 5
        i32.const 2
        i32.shl
        local.get 7
        i32.add
        i32.load
        local.get 1
        local.get 3
        i32.xor
        local.get 0
        i32.xor
        local.get 6
        i32.add
        local.get 8
        i32.add
        local.get 2
        i32.add
        i32.add
        local.set 2
        local.get 3
        i32.const 30
        call $ROTLEFT
        local.set 3
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 15
    i32.add
    i32.store
    local.get 11
    local.get 3
    local.get 16
    i32.add
    i32.store
    local.get 12
    local.get 1
    local.get 17
    i32.add
    i32.store
    local.get 13
    local.get 0
    local.get 18
    i32.add
    i32.store
    local.get 14
    local.get 8
    local.get 19
    i32.add
    i32.store
    local.get 7
    i32.const 320
    i32.add
    global.set 0)
  (func $sha1_update (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const -64
    i32.sub
    local.set 3
    local.get 0
    i32.const 72
    i32.add
    local.set 5
    loop  ;; label = @1
      local.get 2
      local.get 4
      i32.ne
      if  ;; label = @2
        local.get 3
        i32.load
        local.get 0
        i32.add
        local.get 1
        local.get 4
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        local.get 3
        i32.load
        i32.const 1
        i32.add
        local.tee 6
        i32.store
        local.get 6
        i32.const 64
        i32.eq
        if  ;; label = @3
          local.get 0
          local.get 0
          call $sha1_transform
          local.get 5
          local.get 5
          i64.load
          i64.const 512
          i64.add
          i64.store
          local.get 3
          i32.const 0
          i32.store
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 1 (;@1;)
      end
    end)
  (func $sha1_final (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    local.get 0
    i32.const -64
    i32.sub
    local.set 5
    local.get 0
    i32.load offset=64
    local.tee 4
    i32.const 1
    i32.add
    local.set 2
    local.get 0
    local.get 4
    i32.add
    i32.const 128
    i32.store8
    local.get 2
    local.set 3
    block  ;; label = @1
      local.get 4
      i32.const 56
      i32.lt_u
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i32.const 56
          i32.eq
          br_if 2 (;@1;)
          local.get 0
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
        unreachable
      end
      loop  ;; label = @2
        local.get 3
        i32.const 64
        i32.ge_u
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 3
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      local.get 0
      local.get 0
      call $sha1_transform
      local.get 0
      call $memset
    end
    local.get 0
    local.get 0
    i64.load offset=72
    local.get 5
    i32.load
    i32.const 3
    i32.shl
    i64.extend_i32_u
    i64.add
    local.tee 8
    i64.store offset=72
    local.get 0
    local.get 8
    i64.store8 offset=63
    local.get 0
    local.get 8
    i64.const 8
    i64.shr_u
    i64.store8 offset=62
    local.get 0
    local.get 8
    i64.const 16
    i64.shr_u
    i64.store8 offset=61
    local.get 0
    local.get 8
    i64.const 24
    i64.shr_u
    i64.store8 offset=60
    local.get 0
    local.get 8
    i64.const 32
    i64.shr_u
    i64.store8 offset=59
    local.get 0
    local.get 8
    i64.const 40
    i64.shr_u
    i64.store8 offset=58
    local.get 0
    local.get 8
    i64.const 48
    i64.shr_u
    i64.store8 offset=57
    local.get 0
    local.get 8
    i64.const 56
    i64.shr_u
    i64.store8 offset=56
    local.get 0
    local.get 0
    call $sha1_transform
    local.get 0
    i32.const 80
    i32.add
    local.set 3
    local.get 0
    i32.const 84
    i32.add
    local.set 4
    local.get 0
    i32.const 88
    i32.add
    local.set 5
    local.get 0
    i32.const 92
    i32.add
    local.set 6
    local.get 0
    i32.const 96
    i32.add
    local.set 7
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 4
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.add
        local.get 3
        i32.load
        i32.const 24
        local.get 0
        i32.const 3
        i32.shl
        i32.sub
        local.tee 2
        i32.shr_u
        i32.store8
        local.get 0
        i32.const 4
        i32.add
        local.get 1
        i32.add
        local.get 4
        i32.load
        local.get 2
        i32.shr_u
        i32.store8
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.add
        local.get 5
        i32.load
        local.get 2
        i32.shr_u
        i32.store8
        local.get 0
        i32.const 12
        i32.add
        local.get 1
        i32.add
        local.get 6
        i32.load
        local.get 2
        i32.shr_u
        i32.store8
        local.get 0
        i32.const 16
        i32.add
        local.get 1
        i32.add
        local.get 7
        i32.load
        local.get 2
        i32.shr_u
        i32.store8
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end)
  (func $_main (type 3)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 128
    i32.add
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    call $eth2_blockDataSize
    local.tee 3
    call $malloc
    local.tee 4
    i32.const 0
    local.get 3
    call $eth2_blockDataCopy
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    i64.const 0
    i64.store offset=80
    local.get 0
    i32.const 1732584193
    i32.store offset=88
    local.get 0
    i32.const -271733879
    i32.store offset=92
    local.get 0
    i32.const -1732584194
    i32.store offset=96
    local.get 0
    i32.const 271733878
    i32.store offset=100
    local.get 0
    i32.const -1009589776
    i32.store offset=104
    local.get 0
    i32.const 1518500249
    i32.store offset=108
    local.get 0
    i32.const 1859775393
    i32.store offset=112
    local.get 0
    i32.const -1894007588
    i32.store offset=116
    local.get 0
    i32.const -899497514
    i32.store offset=120
    local.get 2
    local.get 4
    local.get 3
    call $sha1_update
    local.get 2
    local.get 1
    call $sha1_final
    local.get 1
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
