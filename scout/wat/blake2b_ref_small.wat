(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32)))
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
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
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
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32 i64)
    local.get 2
    i32.const 9
    i32.ge_u
    if  ;; label = @1
      local.get 1
      i32.const 16843009
      i32.mul
      i64.extend_i32_s
      local.get 1
      i64.extend_i32_s
      i64.const 72058697844523008
      i64.mul
      i64.add
      local.set 4
      local.get 2
      local.set 3
      loop  ;; label = @2
        local.get 0
        local.get 4
        i64.store
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
  (func $blake2b_init_param (type 8) (param i32 i32)
    (local i32 i32)
    local.get 0
    i32.const -64
    i32.sub
    i32.const 0
    i32.const 176
    call $memset
    drop
    local.get 0
    i32.const 10208
    i32.const 64
    call $memcpy
    local.set 0
    loop  ;; label = @1
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      local.get 1
      local.get 2
      i32.add
      i64.load align=1
      local.get 3
      i64.load
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
    local.get 0
    local.get 1
    i32.load8_u
    i32.store offset=228)
  (func $blake2b_init (type 9) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    local.get 1
    i32.const 1
    i32.store8 offset=3
    local.get 1
    i32.const 256
    i32.store16 offset=1 align=1
    local.get 1
    i32.const 64
    i32.store8
    local.get 1
    i32.const 4
    i32.or
    i32.const 0
    i32.store align=1
    local.get 1
    i32.const 8
    i32.or
    i32.const 0
    i32.store align=1
    local.get 1
    i32.const 12
    i32.or
    i32.const 0
    i32.store align=1
    local.get 1
    i32.const 16
    i32.add
    i32.const 0
    i32.const 48
    call $memset
    drop
    local.get 0
    local.get 1
    call $blake2b_init_param
    local.get 1
    i32.const -64
    i32.sub
    global.set 0
    i32.const 0)
  (func $blake2b_update (type 10) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64 i64)
    local.get 2
    if  ;; label = @1
      block  ;; label = @2
        i32.const 128
        local.get 0
        i32.load offset=224
        local.tee 4
        i32.sub
        local.tee 3
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
        local.get 4
        i32.add
        local.get 1
        local.get 3
        call $memcpy
        drop
        local.get 0
        local.get 0
        i64.load offset=64
        local.tee 7
        i64.const 128
        i64.add
        local.tee 8
        i64.store offset=64
        local.get 0
        i32.const 72
        i32.add
        local.tee 6
        local.get 6
        i64.load
        local.get 8
        local.get 7
        i64.lt_u
        i64.extend_i32_u
        i64.add
        i64.store
        local.get 0
        local.get 5
        call $blake2b_compress
        local.get 1
        local.get 3
        i32.add
        local.set 1
        local.get 2
        local.get 3
        i32.sub
        local.tee 3
        i32.const 129
        i32.lt_u
        if  ;; label = @3
          local.get 3
          local.set 2
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.add
        local.tee 2
        i32.const -257
        i32.add
        local.set 4
        loop  ;; label = @3
          local.get 0
          local.get 0
          i64.load offset=64
          local.tee 7
          i64.const 128
          i64.add
          local.tee 8
          i64.store offset=64
          local.get 0
          local.get 0
          i64.load offset=72
          local.get 8
          local.get 7
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
          local.get 3
          i32.const -128
          i32.add
          local.tee 3
          i32.const 128
          i32.gt_u
          br_if 0 (;@3;)
        end
        local.get 2
        i32.const -256
        i32.add
        local.get 4
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
    end)
  (func $blake2b_compress (type 5) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 3
    global.set 0
    loop  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.get 2
      i32.add
      local.get 1
      local.get 2
      i32.add
      i64.load align=1
      i64.store
      local.get 2
      i32.const 8
      i32.add
      local.tee 2
      i32.const 128
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 3
    local.get 0
    i32.const 64
    call $memcpy
    local.tee 1
    i64.const -6534734903238641935
    i64.store offset=88
    local.get 1
    i64.const 4354685564936845355
    i64.store offset=80
    local.get 1
    i64.const -4942790177534073029
    i64.store offset=72
    local.get 1
    i64.const 7640891576956012808
    i64.store offset=64
    local.get 1
    local.get 0
    i64.load offset=64
    i64.const 5840696475078001361
    i64.xor
    i64.store offset=96
    local.get 1
    local.get 0
    i32.const 72
    i32.add
    i64.load
    i64.const -7276294671716946913
    i64.xor
    i64.store offset=104
    local.get 1
    local.get 0
    i64.load offset=80
    i64.const 2270897969802886507
    i64.xor
    i64.store offset=112
    local.get 1
    local.get 0
    i32.const 88
    i32.add
    i64.load
    i64.const 6620516959819538809
    i64.xor
    i64.store offset=120
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 1
      local.get 1
      i32.const 128
      i32.add
      call $ROUND_
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 12
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      local.get 1
      local.get 2
      i32.add
      local.tee 4
      i64.load
      local.get 3
      i64.load
      i64.xor
      local.get 4
      i32.const -64
      i32.sub
      i64.load
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
    local.get 1
    i32.const 256
    i32.add
    global.set 0)
  (func $G (type 6) (param i32 i32 i32 i32 i32 i32 i32)
    (local i64)
    local.get 2
    local.get 6
    local.get 0
    i32.const 4
    i32.shl
    i32.const 10016
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
    local.get 3
    i64.load
    local.get 2
    i64.load
    i64.add
    i64.add
    local.tee 7
    i64.store
    local.get 5
    local.get 5
    i64.load
    local.get 7
    i64.xor
    i64.const 32
    i64.rotr
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
    i64.const 24
    i64.rotr
    local.tee 7
    i64.store
    local.get 2
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
    local.get 2
    i64.load
    local.get 7
    i64.add
    i64.add
    local.tee 7
    i64.store
    local.get 5
    local.get 5
    i64.load
    local.get 7
    i64.xor
    i64.const 16
    i64.rotr
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
    i64.const 63
    i64.rotr
    i64.store)
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
    i32.const -64
    i32.sub
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
  (func $blake2b_final (type 8) (param i32 i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.const 64
    call $memset
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=228
      i32.const 64
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
      local.tee 6
      local.get 0
      i32.load offset=224
      local.tee 4
      i64.extend_i32_u
      i64.add
      local.tee 7
      i64.store offset=64
      local.get 0
      i32.const 72
      i32.add
      local.tee 3
      local.get 3
      i64.load
      local.get 7
      local.get 6
      i64.lt_u
      i64.extend_i32_u
      i64.add
      i64.store
      local.get 0
      i32.load8_u offset=232
      if  ;; label = @2
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
      local.tee 5
      local.get 4
      i32.add
      i32.const 0
      i32.const 128
      local.get 4
      i32.sub
      call $memset
      drop
      local.get 0
      local.get 5
      call $blake2b_compress
      loop  ;; label = @2
        local.get 2
        local.get 3
        i32.add
        local.get 0
        local.get 3
        i32.add
        i64.load
        i64.store align=1
        local.get 3
        i32.const 8
        i32.add
        local.tee 3
        i32.const 64
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=228
      call $memcpy
      drop
      local.get 2
      i32.const 0
      i32.const 64
      i32.const 10272
      i32.load
      call_indirect (type 0)
      drop
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func $blake2b (type 10) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 240
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.eqz
      local.get 2
      i32.const 0
      i32.ne
      i32.and
      br_if 0 (;@1;)
      local.get 3
      call $blake2b_init
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      local.get 1
      local.get 2
      call $blake2b_update
      local.get 3
      local.get 0
      call $blake2b_final
    end
    local.get 3
    i32.const 240
    i32.add
    global.set 0)
  (func $_main (type 7)
    (local i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 1
    call $malloc
    local.tee 2
    i32.const 0
    local.get 1
    call $eth2_blockDataCopy
    local.get 0
    local.get 2
    local.get 1
    call $blake2b
    local.get 0
    call $eth2_savePostStateRoot
    local.get 0
    i32.const -64
    i32.sub
    global.set 0)
  (table (;0;) 2 2 funcref)
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 10000))
  (global (;1;) i32 (i32.const 10276))
  (global (;2;) i32 (i32.const 10276))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (elem (;0;) (i32.const 1) $memset)
  (data (;0;) (i32.const 10000) "$(")
  (data (;1;) (i32.const 10017) "\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0e\0a\04\08\09\0f\0d\06\01\0c\00\02\0b\07\05\03\0b\08\0c\00\05\02\0f\0d\0a\0e\03\06\07\01\09\04\07\09\03\01\0d\0c\0b\0e\02\06\05\0a\04\00\0f\08\09\00\05\07\02\04\0a\0f\0e\01\0b\0c\06\08\03\0d\02\0c\06\0a\00\0b\08\03\04\0d\07\05\0f\0e\01\09\0c\05\01\0f\0e\0d\04\0a\00\07\06\03\09\02\08\0b\0d\0b\07\0e\0c\01\03\09\05\00\0f\04\08\06\02\0a\06\0f\0e\09\0b\03\00\08\0c\02\0d\07\01\04\0a\05\0a\02\08\04\07\06\01\05\0f\0b\09\0e\03\0c\0d\00\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0e\0a\04\08\09\0f\0d\06\01\0c\00\02\0b\07\05\03\08\c9\bc\f3g\e6\09j;\a7\ca\84\85\aeg\bb+\f8\94\fer\f3n<\f16\1d_:\f5O\a5\d1\82\e6\ad\7fR\0eQ\1fl>+\8ch\05\9bk\bdA\fb\ab\d9\83\1fy!~\13\19\cd\e0[\01"))
