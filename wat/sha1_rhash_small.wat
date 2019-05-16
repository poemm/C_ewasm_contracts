(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func))
  (import "env" "getCallDataSize" (func $getCallDataSize (type 0)))
  (import "env" "callDataCopy" (func $callDataCopy (type 1)))
  (import "env" "finish" (func $finish (type 2)))
  (func $malloc (type 3) (param i32) (result i32)
    (local i32 i32)
    memory.size
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=1024
      local.get 0
      i32.add
      local.tee 2
      local.get 1
      i32.const 16
      i32.shl
      i32.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 16
      i32.shr_u
      i32.const 0
      local.get 2
      i32.const 65535
      i32.and
      i32.sub
      i32.ne
      local.get 1
      i32.sub
      memory.grow
      drop
    end
    i32.const 0
    local.get 2
    i32.store offset=1024
    local.get 2
    local.get 0
    i32.sub)
  (func $memcpy (type 4) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.set 3
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
  (func $memset (type 4) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
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
  (func $ROTL32 (type 5) (param i32 i32) (result i32)
    local.get 0
    i32.const 32
    local.get 1
    i32.sub
    i32.shr_u
    local.get 0
    local.get 1
    i32.shl
    i32.xor)
  (func $rhash_swap_copy_str_to_u32 (type 6) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.or
        local.get 2
        i32.or
        local.get 3
        i32.or
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 1
        i32.lt_s
        br_if 1 (;@1;)
        local.get 2
        local.get 3
        i32.add
        local.set 3
        local.get 0
        local.get 1
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 1
          local.get 2
          i32.load
          call $bswap_32
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
          br 2 (;@1;)
        end
      end
      local.get 3
      local.get 1
      i32.add
      local.get 1
      i32.le_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.const 3
        i32.xor
        i32.add
        local.get 2
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end)
  (func $bswap_32 (type 3) (param i32) (result i32)
    local.get 0
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
    i32.or)
  (func $rhash_sha1_init (type 7) (param i32)
    local.get 0
    i64.const -1167088121787636991
    i64.store offset=72
    local.get 0
    i64.const 0
    i64.store offset=64
    local.get 0
    i32.const 88
    i32.add
    i32.const -1009589776
    i32.store
    local.get 0
    i32.const 80
    i32.add
    i64.const 1167088121787636990
    i64.store)
  (func $rhash_sha1_update (type 1) (param i32 i32 i32)
    (local i64 i32 i32 i32)
    local.get 0
    local.get 0
    i64.load offset=64
    local.tee 3
    local.get 2
    i64.extend_i32_u
    i64.add
    i64.store offset=64
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.wrap_i64
        i32.const 63
        i32.and
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.add
        local.get 1
        local.get 2
        i32.const 64
        local.get 4
        i32.sub
        local.tee 4
        local.get 4
        local.get 2
        i32.gt_u
        local.tee 5
        select
        call $memcpy
        drop
        local.get 5
        br_if 1 (;@1;)
        local.get 0
        i32.const 72
        i32.add
        local.get 0
        call $rhash_sha1_process_block
        local.get 2
        local.get 4
        i32.sub
        local.set 2
        local.get 1
        local.get 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 2
        i32.const 64
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 72
        i32.add
        local.set 6
        local.get 2
        local.set 4
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              local.set 5
              br 1 (;@4;)
            end
            local.get 0
            local.get 1
            i32.const 64
            call $memcpy
            local.set 5
          end
          local.get 6
          local.get 5
          call $rhash_sha1_process_block
          local.get 1
          i32.const 64
          i32.add
          local.set 1
          local.get 4
          i32.const -64
          i32.add
          local.tee 4
          i32.const 63
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const 63
        i32.and
        local.set 2
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      call $memcpy
      drop
    end)
  (func $rhash_sha1_process_block (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      local.get 1
      local.get 3
      i32.add
      i32.load
      call $bswap_32
      i32.store
      local.get 3
      i32.const 4
      i32.add
      local.tee 3
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 2
      local.get 1
      i32.add
      local.tee 3
      i32.const 64
      i32.add
      local.get 3
      i32.const 32
      i32.add
      i32.load
      local.get 3
      i32.const 52
      i32.add
      i32.load
      i32.xor
      local.get 3
      i32.const 8
      i32.add
      i32.load
      i32.xor
      local.get 3
      i32.load
      i32.xor
      i32.const 1
      call $ROTL32
      i32.store
      local.get 1
      i32.const 4
      i32.add
      local.tee 1
      i32.const 256
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 4
    local.get 0
    i32.load offset=16
    local.tee 5
    local.set 6
    local.get 0
    i32.load offset=12
    local.tee 7
    local.set 8
    local.get 0
    i32.load offset=8
    local.tee 9
    local.set 3
    local.get 0
    i32.load offset=4
    local.tee 10
    local.set 11
    local.get 0
    i32.load
    local.tee 12
    local.set 1
    loop  ;; label = @1
      local.get 6
      local.get 8
      local.tee 13
      local.get 3
      local.tee 14
      i32.xor
      local.get 11
      i32.and
      local.get 13
      i32.xor
      i32.add
      local.get 1
      local.tee 15
      i32.const 5
      call $ROTL32
      i32.add
      local.get 2
      local.get 4
      i32.add
      i32.load
      i32.add
      i32.const 1518500249
      i32.add
      local.set 1
      local.get 11
      i32.const 30
      call $ROTL32
      local.set 3
      local.get 13
      local.set 6
      local.get 14
      local.set 8
      local.get 15
      local.set 11
      local.get 4
      i32.const 4
      i32.add
      local.tee 4
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 80
    i32.add
    local.set 16
    i32.const 0
    local.set 8
    loop  ;; label = @1
      local.get 3
      local.tee 11
      local.get 15
      i32.xor
      local.get 14
      local.tee 6
      i32.xor
      local.get 13
      i32.add
      local.get 1
      local.tee 4
      i32.const 5
      call $ROTL32
      i32.add
      local.get 16
      local.get 8
      i32.add
      i32.load
      i32.add
      i32.const 1859775393
      i32.add
      local.set 1
      local.get 15
      i32.const 30
      call $ROTL32
      local.set 3
      local.get 6
      local.set 13
      local.get 11
      local.set 14
      local.get 4
      local.set 15
      local.get 8
      i32.const 4
      i32.add
      local.tee 8
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 160
    i32.add
    local.set 16
    i32.const 0
    local.set 8
    loop  ;; label = @1
      local.get 6
      local.get 11
      local.tee 13
      local.get 3
      local.tee 15
      i32.or
      local.get 4
      i32.and
      local.get 13
      local.get 15
      i32.and
      i32.or
      i32.add
      local.get 1
      local.tee 14
      i32.const 5
      call $ROTL32
      i32.add
      local.get 16
      local.get 8
      i32.add
      i32.load
      i32.add
      i32.const -1894007588
      i32.add
      local.set 1
      local.get 4
      i32.const 30
      call $ROTL32
      local.set 3
      local.get 13
      local.set 6
      local.get 15
      local.set 11
      local.get 14
      local.set 4
      local.get 8
      i32.const 4
      i32.add
      local.tee 8
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 240
    i32.add
    local.set 16
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 3
      local.tee 11
      local.get 14
      i32.xor
      local.get 15
      local.tee 6
      i32.xor
      local.get 13
      i32.add
      local.get 1
      local.tee 8
      i32.const 5
      call $ROTL32
      i32.add
      local.get 16
      local.get 4
      i32.add
      i32.load
      i32.add
      i32.const -899497514
      i32.add
      local.set 1
      local.get 14
      i32.const 30
      call $ROTL32
      local.set 3
      local.get 6
      local.set 13
      local.get 11
      local.set 15
      local.get 8
      local.set 14
      local.get 4
      i32.const 4
      i32.add
      local.tee 4
      i32.const 80
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 6
    local.get 5
    i32.add
    i32.store offset=16
    local.get 0
    local.get 11
    local.get 7
    i32.add
    i32.store offset=12
    local.get 0
    local.get 3
    local.get 9
    i32.add
    i32.store offset=8
    local.get 0
    local.get 8
    local.get 10
    i32.add
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 12
    i32.add
    i32.store
    local.get 2
    i32.const 320
    i32.add
    global.set 0)
  (func $rhash_sha1_final (type 2) (param i32 i32)
    (local i32 i32 i64)
    local.get 0
    i32.load offset=64
    i32.const 63
    i32.and
    local.set 2
    i32.const 128
    local.set 3
    loop  ;; label = @1
      local.get 0
      local.get 2
      i32.add
      local.get 3
      i32.store8
      i32.const 0
      local.set 3
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 3
      i32.and
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 2
    i32.shr_u
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const -1
          i32.add
          i32.const 59
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.const 63
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i32.const -4
            i32.and
            local.tee 2
            i32.add
            i32.const 0
            local.get 3
            i32.const 15
            local.get 3
            i32.const 15
            i32.gt_u
            select
            i32.const 2
            i32.shl
            i32.const 4
            i32.add
            local.get 2
            i32.sub
            call $memset
            drop
          end
          local.get 0
          i32.const 72
          i32.add
          local.get 0
          call $rhash_sha1_process_block
          i32.const 0
          local.set 3
          br 1 (;@2;)
        end
        local.get 2
        i32.const 55
        i32.gt_u
        br_if 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.const 2
      i32.shl
      local.tee 2
      i32.add
      i32.const 0
      i32.const 56
      local.get 2
      i32.sub
      call $memset
      drop
    end
    local.get 0
    local.get 0
    i64.load offset=64
    local.tee 4
    i64.const 29
    i64.shr_u
    i32.wrap_i64
    call $bswap_32
    i32.store offset=56
    local.get 0
    local.get 4
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
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 2
      i32.const 20
      call $rhash_swap_copy_str_to_u32
    end)
  (func $_main (type 8)
    (local i32 i32 i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 0
    global.set 0
    call $getCallDataSize
    local.tee 1
    call $malloc
    local.tee 2
    i32.const 0
    local.get 1
    call $callDataCopy
    local.get 0
    call $rhash_sha1_init
    local.get 0
    local.get 2
    local.get 1
    call $rhash_sha1_update
    local.get 0
    local.get 0
    i32.const 96
    i32.add
    call $rhash_sha1_final
    local.get 0
    i32.const 96
    i32.add
    i32.const 32
    call $finish
    local.get 0
    i32.const 128
    i32.add
    global.set 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (global (;1;) i32 (i32.const 66576))
  (global (;2;) i32 (i32.const 1028))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "_main" (func $_main))
  (data (;0;) (i32.const 1024) "\04\04\00\00"))
