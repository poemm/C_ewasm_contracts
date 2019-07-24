(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 0)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 3) (param i32) (result i32)
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
  (func $memset (type 6) (param i32)
    (local i32)
    i32.const 128
    local.set 1
    loop  ;; label = @1
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
      local.tee 1
      i32.const 7
      i32.gt_u
      br_if 0 (;@1;)
    end
    i32.const 0
    local.tee 1
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
  (func $blake2b_compress (type 4) (param i32 i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.set 2
    local.get 0
    i32.const 200
    i32.add
    i64.load
    local.get 0
    i32.const 184
    i32.add
    i64.load
    local.set 22
    local.get 0
    i32.const 176
    i32.add
    i64.load
    local.set 23
    local.get 0
    i32.const 168
    i32.add
    i64.load
    local.set 24
    local.get 0
    i32.const 160
    i32.add
    i64.load
    local.set 25
    local.get 0
    i32.const 152
    i32.add
    i64.load
    local.set 26
    local.get 0
    i32.const 144
    i32.add
    i64.load
    local.set 27
    local.get 0
    i32.const 136
    i32.add
    i64.load
    local.set 28
    local.get 0
    i32.const 128
    i32.add
    i64.load
    local.set 29
    local.get 0
    i64.load offset=192
    local.set 8
    loop  ;; label = @1
      local.get 2
      local.get 4
      i32.add
      local.get 0
      local.get 4
      i32.add
      local.tee 3
      i32.const 1
      i32.add
      i64.load8_u
      i64.const 8
      i64.shl
      local.get 3
      i64.load8_u
      i64.or
      local.get 3
      i32.const 2
      i32.add
      i64.load8_u
      i64.const 16
      i64.shl
      i64.or
      local.get 3
      i32.const 3
      i32.add
      i64.load8_u
      i64.const 24
      i64.shl
      i64.or
      local.get 3
      i32.const 4
      i32.add
      i64.load8_u
      i64.const 32
      i64.shl
      i64.or
      local.get 3
      i32.const 5
      i32.add
      i64.load8_u
      i64.const 40
      i64.shl
      i64.xor
      local.get 3
      i32.const 6
      i32.add
      i64.load8_u
      i64.const 48
      i64.shl
      i64.xor
      local.get 3
      i32.const 7
      i32.add
      i64.load8_u
      i64.const 56
      i64.shl
      i64.xor
      i64.store
      local.get 4
      i32.const 8
      i32.add
      local.tee 4
      i32.const 128
      i32.ne
      br_if 0 (;@1;)
    end
    i64.const -2270897969802886508
    i64.const 2270897969802886507
    local.get 1
    select
    local.set 12
    i64.const -7276294671716946913
    i64.xor
    local.set 19
    local.get 8
    i64.const 5840696475078001361
    i64.xor
    local.set 16
    i64.const 7640891576956012808
    local.set 20
    i64.const -4942790177534073029
    local.set 9
    i64.const 4354685564936845355
    local.set 13
    i64.const 6620516959819538809
    local.set 14
    i64.const -6534734903238641935
    local.set 17
    i32.const 0
    local.set 1
    local.get 22
    local.set 6
    local.get 26
    local.set 5
    local.get 23
    local.set 8
    local.get 27
    local.set 10
    local.get 24
    local.set 11
    local.get 28
    local.set 15
    local.get 25
    local.set 7
    local.get 29
    local.set 18
    loop  ;; label = @1
      local.get 2
      local.get 1
      i32.const 10086
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 5
      local.get 6
      i64.add
      i64.add
      local.tee 5
      local.get 2
      local.get 1
      i32.const 10087
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 6
      local.get 5
      local.get 14
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 6
      local.get 17
      i64.add
      local.tee 5
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 14
      i64.add
      local.tee 21
      local.get 6
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 30
      local.get 5
      i64.add
      local.tee 5
      local.get 14
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 6
      local.get 2
      local.get 1
      i32.const 10084
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 8
      local.get 10
      i64.add
      i64.add
      local.tee 10
      local.get 2
      local.get 1
      i32.const 10085
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 8
      local.get 10
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 13
      i64.add
      local.tee 12
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 13
      i64.add
      local.tee 14
      local.get 2
      local.get 1
      i32.const 10092
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      i64.add
      local.tee 10
      local.get 2
      local.get 1
      i32.const 10093
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 6
      local.get 10
      local.get 2
      local.get 1
      i32.const 10082
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 11
      local.get 15
      i64.add
      i64.add
      local.tee 6
      local.get 2
      local.get 1
      i32.const 10083
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 11
      local.get 6
      local.get 19
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 6
      local.get 9
      i64.add
      local.tee 11
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 9
      i64.add
      local.tee 15
      local.get 6
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 31
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 6
      local.get 2
      local.get 1
      i32.const 10080
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 7
      local.get 18
      i64.add
      i64.add
      local.tee 10
      local.get 2
      local.get 1
      i32.const 10081
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 7
      local.get 10
      local.get 16
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      local.get 20
      i64.add
      local.tee 10
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 32
      i64.add
      local.tee 18
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 7
      local.get 10
      i64.add
      local.tee 33
      i64.add
      local.tee 16
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 17
      i64.add
      local.tee 10
      local.get 6
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 19
      local.get 16
      i64.add
      local.tee 20
      local.get 17
      i64.xor
      i64.const 1
      i64.rotl
      local.set 6
      local.get 13
      local.get 12
      local.get 8
      local.get 14
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      i64.add
      local.tee 13
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 8
      local.get 2
      local.get 1
      i32.const 10090
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 15
      i64.add
      i64.add
      local.tee 15
      local.get 2
      local.get 1
      i32.const 10091
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 8
      local.get 7
      local.get 15
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 8
      local.get 5
      i64.add
      local.tee 7
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 5
      i64.add
      local.tee 15
      local.get 8
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 16
      local.get 7
      i64.add
      local.tee 17
      local.get 5
      i64.xor
      i64.const 1
      i64.rotl
      local.set 8
      local.get 11
      local.get 31
      i64.add
      local.tee 7
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 11
      local.get 2
      local.get 1
      i32.const 10088
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 18
      i64.add
      i64.add
      local.tee 5
      local.get 2
      local.get 1
      i32.const 10089
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 11
      local.get 5
      local.get 30
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 11
      local.get 13
      i64.add
      local.tee 5
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 9
      i64.add
      local.tee 18
      local.get 11
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 14
      local.get 5
      i64.add
      local.tee 13
      local.get 9
      i64.xor
      i64.const 1
      i64.rotl
      local.set 11
      local.get 2
      local.get 1
      i32.const 10094
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get 21
      local.get 32
      local.get 33
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 5
      i64.add
      i64.add
      local.tee 9
      local.get 2
      local.get 1
      i32.const 10095
      i32.add
      i32.load8_u
      i32.const 3
      i32.shl
      i32.add
      i64.load
      i64.add
      local.get 7
      local.get 9
      local.get 12
      i64.xor
      i64.const 32
      i64.rotl
      local.tee 7
      i64.add
      local.tee 9
      local.get 5
      i64.xor
      i64.const 40
      i64.rotl
      local.tee 21
      i64.add
      local.tee 5
      local.get 7
      i64.xor
      i64.const 48
      i64.rotl
      local.tee 12
      local.get 9
      i64.add
      local.tee 9
      local.get 21
      i64.xor
      i64.const 1
      i64.rotl
      local.set 7
      local.get 1
      i32.const 16
      i32.add
      local.tee 1
      i32.const 192
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 14
    local.get 22
    i64.xor
    local.get 6
    i64.xor
    i64.store offset=184
    local.get 0
    local.get 12
    local.get 23
    i64.xor
    local.get 8
    i64.xor
    i64.store offset=176
    local.get 0
    local.get 11
    local.get 24
    i64.xor
    local.get 19
    i64.xor
    i64.store offset=168
    local.get 0
    local.get 16
    local.get 25
    i64.xor
    local.get 7
    i64.xor
    i64.store offset=160
    local.get 0
    local.get 5
    local.get 26
    i64.xor
    local.get 17
    i64.xor
    i64.store offset=152
    local.get 0
    local.get 13
    local.get 27
    i64.xor
    local.get 10
    i64.xor
    i64.store offset=144
    local.get 0
    local.get 15
    local.get 28
    i64.xor
    local.get 9
    i64.xor
    i64.store offset=136
    local.get 0
    i32.const 128
    i32.add
    local.get 18
    local.get 29
    i64.xor
    local.get 20
    i64.xor
    i64.store)
  (func $blake2b (type 7) (param i32 i32 i32)
    (local i32 i32 i32 i64 i64)
    global.get 0
    i32.const 224
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 192
    i32.add
    i32.const 10072
    i64.load
    i64.store
    local.get 3
    i32.const 184
    i32.add
    i32.const 10064
    i64.load
    i64.store
    local.get 3
    i32.const 176
    i32.add
    i32.const 10056
    i64.load
    i64.store
    local.get 3
    i32.const 168
    i32.add
    i32.const 10048
    i64.load
    i64.store
    local.get 3
    i32.const 160
    i32.add
    i32.const 10040
    i64.load
    i64.store
    local.get 3
    i32.const 152
    i32.add
    i32.const 10032
    i64.load
    i64.store
    local.get 3
    i32.const 144
    i32.add
    i32.const 10024
    i64.load
    i64.store
    local.get 3
    i32.const 208
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 216
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=200
    local.get 3
    i64.const 7640891576939301192
    i64.store offset=136
    local.get 3
    i32.const 64
    i32.store offset=220
    local.get 3
    i32.const 8
    i32.add
    call $memset
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=216
        local.tee 4
        i32.const 128
        i32.eq
        if  ;; label = @3
          local.get 3
          local.get 3
          i64.load offset=200
          local.tee 6
          i64.const 128
          i64.add
          local.tee 7
          i64.store offset=200
          local.get 7
          local.get 6
          i64.lt_u
          if  ;; label = @4
            local.get 3
            local.get 3
            i64.load offset=208
            i64.const 1
            i64.add
            i64.store offset=208
          end
          i32.const 0
          local.set 4
          local.get 3
          i32.const 8
          i32.add
          i32.const 0
          call $blake2b_compress
          local.get 3
          i32.const 0
          i32.store offset=216
        end
        local.get 1
        i32.load8_u
        local.set 5
        local.get 3
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=216
        local.get 3
        i32.const 8
        i32.add
        local.get 4
        i32.add
        local.get 5
        i32.store8
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
    local.get 3
    local.get 3
    i64.load offset=200
    local.tee 6
    local.get 3
    i32.load offset=216
    local.tee 4
    i64.extend_i32_u
    i64.add
    local.tee 7
    i64.store offset=200
    local.get 7
    local.get 6
    i64.lt_u
    if  ;; label = @1
      local.get 3
      local.get 3
      i64.load offset=208
      i64.const 1
      i64.add
      i64.store offset=208
    end
    local.get 4
    i32.const 127
    i32.le_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 3
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=216
        local.get 3
        i32.const 8
        i32.add
        local.get 4
        i32.add
        i32.const 0
        i32.store8
        local.get 3
        i32.load offset=216
        local.tee 4
        i32.const 128
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 8
    i32.add
    i32.const 1
    call $blake2b_compress
    local.get 3
    i32.load offset=220
    local.tee 2
    if  ;; label = @1
      i32.const 0
      local.set 1
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 0
        local.get 4
        i32.add
        local.get 4
        i32.const -8
        i32.and
        local.get 3
        i32.add
        i32.const 136
        i32.add
        i64.load
        local.get 1
        i32.const 56
        i32.and
        i64.extend_i32_u
        i64.shr_u
        i64.store8
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 2
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.const 224
    i32.add
    global.set 0)
  (func $_main (type 5)
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
  (memory (;0;) 1)
  (global (;0;) (mut i32) (i32.const 10000))
  (global (;1;) i32 (i32.const 10272))
  (global (;2;) i32 (i32.const 10272))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (data (;0;) (i32.const 10000) " (")
  (data (;1;) (i32.const 10016) "\08\c9\bc\f3g\e6\09j;\a7\ca\84\85\aeg\bb+\f8\94\fer\f3n<\f16\1d_:\f5O\a5\d1\82\e6\ad\7fR\0eQ\1fl>+\8ch\05\9bk\bdA\fb\ab\d9\83\1fy!~\13\19\cd\e0[\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0e\0a\04\08\09\0f\0d\06\01\0c\00\02\0b\07\05\03\0b\08\0c\00\05\02\0f\0d\0a\0e\03\06\07\01\09\04\07\09\03\01\0d\0c\0b\0e\02\06\05\0a\04\00\0f\08\09\00\05\07\02\04\0a\0f\0e\01\0b\0c\06\08\03\0d\02\0c\06\0a\00\0b\08\03\04\0d\07\05\0f\0e\01\09\0c\05\01\0f\0e\0d\04\0a\00\07\06\03\09\02\08\0b\0d\0b\07\0e\0c\01\03\09\05\00\0f\04\08\06\02\0a\06\0f\0e\09\0b\03\00\08\0c\02\0d\07\01\04\0a\05\0a\02\08\04\07\06\01\05\0f\0b\09\0e\03\0c\0d\00\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\0e\0a\04\08\09\0f\0d\06\01\0c\00\02\0b\07\05\03"))
