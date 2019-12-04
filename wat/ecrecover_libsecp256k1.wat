(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32 i32)))
  (type (;10;) (func))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32) (result i32)))
  (type (;13;) (func (result i32)))
  (type (;14;) (func (param i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i64 i64 i64)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 1)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 3)))
  (func $malloc (type 4) (param i32) (result i32)
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
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
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
  (func $memset (type 12) (param i32 i32) (result i32)
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
    end
    local.get 0)
  (func $secp256k1_context_create (type 13) (result i32)
    (local i32)
    i32.const 1040
    i32.const 192
    call $checked_malloc
    local.tee 0
    i32.const 1040
    i64.load
    i64.store offset=184
    local.get 0
    i32.const 1048
    i64.load
    i64.store offset=176
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 0
    local.get 0
    i32.const 184
    i32.add
    call $secp256k1_ecmult_context_build
    local.get 0)
  (func $checked_malloc (type 6) (param i32 i32) (result i32)
    local.get 1
    call $malloc
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 1395
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load
      call_indirect (type 0)
    end
    local.get 1)
  (func $secp256k1_ecmult_context_build (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 1416
      call $secp256k1_gej_set_ge
      local.get 0
      local.get 1
      i32.const 1048576
      call $checked_malloc
      local.tee 0
      i32.store
      local.get 0
      local.get 2
      call $secp256k1_ecmult_odd_multiples_table_storage_var
    end
    local.get 2
    i32.const 128
    i32.add
    global.set 0)
  (func $secp256k1_gej_set_ge (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.load offset=80
    i32.store offset=120
    local.get 0
    local.get 1
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 32
    i32.add
    local.get 1
    i32.const 32
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 1
    i64.load offset=40
    i64.store offset=40
    local.get 0
    i32.const 48
    i32.add
    local.get 1
    i32.const 48
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 56
    i32.add
    local.get 1
    i32.const 56
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const -64
    i32.sub
    local.get 1
    i32.const -64
    i32.sub
    i64.load
    i64.store
    local.get 0
    i32.const 72
    i32.add
    local.get 1
    i32.const 72
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 80
    i32.add
    i32.const 1
    call $secp256k1_fe_set_int)
  (func $secp256k1_fe_set_b32 (type 6) (param i32 i32) (result i32)
    (local i64 i64 i64 i64 i64)
    local.get 0
    local.get 1
    i64.load8_u offset=31
    local.get 1
    i64.load8_u offset=30
    i64.const 8
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=29
    i64.const 16
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=28
    i64.const 24
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=27
    i64.const 32
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=26
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=25
    i64.const 15
    i64.and
    i64.const 48
    i64.shl
    i64.or
    local.tee 2
    i64.store
    local.get 0
    local.get 1
    i32.load8_u offset=25
    i32.const 4
    i32.shr_u
    i64.extend_i32_u
    local.get 1
    i64.load8_u offset=24
    i64.const 4
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=23
    i64.const 12
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=22
    i64.const 20
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=21
    i64.const 28
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=20
    i64.const 36
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=19
    i64.const 44
    i64.shl
    i64.or
    local.tee 3
    i64.store offset=8
    local.get 0
    local.get 1
    i64.load8_u offset=18
    local.get 1
    i64.load8_u offset=17
    i64.const 8
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=16
    i64.const 16
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=15
    i64.const 24
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=14
    i64.const 32
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=13
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=12
    i64.const 15
    i64.and
    i64.const 48
    i64.shl
    i64.or
    local.tee 4
    i64.store offset=16
    local.get 0
    local.get 1
    i32.load8_u offset=12
    i32.const 4
    i32.shr_u
    i64.extend_i32_u
    local.get 1
    i64.load8_u offset=11
    i64.const 4
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=10
    i64.const 12
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=9
    i64.const 20
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=8
    i64.const 28
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=7
    i64.const 36
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=6
    i64.const 44
    i64.shl
    i64.or
    local.tee 5
    i64.store offset=24
    local.get 0
    local.get 1
    i64.load8_u offset=5
    local.get 1
    i64.load8_u offset=4
    i64.const 8
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=3
    i64.const 16
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=2
    i64.const 24
    i64.shl
    i64.or
    local.get 1
    i64.load8_u offset=1
    i64.const 32
    i64.shl
    i64.or
    local.get 1
    i64.load8_u
    i64.const 40
    i64.shl
    i64.or
    local.tee 6
    i64.store offset=32
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 6
        i64.const 281474976710655
        i64.ne
        br_if 0 (;@2;)
        local.get 2
        i64.const 4503595332402223
        i64.lt_u
        br_if 0 (;@2;)
        i32.const 0
        local.get 3
        local.get 4
        i64.and
        local.get 5
        i64.and
        i64.const 4503599627370495
        i64.eq
        br_if 1 (;@1;)
        drop
      end
      i32.const 1
    end)
  (func $secp256k1_ge_set_xo_var (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    call $secp256k1_ge_set_xquad
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 40
    i32.add
    local.tee 0
    call $secp256k1_fe_normalize_var
    local.get 2
    local.get 0
    i32.load
    i32.const 1
    i32.and
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 0
      i32.const 1
      call $secp256k1_fe_negate
    end
    i32.const 1)
  (func $secp256k1_gej_add_ge_var (type 7) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 448
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=120
      if  ;; label = @2
        local.get 0
        local.get 2
        call $secp256k1_gej_set_ge
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=80
      if  ;; label = @2
        local.get 3
        if  ;; label = @3
          local.get 3
          i32.const 1
          call $secp256k1_fe_set_int
        end
        local.get 0
        local.get 1
        i32.const 128
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=120
      local.get 4
      i32.const 408
      i32.add
      local.get 1
      i32.const 80
      i32.add
      local.tee 5
      call $secp256k1_fe_sqr
      local.get 4
      i32.const 400
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 392
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 384
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 376
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 4
      local.get 1
      i64.load
      i64.store offset=368
      local.get 4
      i32.const 368
      i32.add
      call $secp256k1_fe_normalize_weak
      local.get 4
      i32.const 328
      i32.add
      local.get 2
      local.get 4
      i32.const 408
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 320
      i32.add
      local.get 1
      i32.const 72
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 312
      i32.add
      local.get 1
      i32.const -64
      i32.sub
      i64.load
      i64.store
      local.get 4
      i32.const 304
      i32.add
      local.get 1
      i32.const 56
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 296
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i64.load
      i64.store
      local.get 4
      local.get 1
      i64.load offset=40
      i64.store offset=288
      local.get 4
      i32.const 288
      i32.add
      call $secp256k1_fe_normalize_weak
      local.get 4
      i32.const 248
      i32.add
      local.get 2
      i32.const 40
      i32.add
      local.get 4
      i32.const 408
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 248
      i32.add
      local.get 4
      i32.const 248
      i32.add
      local.get 5
      call $secp256k1_fe_mul
      local.get 4
      i32.const 208
      i32.add
      local.get 4
      i32.const 368
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 4
      i32.const 208
      i32.add
      local.get 4
      i32.const 328
      i32.add
      call $secp256k1_fe_add
      local.get 4
      i32.const 168
      i32.add
      local.get 4
      i32.const 288
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 4
      i32.const 168
      i32.add
      local.get 4
      i32.const 248
      i32.add
      call $secp256k1_fe_add
      local.get 4
      i32.const 208
      i32.add
      call $secp256k1_fe_normalizes_to_zero_var
      if  ;; label = @2
        local.get 4
        i32.const 168
        i32.add
        call $secp256k1_fe_normalizes_to_zero_var
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 3
          call $secp256k1_gej_double_var
          br 2 (;@1;)
        end
        local.get 3
        if  ;; label = @3
          local.get 3
          i32.const 0
          call $secp256k1_fe_set_int
        end
        local.get 0
        i32.const 1
        i32.store offset=120
        br 1 (;@1;)
      end
      local.get 4
      i32.const 128
      i32.add
      local.get 4
      i32.const 168
      i32.add
      call $secp256k1_fe_sqr
      local.get 4
      i32.const 88
      i32.add
      local.get 4
      i32.const 208
      i32.add
      call $secp256k1_fe_sqr
      local.get 4
      i32.const 48
      i32.add
      local.get 4
      i32.const 208
      i32.add
      local.get 4
      i32.const 88
      i32.add
      call $secp256k1_fe_mul
      local.get 3
      if  ;; label = @2
        local.get 3
        local.get 4
        i64.load offset=208
        i64.store
        local.get 3
        i32.const 32
        i32.add
        local.get 4
        i32.const 240
        i32.add
        i64.load
        i64.store
        local.get 3
        i32.const 24
        i32.add
        local.get 4
        i32.const 232
        i32.add
        i64.load
        i64.store
        local.get 3
        i32.const 16
        i32.add
        local.get 4
        i32.const 224
        i32.add
        i64.load
        i64.store
        local.get 3
        i32.const 8
        i32.add
        local.get 4
        i32.const 216
        i32.add
        i64.load
        i64.store
      end
      local.get 0
      i32.const 80
      i32.add
      local.get 5
      local.get 4
      i32.const 208
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 8
      i32.add
      local.get 4
      i32.const 368
      i32.add
      local.get 4
      i32.const 88
      i32.add
      call $secp256k1_fe_mul
      local.get 0
      i32.const 32
      i32.add
      local.get 4
      i32.const 40
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 24
      i32.add
      local.get 4
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 16
      i32.add
      local.get 4
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 8
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 0
      local.get 4
      i64.load offset=8
      i64.store
      local.get 0
      i32.const 2
      call $secp256k1_fe_mul_int
      local.get 0
      local.get 4
      i32.const 48
      i32.add
      call $secp256k1_fe_add
      local.get 0
      local.get 0
      i32.const 3
      call $secp256k1_fe_negate
      local.get 0
      local.get 4
      i32.const 128
      i32.add
      call $secp256k1_fe_add
      local.get 0
      i32.const 40
      i32.add
      local.tee 1
      local.get 0
      i32.const 5
      call $secp256k1_fe_negate
      local.get 1
      local.get 4
      i32.const 8
      i32.add
      call $secp256k1_fe_add
      local.get 1
      local.get 1
      local.get 4
      i32.const 168
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 48
      i32.add
      local.get 4
      i32.const 48
      i32.add
      local.get 4
      i32.const 288
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 48
      i32.add
      local.get 4
      i32.const 48
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 1
      local.get 4
      i32.const 48
      i32.add
      call $secp256k1_fe_add
    end
    local.get 4
    i32.const 448
    i32.add
    global.set 0)
  (func $secp256k1_gej_double_var (type 2) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    local.get 1
    i32.load offset=120
    local.tee 4
    i32.store offset=120
    block  ;; label = @1
      local.get 4
      if  ;; label = @2
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.const 1
        call $secp256k1_fe_set_int
        br 1 (;@1;)
      end
      local.get 2
      if  ;; label = @2
        local.get 2
        local.get 1
        i64.load offset=40
        i64.store
        local.get 2
        i32.const 32
        i32.add
        local.get 1
        i32.const 72
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 24
        i32.add
        local.get 1
        i32.const -64
        i32.sub
        i64.load
        i64.store
        local.get 2
        i32.const 16
        i32.add
        local.get 1
        i32.const 56
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 8
        i32.add
        local.get 1
        i32.const 48
        i32.add
        i64.load
        i64.store
        local.get 2
        call $secp256k1_fe_normalize_weak
        local.get 2
        i32.const 2
        call $secp256k1_fe_mul_int
      end
      local.get 0
      i32.const 80
      i32.add
      local.tee 2
      local.get 1
      i32.const 80
      i32.add
      local.get 1
      i32.const 40
      i32.add
      local.tee 4
      call $secp256k1_fe_mul
      local.get 2
      i32.const 2
      call $secp256k1_fe_mul_int
      local.get 3
      i32.const 120
      i32.add
      local.get 1
      call $secp256k1_fe_sqr
      local.get 3
      i32.const 120
      i32.add
      i32.const 3
      call $secp256k1_fe_mul_int
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.const 120
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const 40
      i32.add
      local.get 4
      call $secp256k1_fe_sqr
      local.get 3
      i32.const 40
      i32.add
      i32.const 2
      call $secp256k1_fe_mul_int
      local.get 3
      local.get 3
      i32.const 40
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const 2
      call $secp256k1_fe_mul_int
      local.get 3
      i32.const 40
      i32.add
      local.get 3
      i32.const 40
      i32.add
      local.get 1
      call $secp256k1_fe_mul
      local.get 0
      i32.const 32
      i32.add
      local.get 3
      i32.const 72
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 24
      i32.add
      local.get 3
      i32.const -64
      i32.sub
      i64.load
      i64.store
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      i32.const 56
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 8
      i32.add
      local.get 3
      i32.const 48
      i32.add
      i64.load
      i64.store
      local.get 0
      local.get 3
      i64.load offset=40
      i64.store
      local.get 0
      i32.const 4
      call $secp256k1_fe_mul_int
      local.get 0
      local.get 0
      i32.const 4
      call $secp256k1_fe_negate
      local.get 0
      local.get 3
      i32.const 80
      i32.add
      call $secp256k1_fe_add
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.const 80
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 3
      i32.const 40
      i32.add
      i32.const 6
      call $secp256k1_fe_mul_int
      local.get 3
      i32.const 40
      i32.add
      local.get 3
      i32.const 80
      i32.add
      call $secp256k1_fe_add
      local.get 0
      i32.const 40
      i32.add
      local.tee 0
      local.get 3
      i32.const 120
      i32.add
      local.get 3
      i32.const 40
      i32.add
      call $secp256k1_fe_mul
      local.get 3
      i32.const 80
      i32.add
      local.get 3
      i32.const 2
      call $secp256k1_fe_negate
      local.get 0
      local.get 3
      i32.const 80
      i32.add
      call $secp256k1_fe_add
    end
    local.get 3
    i32.const 160
    i32.add
    global.set 0)
  (func $secp256k1_ge_to_storage (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 48
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 56
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const -64
    i32.sub
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 72
    i32.add
    local.get 1
    i32.const 32
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load
    i64.store offset=40
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_normalize
    local.get 2
    i32.const 32
    i32.add
    local.get 1
    i32.const 72
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const -64
    i32.sub
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 56
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    i32.const 48
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load offset=40
    i64.store
    local.get 2
    call $secp256k1_fe_normalize
    local.get 0
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_to_storage
    local.get 0
    i32.const 32
    i32.add
    local.get 2
    call $secp256k1_fe_to_storage
    local.get 2
    i32.const 80
    i32.add
    global.set 0)
  (func $secp256k1_ecmult_odd_multiples_table_storage_var (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 640
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 512
    i32.add
    local.get 1
    i32.const 0
    call $secp256k1_gej_double_var
    local.get 2
    i32.const 456
    i32.add
    local.get 2
    i32.const 544
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 448
    i32.add
    local.get 2
    i32.const 536
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 440
    i32.add
    local.get 2
    i32.const 528
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 432
    i32.add
    local.get 2
    i32.const 520
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 472
    i32.add
    local.get 2
    i32.const 560
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 480
    i32.add
    local.get 2
    i32.const 568
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 488
    i32.add
    local.get 2
    i32.const 576
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 496
    i32.add
    local.get 2
    i32.const 584
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=512
    i64.store offset=424
    local.get 2
    local.get 2
    i64.load offset=552
    i64.store offset=464
    local.get 2
    i32.const 0
    i32.store offset=504
    local.get 2
    i32.const 336
    i32.add
    local.get 1
    local.get 2
    i32.const 592
    i32.add
    local.tee 4
    call $secp256k1_ge_set_gej_zinv
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 368
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 232
    i32.add
    local.get 2
    i32.const 360
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 352
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 216
    i32.add
    local.get 2
    i32.const 344
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 384
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 264
    i32.add
    local.get 2
    i32.const 392
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 272
    i32.add
    local.get 2
    i32.const 400
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 408
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=336
    i64.store offset=208
    local.get 2
    local.get 2
    i64.load offset=376
    i64.store offset=248
    local.get 2
    i32.const 320
    i32.add
    local.get 1
    i32.const 112
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 312
    i32.add
    local.get 1
    i32.const 104
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 304
    i32.add
    local.get 1
    i32.const 96
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 296
    i32.add
    local.get 1
    i32.const 88
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 0
    i32.store offset=328
    local.get 2
    local.get 1
    i64.load offset=80
    i64.store offset=288
    local.get 2
    i32.const 288
    i32.add
    local.set 1
    local.get 2
    i32.const 376
    i32.add
    local.set 5
    local.get 2
    i32.const 248
    i32.add
    local.set 6
    loop  ;; label = @1
      local.get 6
      call $secp256k1_fe_normalize_var
      local.get 0
      local.get 3
      i32.add
      local.tee 7
      i32.const 32
      i32.add
      local.get 6
      call $secp256k1_fe_to_storage
      local.get 2
      i32.const 208
      i32.add
      local.get 2
      i32.const 208
      i32.add
      local.get 2
      i32.const 424
      i32.add
      local.get 2
      i32.const 128
      i32.add
      call $secp256k1_gej_add_ge_var
      local.get 2
      i32.const 128
      i32.add
      call $secp256k1_fe_normalize_var
      local.get 7
      local.get 2
      i32.const 128
      i32.add
      call $secp256k1_fe_to_storage
      local.get 3
      i32.const -64
      i32.sub
      local.tee 3
      i32.const 1048512
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 168
    i32.add
    local.get 1
    local.get 4
    call $secp256k1_fe_mul
    local.get 2
    i32.const 168
    i32.add
    local.get 2
    i32.const 168
    i32.add
    call $secp256k1_fe_inv_var
    local.get 2
    i32.const 336
    i32.add
    local.get 2
    i32.const 208
    i32.add
    local.get 2
    i32.const 168
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 0
    i32.const 1048512
    i32.add
    local.get 2
    i32.const 336
    i32.add
    call $secp256k1_ge_to_storage
    local.get 4
    local.get 2
    i32.const 168
    i32.add
    local.get 1
    call $secp256k1_fe_mul
    local.get 2
    i32.const 88
    i32.add
    local.get 4
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 512
    i32.add
    call $secp256k1_fe_mul
    i32.const 1048448
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 336
      i32.add
      local.get 0
      local.get 3
      i32.add
      local.tee 1
      call $secp256k1_ge_from_storage
      local.get 2
      i32.const 168
      i32.add
      local.get 2
      i32.const 168
      i32.add
      local.get 2
      i32.const 336
      i32.add
      call $secp256k1_fe_mul
      local.get 2
      i32.const 48
      i32.add
      local.get 2
      i32.const 168
      i32.add
      call $secp256k1_fe_sqr
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 48
      i32.add
      local.get 2
      i32.const 168
      i32.add
      call $secp256k1_fe_mul
      local.get 2
      i32.const 336
      i32.add
      local.get 2
      i32.const 336
      i32.add
      local.get 2
      i32.const 48
      i32.add
      call $secp256k1_fe_mul
      local.get 2
      i32.const 336
      i32.add
      local.get 2
      i32.const 336
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 2
      i32.const 336
      i32.add
      local.get 2
      i32.const 88
      i32.add
      call $secp256k1_fe_add
      local.get 5
      local.get 5
      local.get 2
      i32.const 8
      i32.add
      call $secp256k1_fe_mul
      local.get 1
      local.get 2
      i32.const 336
      i32.add
      call $secp256k1_ge_to_storage
      local.get 3
      i32.const -64
      i32.add
      local.tee 3
      i32.const -64
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 640
    i32.add
    global.set 0)
  (func $secp256k1_ec_pubkey_serialize (type 14) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 1070
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 1
      i32.load
      local.tee 4
      i32.const 65
      i32.lt_u
      if  ;; label = @2
        i32.const 1088
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 1
      i32.const 0
      i32.store
      local.get 3
      local.get 4
      i32.store offset=4
      i32.const 1872
      local.get 4
      call $memset
      local.set 4
      local.get 2
      i32.eqz
      if  ;; label = @2
        i32.const 1171
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.const 8
      i32.add
      local.get 2
      call $secp256k1_pubkey_load
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 8
      i32.add
      local.get 4
      local.get 3
      i32.const 4
      i32.add
      call $secp256k1_eckey_pubkey_serialize
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 3
      i32.load offset=4
      i32.store
    end
    local.get 3
    i32.const 96
    i32.add
    global.set 0)
  (func $secp256k1_pubkey_load (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 3
    global.set 0
    local.get 3
    i32.const 56
    i32.add
    local.get 2
    i32.const 56
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    i32.const 48
    i32.add
    local.get 2
    i32.const 48
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    i32.const 32
    i32.add
    local.get 2
    i32.const 32
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    i32.const 24
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=1
    i64.store
    local.get 3
    local.get 2
    i64.load align=1
    i64.store
    local.get 1
    local.get 3
    call $secp256k1_ge_from_storage
    block (result i32)  ;; label = @1
      i32.const 1
      local.get 1
      i64.load offset=32
      local.get 1
      i64.load offset=24
      local.get 1
      i64.load offset=16
      local.get 1
      i64.load offset=8
      local.get 1
      i64.load
      i64.or
      i64.or
      i64.or
      i64.or
      i64.eqz
      i32.eqz
      br_if 0 (;@1;)
      drop
      i32.const 1664
      local.get 0
      i32.const 176
      i32.add
      local.tee 0
      i32.load offset=4
      local.get 0
      i32.load
      call_indirect (type 0)
      i32.const 0
    end
    local.get 3
    i32.const -64
    i32.sub
    global.set 0)
  (func $secp256k1_eckey_pubkey_serialize (type 15) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=80
    i32.eqz
    if  ;; label = @1
      local.get 0
      call $secp256k1_fe_normalize_var
      local.get 0
      i32.const 40
      i32.add
      local.tee 3
      call $secp256k1_fe_normalize_var
      i32.const 1
      local.set 4
      local.get 1
      i32.const 1
      i32.add
      local.get 0
      call $secp256k1_fe_get_b32
      local.get 2
      i32.const 65
      i32.store
      local.get 1
      i32.const 4
      i32.store8
      local.get 1
      i32.const 33
      i32.add
      local.get 3
      call $secp256k1_fe_get_b32
    end
    local.get 4)
  (func $secp256k1_ge_from_storage (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $secp256k1_fe_from_storage
    local.get 0
    i32.const 40
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call $secp256k1_fe_from_storage
    local.get 0
    i32.const 0
    i32.store offset=80)
  (func $secp256k1_fe_normalize_var (type 3) (param i32)
    (local i64 i64 i64 i64 i64 i64 i64)
    local.get 0
    i64.load offset=8
    local.get 0
    i64.load
    local.get 0
    i64.load offset=32
    local.tee 4
    i64.const 48
    i64.shr_u
    i64.const 4294968273
    i64.mul
    i64.add
    local.tee 1
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 2
    i64.const 4503599627370495
    i64.and
    local.set 5
    local.get 0
    i64.load offset=24
    local.get 0
    i64.load offset=16
    local.get 2
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 7
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 3
    i64.const 4503599627370495
    i64.and
    local.set 6
    local.get 0
    local.get 4
    i64.const 281474976710655
    i64.and
    local.get 3
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 4
    i64.const 48
    i64.shr_u
    local.get 2
    local.get 7
    i64.const 4503599627370495
    i64.and
    local.tee 2
    i64.and
    local.get 3
    i64.and
    i64.const 4503599627370495
    i64.eq
    local.get 4
    i64.const 281474976710655
    i64.eq
    i32.and
    local.get 1
    i64.const 4503599627370495
    i64.and
    local.tee 3
    i64.const 4503595332402222
    i64.gt_u
    i32.and
    i64.extend_i32_u
    i64.or
    i64.eqz
    if (result i64)  ;; label = @1
      local.get 4
    else
      local.get 3
      i64.const 4294968273
      i64.add
      local.tee 1
      i64.const 4503599627370495
      i64.and
      local.set 3
      local.get 5
      local.get 1
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 1
      i64.const 4503599627370495
      i64.and
      local.set 5
      local.get 2
      local.get 1
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 1
      i64.const 4503599627370495
      i64.and
      local.set 2
      local.get 6
      local.get 1
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 1
      i64.const 4503599627370495
      i64.and
      local.set 6
      local.get 1
      i64.const 52
      i64.shr_u
      local.get 4
      i64.add
      i64.const 281474976710655
      i64.and
    end
    i64.store offset=32
    local.get 0
    local.get 6
    i64.store offset=24
    local.get 0
    local.get 2
    i64.store offset=16
    local.get 0
    local.get 5
    i64.store offset=8
    local.get 0
    local.get 3
    i64.store)
  (func $secp256k1_fe_get_b32 (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load offset=32
    i64.const 40
    i64.shr_u
    i64.store8
    local.get 0
    local.get 1
    i32.const 36
    i32.add
    i64.load32_u
    i64.store8 offset=1
    local.get 0
    local.get 1
    i64.load offset=32
    i64.const 24
    i64.shr_u
    i64.store8 offset=2
    local.get 0
    local.get 1
    i64.load offset=32
    i64.const 16
    i64.shr_u
    i64.store8 offset=3
    local.get 0
    local.get 1
    i64.load offset=32
    i64.const 8
    i64.shr_u
    i64.store8 offset=4
    local.get 0
    local.get 1
    i64.load offset=32
    i64.store8 offset=5
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 44
    i64.shr_u
    i64.store8 offset=6
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 36
    i64.shr_u
    i64.store8 offset=7
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 28
    i64.shr_u
    i64.store8 offset=8
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 20
    i64.shr_u
    i64.store8 offset=9
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 12
    i64.shr_u
    i64.store8 offset=10
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 4
    i64.shr_u
    i64.store8 offset=11
    local.get 0
    local.get 1
    i32.const 22
    i32.add
    i64.load16_u
    i64.const 15
    i64.and
    local.get 1
    i64.load offset=24
    i64.const 4
    i64.shl
    i64.or
    i64.store8 offset=12
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 40
    i64.shr_u
    i64.store8 offset=13
    local.get 0
    local.get 1
    i32.const 20
    i32.add
    i64.load32_u
    i64.store8 offset=14
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 24
    i64.shr_u
    i64.store8 offset=15
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 16
    i64.shr_u
    i64.store8 offset=16
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 8
    i64.shr_u
    i64.store8 offset=17
    local.get 0
    local.get 1
    i64.load offset=16
    i64.store8 offset=18
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 44
    i64.shr_u
    i64.store8 offset=19
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 36
    i64.shr_u
    i64.store8 offset=20
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 28
    i64.shr_u
    i64.store8 offset=21
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 20
    i64.shr_u
    i64.store8 offset=22
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 12
    i64.shr_u
    i64.store8 offset=23
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 4
    i64.shr_u
    i64.store8 offset=24
    local.get 0
    local.get 1
    i64.load16_u offset=6
    i64.const 15
    i64.and
    local.get 1
    i64.load offset=8
    i64.const 4
    i64.shl
    i64.or
    i64.store8 offset=25
    local.get 0
    local.get 1
    i64.load
    i64.const 40
    i64.shr_u
    i64.store8 offset=26
    local.get 0
    local.get 1
    i64.load32_u offset=4
    i64.store8 offset=27
    local.get 0
    local.get 1
    i64.load
    i64.const 24
    i64.shr_u
    i64.store8 offset=28
    local.get 0
    local.get 1
    i64.load
    i64.const 16
    i64.shr_u
    i64.store8 offset=29
    local.get 0
    local.get 1
    i64.load
    i64.const 8
    i64.shr_u
    i64.store8 offset=30
    local.get 0
    local.get 1
    i64.load
    i64.store8 offset=31)
  (func $secp256k1_ecdsa_recoverable_signature_parse_compact (type 14) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 1258
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 2
      i32.const 4
      i32.ge_u
      if  ;; label = @2
        i32.const 1286
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 3
      i32.const 48
      i32.add
      i32.const 1808
      local.get 3
      i32.const 12
      i32.add
      call $secp256k1_scalar_set_b32
      local.get 3
      i32.load offset=12
      local.get 3
      i32.const 16
      i32.add
      i32.const 1840
      local.get 3
      i32.const 12
      i32.add
      call $secp256k1_scalar_set_b32
      local.get 3
      i32.load offset=12
      i32.or
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.const 48
        i32.add
        local.get 3
        i32.const 16
        i32.add
        local.get 2
        call $secp256k1_ecdsa_recoverable_signature_save
        br 1 (;@1;)
      end
      local.get 1
      i32.const 65
      call $memset
      drop
    end
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func $secp256k1_scalar_set_b32 (type 2) (param i32 i32 i32)
    (local i64)
    local.get 0
    local.get 1
    i64.load offset=24 align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 3
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 3
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store
    local.get 0
    local.get 1
    i64.load offset=16 align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 3
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 3
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 0
    local.get 1
    i64.load offset=8 align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 3
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 3
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=16
    local.get 0
    local.get 1
    i64.load align=1
    local.tee 3
    i64.const 56
    i64.shl
    local.get 3
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 3
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 3
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=24
    local.get 0
    local.get 0
    call $secp256k1_scalar_check_overflow
    call $secp256k1_scalar_reduce
    local.set 0
    local.get 2
    if  ;; label = @1
      local.get 2
      local.get 0
      i32.store
    end)
  (func $secp256k1_ecdsa_recoverable_signature_save (type 7) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    local.get 2
    i64.load align=1
    i64.store offset=32 align=1
    local.get 0
    i32.const 40
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 48
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 56
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    local.get 3
    i32.store8 offset=64)
  (func $secp256k1_scalar_check_overflow (type 4) (param i32) (result i32)
    (local i32 i32 i64 i64)
    local.get 0
    i64.load offset=24
    i64.const -1
    i64.ne
    local.get 0
    i64.load offset=16
    local.tee 3
    i64.const -2
    i64.lt_u
    i32.or
    local.tee 1
    local.get 0
    i64.load offset=8
    local.tee 4
    i64.const -4994812053365940165
    i64.lt_u
    i32.or
    i32.const -1
    i32.xor
    local.tee 2
    local.get 4
    i64.const -4994812053365940165
    i64.gt_u
    i32.and
    local.get 1
    i32.const 1
    i32.xor
    local.get 3
    i64.const -1
    i64.eq
    i32.and
    i32.or
    local.get 0
    i64.load
    i64.const -4624529908474429120
    i64.gt_u
    local.get 2
    i32.and
    i32.or)
  (func $secp256k1_scalar_reduce (type 6) (param i32 i32) (result i32)
    (local i64 i64 i64 i64 i64)
    local.get 0
    local.get 0
    i64.load
    local.tee 4
    local.get 1
    i64.extend_i32_u
    local.tee 2
    i64.const 4624529908474429119
    i64.mul
    i64.add
    local.tee 5
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    local.tee 6
    local.get 2
    i64.const 4994812053365940164
    i64.mul
    i64.add
    local.tee 3
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 4
    i64.store offset=8
    local.get 0
    local.get 0
    i64.load offset=16
    local.tee 5
    local.get 2
    i64.add
    local.tee 2
    local.get 3
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 3
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=24
    local.get 2
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 2
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.store offset=24
    local.get 1)
  (func $secp256k1_ecdsa_recover (type 14) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 192
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      if  ;; label = @2
        i32.const 1311
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 2
      i32.eqz
      if  ;; label = @2
        i32.const 1377
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 1171
        local.get 0
        i32.const 176
        i32.add
        local.tee 0
        i32.load offset=4
        local.get 0
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 3
      i32.const 72
      i32.add
      local.get 3
      i32.const 40
      i32.add
      local.get 3
      i32.const 4
      i32.add
      local.get 2
      call $secp256k1_ecdsa_recoverable_signature_load
      local.get 3
      i32.const 8
      i32.add
      i32.const 1744
      i32.const 0
      call $secp256k1_scalar_set_b32
      local.get 0
      local.get 3
      i32.const 72
      i32.add
      local.get 3
      i32.const 40
      i32.add
      local.get 3
      i32.const 104
      i32.add
      local.get 3
      i32.const 8
      i32.add
      local.get 3
      i32.load offset=4
      call $secp256k1_ecdsa_sig_recover
      if  ;; label = @2
        local.get 1
        local.get 3
        i32.const 104
        i32.add
        call $secp256k1_pubkey_save
        br 1 (;@1;)
      end
      local.get 1
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 56
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 48
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 40
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 32
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 24
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 16
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 8
      i32.add
      i64.const 0
      i64.store align=1
    end
    local.get 3
    i32.const 192
    i32.add
    global.set 0)
  (func $secp256k1_ecdsa_recoverable_signature_load (type 7) (param i32 i32 i32 i32)
    local.get 0
    local.get 3
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i32.const 24
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 16
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.const 8
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 1
    i32.const 24
    i32.add
    local.get 3
    i32.const 56
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 1
    i32.const 16
    i32.add
    local.get 3
    i32.const 48
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.const 40
    i32.add
    i64.load align=1
    i64.store align=1
    local.get 1
    local.get 3
    i64.load offset=32 align=1
    i64.store align=1
    local.get 2
    local.get 3
    i32.load8_u offset=64
    i32.store)
  (func $secp256k1_ecdsa_sig_recover (type 8) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 512
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      local.get 1
      i64.load offset=24
      local.get 1
      i64.load offset=16
      local.get 1
      i64.load offset=8
      local.get 1
      i64.load
      i64.or
      i64.or
      i64.or
      i64.eqz
      br_if 0 (;@1;)
      local.get 2
      i64.load offset=24
      local.get 2
      i64.load offset=16
      local.get 2
      i64.load offset=8
      local.get 2
      i64.load
      i64.or
      i64.or
      i64.or
      i64.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.const 480
      i32.add
      local.get 1
      call $secp256k1_scalar_get_b32
      local.get 6
      i32.const 440
      i32.add
      local.get 6
      i32.const 480
      i32.add
      call $secp256k1_fe_set_b32
      drop
      local.get 5
      i32.const 2
      i32.and
      if  ;; label = @2
        local.get 6
        i32.const 440
        i32.add
        call $secp256k1_fe_cmp_var
        i32.const -1
        i32.gt_s
        br_if 1 (;@1;)
        local.get 6
        i32.const 440
        i32.add
        i32.const 1696
        call $secp256k1_fe_add
      end
      local.get 6
      i32.const 352
      i32.add
      local.get 6
      i32.const 440
      i32.add
      local.get 5
      i32.const 1
      i32.and
      call $secp256k1_ge_set_xo_var
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.const 224
      i32.add
      local.get 6
      i32.const 352
      i32.add
      call $secp256k1_gej_set_ge
      local.get 6
      i32.const 192
      i32.add
      local.get 1
      call $secp256k1_scalar_inverse
      local.get 6
      i32.const 160
      i32.add
      local.get 6
      i32.const 192
      i32.add
      local.get 4
      call $secp256k1_scalar_mul
      local.get 6
      i32.const 160
      i32.add
      local.get 6
      i32.const 160
      i32.add
      call $secp256k1_scalar_negate
      local.get 6
      i32.const 128
      i32.add
      local.get 6
      i32.const 192
      i32.add
      local.get 2
      call $secp256k1_scalar_mul
      local.get 0
      local.get 6
      local.get 6
      i32.const 224
      i32.add
      local.get 6
      i32.const 128
      i32.add
      local.get 6
      i32.const 160
      i32.add
      call $secp256k1_ecmult
      local.get 3
      local.get 6
      call $secp256k1_ge_set_gej_var
      local.get 6
      i32.load offset=120
      i32.eqz
      local.set 7
    end
    local.get 6
    i32.const 512
    i32.add
    global.set 0
    local.get 7)
  (func $secp256k1_pubkey_save (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    call $secp256k1_ge_to_storage
    local.get 0
    i32.const 56
    i32.add
    local.get 2
    i32.const 56
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 48
    i32.add
    local.get 2
    i32.const 48
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 32
    i32.add
    local.get 2
    i32.const 32
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 24
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 2
    i32.const 16
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 8
    i32.add
    i64.load
    i64.store align=1
    local.get 0
    local.get 2
    i64.load
    i64.store align=1
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func $secp256k1_scalar_get_b32 (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 31
    i32.add
    i64.load8_u
    i64.store8
    local.get 0
    local.get 1
    i32.const 30
    i32.add
    i64.load16_u
    i64.store8 offset=1
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 40
    i64.shr_u
    i64.store8 offset=2
    local.get 0
    local.get 1
    i32.const 28
    i32.add
    i64.load32_u
    i64.store8 offset=3
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 24
    i64.shr_u
    i64.store8 offset=4
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 16
    i64.shr_u
    i64.store8 offset=5
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 8
    i64.shr_u
    i64.store8 offset=6
    local.get 0
    local.get 1
    i64.load offset=24
    i64.store8 offset=7
    local.get 0
    local.get 1
    i32.const 23
    i32.add
    i64.load8_u
    i64.store8 offset=8
    local.get 0
    local.get 1
    i32.const 22
    i32.add
    i64.load16_u
    i64.store8 offset=9
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 40
    i64.shr_u
    i64.store8 offset=10
    local.get 0
    local.get 1
    i32.const 20
    i32.add
    i64.load32_u
    i64.store8 offset=11
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 24
    i64.shr_u
    i64.store8 offset=12
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 16
    i64.shr_u
    i64.store8 offset=13
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 8
    i64.shr_u
    i64.store8 offset=14
    local.get 0
    local.get 1
    i64.load offset=16
    i64.store8 offset=15
    local.get 0
    local.get 1
    i32.const 15
    i32.add
    i64.load8_u
    i64.store8 offset=16
    local.get 0
    local.get 1
    i32.const 14
    i32.add
    i64.load16_u
    i64.store8 offset=17
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 40
    i64.shr_u
    i64.store8 offset=18
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    i64.load32_u
    i64.store8 offset=19
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 24
    i64.shr_u
    i64.store8 offset=20
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 16
    i64.shr_u
    i64.store8 offset=21
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 8
    i64.shr_u
    i64.store8 offset=22
    local.get 0
    local.get 1
    i64.load offset=8
    i64.store8 offset=23
    local.get 0
    local.get 1
    i64.load8_u offset=7
    i64.store8 offset=24
    local.get 0
    local.get 1
    i64.load16_u offset=6
    i64.store8 offset=25
    local.get 0
    local.get 1
    i64.load
    i64.const 40
    i64.shr_u
    i64.store8 offset=26
    local.get 0
    local.get 1
    i64.load32_u offset=4
    i64.store8 offset=27
    local.get 0
    local.get 1
    i64.load
    i64.const 24
    i64.shr_u
    i64.store8 offset=28
    local.get 0
    local.get 1
    i64.load
    i64.const 16
    i64.shr_u
    i64.store8 offset=29
    local.get 0
    local.get 1
    i64.load
    i64.const 8
    i64.shr_u
    i64.store8 offset=30
    local.get 0
    local.get 1
    i64.load
    i64.store8 offset=31)
  (func $secp256k1_fe_cmp_var (type 4) (param i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.load offset=32
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=24
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=16
        local.tee 2
        i64.const 21319971
        i64.gt_u
        br_if 0 (;@2;)
        i32.const -1
        local.set 1
        local.get 2
        i64.const 21319971
        i64.ne
        br_if 1 (;@1;)
        local.get 0
        i64.load offset=8
        local.tee 2
        i64.const 445351433356290
        i64.gt_u
        br_if 0 (;@2;)
        local.get 2
        i64.const 445351433356290
        i64.ne
        br_if 1 (;@1;)
        i32.const 1
        local.set 1
        local.get 0
        i64.load
        local.tee 2
        i64.const 3836686497331950
        i64.gt_u
        br_if 1 (;@1;)
        i32.const -1
        i32.const 0
        local.get 2
        i64.const 3836686497331950
        i64.ne
        select
        return
      end
      i32.const 1
      local.set 1
    end
    local.get 1)
  (func $secp256k1_fe_add (type 0) (param i32 i32)
    local.get 0
    local.get 0
    i64.load
    local.get 1
    i64.load
    i64.add
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    local.get 1
    i64.load offset=8
    i64.add
    i64.store offset=8
    local.get 0
    local.get 0
    i64.load offset=16
    local.get 1
    i64.load offset=16
    i64.add
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=24
    local.get 1
    i64.load offset=24
    i64.add
    i64.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32
    local.get 1
    i64.load offset=32
    i64.add
    i64.store offset=32)
  (func $secp256k1_scalar_mul (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    local.get 2
    call $secp256k1_scalar_mul_512
    local.get 0
    local.get 3
    call $secp256k1_scalar_reduce_512
    local.get 3
    i32.const -64
    i32.sub
    global.set 0)
  (func $secp256k1_scalar_negate (type 0) (param i32 i32)
    (local i64 i64 i64 i64 i64)
    local.get 0
    local.get 1
    i64.load
    i64.const -1
    i64.xor
    local.tee 2
    i64.const -4624529908474429118
    i64.add
    local.tee 3
    i64.const 0
    i64.const -1
    local.get 1
    i64.load offset=24
    local.get 1
    i64.load offset=16
    local.get 1
    i64.load offset=8
    local.get 1
    i64.load
    i64.or
    i64.or
    i64.or
    i64.eqz
    select
    local.tee 4
    i64.and
    i64.store
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const -1
    i64.xor
    local.tee 5
    local.get 3
    local.get 2
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 2
    i64.const -4994812053365940165
    i64.add
    local.tee 3
    local.get 4
    i64.and
    i64.store offset=8
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const -1
    i64.xor
    local.tee 6
    local.get 2
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 2
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 2
    i64.const -2
    i64.add
    local.tee 3
    local.get 4
    i64.and
    i64.store offset=16
    local.get 0
    local.get 2
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 2
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 1
    i64.load offset=24
    i64.const -1
    i64.xor
    i64.add
    i64.const -1
    i64.add
    local.get 4
    i64.and
    i64.store offset=24)
  (func $secp256k1_ecmult (type 9) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 3104
    i32.sub
    local.tee 5
    global.set 0
    local.get 5
    local.get 5
    i32.const 16
    i32.add
    i32.store offset=12
    local.get 5
    local.get 5
    i32.const 1056
    i32.add
    i32.store offset=8
    local.get 5
    local.get 5
    i32.const 1760
    i32.add
    i32.store offset=4
    local.get 5
    local.get 5
    i32.const 2080
    i32.add
    i32.store
    local.get 0
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $secp256k1_ecmult_strauss_wnaf
    local.get 5
    i32.const 3104
    i32.add
    global.set 0)
  (func $secp256k1_ge_set_gej_var (type 0) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    local.get 1
    i32.load offset=120
    local.tee 3
    i32.store offset=80
    local.get 3
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.const 80
      i32.add
      local.tee 3
      local.get 3
      call $secp256k1_fe_inv_var
      local.get 2
      i32.const 40
      i32.add
      local.get 3
      call $secp256k1_fe_sqr
      local.get 2
      local.get 3
      local.get 2
      i32.const 40
      i32.add
      call $secp256k1_fe_mul
      local.get 1
      local.get 1
      local.get 2
      i32.const 40
      i32.add
      call $secp256k1_fe_mul
      local.get 1
      i32.const 40
      i32.add
      local.tee 4
      local.get 4
      local.get 2
      call $secp256k1_fe_mul
      local.get 3
      i32.const 1
      call $secp256k1_fe_set_int
      local.get 0
      i32.const 32
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 24
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 0
      local.get 1
      i64.load
      i64.store
      local.get 0
      local.get 1
      i64.load offset=40
      i64.store offset=40
      local.get 0
      i32.const 48
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 56
      i32.add
      local.get 1
      i32.const 56
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const -64
      i32.sub
      local.get 1
      i32.const -64
      i32.sub
      i64.load
      i64.store
      local.get 0
      i32.const 72
      i32.add
      local.get 1
      i32.const 72
      i32.add
      i64.load
      i64.store
    end
    local.get 2
    i32.const 80
    i32.add
    global.set 0)
  (func $_main (type 10)
    (local i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      call $eth2_blockDataSize
      i32.const 128
      i32.ne
      br_if 0 (;@1;)
      i32.const 1744
      i32.const 0
      i32.const 128
      call $eth2_blockDataCopy
      i32.const 1807
      i32.load8_u
      i32.const -27
      i32.add
      local.tee 2
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1744
      i32.const 0
      i32.const 128
      call $eth2_blockDataCopy
      call $secp256k1_context_create
      local.tee 1
      local.get 0
      i32.const 72
      i32.add
      local.get 2
      call $secp256k1_ecdsa_recoverable_signature_parse_compact
      local.get 1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 72
      i32.add
      call $secp256k1_ecdsa_recover
      local.get 0
      i32.const 65
      i32.store offset=4
      local.get 1
      local.get 0
      i32.const 4
      i32.add
      local.get 0
      i32.const 8
      i32.add
      call $secp256k1_ec_pubkey_serialize
      i32.const 1872
      call $eth2_savePostStateRoot
    end
    local.get 0
    i32.const 144
    i32.add
    global.set 0)
  (func $default_error_callback_fn (type 0) (param i32 i32)
    nop)
  (func $secp256k1_fe_set_int (type 0) (param i32 i32)
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    i64.extend_i32_s
    i64.store
    local.get 0
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 0
    i32.const 32
    i32.add
    i64.const 0
    i64.store)
  (func $secp256k1_ge_set_xquad (type 6) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.const 32
    i32.add
    local.get 1
    i32.const 32
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 1
    i64.load
    i64.store
    local.get 2
    i32.const 88
    i32.add
    local.get 1
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 48
    i32.add
    local.get 1
    local.get 2
    i32.const 88
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 0
    i32.store offset=80
    local.get 2
    i32.const 8
    i32.add
    i32.const 7
    call $secp256k1_fe_set_int
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 48
    i32.add
    call $secp256k1_fe_add
    local.get 0
    i32.const 40
    i32.add
    local.get 2
    i32.const 8
    i32.add
    call $secp256k1_fe_sqrt
    local.get 2
    i32.const 128
    i32.add
    global.set 0)
  (func $secp256k1_fe_negate (type 2) (param i32 i32 i32)
    (local i64 i64)
    local.get 0
    local.get 2
    i32.const 1
    i32.add
    i64.extend_i32_s
    local.tee 3
    i64.const 9007190664804446
    i64.mul
    local.get 1
    i64.load
    i64.sub
    i64.store
    local.get 0
    local.get 3
    i64.const 9007199254740990
    i64.mul
    local.tee 4
    local.get 1
    i64.load offset=8
    i64.sub
    i64.store offset=8
    local.get 0
    local.get 4
    local.get 1
    i64.load offset=16
    i64.sub
    i64.store offset=16
    local.get 0
    local.get 4
    local.get 1
    i64.load offset=24
    i64.sub
    i64.store offset=24
    local.get 0
    local.get 3
    i64.const 562949953421310
    i64.mul
    local.get 1
    i64.load offset=32
    i64.sub
    i64.store offset=32)
  (func $secp256k1_fe_sqr (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $secp256k1_fe_sqr_inner)
  (func $secp256k1_fe_normalize_weak (type 3) (param i32)
    (local i64 i64)
    local.get 0
    local.get 0
    i64.load
    local.get 0
    i64.load offset=32
    local.tee 2
    i64.const 48
    i64.shr_u
    i64.const 4294968273
    i64.mul
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    local.get 1
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store offset=8
    local.get 0
    local.get 0
    i64.load offset=16
    local.get 1
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=24
    local.get 1
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store offset=24
    local.get 0
    local.get 2
    i64.const 281474976710655
    i64.and
    local.get 1
    i64.const 52
    i64.shr_u
    i64.add
    i64.store offset=32)
  (func $secp256k1_fe_mul (type 2) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $secp256k1_fe_mul_inner)
  (func $secp256k1_fe_normalizes_to_zero_var (type 4) (param i32) (result i32)
    (local i64 i64 i64 i64 i64)
    local.get 0
    i64.load
    local.get 0
    i64.load offset=32
    local.tee 3
    i64.const 48
    i64.shr_u
    i64.const 4294968273
    i64.mul
    i64.add
    local.tee 2
    i64.const 4503599627370495
    i64.and
    local.tee 1
    i64.const 4294968272
    i64.xor
    local.set 4
    block (result i32)  ;; label = @1
      local.get 1
      i64.eqz
      i32.eqz
      if  ;; label = @2
        i32.const 0
        local.get 4
        i64.const 4503599627370495
        i64.ne
        br_if 1 (;@1;)
        drop
      end
      local.get 1
      local.get 0
      i64.load offset=8
      local.get 2
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 1
      i64.const 4503599627370495
      i64.and
      i64.or
      local.get 0
      i64.load offset=16
      local.get 1
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 2
      i64.const 4503599627370495
      i64.and
      i64.or
      local.get 0
      i64.load offset=24
      local.get 2
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 5
      i64.const 4503599627370495
      i64.and
      i64.or
      local.get 3
      i64.const 281474976710655
      i64.and
      local.get 5
      i64.const 52
      i64.shr_u
      i64.add
      local.tee 3
      i64.or
      i64.eqz
      if (result i32)  ;; label = @2
        i32.const 1
      else
        local.get 1
        local.get 4
        i64.and
        local.get 2
        i64.and
        local.get 5
        i64.and
        local.get 3
        i64.const 4222124650659840
        i64.xor
        i64.and
        i64.const 4503599627370495
        i64.eq
      end
    end)
  (func $secp256k1_fe_mul_int (type 0) (param i32 i32)
    (local i64)
    local.get 0
    local.get 1
    i64.extend_i32_s
    local.tee 2
    local.get 0
    i64.load
    i64.mul
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    local.get 2
    i64.mul
    i64.store offset=8
    local.get 0
    local.get 0
    i64.load offset=16
    local.get 2
    i64.mul
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=24
    local.get 2
    i64.mul
    i64.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32
    local.get 2
    i64.mul
    i64.store offset=32)
  (func $secp256k1_fe_inv_var (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call $secp256k1_fe_inv)
  (func $secp256k1_ge_set_gej_zinv (type 2) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 40
    i32.add
    local.get 2
    call $secp256k1_fe_sqr
    local.get 3
    local.get 3
    i32.const 40
    i32.add
    local.get 2
    call $secp256k1_fe_mul
    local.get 0
    local.get 1
    local.get 3
    i32.const 40
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 40
    i32.add
    local.get 1
    i32.const 40
    i32.add
    local.get 3
    call $secp256k1_fe_mul
    local.get 0
    local.get 1
    i32.load offset=120
    i32.store offset=80
    local.get 3
    i32.const 80
    i32.add
    global.set 0)
  (func $secp256k1_fe_normalize (type 3) (param i32)
    (local i64 i64 i64 i64 i64)
    local.get 0
    local.get 0
    i64.load offset=24
    local.get 0
    i64.load offset=16
    local.get 0
    i64.load offset=8
    local.get 0
    i64.load
    local.get 0
    i64.load offset=32
    local.tee 3
    i64.const 48
    i64.shr_u
    i64.const 4294968273
    i64.mul
    i64.add
    local.tee 2
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 4
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 5
    i64.const 52
    i64.shr_u
    local.get 3
    i64.const 281474976710655
    i64.and
    i64.add
    local.tee 3
    i64.const 48
    i64.shr_u
    local.get 4
    i64.const 4503599627370495
    i64.and
    local.tee 4
    local.get 1
    i64.and
    local.get 5
    i64.and
    i64.const 4503599627370495
    i64.eq
    local.get 3
    i64.const 281474976710655
    i64.eq
    i32.and
    local.get 2
    i64.const 4503599627370495
    i64.and
    local.tee 2
    i64.const 4503595332402222
    i64.gt_u
    i32.and
    i64.extend_i32_u
    i64.or
    i64.const 4294968273
    i64.mul
    local.get 2
    i64.add
    local.tee 2
    i64.const 4503599627370495
    i64.and
    i64.store
    local.get 0
    local.get 1
    i64.const 4503599627370495
    i64.and
    local.get 2
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store offset=8
    local.get 0
    local.get 1
    i64.const 52
    i64.shr_u
    local.get 4
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store offset=16
    local.get 0
    local.get 5
    i64.const 4503599627370495
    i64.and
    local.get 1
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4503599627370495
    i64.and
    i64.store offset=24
    local.get 0
    local.get 1
    i64.const 52
    i64.shr_u
    local.get 3
    i64.add
    i64.const 281474976710655
    i64.and
    i64.store offset=32)
  (func $secp256k1_fe_to_storage (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load
    local.get 1
    i64.load offset=8
    i64.const 52
    i64.shl
    i64.or
    i64.store
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 40
    i64.shl
    local.get 1
    i64.load offset=8
    i64.const 12
    i64.shr_u
    i64.or
    i64.store offset=8
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 28
    i64.shl
    local.get 1
    i64.load offset=16
    i64.const 24
    i64.shr_u
    i64.or
    i64.store offset=16
    local.get 0
    local.get 1
    i64.load offset=32
    i64.const 16
    i64.shl
    local.get 1
    i64.load offset=24
    i64.const 36
    i64.shr_u
    i64.or
    i64.store offset=24)
  (func $secp256k1_fe_clear (type 3) (param i32)
    local.get 0
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
    i64.store)
  (func $secp256k1_fe_sqrt (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 480
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 440
    i32.add
    local.get 1
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 440
    i32.add
    local.get 2
    i32.const 440
    i32.add
    local.get 1
    call $secp256k1_fe_mul
    local.get 2
    i32.const 400
    i32.add
    local.get 2
    i32.const 440
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 400
    i32.add
    local.get 2
    i32.const 400
    i32.add
    local.get 1
    call $secp256k1_fe_mul
    local.get 2
    i32.const 392
    i32.add
    local.tee 3
    local.get 2
    i32.const 432
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 384
    i32.add
    local.tee 4
    local.get 2
    i32.const 424
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 376
    i32.add
    local.tee 5
    local.get 2
    i32.const 416
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 368
    i32.add
    local.tee 6
    local.get 2
    i32.const 408
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=400
    i64.store offset=360
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 400
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 352
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 344
    i32.add
    local.tee 3
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 336
    i32.add
    local.tee 4
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 328
    i32.add
    local.tee 5
    local.get 6
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=360
    i64.store offset=320
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 400
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 312
    i32.add
    local.tee 6
    local.get 7
    i64.load
    i64.store
    local.get 2
    i32.const 304
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 296
    i32.add
    local.tee 3
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 288
    i32.add
    local.tee 4
    local.get 5
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=320
    i64.store offset=280
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 280
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 280
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 440
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 272
    i32.add
    local.tee 5
    local.get 6
    i64.load
    i64.store
    local.get 2
    i32.const 264
    i32.add
    local.tee 6
    local.get 7
    i64.load
    i64.store
    local.get 2
    i32.const 256
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 248
    i32.add
    local.tee 3
    local.get 4
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=280
    i64.store offset=240
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 280
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 232
    i32.add
    local.tee 4
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 224
    i32.add
    local.tee 5
    local.get 6
    i64.load
    i64.store
    local.get 2
    i32.const 216
    i32.add
    local.tee 6
    local.get 7
    i64.load
    i64.store
    local.get 2
    i32.const 208
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=240
    i64.store offset=200
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 192
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 184
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 176
    i32.add
    local.get 6
    i64.load
    i64.store
    local.get 2
    i32.const 168
    i32.add
    local.get 7
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=200
    i64.store offset=160
    i32.const 44
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 160
      i32.add
      local.get 2
      i32.const 160
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 152
    i32.add
    local.get 2
    i32.const 192
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 144
    i32.add
    local.get 2
    i32.const 184
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 136
    i32.add
    local.get 2
    i32.const 176
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 128
    i32.add
    local.get 2
    i32.const 168
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=160
    i64.store offset=120
    i32.const 88
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 120
      i32.add
      local.get 2
      i32.const 120
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 120
    i32.add
    local.get 2
    i32.const 120
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 112
    i32.add
    local.get 2
    i32.const 152
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 104
    i32.add
    local.get 2
    i32.const 144
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 96
    i32.add
    local.get 2
    i32.const 136
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 128
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=120
    i64.store offset=80
    i32.const 44
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 80
      i32.add
      local.get 2
      i32.const 80
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 80
    i32.add
    local.get 2
    i32.const 80
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 72
    i32.add
    local.tee 3
    local.get 2
    i32.const 112
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const -64
    i32.sub
    local.tee 4
    local.get 2
    i32.const 104
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 56
    i32.add
    local.tee 5
    local.get 2
    i32.const 96
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 48
    i32.add
    local.tee 6
    local.get 2
    i32.const 88
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=80
    i64.store offset=40
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 400
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 32
    i32.add
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 24
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 6
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=40
    i64.store
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    local.get 2
    i32.const 440
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 0
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 0
    call $secp256k1_fe_sqr
    local.get 2
    local.get 1
    call $secp256k1_fe_equal
    local.get 2
    i32.const 480
    i32.add
    global.set 0)
  (func $secp256k1_fe_sqr_inner (type 0) (param i32 i32)
    (local i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 336
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 224
    i32.add
    local.get 1
    i64.load offset=32
    local.tee 4
    i64.const 0
    local.get 4
    call $__multi3
    local.get 2
    i32.const 192
    i32.add
    local.get 2
    i32.const 232
    i32.add
    i64.load
    local.tee 3
    i64.const 12
    i64.shl
    local.get 2
    i64.load offset=224
    local.tee 6
    i64.const 52
    i64.shr_u
    i64.or
    local.get 3
    i64.const 52
    i64.shr_u
    i64.const 68719492368
    call $__multi3
    local.get 2
    i32.const 272
    i32.add
    local.get 1
    i64.load offset=8
    local.tee 7
    i64.const 1
    i64.shl
    local.tee 10
    i64.const 0
    local.get 1
    i64.load offset=16
    local.tee 3
    call $__multi3
    local.get 2
    i32.const -64
    i32.sub
    local.get 1
    i64.load offset=24
    local.tee 5
    i64.const 0
    local.get 1
    i64.load
    local.tee 8
    i64.const 1
    i64.shl
    local.tee 11
    call $__multi3
    local.get 2
    i32.const 208
    i32.add
    local.get 6
    i64.const 4503599627370495
    i64.and
    i64.const 0
    i64.const 68719492368
    call $__multi3
    local.get 2
    i32.const 80
    i32.add
    local.get 5
    i64.const 0
    local.get 10
    call $__multi3
    local.get 2
    i32.const 176
    i32.add
    local.get 4
    i64.const 1
    i64.shl
    local.tee 4
    i64.const 0
    local.get 8
    call $__multi3
    local.get 2
    i32.const 96
    i32.add
    local.get 3
    i64.const 1
    i64.shl
    i64.const 0
    local.get 5
    call $__multi3
    local.get 2
    i32.const 160
    i32.add
    local.get 4
    i64.const 0
    local.get 7
    call $__multi3
    local.get 2
    i32.const 144
    i32.add
    local.get 4
    i64.const 0
    local.get 3
    call $__multi3
    local.get 2
    i32.const 128
    i32.add
    local.get 4
    i64.const 0
    local.get 5
    call $__multi3
    local.get 2
    i32.const 256
    i32.add
    local.get 3
    i64.const 0
    local.get 3
    call $__multi3
    local.get 2
    i32.const 112
    i32.add
    local.get 5
    i64.const 0
    local.get 5
    call $__multi3
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i64.load offset=144
    local.tee 15
    local.get 2
    i64.load offset=112
    i64.add
    local.tee 4
    local.get 2
    i64.load offset=160
    local.tee 16
    local.get 2
    i64.load offset=96
    i64.add
    local.tee 6
    local.get 2
    i64.load offset=80
    local.tee 17
    local.get 2
    i64.load offset=256
    i64.add
    local.tee 10
    local.get 2
    i64.load offset=176
    i64.add
    local.tee 9
    local.get 2
    i64.load offset=192
    i64.add
    local.tee 12
    local.get 2
    i64.load offset=64
    local.tee 13
    local.get 2
    i64.load offset=272
    i64.add
    local.tee 5
    local.get 2
    i64.load offset=208
    i64.add
    local.tee 14
    i64.const 52
    i64.shr_u
    local.get 14
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 216
    i32.add
    i64.load
    local.get 5
    local.get 13
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 72
    i32.add
    i64.load
    local.get 2
    i32.const 280
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    local.tee 13
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 5
    i64.const 52
    i64.shr_u
    local.get 5
    local.get 12
    i64.lt_u
    i64.extend_i32_u
    local.get 12
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 200
    i32.add
    i64.load
    local.get 9
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 184
    i32.add
    i64.load
    local.get 10
    local.get 17
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 88
    i32.add
    i64.load
    local.get 2
    i32.const 264
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 13
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 9
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 10
    i64.const 52
    i64.shr_u
    local.get 10
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    local.get 6
    local.get 16
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 168
    i32.add
    i64.load
    local.get 2
    i32.const 104
    i32.add
    i64.load
    i64.add
    i64.add
    local.get 9
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 9
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 6
    i64.const 52
    i64.shr_u
    local.get 6
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 15
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 152
    i32.add
    i64.load
    local.get 2
    i32.const 120
    i32.add
    i64.load
    i64.add
    i64.add
    local.get 9
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 9
    i64.const 12
    i64.shl
    i64.or
    local.tee 12
    local.get 2
    i64.load offset=128
    i64.add
    local.tee 4
    i64.const 52
    i64.shr_u
    local.get 4
    local.get 12
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 136
    i32.add
    i64.load
    local.get 9
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 9
    i64.const 12
    i64.shl
    i64.or
    local.get 9
    i64.const 52
    i64.shr_u
    i64.const 68719492368
    call $__multi3
    local.get 2
    local.get 10
    i64.const 4
    i64.shl
    i64.const 72057594037927920
    i64.and
    local.get 5
    i64.const 48
    i64.shr_u
    i64.const 15
    i64.and
    i64.or
    i64.const 0
    i64.const 4294968273
    call $__multi3
    local.get 2
    i32.const 304
    i32.add
    local.get 11
    i64.const 0
    local.get 7
    call $__multi3
    local.get 2
    i32.const 48
    i32.add
    local.get 6
    i64.const 4503599627370495
    i64.and
    i64.const 0
    i64.const 68719492368
    call $__multi3
    local.get 2
    i32.const 240
    i32.add
    local.get 3
    i64.const 0
    local.get 11
    call $__multi3
    local.get 2
    i32.const 32
    i32.add
    local.get 4
    i64.const 4503599627370495
    i64.and
    i64.const 0
    i64.const 68719492368
    call $__multi3
    local.get 2
    i32.const 320
    i32.add
    local.get 8
    i64.const 0
    local.get 8
    call $__multi3
    local.get 2
    i32.const 288
    i32.add
    local.get 7
    i64.const 0
    local.get 7
    call $__multi3
    local.get 0
    local.get 2
    i64.load
    local.tee 8
    local.get 2
    i64.load offset=320
    i64.add
    local.tee 3
    i64.const 4503599627370495
    i64.and
    i64.store
    local.get 0
    local.get 2
    i64.load offset=48
    local.tee 11
    local.get 2
    i64.load offset=304
    i64.add
    local.tee 7
    local.get 3
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 8
    i32.add
    i64.load
    local.get 2
    i32.const 328
    i32.add
    i64.load
    i64.add
    i64.add
    local.tee 6
    i64.const 12
    i64.shl
    local.get 3
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    local.tee 3
    i64.const 4503599627370495
    i64.and
    i64.store offset=8
    local.get 0
    local.get 2
    i64.load offset=240
    local.tee 10
    local.get 2
    i64.load offset=288
    i64.add
    local.tee 8
    local.get 2
    i64.load offset=32
    i64.add
    local.tee 4
    local.get 3
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    local.get 7
    local.get 11
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 56
    i32.add
    i64.load
    local.get 2
    i32.const 312
    i32.add
    i64.load
    i64.add
    i64.add
    local.get 6
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 11
    i64.const 12
    i64.shl
    local.get 3
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    local.tee 3
    i64.const 4503599627370495
    i64.and
    i64.store offset=16
    local.get 0
    local.get 2
    i64.load offset=16
    local.tee 6
    local.get 14
    i64.const 4503599627370494
    i64.and
    i64.add
    local.tee 7
    local.get 3
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 40
    i32.add
    i64.load
    local.get 8
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 248
    i32.add
    i64.load
    local.get 2
    i32.const 296
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 11
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 8
    i64.const 12
    i64.shl
    local.get 3
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    local.tee 3
    i64.const 4503599627370495
    i64.and
    i64.store offset=24
    local.get 0
    local.get 5
    i64.const 281474976710655
    i64.and
    local.get 3
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 24
    i32.add
    i64.load
    local.get 7
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 8
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    i64.const 12
    i64.shl
    local.get 3
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    i64.store offset=32
    local.get 2
    i32.const 336
    i32.add
    global.set 0)
  (func $secp256k1_fe_mul_inner (type 2) (param i32 i32 i32)
    (local i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 496
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 480
    i32.add
    local.get 2
    i64.load offset=32
    local.tee 6
    i64.const 0
    local.get 1
    i64.load offset=32
    local.tee 4
    call $__multi3
    local.get 3
    i32.const 448
    i32.add
    local.get 3
    i32.const 488
    i32.add
    i64.load
    local.tee 5
    i64.const 12
    i64.shl
    local.get 3
    i64.load offset=480
    local.tee 11
    i64.const 52
    i64.shr_u
    i64.or
    local.get 5
    i64.const 52
    i64.shr_u
    i64.const 68719492368
    call $__multi3
    local.get 3
    i32.const -64
    i32.sub
    local.get 2
    i64.load offset=24
    local.tee 5
    i64.const 0
    local.get 1
    i64.load
    local.tee 7
    call $__multi3
    local.get 3
    i32.const 208
    i32.add
    local.get 2
    i64.load offset=16
    local.tee 9
    i64.const 0
    local.get 1
    i64.load offset=8
    local.tee 12
    call $__multi3
    local.get 3
    i32.const 320
    i32.add
    local.get 2
    i64.load offset=8
    local.tee 13
    i64.const 0
    local.get 1
    i64.load offset=16
    local.tee 10
    call $__multi3
    local.get 3
    i32.const 400
    i32.add
    local.get 2
    i64.load
    local.tee 14
    i64.const 0
    local.get 1
    i64.load offset=24
    local.tee 8
    call $__multi3
    local.get 3
    i32.const 464
    i32.add
    local.get 11
    i64.const 4503599627370495
    i64.and
    i64.const 0
    i64.const 68719492368
    call $__multi3
    local.get 3
    i32.const 144
    i32.add
    local.get 5
    i64.const 0
    local.get 12
    call $__multi3
    local.get 3
    i32.const 272
    i32.add
    local.get 9
    i64.const 0
    local.get 10
    call $__multi3
    local.get 3
    i32.const 368
    i32.add
    local.get 13
    i64.const 0
    local.get 8
    call $__multi3
    local.get 3
    i32.const 432
    i32.add
    local.get 14
    i64.const 0
    local.get 4
    call $__multi3
    local.get 3
    i32.const 80
    i32.add
    local.get 6
    i64.const 0
    local.get 7
    call $__multi3
    local.get 3
    i32.const 160
    i32.add
    local.get 5
    i64.const 0
    local.get 10
    call $__multi3
    local.get 3
    i32.const 288
    i32.add
    local.get 9
    i64.const 0
    local.get 8
    call $__multi3
    local.get 3
    i32.const 384
    i32.add
    local.get 13
    i64.const 0
    local.get 4
    call $__multi3
    local.get 3
    i32.const 224
    i32.add
    local.get 6
    i64.const 0
    local.get 12
    call $__multi3
    local.get 3
    i32.const 176
    i32.add
    local.get 5
    i64.const 0
    local.get 8
    call $__multi3
    local.get 3
    i32.const 304
    i32.add
    local.get 9
    i64.const 0
    local.get 4
    call $__multi3
    local.get 3
    i32.const 336
    i32.add
    local.get 6
    i64.const 0
    local.get 10
    call $__multi3
    local.get 3
    i32.const 192
    i32.add
    local.get 5
    i64.const 0
    local.get 4
    call $__multi3
    local.get 3
    i32.const 416
    i32.add
    local.get 6
    i64.const 0
    local.get 8
    call $__multi3
    local.get 3
    i32.const 16
    i32.add
    local.get 3
    i64.load offset=416
    local.tee 25
    local.get 3
    i64.load offset=192
    i64.add
    local.tee 4
    local.get 3
    i64.load offset=304
    local.tee 26
    local.get 3
    i64.load offset=176
    i64.add
    local.tee 5
    local.get 3
    i64.load offset=336
    i64.add
    local.tee 8
    local.get 3
    i64.load offset=288
    local.tee 27
    local.get 3
    i64.load offset=160
    i64.add
    local.tee 11
    local.get 3
    i64.load offset=384
    i64.add
    local.tee 16
    local.get 3
    i64.load offset=224
    i64.add
    local.tee 19
    local.get 3
    i64.load offset=272
    local.tee 28
    local.get 3
    i64.load offset=144
    i64.add
    local.tee 15
    local.get 3
    i64.load offset=368
    i64.add
    local.tee 17
    local.get 3
    i64.load offset=432
    i64.add
    local.tee 20
    local.get 3
    i64.load offset=80
    i64.add
    local.tee 21
    local.get 3
    i64.load offset=448
    i64.add
    local.tee 22
    local.get 3
    i64.load offset=208
    local.tee 29
    local.get 3
    i64.load offset=64
    i64.add
    local.tee 6
    local.get 3
    i64.load offset=320
    i64.add
    local.tee 18
    local.get 3
    i64.load offset=400
    i64.add
    local.tee 23
    local.get 3
    i64.load offset=464
    i64.add
    local.tee 24
    i64.const 52
    i64.shr_u
    local.get 24
    local.get 23
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 472
    i32.add
    i64.load
    local.get 23
    local.get 18
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 408
    i32.add
    i64.load
    local.get 18
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 328
    i32.add
    i64.load
    local.get 6
    local.get 29
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 216
    i32.add
    i64.load
    local.get 3
    i32.const 72
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    local.tee 18
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 6
    i64.const 52
    i64.shr_u
    local.get 6
    local.get 22
    i64.lt_u
    i64.extend_i32_u
    local.get 22
    local.get 21
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 456
    i32.add
    i64.load
    local.get 21
    local.get 20
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 88
    i32.add
    i64.load
    local.get 20
    local.get 17
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 440
    i32.add
    i64.load
    local.get 17
    local.get 15
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 376
    i32.add
    i64.load
    local.get 15
    local.get 28
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 280
    i32.add
    i64.load
    local.get 3
    i32.const 152
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 18
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 17
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 15
    i64.const 52
    i64.shr_u
    local.get 15
    local.get 19
    i64.lt_u
    i64.extend_i32_u
    local.get 19
    local.get 16
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 232
    i32.add
    i64.load
    local.get 16
    local.get 11
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 392
    i32.add
    i64.load
    local.get 11
    local.get 27
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 296
    i32.add
    i64.load
    local.get 3
    i32.const 168
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 17
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 16
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 11
    i64.const 52
    i64.shr_u
    local.get 11
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 8
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 344
    i32.add
    i64.load
    local.get 5
    local.get 26
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 312
    i32.add
    i64.load
    local.get 3
    i32.const 184
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 16
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 8
    i64.const 12
    i64.shl
    i64.or
    i64.add
    local.tee 5
    i64.const 52
    i64.shr_u
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 25
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 424
    i32.add
    i64.load
    local.get 3
    i32.const 200
    i32.add
    i64.load
    i64.add
    i64.add
    local.get 8
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 4
    i64.const 12
    i64.shl
    i64.or
    local.get 4
    i64.const 52
    i64.shr_u
    i64.const 68719492368
    call $__multi3
    local.get 3
    i32.const 96
    i32.add
    local.get 14
    i64.const 0
    local.get 7
    call $__multi3
    local.get 3
    local.get 15
    i64.const 4
    i64.shl
    i64.const 72057594037927920
    i64.and
    local.get 6
    i64.const 48
    i64.shr_u
    i64.const 15
    i64.and
    i64.or
    i64.const 0
    i64.const 4294968273
    call $__multi3
    local.get 3
    i32.const 112
    i32.add
    local.get 13
    i64.const 0
    local.get 7
    call $__multi3
    local.get 3
    i32.const 240
    i32.add
    local.get 14
    i64.const 0
    local.get 12
    call $__multi3
    local.get 3
    i32.const 48
    i32.add
    local.get 11
    i64.const 4503599627370495
    i64.and
    i64.const 0
    i64.const 68719492368
    call $__multi3
    local.get 3
    i32.const 128
    i32.add
    local.get 9
    i64.const 0
    local.get 7
    call $__multi3
    local.get 3
    i32.const 256
    i32.add
    local.get 13
    i64.const 0
    local.get 12
    call $__multi3
    local.get 3
    i32.const 352
    i32.add
    local.get 14
    i64.const 0
    local.get 10
    call $__multi3
    local.get 3
    i32.const 32
    i32.add
    local.get 5
    i64.const 4503599627370495
    i64.and
    i64.const 0
    i64.const 68719492368
    call $__multi3
    local.get 0
    local.get 3
    i64.load
    local.tee 9
    local.get 3
    i64.load offset=96
    i64.add
    local.tee 4
    i64.const 4503599627370495
    i64.and
    i64.store
    local.get 0
    local.get 3
    i64.load offset=240
    local.tee 10
    local.get 3
    i64.load offset=112
    i64.add
    local.tee 5
    local.get 3
    i64.load offset=48
    i64.add
    local.tee 7
    local.get 4
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 8
    i32.add
    i64.load
    local.get 3
    i32.const 104
    i32.add
    i64.load
    i64.add
    i64.add
    local.tee 14
    i64.const 12
    i64.shl
    local.get 4
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    local.tee 4
    i64.const 4503599627370495
    i64.and
    i64.store offset=8
    local.get 0
    local.get 3
    i64.load offset=256
    local.tee 8
    local.get 3
    i64.load offset=128
    i64.add
    local.tee 9
    local.get 3
    i64.load offset=352
    i64.add
    local.tee 12
    local.get 3
    i64.load offset=32
    i64.add
    local.tee 13
    local.get 4
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    local.get 7
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 56
    i32.add
    i64.load
    local.get 5
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 248
    i32.add
    i64.load
    local.get 3
    i32.const 120
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 14
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 7
    i64.const 12
    i64.shl
    local.get 4
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    local.tee 4
    i64.const 4503599627370495
    i64.and
    i64.store offset=16
    local.get 0
    local.get 3
    i64.load offset=16
    local.tee 10
    local.get 24
    i64.const 4503599627370495
    i64.and
    i64.add
    local.tee 5
    local.get 4
    local.get 13
    i64.lt_u
    i64.extend_i32_u
    local.get 13
    local.get 12
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 40
    i32.add
    i64.load
    local.get 12
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 360
    i32.add
    i64.load
    local.get 9
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 264
    i32.add
    i64.load
    local.get 3
    i32.const 136
    i32.add
    i64.load
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    local.get 7
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    local.tee 7
    i64.const 12
    i64.shl
    local.get 4
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    local.tee 4
    i64.const 4503599627370495
    i64.and
    i64.store offset=24
    local.get 0
    local.get 6
    i64.const 281474976710655
    i64.and
    local.get 4
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 24
    i32.add
    i64.load
    local.get 5
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 7
    i64.const 52
    i64.shr_u
    i64.add
    i64.add
    i64.const 12
    i64.shl
    local.get 4
    i64.const 52
    i64.shr_u
    i64.or
    i64.add
    i64.store offset=32
    local.get 3
    i32.const 496
    i32.add
    global.set 0)
  (func $secp256k1_fe_equal (type 6) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.const 1
    call $secp256k1_fe_negate
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call $secp256k1_fe_add
    local.get 2
    i32.const 8
    i32.add
    call $secp256k1_fe_normalizes_to_zero
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func $secp256k1_fe_normalizes_to_zero (type 4) (param i32) (result i32)
    (local i64 i64 i64 i64 i64)
    local.get 0
    i64.load offset=8
    local.get 0
    i64.load
    local.get 0
    i64.load offset=32
    local.tee 1
    i64.const 48
    i64.shr_u
    i64.const 4294968273
    i64.mul
    i64.add
    local.tee 2
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 3
    local.get 2
    i64.or
    local.get 0
    i64.load offset=16
    local.get 3
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 4
    i64.or
    local.get 0
    i64.load offset=24
    local.get 4
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 5
    i64.or
    i64.const 4503599627370495
    i64.and
    local.get 1
    i64.const 281474976710655
    i64.and
    local.get 5
    i64.const 52
    i64.shr_u
    i64.add
    local.tee 1
    i64.or
    i64.eqz
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 3
      local.get 2
      i64.const 4294968272
      i64.xor
      i64.and
      local.get 4
      i64.and
      local.get 5
      i64.and
      local.get 1
      i64.const 4222124650659840
      i64.xor
      i64.and
      i64.const 4503599627370495
      i64.eq
    end)
  (func $secp256k1_fe_inv (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 480
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 440
    i32.add
    local.get 1
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 440
    i32.add
    local.get 2
    i32.const 440
    i32.add
    local.get 1
    call $secp256k1_fe_mul
    local.get 2
    i32.const 400
    i32.add
    local.get 2
    i32.const 440
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 400
    i32.add
    local.get 2
    i32.const 400
    i32.add
    local.get 1
    call $secp256k1_fe_mul
    local.get 2
    i32.const 392
    i32.add
    local.tee 3
    local.get 2
    i32.const 432
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 384
    i32.add
    local.tee 4
    local.get 2
    i32.const 424
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 376
    i32.add
    local.tee 5
    local.get 2
    i32.const 416
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 368
    i32.add
    local.tee 6
    local.get 2
    i32.const 408
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=400
    i64.store offset=360
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 360
    i32.add
    local.get 2
    i32.const 400
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 352
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 344
    i32.add
    local.tee 3
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 336
    i32.add
    local.tee 4
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 328
    i32.add
    local.tee 5
    local.get 6
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=360
    i64.store offset=320
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 400
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 312
    i32.add
    local.tee 6
    local.get 7
    i64.load
    i64.store
    local.get 2
    i32.const 304
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 296
    i32.add
    local.tee 3
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 288
    i32.add
    local.tee 4
    local.get 5
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=320
    i64.store offset=280
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 280
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 280
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 280
    i32.add
    local.get 2
    i32.const 440
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 272
    i32.add
    local.tee 5
    local.get 6
    i64.load
    i64.store
    local.get 2
    i32.const 264
    i32.add
    local.tee 6
    local.get 7
    i64.load
    i64.store
    local.get 2
    i32.const 256
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 248
    i32.add
    local.tee 3
    local.get 4
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=280
    i64.store offset=240
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 240
    i32.add
    local.get 2
    i32.const 280
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 232
    i32.add
    local.tee 4
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 224
    i32.add
    local.tee 5
    local.get 6
    i64.load
    i64.store
    local.get 2
    i32.const 216
    i32.add
    local.tee 6
    local.get 7
    i64.load
    i64.store
    local.get 2
    i32.const 208
    i32.add
    local.tee 7
    local.get 3
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=240
    i64.store offset=200
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 200
    i32.add
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 192
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 184
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 176
    i32.add
    local.get 6
    i64.load
    i64.store
    local.get 2
    i32.const 168
    i32.add
    local.get 7
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=200
    i64.store offset=160
    i32.const 44
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 160
      i32.add
      local.get 2
      i32.const 160
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 152
    i32.add
    local.get 2
    i32.const 192
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 144
    i32.add
    local.get 2
    i32.const 184
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 136
    i32.add
    local.get 2
    i32.const 176
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 128
    i32.add
    local.get 2
    i32.const 168
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=160
    i64.store offset=120
    i32.const 88
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 120
      i32.add
      local.get 2
      i32.const 120
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 120
    i32.add
    local.get 2
    i32.const 120
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 112
    i32.add
    local.get 2
    i32.const 152
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 104
    i32.add
    local.get 2
    i32.const 144
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 96
    i32.add
    local.get 2
    i32.const 136
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 88
    i32.add
    local.get 2
    i32.const 128
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=120
    i64.store offset=80
    i32.const 44
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 80
      i32.add
      local.get 2
      i32.const 80
      i32.add
      call $secp256k1_fe_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 80
    i32.add
    local.get 2
    i32.const 80
    i32.add
    local.get 2
    i32.const 200
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 72
    i32.add
    local.tee 3
    local.get 2
    i32.const 112
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const -64
    i32.sub
    local.tee 4
    local.get 2
    i32.const 104
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 56
    i32.add
    local.tee 5
    local.get 2
    i32.const 96
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 48
    i32.add
    local.tee 6
    local.get 2
    i32.const 88
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=80
    i64.store offset=40
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_sqr
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 40
    i32.add
    local.get 2
    i32.const 400
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    i32.const 32
    i32.add
    local.get 3
    i64.load
    i64.store
    local.get 2
    i32.const 24
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 2
    i32.const 8
    i32.add
    local.get 6
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=40
    i64.store
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    local.get 2
    i32.const 240
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    local.get 1
    call $secp256k1_fe_mul
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    local.get 2
    i32.const 440
    i32.add
    call $secp256k1_fe_mul
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 2
    local.get 2
    call $secp256k1_fe_sqr
    local.get 0
    local.get 1
    local.get 2
    call $secp256k1_fe_mul
    local.get 2
    i32.const 480
    i32.add
    global.set 0)
  (func $secp256k1_scalar_get_bits (type 5) (param i32 i32 i32) (result i32)
    i64.const -1
    local.get 2
    i64.extend_i32_u
    i64.shl
    i64.const -1
    i64.xor
    local.get 0
    local.get 1
    i32.const 3
    i32.shr_u
    i32.const 536870904
    i32.and
    i32.add
    i64.load
    local.get 1
    i32.const 63
    i32.and
    i64.extend_i32_u
    i64.shr_u
    i64.and
    i32.wrap_i64)
  (func $secp256k1_fe_from_storage (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i64.load
    i64.const 4503599627370495
    i64.and
    i64.store
    local.get 0
    local.get 1
    i64.load offset=8
    i64.const 12
    i64.shl
    i64.const 4503599627366400
    i64.and
    local.get 1
    i64.load
    i64.const 52
    i64.shr_u
    i64.or
    i64.store offset=8
    local.get 0
    local.get 1
    i64.load offset=16
    i64.const 24
    i64.shl
    i64.const 4503599610593280
    i64.and
    local.get 1
    i64.load offset=8
    i64.const 40
    i64.shr_u
    i64.or
    i64.store offset=16
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 36
    i64.shl
    i64.const 4503530907893760
    i64.and
    local.get 1
    i64.load offset=16
    i64.const 28
    i64.shr_u
    i64.or
    i64.store offset=24
    local.get 0
    local.get 1
    i64.load offset=24
    i64.const 16
    i64.shr_u
    i64.store offset=32)
  (func $secp256k1_scalar_inverse (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 448
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 128
    i32.add
    local.get 1
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 416
    i32.add
    local.get 2
    i32.const 128
    i32.add
    local.get 1
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 96
    i32.add
    local.get 2
    i32.const 128
    i32.add
    local.get 2
    i32.const 416
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 384
    i32.add
    local.get 2
    i32.const 96
    i32.add
    local.get 2
    i32.const 128
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const -64
    i32.sub
    local.get 2
    i32.const 384
    i32.add
    local.get 2
    i32.const 128
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 32
    i32.add
    local.get 2
    i32.const -64
    i32.sub
    local.get 2
    i32.const 128
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    local.get 2
    i32.const 128
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 352
    i32.add
    local.get 2
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 352
    i32.add
    local.get 2
    i32.const 352
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 352
    i32.add
    local.get 2
    i32.const 352
    i32.add
    local.get 2
    i32.const 32
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 352
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 320
    i32.add
    local.get 2
    i32.const 416
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 288
    i32.add
    local.get 2
    i32.const 352
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 256
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 224
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 192
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_sqr
    i32.const 55
    local.set 3
    loop  ;; label = @1
      local.get 2
      i32.const 192
      i32.add
      local.get 2
      i32.const 192
      i32.add
      call $secp256k1_scalar_sqr
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 2
    i32.const 192
    i32.add
    local.get 2
    i32.const 192
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 192
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 96
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 384
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 96
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 32
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 32
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 384
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 384
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 96
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 384
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const -64
    i32.sub
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 96
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 384
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 384
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 320
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const -64
    i32.sub
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 32
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 416
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const -64
    i32.sub
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    local.get 1
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $secp256k1_scalar_sqr
    local.get 0
    local.get 2
    i32.const 160
    i32.add
    local.get 2
    i32.const 352
    i32.add
    call $secp256k1_scalar_mul
    local.get 2
    i32.const 448
    i32.add
    global.set 0)
  (func $secp256k1_scalar_mul_512 (type 2) (param i32 i32 i32)
    (local i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 240
    i32.add
    local.get 2
    i64.load
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 0
    local.get 3
    i64.load offset=240
    i64.store
    local.get 3
    i32.const 208
    i32.add
    local.get 2
    i64.load offset=8
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 3
    i32.const 224
    i32.add
    local.get 2
    i64.load
    i64.const 0
    local.get 1
    i64.load offset=8
    call $__multi3
    local.get 0
    local.get 3
    i64.load offset=208
    local.tee 5
    local.get 3
    i32.const 248
    i32.add
    i64.load
    i64.add
    local.tee 4
    local.get 3
    i64.load offset=224
    i64.add
    local.tee 6
    i64.store offset=8
    local.get 3
    i32.const 160
    i32.add
    local.get 2
    i64.load offset=16
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 3
    i32.const 176
    i32.add
    local.get 2
    i64.load offset=8
    i64.const 0
    local.get 1
    i64.load offset=8
    call $__multi3
    local.get 3
    i32.const 192
    i32.add
    local.get 2
    i64.load
    i64.const 0
    local.get 1
    i64.load offset=16
    call $__multi3
    local.get 0
    local.get 3
    i32.const 216
    i32.add
    i64.load
    local.get 4
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 7
    local.get 3
    i32.const 232
    i32.add
    i64.load
    local.get 6
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 4
    local.get 3
    i64.load offset=160
    i64.add
    local.tee 5
    local.get 3
    i64.load offset=176
    i64.add
    local.tee 6
    local.get 3
    i64.load offset=192
    i64.add
    local.tee 8
    i64.store offset=16
    local.get 3
    i32.const 96
    i32.add
    local.get 2
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 3
    i32.const 112
    i32.add
    local.get 2
    i64.load offset=16
    i64.const 0
    local.get 1
    i64.load offset=8
    call $__multi3
    local.get 3
    i32.const 128
    i32.add
    local.get 2
    i64.load offset=8
    i64.const 0
    local.get 1
    i64.load offset=16
    call $__multi3
    local.get 3
    i32.const 144
    i32.add
    local.get 2
    i64.load
    i64.const 0
    local.get 1
    i64.load offset=24
    call $__multi3
    local.get 0
    local.get 3
    i32.const 168
    i32.add
    i64.load
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 10
    local.get 4
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 4
    local.get 3
    i32.const 184
    i32.add
    i64.load
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 5
    local.get 3
    i32.const 200
    i32.add
    i64.load
    local.get 8
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 6
    local.get 3
    i64.load offset=96
    i64.add
    local.tee 7
    local.get 3
    i64.load offset=112
    i64.add
    local.tee 8
    local.get 3
    i64.load offset=128
    i64.add
    local.tee 9
    local.get 3
    i64.load offset=144
    i64.add
    local.tee 11
    i64.store offset=24
    local.get 3
    i32.const 48
    i32.add
    local.get 2
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load offset=8
    call $__multi3
    local.get 3
    i32.const -64
    i32.sub
    local.get 2
    i64.load offset=16
    i64.const 0
    local.get 1
    i64.load offset=16
    call $__multi3
    local.get 3
    i32.const 80
    i32.add
    local.get 2
    i64.load offset=8
    i64.const 0
    local.get 1
    i64.load offset=24
    call $__multi3
    local.get 0
    local.get 3
    i32.const 152
    i32.add
    i64.load
    local.get 11
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 11
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 10
    local.get 3
    i32.const 104
    i32.add
    i64.load
    local.get 7
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 4
    local.get 3
    i32.const 120
    i32.add
    i64.load
    local.get 8
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 5
    local.get 3
    i32.const 136
    i32.add
    i64.load
    local.get 9
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 9
    i64.add
    local.tee 6
    local.get 3
    i64.load offset=48
    i64.add
    local.tee 7
    local.get 3
    i64.load offset=64
    i64.add
    local.tee 8
    local.get 3
    i64.load offset=80
    i64.add
    local.tee 12
    i64.store offset=32
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load offset=16
    call $__multi3
    local.get 3
    i32.const 32
    i32.add
    local.get 2
    i64.load offset=16
    i64.const 0
    local.get 1
    i64.load offset=24
    call $__multi3
    local.get 0
    local.get 6
    local.get 11
    i64.lt_u
    i64.extend_i32_u
    local.get 9
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    local.tee 9
    local.get 3
    i32.const 56
    i32.add
    i64.load
    local.get 7
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 4
    local.get 3
    i32.const 72
    i32.add
    i64.load
    local.get 8
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 5
    local.get 3
    i32.const 88
    i32.add
    i64.load
    local.get 12
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 6
    local.get 3
    i64.load offset=16
    i64.add
    local.tee 7
    local.get 3
    i64.load offset=32
    i64.add
    local.tee 8
    i64.store offset=40
    local.get 3
    local.get 2
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load offset=24
    call $__multi3
    local.get 0
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 9
    local.get 3
    i32.const 24
    i32.add
    i64.load
    local.get 7
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 4
    local.get 3
    i32.const 40
    i32.add
    i64.load
    local.get 8
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 5
    local.get 3
    i64.load
    i64.add
    local.tee 6
    i64.store offset=48
    local.get 0
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    i32.const 8
    i32.add
    i64.load
    local.get 4
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    i64.store offset=56
    local.get 3
    i32.const 256
    i32.add
    global.set 0)
  (func $secp256k1_scalar_reduce_512 (type 0) (param i32 i32)
    (local i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 240
    i32.add
    local.get 1
    i64.load offset=32
    local.tee 4
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 208
    i32.add
    local.get 1
    i64.load offset=40
    local.tee 7
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 224
    i32.add
    local.get 4
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const 176
    i32.add
    local.get 1
    i64.load offset=48
    local.tee 5
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 192
    i32.add
    local.get 7
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const 144
    i32.add
    local.get 1
    i64.load offset=56
    local.tee 8
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 160
    i32.add
    local.get 5
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const 128
    i32.add
    local.get 8
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const 32
    i32.add
    local.get 2
    i32.const 216
    i32.add
    i64.load
    local.get 1
    i64.load
    local.tee 3
    local.get 2
    i64.load offset=240
    i64.add
    local.tee 9
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    local.get 1
    i64.load offset=8
    local.tee 11
    local.get 2
    i32.const 248
    i32.add
    i64.load
    i64.add
    i64.add
    local.tee 3
    local.get 2
    i64.load offset=208
    i64.add
    local.tee 6
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 10
    local.get 3
    local.get 11
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 3
    local.get 2
    i32.const 232
    i32.add
    i64.load
    local.get 6
    local.get 2
    i64.load offset=224
    i64.add
    local.tee 11
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 6
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 6
    local.get 1
    i64.load offset=16
    i64.add
    local.tee 3
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 12
    local.get 2
    i32.const 184
    i32.add
    i64.load
    local.get 3
    local.get 2
    i64.load offset=176
    i64.add
    local.tee 6
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 3
    local.get 2
    i32.const 200
    i32.add
    i64.load
    local.get 6
    local.get 2
    i64.load offset=192
    i64.add
    local.tee 10
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 6
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 12
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 6
    local.get 4
    local.get 10
    i64.add
    local.tee 12
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 4
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 4
    local.get 1
    i64.load offset=24
    i64.add
    local.tee 3
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 10
    local.get 2
    i32.const 152
    i32.add
    i64.load
    local.get 3
    local.get 2
    i64.load offset=144
    i64.add
    local.tee 4
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 3
    local.get 2
    i32.const 168
    i32.add
    i64.load
    local.get 4
    local.get 2
    i64.load offset=160
    i64.add
    local.tee 6
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 4
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 4
    local.get 6
    local.get 7
    i64.add
    local.tee 10
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 7
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 6
    local.get 2
    i32.const 136
    i32.add
    i64.load
    local.get 7
    local.get 2
    i64.load offset=128
    i64.add
    local.tee 3
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 7
    local.get 3
    local.get 5
    i64.add
    local.tee 4
    local.get 3
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 5
    local.get 7
    i64.lt_u
    local.get 7
    local.get 6
    i64.lt_u
    i32.add
    local.get 5
    local.get 8
    i64.add
    local.tee 7
    local.get 5
    i64.lt_u
    i32.add
    local.tee 1
    i64.extend_i32_u
    local.tee 5
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const 112
    i32.add
    local.get 4
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 80
    i32.add
    local.get 7
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 48
    i32.add
    local.get 5
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    i32.const 96
    i32.add
    local.get 4
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const -64
    i32.sub
    local.get 7
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    local.get 2
    i32.const 40
    i32.add
    i32.load
    i32.add
    local.get 2
    i32.const 56
    i32.add
    i64.load
    local.get 2
    i32.const 88
    i32.add
    i64.load
    local.get 9
    local.get 2
    i64.load offset=112
    i64.add
    local.tee 3
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    local.get 11
    local.get 2
    i32.const 120
    i32.add
    i64.load
    i64.add
    i64.add
    local.tee 5
    local.get 2
    i64.load offset=80
    i64.add
    local.tee 8
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 9
    local.get 5
    local.get 11
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 5
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 5
    local.get 2
    i32.const 104
    i32.add
    i64.load
    local.get 8
    local.get 2
    i64.load offset=96
    i64.add
    local.tee 9
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 8
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 8
    local.get 12
    i64.add
    local.tee 5
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 5
    local.get 2
    i64.load offset=48
    i64.add
    local.tee 8
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 6
    local.get 2
    i32.const 72
    i32.add
    i64.load
    local.get 8
    local.get 2
    i64.load offset=64
    i64.add
    local.tee 5
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 8
    local.get 6
    i64.lt_u
    i32.add
    local.get 8
    local.get 4
    local.get 5
    i64.add
    local.tee 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 4
    local.get 8
    i64.lt_u
    i32.add
    local.get 4
    local.get 10
    i64.add
    local.tee 5
    local.get 4
    i64.lt_u
    i32.add
    local.get 5
    local.get 2
    i64.load offset=32
    i64.add
    local.tee 4
    local.get 5
    i64.lt_u
    i32.add
    local.get 4
    local.get 7
    i64.add
    local.tee 8
    local.get 4
    i64.lt_u
    i32.add
    i64.extend_i32_u
    local.tee 4
    i64.const 0
    i64.const 4624529908474429119
    call $__multi3
    local.get 2
    local.get 4
    i64.const 0
    i64.const 4994812053365940164
    call $__multi3
    local.get 0
    local.get 2
    i64.load offset=16
    local.tee 5
    local.get 3
    i64.add
    local.tee 3
    i64.store
    local.get 0
    local.get 9
    local.get 2
    i64.load
    local.tee 9
    i64.add
    local.tee 7
    local.get 2
    i32.const 24
    i32.add
    i64.load
    local.get 3
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 3
    i64.store offset=8
    local.get 0
    local.get 4
    local.get 6
    i64.add
    local.tee 5
    local.get 3
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    local.get 2
    i32.const 8
    i32.add
    i64.load
    local.get 7
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    local.tee 7
    i64.store offset=16
    local.get 0
    local.get 5
    local.get 4
    i64.lt_u
    i64.extend_i32_u
    local.get 7
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 4
    local.get 8
    i64.add
    local.tee 7
    i64.store offset=24
    local.get 0
    local.get 0
    call $secp256k1_scalar_check_overflow
    local.get 7
    local.get 4
    i64.lt_u
    i32.add
    call $secp256k1_scalar_reduce
    drop
    local.get 2
    i32.const 256
    i32.add
    global.set 0)
  (func $secp256k1_ecmult_strauss_wnaf (type 11) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 1152
    i32.sub
    local.tee 6
    global.set 0
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 4
        i64.load offset=24
        local.get 4
        i64.load offset=16
        local.get 4
        i64.load offset=8
        local.get 4
        i64.load
        i64.or
        i64.or
        i64.or
        i64.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=120
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=12
        local.tee 7
        i32.const 0
        i32.store offset=1028
        local.get 7
        local.get 4
        i32.const 5
        call $secp256k1_ecmult_wnaf
        local.set 4
        local.get 1
        i32.load offset=12
        local.tee 7
        local.get 4
        i32.store offset=1024
        local.get 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        local.get 7
        i32.load offset=1028
        i32.const 7
        i32.shl
        i32.add
        call $secp256k1_ecmult_odd_multiples_table
        local.get 1
        i32.load offset=8
        local.get 6
        i32.const 1024
        i32.add
        local.get 1
        i32.load
        local.get 1
        i32.load offset=4
        call $secp256k1_ge_globalz_set_table_gej
        i32.const 1
        local.set 9
        local.get 4
        i32.const 0
        local.get 4
        i32.const 0
        i32.gt_s
        select
        br 1 (;@1;)
      end
      local.get 6
      i32.const 1024
      i32.add
      i32.const 1
      call $secp256k1_fe_set_int
      i32.const 0
    end
    local.set 4
    local.get 5
    if  ;; label = @1
      local.get 6
      local.get 5
      i32.const 16
      call $secp256k1_ecmult_wnaf
      local.tee 10
      local.get 4
      local.get 10
      local.get 4
      i32.gt_s
      select
      local.set 4
    end
    local.get 2
    i32.const 1
    i32.store offset=120
    local.get 2
    call $secp256k1_fe_clear
    local.get 2
    i32.const 40
    i32.add
    call $secp256k1_fe_clear
    local.get 2
    i32.const 80
    i32.add
    call $secp256k1_fe_clear
    local.get 4
    i32.const 1
    i32.ge_s
    if  ;; label = @1
      local.get 9
      i32.const 1032
      i32.mul
      local.set 12
      local.get 4
      i32.const 2
      i32.shl
      i32.const -4
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 4
        local.set 3
        local.get 2
        local.get 2
        i32.const 0
        call $secp256k1_gej_double_var
        local.get 9
        if  ;; label = @3
          i32.const 0
          local.set 5
          i32.const 0
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 1
              i32.load offset=12
              local.tee 8
              local.get 4
              i32.add
              i32.const 1024
              i32.add
              i32.load
              i32.gt_s
              br_if 0 (;@5;)
              local.get 7
              local.get 8
              i32.add
              local.get 4
              i32.add
              i32.load
              local.tee 8
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=8
              local.set 11
              block  ;; label = @6
                local.get 8
                i32.const 1
                i32.ge_s
                if  ;; label = @7
                  local.get 6
                  i32.const 1064
                  i32.add
                  local.get 11
                  local.get 8
                  i32.const -1
                  i32.add
                  i32.const 2
                  i32.div_s
                  i32.const 88
                  i32.mul
                  i32.add
                  local.get 5
                  i32.add
                  i32.const 88
                  call $memcpy
                  drop
                  br 1 (;@6;)
                end
                local.get 6
                i32.const 1064
                i32.add
                local.get 11
                local.get 8
                i32.const -1
                i32.xor
                i32.const 2
                i32.div_s
                i32.const 88
                i32.mul
                i32.add
                local.get 5
                i32.add
                call $secp256k1_ge_neg
              end
              local.get 2
              local.get 2
              local.get 6
              i32.const 1064
              i32.add
              i32.const 0
              call $secp256k1_gej_add_ge_var
            end
            local.get 5
            i32.const 704
            i32.add
            local.set 5
            local.get 12
            local.get 4
            i32.const 1032
            i32.add
            local.tee 4
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const -1
        i32.add
        local.set 4
        block  ;; label = @3
          local.get 3
          local.get 10
          i32.gt_s
          br_if 0 (;@3;)
          local.get 6
          local.get 4
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 5
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.ge_s
            if  ;; label = @5
              local.get 6
              i32.const 1064
              i32.add
              local.get 5
              local.get 3
              i32.const -1
              i32.add
              i32.const 2
              i32.div_s
              i32.const 6
              i32.shl
              i32.add
              call $secp256k1_ge_from_storage
              br 1 (;@4;)
            end
            local.get 6
            i32.const 1064
            i32.add
            local.get 5
            local.get 3
            i32.const -1
            i32.xor
            i32.const 2
            i32.div_s
            i32.const 6
            i32.shl
            i32.add
            call $secp256k1_ge_from_storage
            local.get 6
            i32.const 1064
            i32.add
            local.get 6
            i32.const 1064
            i32.add
            call $secp256k1_ge_neg
          end
          local.get 2
          local.get 2
          local.get 6
          i32.const 1064
          i32.add
          local.get 6
          i32.const 1024
          i32.add
          call $secp256k1_gej_add_zinv_var
        end
        local.get 7
        i32.const -4
        i32.add
        local.set 7
        local.get 4
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.load offset=120
    i32.eqz
    if  ;; label = @1
      local.get 2
      i32.const 80
      i32.add
      local.tee 0
      local.get 0
      local.get 6
      i32.const 1024
      i32.add
      call $secp256k1_fe_mul
    end
    local.get 6
    i32.const 1152
    i32.add
    global.set 0)
  (func $secp256k1_scalar_sqr (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    call $secp256k1_scalar_sqr_512
    local.get 0
    local.get 2
    call $secp256k1_scalar_reduce_512
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func $secp256k1_scalar_sqr_512 (type 0) (param i32 i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 160
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 144
    i32.add
    local.get 1
    i64.load
    local.tee 5
    i64.const 0
    local.get 5
    call $__multi3
    local.get 0
    local.get 2
    i64.load offset=144
    i64.store
    local.get 2
    i32.const 128
    i32.add
    local.get 1
    i64.load offset=8
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 0
    local.get 2
    i64.load offset=128
    local.tee 6
    i64.const 1
    i64.shl
    local.tee 5
    local.get 2
    i32.const 152
    i32.add
    i64.load
    i64.add
    local.tee 7
    i64.store offset=8
    local.get 2
    i32.const 96
    i32.add
    local.get 1
    i64.load offset=16
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 2
    i32.const 112
    i32.add
    local.get 1
    i64.load offset=8
    local.tee 8
    i64.const 0
    local.get 8
    call $__multi3
    local.get 0
    local.get 7
    local.get 5
    i64.lt_u
    local.tee 3
    i64.extend_i32_u
    local.get 2
    i32.const 136
    i32.add
    i64.load
    local.tee 7
    i64.const 1
    i64.shl
    local.tee 8
    local.get 5
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.or
    i64.add
    local.tee 5
    local.get 2
    i64.load offset=96
    local.tee 9
    i64.const 1
    i64.shl
    local.tee 10
    i64.add
    local.tee 6
    local.get 2
    i64.load offset=112
    i64.add
    local.tee 11
    i64.store offset=16
    local.get 2
    i32.const -64
    i32.sub
    local.get 1
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load
    call $__multi3
    local.get 2
    i32.const 80
    i32.add
    local.get 1
    i64.load offset=16
    i64.const 0
    local.get 1
    i64.load offset=8
    call $__multi3
    local.get 0
    local.get 3
    local.get 5
    i64.eqz
    i32.and
    i64.extend_i32_u
    local.get 8
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.tee 8
    local.get 6
    local.get 5
    i64.lt_u
    local.tee 3
    i64.extend_i32_u
    local.get 2
    i32.const 104
    i32.add
    i64.load
    local.tee 12
    i64.const 1
    i64.shl
    local.tee 13
    local.get 10
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.or
    i64.add
    local.tee 9
    i64.add
    local.tee 5
    local.get 2
    i32.const 120
    i32.add
    i64.load
    local.get 11
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 6
    local.get 2
    i64.load offset=64
    local.tee 10
    i64.const 1
    i64.shl
    local.tee 11
    i64.add
    local.tee 7
    local.get 2
    i64.load offset=80
    local.tee 14
    i64.const 1
    i64.shl
    local.tee 15
    i64.add
    local.tee 16
    i64.store offset=24
    local.get 2
    i32.const 32
    i32.add
    local.get 1
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load offset=8
    call $__multi3
    local.get 2
    i32.const 48
    i32.add
    local.get 1
    i64.load offset=16
    local.tee 17
    i64.const 0
    local.get 17
    call $__multi3
    local.get 0
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 9
    i64.eqz
    i32.and
    i64.extend_i32_u
    local.get 13
    local.get 12
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    local.tee 8
    local.get 7
    local.get 6
    i64.lt_u
    local.tee 3
    i64.extend_i32_u
    local.get 2
    i32.const 72
    i32.add
    i64.load
    local.tee 9
    i64.const 1
    i64.shl
    local.tee 12
    local.get 11
    local.get 10
    i64.lt_u
    i64.extend_i32_u
    i64.or
    i64.add
    local.tee 10
    i64.add
    local.tee 5
    local.get 16
    local.get 7
    i64.lt_u
    local.tee 4
    i64.extend_i32_u
    local.get 2
    i32.const 88
    i32.add
    i64.load
    local.tee 11
    i64.const 1
    i64.shl
    local.tee 13
    local.get 15
    local.get 14
    i64.lt_u
    i64.extend_i32_u
    i64.or
    i64.add
    local.tee 14
    i64.add
    local.tee 6
    local.get 2
    i64.load offset=32
    local.tee 15
    i64.const 1
    i64.shl
    local.tee 16
    i64.add
    local.tee 7
    local.get 2
    i64.load offset=48
    i64.add
    local.tee 17
    i64.store offset=32
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i64.load offset=24
    i64.const 0
    local.get 1
    i64.load offset=16
    call $__multi3
    local.get 0
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 4
    local.get 14
    i64.eqz
    i32.and
    i64.extend_i32_u
    local.get 5
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 10
    i64.eqz
    i32.and
    i64.extend_i32_u
    local.get 13
    local.get 11
    i64.lt_u
    i64.extend_i32_u
    local.get 12
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    i64.add
    i64.add
    local.tee 8
    local.get 7
    local.get 6
    i64.lt_u
    local.tee 3
    i64.extend_i32_u
    local.get 2
    i32.const 40
    i32.add
    i64.load
    local.tee 9
    i64.const 1
    i64.shl
    local.tee 10
    local.get 16
    local.get 15
    i64.lt_u
    i64.extend_i32_u
    i64.or
    i64.add
    local.tee 11
    i64.add
    local.tee 5
    local.get 2
    i32.const 56
    i32.add
    i64.load
    local.get 17
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    local.tee 6
    local.get 2
    i64.load offset=16
    local.tee 7
    i64.const 1
    i64.shl
    local.tee 12
    i64.add
    local.tee 13
    i64.store offset=40
    local.get 2
    local.get 1
    i64.load offset=24
    local.tee 14
    i64.const 0
    local.get 14
    call $__multi3
    local.get 0
    local.get 6
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 3
    local.get 11
    i64.eqz
    i32.and
    i64.extend_i32_u
    local.get 10
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    local.tee 8
    local.get 13
    local.get 6
    i64.lt_u
    local.tee 1
    i64.extend_i32_u
    local.get 2
    i32.const 24
    i32.add
    i64.load
    local.tee 6
    i64.const 1
    i64.shl
    local.tee 9
    local.get 12
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.or
    i64.add
    local.tee 7
    i64.add
    local.tee 5
    local.get 2
    i64.load
    i64.add
    local.tee 10
    i64.store offset=48
    local.get 0
    local.get 10
    local.get 5
    i64.lt_u
    i64.extend_i32_u
    local.get 5
    local.get 8
    i64.lt_u
    i64.extend_i32_u
    local.get 1
    local.get 7
    i64.eqz
    i32.and
    i64.extend_i32_u
    local.get 2
    i32.const 8
    i32.add
    i64.load
    local.get 9
    local.get 6
    i64.lt_u
    i64.extend_i32_u
    i64.add
    i64.add
    i64.add
    i64.add
    i64.store offset=56
    local.get 2
    i32.const 160
    i32.add
    global.set 0)
  (func $secp256k1_ecmult_wnaf (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 24
    i32.add
    local.get 1
    i32.const 24
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 1
    i64.load
    i64.store
    local.get 0
    i32.const 1024
    call $memset
    local.set 7
    i32.const 1
    local.set 6
    local.get 3
    i32.const 255
    i32.const 1
    call $secp256k1_scalar_get_bits
    if  ;; label = @1
      local.get 3
      local.get 3
      call $secp256k1_scalar_negate
      i32.const -1
      local.set 6
    end
    i32.const -1
    local.set 4
    local.get 2
    i32.const -1
    i32.add
    local.set 8
    i32.const 0
    local.set 1
    loop  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.get 3
        local.get 1
        i32.const 1
        call $secp256k1_scalar_get_bits
        local.get 5
        i32.eq
        br_if 0 (;@2;)
        drop
        local.get 7
        local.get 1
        i32.const 2
        i32.shl
        i32.add
        local.get 3
        local.get 1
        i32.const 256
        local.get 1
        i32.sub
        local.tee 0
        local.get 2
        local.get 0
        local.get 2
        i32.lt_s
        select
        local.tee 0
        call $secp256k1_scalar_get_bits_var
        local.get 5
        i32.add
        local.tee 4
        local.get 4
        local.get 8
        i32.shr_u
        i32.const 1
        i32.and
        local.tee 5
        local.get 2
        i32.shl
        i32.sub
        local.get 6
        i32.mul
        i32.store
        local.get 1
        local.set 4
        local.get 0
        local.get 1
        i32.add
      end
      local.tee 1
      i32.const 256
      i32.lt_s
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 4
    i32.const 1
    i32.add)
  (func $secp256k1_ecmult_odd_multiples_table (type 2) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 304
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 176
    i32.add
    local.get 2
    i32.const 0
    call $secp256k1_gej_double_var
    local.get 3
    i32.const 32
    i32.add
    local.get 3
    i32.const 208
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 24
    i32.add
    local.get 3
    i32.const 200
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 16
    i32.add
    local.get 3
    i32.const 192
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.get 3
    i32.const 184
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 48
    i32.add
    local.get 3
    i32.const 224
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 56
    i32.add
    local.get 3
    i32.const 232
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const -64
    i32.sub
    local.get 3
    i32.const 240
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 72
    i32.add
    local.get 3
    i32.const 248
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 3
    i64.load offset=176
    i64.store
    local.get 3
    local.get 3
    i64.load offset=216
    i64.store offset=40
    local.get 3
    i32.const 0
    i32.store offset=80
    local.get 3
    i32.const 88
    i32.add
    local.get 2
    local.get 3
    i32.const 256
    i32.add
    local.tee 5
    call $secp256k1_ge_set_gej_zinv
    local.get 0
    i32.const 72
    i32.add
    local.get 3
    i32.const 160
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const -64
    i32.sub
    local.get 3
    i32.const 152
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 56
    i32.add
    local.get 3
    i32.const 144
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 48
    i32.add
    local.get 3
    i32.const 136
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 3
    i64.load offset=128
    i64.store offset=40
    local.get 0
    i32.const 32
    i32.add
    local.get 3
    i32.const 120
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    i32.const 112
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 3
    i32.const 104
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.const 96
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 3
    i64.load offset=88
    i64.store
    local.get 0
    i32.const 112
    i32.add
    local.get 2
    i32.const 112
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 104
    i32.add
    local.get 2
    i32.const 104
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 96
    i32.add
    local.get 2
    i32.const 96
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 88
    i32.add
    local.get 2
    i32.const 88
    i32.add
    i64.load
    i64.store
    local.get 0
    local.get 2
    i64.load offset=80
    i64.store offset=80
    local.get 0
    i32.const 0
    i32.store offset=120
    local.get 1
    i32.const 32
    i32.add
    local.get 3
    i32.const 288
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 24
    i32.add
    local.get 3
    i32.const 280
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 16
    i32.add
    local.get 3
    i32.const 272
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.const 264
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 3
    i64.load offset=256
    i64.store
    local.get 0
    i32.const 128
    i32.add
    local.tee 2
    local.get 0
    local.get 3
    local.get 1
    i32.const 40
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 256
    i32.add
    local.tee 4
    local.get 2
    local.get 3
    local.get 1
    i32.const 80
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 384
    i32.add
    local.tee 2
    local.get 4
    local.get 3
    local.get 1
    i32.const 120
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 512
    i32.add
    local.tee 4
    local.get 2
    local.get 3
    local.get 1
    i32.const 160
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 640
    i32.add
    local.tee 2
    local.get 4
    local.get 3
    local.get 1
    i32.const 200
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 768
    i32.add
    local.tee 4
    local.get 2
    local.get 3
    local.get 1
    i32.const 240
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 896
    i32.add
    local.get 4
    local.get 3
    local.get 1
    i32.const 280
    i32.add
    call $secp256k1_gej_add_ge_var
    local.get 0
    i32.const 976
    i32.add
    local.tee 0
    local.get 0
    local.get 5
    call $secp256k1_fe_mul
    local.get 3
    i32.const 304
    i32.add
    global.set 0)
  (func $secp256k1_ge_globalz_set_table_gej (type 7) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    local.get 0
    local.get 2
    i64.load offset=896
    i64.store offset=616
    local.get 0
    i32.const 648
    i32.add
    local.get 2
    i32.const 928
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 640
    i32.add
    local.get 2
    i32.const 920
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 632
    i32.add
    local.get 2
    i32.const 912
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 624
    i32.add
    local.get 2
    i32.const 904
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 688
    i32.add
    local.get 2
    i32.const 968
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 680
    i32.add
    local.get 2
    i32.const 960
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 672
    i32.add
    local.get 2
    i32.const 952
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 664
    i32.add
    local.get 2
    i32.const 944
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 656
    i32.add
    local.get 2
    i32.const 936
    i32.add
    i64.load
    i64.store
    local.get 1
    local.get 2
    i32.const 976
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    i32.const 984
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 16
    i32.add
    local.get 2
    i32.const 992
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 24
    i32.add
    local.get 2
    i32.const 1000
    i32.add
    i64.load
    i64.store
    local.get 1
    i32.const 32
    i32.add
    local.get 2
    i32.const 1008
    i32.add
    i64.load
    i64.store
    local.get 0
    i32.const 696
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 40
    i32.add
    local.get 3
    i32.const 312
    i32.add
    i64.load
    i64.store
    local.get 4
    i32.const 32
    i32.add
    local.get 3
    i32.const 304
    i32.add
    i64.load
    i64.store
    local.get 4
    i32.const 24
    i32.add
    local.get 3
    i32.const 296
    i32.add
    i64.load
    i64.store
    local.get 4
    i32.const 16
    i32.add
    local.get 3
    i32.const 288
    i32.add
    i64.load
    i64.store
    local.get 4
    local.get 3
    i64.load offset=280
    i64.store offset=8
    local.get 0
    i32.const 528
    i32.add
    local.get 2
    i32.const 768
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 240
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 440
    i32.add
    local.get 2
    i32.const 640
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 200
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 352
    i32.add
    local.get 2
    i32.const 512
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 160
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 264
    i32.add
    local.get 2
    i32.const 384
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 120
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 176
    i32.add
    local.get 2
    i32.const 256
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 80
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    i32.const 88
    i32.add
    local.get 2
    i32.const 128
    i32.add
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    i32.const 8
    i32.add
    local.get 3
    i32.const 40
    i32.add
    call $secp256k1_fe_mul
    local.get 0
    local.get 2
    local.get 4
    i32.const 8
    i32.add
    call $secp256k1_ge_set_gej_zinv
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func $secp256k1_ge_neg (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 88
    call $memcpy
    i32.const 40
    i32.add
    local.tee 0
    call $secp256k1_fe_normalize_weak
    local.get 0
    local.get 0
    i32.const 1
    call $secp256k1_fe_negate)
  (func $secp256k1_gej_add_zinv_var (type 7) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 480
    i32.sub
    local.tee 4
    global.set 0
    block  ;; label = @1
      local.get 2
      i32.load offset=80
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.const 128
        call $memcpy
        drop
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=120
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.store offset=120
        local.get 4
        i32.const 440
        i32.add
        local.get 3
        call $secp256k1_fe_sqr
        local.get 4
        i32.const 400
        i32.add
        local.get 4
        i32.const 440
        i32.add
        local.get 3
        call $secp256k1_fe_mul
        local.get 0
        local.get 2
        local.get 4
        i32.const 440
        i32.add
        call $secp256k1_fe_mul
        local.get 0
        i32.const 40
        i32.add
        local.get 2
        i32.const 40
        i32.add
        local.get 4
        i32.const 400
        i32.add
        call $secp256k1_fe_mul
        local.get 0
        i32.const 80
        i32.add
        i32.const 1
        call $secp256k1_fe_set_int
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=120
      local.get 4
      i32.const 440
      i32.add
      local.get 1
      i32.const 80
      i32.add
      local.tee 5
      local.get 3
      call $secp256k1_fe_mul
      local.get 4
      i32.const 400
      i32.add
      local.get 4
      i32.const 440
      i32.add
      call $secp256k1_fe_sqr
      local.get 4
      i32.const 392
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 384
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 376
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 368
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 4
      local.get 1
      i64.load
      i64.store offset=360
      local.get 4
      i32.const 360
      i32.add
      call $secp256k1_fe_normalize_weak
      local.get 4
      i32.const 320
      i32.add
      local.get 2
      local.get 4
      i32.const 400
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 312
      i32.add
      local.get 1
      i32.const 72
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 304
      i32.add
      local.get 1
      i32.const -64
      i32.sub
      i64.load
      i64.store
      local.get 4
      i32.const 296
      i32.add
      local.get 1
      i32.const 56
      i32.add
      i64.load
      i64.store
      local.get 4
      i32.const 288
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i64.load
      i64.store
      local.get 4
      local.get 1
      i64.load offset=40
      i64.store offset=280
      local.get 4
      i32.const 280
      i32.add
      call $secp256k1_fe_normalize_weak
      local.get 4
      i32.const 240
      i32.add
      local.get 2
      i32.const 40
      i32.add
      local.get 4
      i32.const 400
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 240
      i32.add
      local.get 4
      i32.const 240
      i32.add
      local.get 4
      i32.const 440
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 200
      i32.add
      local.get 4
      i32.const 360
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 4
      i32.const 200
      i32.add
      local.get 4
      i32.const 320
      i32.add
      call $secp256k1_fe_add
      local.get 4
      i32.const 160
      i32.add
      local.get 4
      i32.const 280
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 4
      i32.const 160
      i32.add
      local.get 4
      i32.const 240
      i32.add
      call $secp256k1_fe_add
      local.get 4
      i32.const 200
      i32.add
      call $secp256k1_fe_normalizes_to_zero_var
      if  ;; label = @2
        local.get 4
        i32.const 160
        i32.add
        call $secp256k1_fe_normalizes_to_zero_var
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.const 0
          call $secp256k1_gej_double_var
          br 2 (;@1;)
        end
        local.get 0
        i32.const 1
        i32.store offset=120
        br 1 (;@1;)
      end
      local.get 4
      i32.const 120
      i32.add
      local.get 4
      i32.const 160
      i32.add
      call $secp256k1_fe_sqr
      local.get 4
      i32.const 80
      i32.add
      local.get 4
      i32.const 200
      i32.add
      call $secp256k1_fe_sqr
      local.get 4
      i32.const 40
      i32.add
      local.get 4
      i32.const 200
      i32.add
      local.get 4
      i32.const 80
      i32.add
      call $secp256k1_fe_mul
      local.get 0
      i32.const 112
      i32.add
      local.get 5
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 104
      i32.add
      local.get 5
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 96
      i32.add
      local.get 5
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 88
      i32.add
      local.get 5
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 0
      local.get 5
      i64.load
      i64.store offset=80
      local.get 0
      i32.const 80
      i32.add
      local.tee 1
      local.get 1
      local.get 4
      i32.const 200
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      local.get 4
      i32.const 360
      i32.add
      local.get 4
      i32.const 80
      i32.add
      call $secp256k1_fe_mul
      local.get 0
      i32.const 32
      i32.add
      local.get 4
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 24
      i32.add
      local.get 4
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 16
      i32.add
      local.get 4
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 0
      i32.const 8
      i32.add
      local.get 4
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 0
      local.get 4
      i64.load
      i64.store
      local.get 0
      i32.const 2
      call $secp256k1_fe_mul_int
      local.get 0
      local.get 4
      i32.const 40
      i32.add
      call $secp256k1_fe_add
      local.get 0
      local.get 0
      i32.const 3
      call $secp256k1_fe_negate
      local.get 0
      local.get 4
      i32.const 120
      i32.add
      call $secp256k1_fe_add
      local.get 0
      i32.const 40
      i32.add
      local.tee 1
      local.get 0
      i32.const 5
      call $secp256k1_fe_negate
      local.get 1
      local.get 4
      call $secp256k1_fe_add
      local.get 1
      local.get 1
      local.get 4
      i32.const 160
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 40
      i32.add
      local.get 4
      i32.const 40
      i32.add
      local.get 4
      i32.const 280
      i32.add
      call $secp256k1_fe_mul
      local.get 4
      i32.const 40
      i32.add
      local.get 4
      i32.const 40
      i32.add
      i32.const 1
      call $secp256k1_fe_negate
      local.get 1
      local.get 4
      i32.const 40
      i32.add
      call $secp256k1_fe_add
    end
    local.get 4
    i32.const 480
    i32.add
    global.set 0)
  (func $secp256k1_scalar_get_bits_var (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 6
    i32.shr_u
    local.tee 3
    local.get 1
    local.get 2
    i32.add
    i32.const -1
    i32.add
    i32.const 6
    i32.shr_u
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call $secp256k1_scalar_get_bits
      return
    end
    local.get 0
    local.get 3
    i32.const 3
    i32.shl
    i32.add
    local.tee 0
    i32.const 8
    i32.add
    i64.load
    i32.const 64
    local.get 1
    i32.const 63
    i32.and
    local.tee 1
    i32.sub
    i64.extend_i32_u
    i64.shl
    local.get 0
    i64.load
    local.get 1
    i64.extend_i32_u
    i64.shr_u
    i64.or
    i64.const -1
    local.get 2
    i64.extend_i32_u
    i64.shl
    i64.const -1
    i64.xor
    i64.and
    i32.wrap_i64)
  (func $__multi3 (type 16) (param i32 i64 i64 i64)
    (local i64 i64)
    local.get 0
    local.get 2
    local.get 3
    i64.mul
    i64.const 0
    i64.add
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 2
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 4
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    local.tee 5
    i64.const 32
    i64.shr_u
    local.get 3
    local.get 4
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    local.get 2
    i64.mul
    local.get 3
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 4294967295
    i64.and
    local.get 1
    i64.const 32
    i64.shl
    i64.or
    i64.store)
  (table (;0;) 3 3 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 67488))
  (global (;1;) i32 (i32.const 67488))
  (global (;2;) i32 (i32.const 1937))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (elem (;0;) (i32.const 1) $default_error_callback_fn $default_error_callback_fn)
  (data (;0;) (i32.const 1024) "\a0\07\01")
  (data (;1;) (i32.const 1040) "\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00Invalid flags\00outputlen != NULL\00*outputlen >= ((flags & SECP256K1_FLAGS_BIT_COMPRESSION) ? 33 : 65)\00output != NULL\00pubkey != NULL\00(flags & SECP256K1_FLAGS_TYPE_MASK) == SECP256K1_FLAGS_TYPE_COMPRESSION\00sig != NULL\00input64 != NULL\00recid >= 0 && recid <= 3\00secp256k1_ecmult_context_is_built(&ctx->ecmult_ctx)\00msg32 != NULL\00signature != NULL\00Out of memory")
  (data (;2;) (i32.const 1416) "\98\17\f8\16[\81\02\00\9f\95\8d\e2\dc\b2\0d\00\fc\9b\02\07\0b\87\0e\00\5c)\06Z\c5\ba\0b\00\dc\f9~f\bey\00\00\b8\d4\10\fb\8f\d0\07\00\c4\99AUh\8a\04\00\b4\17\fd\a8\08\11\0e\00\c0\bfO\daUF\0c\00\a3&w\da:H")
  (data (;3;) (i32.const 1504) "The scalar for this x is unknown\00\00\01")
  (data (;4;) (i32.const 1552) "\80")
  (data (;5;) (i32.const 1624) "\01")
  (data (;6;) (i32.const 1664) "!secp256k1_fe_is_zero(&ge->x)\00\00\00AA6\d0\8c^\02\00\fd\bb\03\8a\f4j\0e\00\dc\ae\ba\fe\ff\ff\0f\00\ff\ff\ff\ff\ff\ff\0f\00\ff\ff\ff\ff\ff\ff"))
