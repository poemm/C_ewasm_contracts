(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 3)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 0)))
  (func $malloc (type 4) (param i32) (result i32)
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
  (func $SHA1Result (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.ne
      local.get 1
      i32.const 0
      i32.ne
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=100
      local.tee 2
      local.set 3
      local.get 2
      br_if 0 (;@1;)
      local.get 0
      i32.const 96
      i32.add
      local.set 3
      local.get 0
      i32.load offset=96
      i32.eqz
      if  ;; label = @2
        local.get 0
        call $SHA1PadMessage
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 64
          i32.eq
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 30
            i32.add
            local.get 2
            i32.add
            i32.const 0
            i32.store8
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            br 1 (;@3;)
          end
        end
        local.get 0
        i32.const 0
        i32.store offset=20
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 3
        i32.const 1
        i32.store
      end
      i32.const 0
      local.set 2
      loop  ;; label = @2
        i32.const 0
        local.set 3
        local.get 2
        i32.const 20
        i32.eq
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        i32.add
        local.get 2
        i32.const 2
        i32.shr_u
        i32.const 2
        i32.shl
        local.get 0
        i32.add
        i32.load
        local.get 2
        i32.const 3
        i32.shl
        i32.const 24
        i32.and
        i32.const 24
        i32.xor
        i32.shr_u
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 3)
  (func $SHA1PadMessage (type 0) (param i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 28
    i32.add
    local.set 3
    local.get 0
    local.get 0
    i32.load16_u offset=28
    local.tee 1
    i32.const 1
    i32.add
    local.tee 2
    i32.store16 offset=28
    local.get 0
    i32.const 30
    i32.add
    local.get 1
    i32.add
    i32.const 128
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 55
        i32.le_u
        if  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const 65535
        i32.and
        local.set 1
        loop  ;; label = @3
          local.get 1
          local.tee 2
          i32.const 64
          i32.ge_u
          i32.eqz
          if  ;; label = @4
            local.get 3
            local.get 2
            i32.const 1
            i32.add
            local.tee 1
            i32.store16
            local.get 0
            i32.const 30
            i32.add
            local.get 2
            i32.add
            i32.const 0
            i32.store8
            br 1 (;@3;)
          end
        end
        local.get 0
        call $SHA1ProcessMessageBlock
        local.get 3
        i32.load16_u
        local.set 1
        loop  ;; label = @3
          local.get 1
          local.tee 2
          i32.const 56
          i32.ge_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          i32.const 1
          i32.add
          local.tee 1
          i32.store16
          local.get 0
          i32.const 30
          i32.add
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          br 0 (;@3;)
        end
        unreachable
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 56
        i32.eq
        br_if 1 (;@1;)
        local.get 3
        local.get 2
        i32.const 1
        i32.add
        local.tee 1
        i32.store16
        local.get 0
        i32.const 30
        i32.add
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 0
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.const 24
    i32.shr_u
    i32.store8 offset=86
    local.get 0
    local.get 1
    i32.const 16
    i32.shr_u
    i32.store8 offset=87
    local.get 0
    local.get 1
    i32.const 8
    i32.shr_u
    i32.store8 offset=88
    local.get 0
    local.get 1
    i32.store8 offset=89
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 1
    i32.const 24
    i32.shr_u
    i32.store8 offset=90
    local.get 0
    local.get 1
    i32.const 16
    i32.shr_u
    i32.store8 offset=91
    local.get 0
    local.get 1
    i32.const 8
    i32.shr_u
    i32.store8 offset=92
    local.get 0
    local.get 1
    i32.store8 offset=93
    local.get 0
    call $SHA1ProcessMessageBlock)
  (func $SHA1ProcessMessageBlock (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 6
    global.set 0
    loop  ;; label = @1
      i32.const 16
      local.set 1
      local.get 2
      i32.const 16
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        local.get 2
        i32.const 2
        i32.shl
        local.tee 1
        local.get 0
        i32.const 30
        i32.add
        i32.add
        i32.load8_u
        i32.const 24
        i32.shl
        local.get 0
        i32.const 30
        i32.add
        local.get 1
        i32.const 1
        i32.or
        i32.add
        i32.load8_u
        i32.const 16
        i32.shl
        i32.or
        local.get 0
        i32.const 30
        i32.add
        local.get 1
        i32.const 2
        i32.or
        i32.add
        i32.load8_u
        i32.const 8
        i32.shl
        i32.or
        local.get 0
        i32.const 30
        i32.add
        local.get 1
        i32.const 3
        i32.or
        i32.add
        i32.load8_u
        i32.or
        i32.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      local.get 1
      i32.const 80
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 1
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        local.get 1
        i32.const -16
        i32.add
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 1
        i32.const -14
        i32.add
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 1
        i32.const -3
        i32.add
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 1
        i32.const -8
        i32.add
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        i32.xor
        i32.xor
        i32.xor
        local.tee 2
        i32.const 1
        i32.shl
        local.get 2
        i32.const 31
        i32.shr_u
        i32.or
        i32.store
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.set 16
    local.get 0
    i32.const 12
    i32.add
    local.set 17
    local.get 0
    i32.const 16
    i32.add
    local.set 18
    local.get 0
    i32.load
    local.tee 19
    local.set 7
    local.get 0
    i32.load offset=4
    local.tee 20
    local.set 8
    local.get 0
    i32.load offset=8
    local.tee 21
    local.set 10
    local.get 0
    i32.load offset=12
    local.tee 22
    local.set 2
    local.get 0
    i32.load offset=16
    local.tee 23
    local.set 1
    loop  ;; label = @1
      i32.const 20
      local.set 14
      local.get 7
      local.tee 3
      local.set 11
      local.get 8
      local.set 4
      local.get 10
      local.tee 5
      local.set 12
      local.get 2
      local.set 9
      local.get 1
      local.set 10
      local.get 13
      local.tee 7
      i32.const 20
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 7
        i32.const 1
        i32.add
        local.set 13
        local.get 7
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 3
        i32.const 5
        i32.shl
        local.get 3
        i32.const 27
        i32.shr_u
        i32.or
        i32.const 1518500249
        i32.add
        local.get 10
        i32.add
        local.get 4
        local.get 5
        i32.and
        local.get 4
        i32.const -1
        i32.xor
        local.get 9
        i32.and
        i32.or
        i32.add
        i32.add
        local.set 7
        local.get 3
        local.set 8
        local.get 4
        i32.const 30
        i32.shl
        local.get 4
        i32.const 2
        i32.shr_u
        i32.or
        local.set 10
        local.get 5
        local.set 2
        local.get 9
        local.set 1
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      i32.const 40
      local.set 13
      local.get 11
      local.set 3
      local.get 8
      local.set 4
      local.get 12
      local.set 5
      local.get 2
      local.set 9
      local.get 1
      local.set 10
      local.get 14
      local.tee 7
      i32.const 40
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 7
        i32.const 1
        i32.add
        local.set 14
        local.get 7
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 3
        i32.const 5
        i32.shl
        local.get 3
        i32.const 27
        i32.shr_u
        i32.or
        i32.const 1859775393
        i32.add
        local.get 4
        local.get 5
        i32.xor
        local.get 9
        i32.xor
        i32.add
        local.get 10
        i32.add
        i32.add
        local.set 11
        local.get 3
        local.set 8
        local.get 4
        i32.const 30
        i32.shl
        local.get 4
        i32.const 2
        i32.shr_u
        i32.or
        local.set 12
        local.get 5
        local.set 2
        local.get 9
        local.set 1
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      i32.const 60
      local.set 14
      local.get 11
      local.set 10
      local.get 8
      local.tee 4
      local.set 9
      local.get 12
      local.set 3
      local.get 2
      local.set 5
      local.get 1
      local.set 8
      local.get 13
      local.tee 7
      i32.const 60
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 7
        i32.const 1
        i32.add
        local.set 13
        local.get 7
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 10
        i32.const 5
        i32.shl
        local.get 10
        i32.const 27
        i32.shr_u
        i32.or
        i32.const -1894007588
        i32.add
        local.get 8
        i32.add
        local.get 3
        local.get 5
        i32.or
        local.get 4
        i32.and
        local.get 3
        local.get 5
        i32.and
        i32.or
        i32.add
        i32.add
        local.set 11
        local.get 10
        local.set 8
        local.get 4
        i32.const 30
        i32.shl
        local.get 4
        i32.const 2
        i32.shr_u
        i32.or
        local.set 12
        local.get 3
        local.set 2
        local.get 5
        local.set 1
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      local.get 1
      local.set 8
      local.get 2
      local.set 1
      local.get 12
      local.set 2
      local.get 9
      local.set 3
      local.get 11
      local.set 9
      local.get 14
      local.tee 5
      i32.const 80
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 5
        i32.const 1
        i32.add
        local.set 14
        local.get 5
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 9
        i32.const 5
        i32.shl
        local.get 9
        i32.const 27
        i32.shr_u
        i32.or
        i32.const -899497514
        i32.add
        local.get 2
        local.get 3
        i32.xor
        local.get 1
        i32.xor
        i32.add
        local.get 8
        i32.add
        i32.add
        local.set 11
        local.get 3
        i32.const 30
        i32.shl
        local.get 3
        i32.const 2
        i32.shr_u
        i32.or
        local.set 12
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 9
    local.get 19
    i32.add
    i32.store
    local.get 3
    local.get 20
    i32.add
    i32.store
    local.get 16
    local.get 2
    local.get 21
    i32.add
    i32.store
    local.get 17
    local.get 1
    local.get 22
    i32.add
    i32.store
    local.get 18
    local.get 8
    local.get 23
    i32.add
    i32.store
    local.get 0
    i32.const 0
    i32.store16 offset=28
    local.get 6
    i32.const 320
    i32.add
    global.set 0)
  (func $SHA1Input (type 6) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 3
      local.get 0
      i32.const 0
      i32.ne
      local.get 1
      i32.const 0
      i32.ne
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 100
      i32.add
      local.set 4
      local.get 0
      i32.load offset=96
      if  ;; label = @2
        local.get 4
        i32.const 3
        i32.store
        i32.const 3
        local.set 3
        br 1 (;@1;)
      end
      local.get 4
      i32.load
      local.tee 5
      local.set 3
      local.get 5
      br_if 0 (;@1;)
      local.get 0
      i32.const 28
      i32.add
      local.set 5
      local.get 0
      i32.const 20
      i32.add
      local.set 6
      local.get 0
      i32.const 24
      i32.add
      local.set 7
      loop  ;; label = @2
        i32.const 0
        local.set 3
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load
        br_if 1 (;@1;)
        local.get 1
        i32.load8_u
        local.set 3
        local.get 5
        local.get 5
        i32.load16_u
        local.tee 8
        i32.const 1
        i32.add
        local.tee 9
        i32.store16
        local.get 0
        i32.const 30
        i32.add
        local.get 8
        i32.add
        local.get 3
        i32.store8
        local.get 6
        local.get 6
        i32.load
        i32.const 8
        i32.add
        local.tee 3
        i32.store
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          local.get 7
          local.get 7
          i32.load
          i32.const 1
          i32.add
          local.tee 3
          i32.store
          local.get 3
          br_if 0 (;@3;)
          local.get 4
          i32.const 1
          i32.store
        end
        local.get 9
        i32.const 65535
        i32.and
        i32.const 64
        i32.eq
        if  ;; label = @3
          local.get 0
          call $SHA1ProcessMessageBlock
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 3)
  (func $_main (type 1)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    local.get 0
    i32.const 112
    i32.add
    local.set 3
    call $eth2_blockDataSize
    local.tee 1
    call $malloc
    local.tee 4
    i32.const 0
    local.get 1
    call $eth2_blockDataCopy
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store16 offset=36
    local.get 0
    i32.const 1732584193
    i32.store offset=8
    local.get 0
    i32.const -271733879
    i32.store offset=12
    local.get 0
    i32.const -1732584194
    i32.store offset=16
    local.get 0
    i32.const 271733878
    i32.store offset=20
    local.get 0
    i32.const -1009589776
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=104
    local.get 0
    i32.const 0
    i32.store offset=108
    block  ;; label = @1
      local.get 2
      local.get 4
      local.get 1
      call $SHA1Input
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      call $SHA1Result
      br_if 0 (;@1;)
      local.get 0
      i32.const 112
      i32.add
      call $eth2_savePostStateRoot
    end
    local.get 0
    i32.const 144
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\10\04\01"))
