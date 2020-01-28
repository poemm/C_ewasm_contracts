(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 5)))
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
  (func $memcpy (type 1) (param i32 i32 i32)
    loop  ;; label = @1
      local.get 2
      i32.const 7
      i32.gt_u
      if  ;; label = @2
        local.get 0
        local.get 1
        i64.load
        i64.store
        local.get 2
        i32.const -8
        i32.add
        local.set 2
        local.get 0
        i32.const 8
        i32.add
        local.set 0
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      local.get 2
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end)
  (func $ROTL32 (type 6) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.shl
    local.get 0
    i32.const 32
    local.get 1
    i32.sub
    i32.shr_u
    i32.xor)
  (func $rhash_swap_copy_str_to_u32 (type 0) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.or
      i32.const 20
      i32.or
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        local.get 1
        i32.const 20
        i32.add
        local.set 2
        loop  ;; label = @3
          local.get 1
          local.get 2
          i32.ge_u
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load
          call $bswap_32
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          br 0 (;@3;)
        end
        unreachable
      end
      loop  ;; label = @2
        local.get 2
        i32.const 20
        i32.ge_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 3
        i32.xor
        local.get 0
        i32.add
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
      unreachable
    end)
  (func $bswap_32 (type 3) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 0
    i32.const 24
    i32.shl
    i32.or
    i32.or)
  (func $rhash_sha1_init (type 2) (param i32)
    local.get 0
    i64.const 0
    i64.store offset=64
    local.get 0
    i32.const 1732584193
    i32.store offset=72
    local.get 0
    i32.const -271733879
    i32.store offset=76
    local.get 0
    i32.const -1732584194
    i32.store offset=80
    local.get 0
    i32.const 271733878
    i32.store offset=84
    local.get 0
    i32.const -1009589776
    i32.store offset=88)
  (func $rhash_sha1_update (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    local.get 0
    i64.load offset=64
    local.tee 6
    i32.wrap_i64
    i32.const 63
    i32.and
    local.set 4
    local.get 0
    local.get 2
    i64.extend_i32_u
    local.get 6
    i64.add
    i64.store offset=64
    block  ;; label = @1
      local.get 4
      if (result i32)  ;; label = @2
        i32.const 64
        local.get 4
        i32.sub
        local.tee 3
        local.get 2
        i32.gt_u
        local.set 5
        local.get 0
        local.get 4
        i32.add
        local.get 1
        local.get 2
        local.get 3
        local.get 5
        i32.const 1
        i32.and
        select
        call $memcpy
        local.get 5
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        call $rhash_sha1_process_block
        local.get 2
        local.get 3
        i32.sub
        local.set 2
        local.get 1
        local.get 3
        i32.add
        local.set 1
        local.get 0
      else
        local.get 0
      end
      local.set 4
      local.get 0
      i32.const 72
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 2
        local.tee 3
        i32.const 63
        i32.gt_u
        if  ;; label = @3
          local.get 5
          local.get 1
          i32.const 3
          i32.and
          if (result i32)  ;; label = @4
            local.get 0
            local.get 1
            i32.const 64
            call $memcpy
            local.get 4
          else
            local.get 1
          end
          call $rhash_sha1_process_block
          local.get 3
          i32.const -64
          i32.add
          local.set 2
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          br 1 (;@2;)
        end
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      call $memcpy
    end)
  (func $rhash_sha1_process_block (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 6
    global.set 0
    loop  ;; label = @1
      block  ;; label = @2
        i32.const 16
        local.set 3
        local.get 2
        i32.const 16
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        local.get 2
        i32.const 2
        i32.shl
        local.get 1
        i32.add
        i32.load
        call $bswap_32
        i32.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      local.get 3
      local.tee 1
      i32.const 80
      i32.ne
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
        i32.const 1
        call $ROTL32
        i32.store
        local.get 1
        i32.const 1
        i32.add
        local.set 3
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 4
    i32.add
    local.get 0
    i32.const 8
    i32.add
    local.set 15
    local.get 0
    i32.const 12
    i32.add
    local.set 16
    local.get 0
    i32.const 16
    i32.add
    local.set 17
    local.get 0
    i32.load
    local.tee 18
    local.set 2
    local.get 0
    i32.load offset=4
    local.tee 19
    local.set 3
    local.get 0
    i32.load offset=8
    local.tee 20
    local.set 5
    local.get 0
    i32.load offset=12
    local.tee 21
    local.set 7
    local.get 0
    i32.load offset=16
    local.tee 22
    local.set 8
    loop  ;; label = @1
      block  ;; label = @2
        i32.const 20
        local.set 10
        local.get 2
        local.set 11
        local.get 3
        local.set 12
        local.get 5
        local.set 9
        local.get 7
        local.set 1
        local.get 8
        local.set 13
        local.get 4
        i32.const 20
        i32.eq
        br_if 0 (;@2;)
        local.get 11
        i32.const 5
        call $ROTL32
        local.set 2
        local.get 4
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 13
        i32.const 1518500249
        i32.add
        local.get 1
        local.get 9
        i32.xor
        local.get 12
        i32.and
        local.get 1
        i32.xor
        i32.add
        local.get 2
        i32.add
        i32.add
        local.set 2
        local.get 12
        i32.const 30
        call $ROTL32
        local.set 5
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 11
        local.set 3
        local.get 9
        local.set 7
        local.get 1
        local.set 8
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      block  ;; label = @2
        i32.const 40
        local.set 12
        local.get 2
        local.tee 1
        local.set 11
        local.get 3
        local.set 13
        local.get 5
        local.set 9
        local.get 7
        local.set 4
        local.get 8
        local.set 2
        local.get 10
        i32.const 40
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const 5
        call $ROTL32
        local.set 3
        local.get 10
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 9
        local.get 13
        i32.xor
        local.get 4
        i32.xor
        i32.const 1859775393
        i32.add
        local.get 2
        i32.add
        local.get 3
        i32.add
        i32.add
        local.set 2
        local.get 13
        i32.const 30
        call $ROTL32
        local.set 5
        local.get 10
        i32.const 1
        i32.add
        local.set 10
        local.get 1
        local.set 3
        local.get 9
        local.set 7
        local.get 4
        local.set 8
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      block  ;; label = @2
        i32.const 60
        local.set 4
        local.get 11
        local.set 9
        local.get 3
        local.set 10
        local.get 5
        local.set 1
        local.get 7
        local.set 2
        local.get 8
        local.set 13
        local.get 12
        i32.const 60
        i32.eq
        br_if 0 (;@2;)
        local.get 9
        i32.const 5
        call $ROTL32
        local.set 3
        local.get 12
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 13
        i32.const -1894007588
        i32.add
        local.get 1
        local.get 2
        i32.or
        local.get 10
        i32.and
        local.get 1
        local.get 2
        i32.and
        i32.or
        i32.add
        local.get 3
        i32.add
        i32.add
        local.set 11
        local.get 10
        i32.const 30
        call $ROTL32
        local.set 5
        local.get 12
        i32.const 1
        i32.add
        local.set 12
        local.get 9
        local.set 3
        local.get 1
        local.set 7
        local.get 2
        local.set 8
        br 1 (;@1;)
      end
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 7
        local.set 1
        local.get 5
        local.set 2
        local.get 3
        local.set 5
        local.get 11
        local.set 3
        local.get 4
        i32.const 80
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        i32.const 5
        call $ROTL32
        local.set 7
        local.get 4
        i32.const 2
        i32.shl
        local.get 6
        i32.add
        i32.load
        local.get 2
        local.get 5
        i32.xor
        local.get 1
        i32.xor
        i32.const -899497514
        i32.add
        local.get 8
        i32.add
        local.get 7
        i32.add
        i32.add
        local.set 11
        local.get 5
        i32.const 30
        call $ROTL32
        local.set 5
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 2
        local.set 7
        local.get 1
        local.set 8
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 3
    local.get 18
    i32.add
    i32.store
    local.get 5
    local.get 19
    i32.add
    i32.store
    local.get 15
    local.get 2
    local.get 20
    i32.add
    i32.store
    local.get 16
    local.get 1
    local.get 21
    i32.add
    i32.store
    local.get 17
    local.get 8
    local.get 22
    i32.add
    i32.store
    local.get 6
    i32.const 320
    i32.add
    global.set 0)
  (func $rhash_sha1_final (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    local.get 0
    i64.load offset=64
    i32.wrap_i64
    i32.const 63
    i32.and
    local.set 2
    i32.const 128
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.tee 4
      local.get 0
      i32.add
      local.get 3
      i32.store8
      local.get 2
      i32.const 1
      i32.add
      local.tee 5
      local.set 2
      i32.const 0
      local.set 3
      local.get 5
      i32.const 3
      i32.and
      br_if 0 (;@1;)
    end
    local.get 5
    i32.const 2
    i32.shr_u
    local.tee 2
    local.set 3
    local.get 4
    i32.const 58
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.const 16
        i32.eq
        i32.eqz
        if  ;; label = @3
          local.get 3
          i32.const 2
          i32.shl
          local.get 0
          i32.add
          i32.const 0
          i32.store
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      local.get 0
      i32.const 72
      i32.add
      local.get 0
      call $rhash_sha1_process_block
      i32.const 0
      local.set 2
    end
    local.get 0
    i32.const -64
    i32.sub
    local.set 4
    loop  ;; label = @1
      local.get 2
      i32.const 14
      i32.ge_u
      i32.eqz
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.shl
        local.get 0
        i32.add
        i32.const 0
        i32.store
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 4
    i64.load
    local.tee 6
    i64.const 29
    i64.shr_u
    i32.wrap_i64
    call $bswap_32
    i32.store offset=56
    local.get 0
    local.get 6
    i32.wrap_i64
    i32.const 3
    i32.shl
    call $bswap_32
    i32.store offset=60
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
      call $rhash_swap_copy_str_to_u32
    end)
  (func $_main (type 4)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 96
    i32.add
    local.set 1
    call $eth2_blockDataSize
    local.tee 2
    call $malloc
    local.tee 3
    i32.const 0
    local.get 2
    call $eth2_blockDataCopy
    local.get 0
    call $rhash_sha1_init
    local.get 0
    local.get 3
    local.get 2
    call $rhash_sha1_update
    local.get 0
    local.get 1
    call $rhash_sha1_final
    local.get 1
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
