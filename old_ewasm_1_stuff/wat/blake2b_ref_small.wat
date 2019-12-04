(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32) (result i64)))
  (type (;7;) (func (param i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i64 i32) (result i64)))
  (type (;11;) (func (param i32 i64)))
  (type (;12;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;13;) (func))
  (import "env" "getCallDataSize" (func $getCallDataSize (type 1)))
  (import "env" "callDataCopy" (func $callDataCopy (type 2)))
  (import "env" "finish" (func $finish (type 3)))
  (func $malloc (type 4) (param i32) (result i32)
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
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
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
  (func $memset (type 0) (param i32 i32 i32) (result i32)
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
  (func $blake2b_init_param (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    local.get 0
    i32.const 64
    i32.add
    i32.const 0
    i32.const 176
    call $memset
    drop
    local.get 0
    i32.const 1232
    i32.const 64
    call $memcpy
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 2
      i32.add
      local.tee 0
      local.get 0
      i64.load
      local.get 1
      local.get 2
      i32.add
      call $load64
      i64.xor
      i64.store
      local.get 2
      i32.const 8
      i32.add
      local.tee 2
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    local.get 1
    i32.load8_u
    i32.store offset=228
    i32.const 0)
  (func $load64 (type 6) (param i32) (result i64)
    local.get 0
    i64.load align=1)
  (func $blake2b_init (type 5) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 2
    global.set 0
    i32.const -1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.const -1
      i32.add
      i32.const 63
      i32.gt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 1
      i32.store8 offset=3
      local.get 2
      i32.const 256
      i32.store16 offset=1 align=1
      local.get 2
      local.get 1
      i32.store8
      local.get 2
      i32.const 4
      i32.or
      call $store32
      local.get 2
      i32.const 8
      i32.or
      call $store32
      local.get 2
      i32.const 12
      i32.or
      call $store32
      i32.const 0
      local.set 3
      local.get 2
      i32.const 16
      i32.add
      i32.const 0
      i32.const 48
      call $memset
      drop
      local.get 0
      local.get 2
      call $blake2b_init_param
      drop
    end
    local.get 2
    i32.const 64
    i32.add
    global.set 0
    local.get 3)
  (func $store32 (type 7) (param i32)
    local.get 0
    i32.const 0
    i32.store align=1)
  (func $blake2b_init_key (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 192
    i32.sub
    local.tee 4
    global.set 0
    i32.const -1
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.const -1
      i32.add
      i32.const 63
      i32.gt_u
      br_if 0 (;@1;)
      i32.const -1
      local.set 5
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -1
      i32.add
      i32.const 63
      i32.gt_u
      br_if 0 (;@1;)
      local.get 4
      i32.const 257
      i32.store16 offset=130
      local.get 4
      local.get 3
      i32.store8 offset=129
      local.get 4
      local.get 1
      i32.store8 offset=128
      local.get 4
      i32.const 128
      i32.add
      i32.const 4
      i32.or
      call $store32
      local.get 4
      i32.const 128
      i32.add
      i32.const 8
      i32.or
      call $store32
      local.get 4
      i32.const 128
      i32.add
      i32.const 12
      i32.or
      call $store32
      i32.const 0
      local.set 5
      local.get 4
      i32.const 144
      i32.add
      i32.const 0
      i32.const 48
      call $memset
      drop
      local.get 0
      local.get 4
      i32.const 128
      i32.add
      call $blake2b_init_param
      drop
      local.get 4
      local.get 3
      i32.add
      i32.const 0
      i32.const 128
      local.get 3
      i32.sub
      call $memset
      drop
      local.get 0
      local.get 4
      local.get 2
      local.get 3
      call $memcpy
      local.tee 3
      i32.const 128
      call $blake2b_update
      drop
      local.get 3
      i32.const 128
      call $secure_zero_memory
    end
    local.get 4
    i32.const 192
    i32.add
    global.set 0
    local.get 5)
  (func $blake2b_update (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64 i64 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 128
        local.get 0
        i32.load offset=224
        local.tee 3
        i32.sub
        local.tee 4
        local.get 2
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store offset=224
        local.get 0
        i32.const 96
        i32.add
        local.tee 5
        local.get 3
        i32.add
        local.get 1
        local.get 4
        call $memcpy
        drop
        local.get 0
        local.get 0
        i64.load offset=64
        local.tee 6
        i64.const 128
        i64.add
        local.tee 7
        i64.store offset=64
        local.get 0
        i32.const 72
        i32.add
        local.tee 8
        local.get 8
        i64.load
        local.get 7
        local.get 6
        i64.lt_u
        i64.extend_i32_u
        i64.add
        i64.store
        local.get 0
        local.get 5
        call $blake2b_compress
        local.get 1
        local.get 4
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.sub
          local.tee 4
          i32.const 129
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        local.get 2
        i32.add
        local.tee 2
        i32.const -257
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 0
          local.get 0
          i64.load offset=64
          local.tee 6
          i64.const 128
          i64.add
          local.tee 7
          i64.store offset=64
          local.get 0
          local.get 0
          i64.load offset=72
          local.get 7
          local.get 6
          i64.lt_u
          i64.extend_i32_u
          i64.add
          i64.store offset=72
          local.get 0
          local.get 1
          call $blake2b_compress
          local.get 1
          i32.const 128
          i32.add
          local.set 1
          local.get 4
          i32.const -128
          i32.add
          local.tee 4
          i32.const 128
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const -256
        i32.add
        local.get 3
        i32.const -128
        i32.and
        i32.sub
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load offset=224
      i32.add
      i32.const 96
      i32.add
      local.get 1
      local.get 2
      call $memcpy
      drop
      local.get 0
      local.get 0
      i32.load offset=224
      local.get 2
      i32.add
      i32.store offset=224
    end
    i32.const 0)
  (func $secure_zero_memory (type 3) (param i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    i32.const 0
    i32.load offset=1296
    call_indirect (type 0)
    drop)
  (func $blake2b_compress (type 3) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 128
      i32.add
      local.get 3
      i32.add
      local.get 1
      local.get 3
      i32.add
      call $load64
      i64.store
      local.get 3
      i32.const 8
      i32.add
      local.tee 3
      i32.const 128
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    local.get 0
    i32.const 64
    call $memcpy
    local.tee 2
    i64.const -6534734903238641935
    i64.store offset=88
    local.get 2
    i64.const 4354685564936845355
    i64.store offset=80
    local.get 2
    i64.const -4942790177534073029
    i64.store offset=72
    local.get 2
    i64.const 7640891576956012808
    i64.store offset=64
    local.get 2
    local.get 0
    i64.load offset=64
    i64.const 5840696475078001361
    i64.xor
    i64.store offset=96
    local.get 2
    local.get 0
    i32.const 72
    i32.add
    i64.load
    i64.const -7276294671716946913
    i64.xor
    i64.store offset=104
    local.get 2
    local.get 0
    i64.load offset=80
    i64.const 2270897969802886507
    i64.xor
    i64.store offset=112
    local.get 2
    local.get 0
    i32.const 88
    i32.add
    i64.load
    i64.const 6620516959819538809
    i64.xor
    i64.store offset=120
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 2
      local.get 2
      i32.const 128
      i32.add
      call $ROUND_
      local.get 3
      i32.const 1
      i32.add
      local.tee 3
      i32.const 12
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 0
      local.get 3
      i32.add
      local.tee 1
      local.get 2
      local.get 3
      i32.add
      local.tee 4
      i64.load
      local.get 1
      i64.load
      i64.xor
      local.get 4
      i32.const 64
      i32.add
      i64.load
      i64.xor
      i64.store
      local.get 3
      i32.const 8
      i32.add
      local.tee 3
      i32.const 64
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 256
    i32.add
    global.set 0)
  (func $G (type 9) (param i32 i32 i32 i32 i32 i32 i32)
    (local i64)
    local.get 2
    local.get 3
    i64.load
    local.get 2
    i64.load
    i64.add
    local.get 6
    local.get 0
    i32.const 4
    i32.shl
    i32.const 1040
    i32.add
    local.tee 0
    local.get 1
    i32.const 1
    i32.shl
    local.tee 1
    i32.add
    i32.load8_u
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.add
    local.tee 7
    i64.store
    local.get 5
    local.get 5
    i64.load
    local.get 7
    i64.xor
    i32.const 32
    call $rotr64
    local.tee 7
    i64.store
    local.get 4
    local.get 4
    i64.load
    local.get 7
    i64.add
    local.tee 7
    i64.store
    local.get 3
    local.get 3
    i64.load
    local.get 7
    i64.xor
    i32.const 24
    call $rotr64
    local.tee 7
    i64.store
    local.get 2
    local.get 2
    i64.load
    local.get 7
    i64.add
    local.get 6
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.add
    i32.load8_u
    i32.const 3
    i32.shl
    i32.add
    i64.load
    i64.add
    local.tee 7
    i64.store
    local.get 5
    local.get 5
    i64.load
    local.get 7
    i64.xor
    i32.const 16
    call $rotr64
    local.tee 7
    i64.store
    local.get 4
    local.get 4
    i64.load
    local.get 7
    i64.add
    local.tee 7
    i64.store
    local.get 3
    local.get 3
    i64.load
    local.get 7
    i64.xor
    i32.const 63
    call $rotr64
    i64.store)
  (func $rotr64 (type 10) (param i64 i32) (result i64)
    local.get 0
    local.get 1
    i64.extend_i32_u
    i64.rotr)
  (func $ROUND_ (type 2) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const 0
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    local.tee 3
    local.get 1
    i32.const 64
    i32.add
    local.tee 4
    local.get 1
    i32.const 96
    i32.add
    local.tee 5
    local.get 2
    call $G
    local.get 0
    i32.const 1
    local.get 1
    i32.const 8
    i32.add
    local.tee 6
    local.get 1
    i32.const 40
    i32.add
    local.tee 7
    local.get 1
    i32.const 72
    i32.add
    local.tee 8
    local.get 1
    i32.const 104
    i32.add
    local.tee 9
    local.get 2
    call $G
    local.get 0
    i32.const 2
    local.get 1
    i32.const 16
    i32.add
    local.tee 10
    local.get 1
    i32.const 48
    i32.add
    local.tee 11
    local.get 1
    i32.const 80
    i32.add
    local.tee 12
    local.get 1
    i32.const 112
    i32.add
    local.tee 13
    local.get 2
    call $G
    local.get 0
    i32.const 3
    local.get 1
    i32.const 24
    i32.add
    local.tee 14
    local.get 1
    i32.const 56
    i32.add
    local.tee 15
    local.get 1
    i32.const 88
    i32.add
    local.tee 16
    local.get 1
    i32.const 120
    i32.add
    local.tee 17
    local.get 2
    call $G
    local.get 0
    i32.const 4
    local.get 1
    local.get 7
    local.get 12
    local.get 17
    local.get 2
    call $G
    local.get 0
    i32.const 5
    local.get 6
    local.get 11
    local.get 16
    local.get 5
    local.get 2
    call $G
    local.get 0
    i32.const 6
    local.get 10
    local.get 15
    local.get 4
    local.get 9
    local.get 2
    call $G
    local.get 0
    i32.const 7
    local.get 14
    local.get 3
    local.get 8
    local.get 13
    local.get 2
    call $G)
  (func $blake2b_final (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i64 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.const 64
    call $memset
    local.set 4
    i32.const -1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=228
      local.get 2
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i64.load offset=80
      i64.const 0
      i64.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i64.load offset=64
      local.tee 5
      local.get 0
      i32.load offset=224
      local.tee 2
      i64.extend_i32_u
      i64.add
      local.tee 6
      i64.store offset=64
      local.get 0
      i32.const 72
      i32.add
      local.tee 3
      local.get 3
      i64.load
      local.get 6
      local.get 5
      i64.lt_u
      i64.extend_i32_u
      i64.add
      i64.store
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=232
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 88
        i32.add
        i64.const -1
        i64.store
      end
      local.get 0
      i64.const -1
      i64.store offset=80
      i32.const 0
      local.set 3
      local.get 0
      i32.const 96
      i32.add
      local.tee 7
      local.get 2
      i32.add
      i32.const 0
      i32.const 128
      local.get 2
      i32.sub
      call $memset
      drop
      local.get 0
      local.get 7
      call $blake2b_compress
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.add
        local.get 0
        local.get 3
        i32.add
        i64.load
        call $store64
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        i32.const 64
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      local.get 4
      local.get 0
      i32.load offset=228
      call $memcpy
      drop
      local.get 4
      i32.const 64
      call $secure_zero_memory
      i32.const 0
      local.set 3
    end
    local.get 4
    i32.const 64
    i32.add
    global.set 0
    local.get 3)
  (func $store64 (type 11) (param i32 i64)
    local.get 0
    local.get 1
    i64.store align=1)
  (func $blake2b (type 12) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 6
    global.set 0
    i32.const -1
    local.set 7
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      local.get 3
      i32.const 0
      i32.ne
      i32.and
      br_if 0 (;@1;)
      i32.const -1
      local.set 7
      local.get 5
      i32.const 64
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const -1
      i32.add
      i32.const 63
      i32.gt_u
      br_if 0 (;@1;)
      local.get 4
      i32.eqz
      local.get 5
      i32.const 0
      i32.ne
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 1
          local.get 4
          local.get 5
          call $blake2b_init_key
          i32.const 0
          i32.ge_s
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 6
        local.get 1
        call $blake2b_init
        i32.const 0
        i32.lt_s
        br_if 1 (;@1;)
      end
      local.get 6
      local.get 2
      local.get 3
      call $blake2b_update
      drop
      local.get 6
      local.get 0
      local.get 1
      call $blake2b_final
      drop
      i32.const 0
      local.set 7
    end
    local.get 6
    i32.const 240
    i32.add
    global.set 0
    local.get 7)
  (func $_main (type 13)
    (local i32 i32 i32)
    global.get 0
    i32.const 64
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
    i32.const 64
    local.get 2
    local.get 1
    i32.const 0
    i32.const 0
    call $blake2b
    drop
    local.get 0
    i32.const 64
    call $finish
    local.get 0
    i32.const 64
    i32.add
    global.set 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66848))
  (global (;1;) i32 (i32.const 66848))
  (global (;2;) i32 (i32.const 1300))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "_main" (func $_main))
  (elem (;0;) (i32.const 1) $memset)
  (data (;0;) (i32.const 1024) "\14\05\00\00")
  (data (;1;) (i32.const 1040) "\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0e\0a\04\08\09\0f\0d\06\01\0c\00\02\0b\07\05\03\0b\08\0c\00\05\02\0f\0d\0a\0e\03\06\07\01\09\04\07\09\03\01\0d\0c\0b\0e\02\06\05\0a\04\00\0f\08\09\00\05\07\02\04\0a\0f\0e\01\0b\0c\06\08\03\0d\02\0c\06\0a\00\0b\08\03\04\0d\07\05\0f\0e\01\09\0c\05\01\0f\0e\0d\04\0a\00\07\06\03\09\02\08\0b\0d\0b\07\0e\0c\01\03\09\05\00\0f\04\08\06\02\0a\06\0f\0e\09\0b\03\00\08\0c\02\0d\07\01\04\0a\05\0a\02\08\04\07\06\01\05\0f\0b\09\0e\03\0c\0d\00\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0e\0a\04\08\09\0f\0d\06\01\0c\00\02\0b\07\05\03\08\c9\bc\f3g\e6\09j;\a7\ca\84\85\aeg\bb+\f8\94\fer\f3n<\f16\1d_:\f5O\a5\d1\82\e6\ad\7fR\0eQ\1fl>+\8ch\05\9bk\bdA\fb\ab\d9\83\1fy!~\13\19\cd\e0[\01\00\00\00"))
