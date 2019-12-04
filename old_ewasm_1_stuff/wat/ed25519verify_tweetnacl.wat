(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i64) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i64 i32) (result i32)))
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
  (func $crypto_verify_32_tweet (type 5) (param i32 i32) (result i32)
    local.get 1
    i32.load8_u offset=1
    local.get 0
    i32.load8_u offset=1
    i32.xor
    local.get 1
    i32.load8_u
    local.get 0
    i32.load8_u
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=2
    local.get 0
    i32.load8_u offset=2
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=3
    local.get 0
    i32.load8_u offset=3
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=4
    local.get 0
    i32.load8_u offset=4
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=5
    local.get 0
    i32.load8_u offset=5
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=6
    local.get 0
    i32.load8_u offset=6
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=7
    local.get 0
    i32.load8_u offset=7
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=8
    local.get 0
    i32.load8_u offset=8
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=9
    local.get 0
    i32.load8_u offset=9
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=10
    local.get 0
    i32.load8_u offset=10
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=11
    local.get 0
    i32.load8_u offset=11
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=12
    local.get 0
    i32.load8_u offset=12
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=13
    local.get 0
    i32.load8_u offset=13
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=14
    local.get 0
    i32.load8_u offset=14
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=15
    local.get 0
    i32.load8_u offset=15
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=16
    local.get 0
    i32.load8_u offset=16
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=17
    local.get 0
    i32.load8_u offset=17
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=18
    local.get 0
    i32.load8_u offset=18
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=19
    local.get 0
    i32.load8_u offset=19
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=20
    local.get 0
    i32.load8_u offset=20
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=21
    local.get 0
    i32.load8_u offset=21
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=22
    local.get 0
    i32.load8_u offset=22
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=23
    local.get 0
    i32.load8_u offset=23
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=24
    local.get 0
    i32.load8_u offset=24
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=25
    local.get 0
    i32.load8_u offset=25
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=26
    local.get 0
    i32.load8_u offset=26
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=27
    local.get 0
    i32.load8_u offset=27
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=28
    local.get 0
    i32.load8_u offset=28
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=29
    local.get 0
    i32.load8_u offset=29
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=30
    local.get 0
    i32.load8_u offset=30
    i32.xor
    i32.or
    local.get 1
    i32.load8_u offset=31
    local.get 0
    i32.load8_u offset=31
    i32.xor
    i32.or
    i32.const -1
    i32.add
    i32.const 8
    i32.shr_u
    i32.const 1
    i32.and
    i32.const -1
    i32.add)
  (func $M (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 3
    global.set 0
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.const 248
    call $memset
    local.set 5
    local.get 2
    i64.load offset=120
    local.set 6
    local.get 2
    i64.load offset=112
    local.set 7
    local.get 2
    i64.load offset=104
    local.set 8
    local.get 2
    i64.load offset=96
    local.set 9
    local.get 2
    i64.load offset=40
    local.set 10
    local.get 2
    i64.load offset=32
    local.set 11
    local.get 2
    i64.load offset=24
    local.set 12
    local.get 2
    i64.load offset=16
    local.set 13
    local.get 2
    i64.load offset=8
    local.set 14
    local.get 2
    i64.load
    local.set 15
    local.get 2
    i64.load offset=88
    local.set 16
    local.get 2
    i64.load offset=80
    local.set 17
    local.get 2
    i64.load offset=72
    local.set 18
    local.get 2
    i64.load offset=64
    local.set 19
    local.get 2
    i64.load offset=56
    local.set 20
    local.get 2
    i64.load offset=48
    local.set 21
    i64.const 0
    local.set 22
    i64.const 15
    local.set 23
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        local.get 4
        i32.add
        local.tee 2
        local.get 1
        local.get 4
        i32.add
        i64.load
        local.tee 24
        local.get 15
        i64.mul
        local.get 22
        i64.add
        i64.store
        local.get 2
        i32.const 8
        i32.add
        local.tee 3
        local.get 3
        i64.load
        local.get 24
        local.get 14
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 16
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 13
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 24
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 12
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 32
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 11
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 40
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 10
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 48
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 21
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 56
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 20
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 64
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 19
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 72
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 18
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 80
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 17
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 88
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 16
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 96
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 9
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 104
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 8
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 112
        i32.add
        local.tee 25
        local.get 25
        i64.load
        local.get 24
        local.get 7
        i64.mul
        i64.add
        i64.store
        local.get 2
        i32.const 120
        i32.add
        local.tee 2
        local.get 2
        i64.load
        local.get 24
        local.get 6
        i64.mul
        i64.add
        i64.store
        local.get 23
        i64.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.const 8
        i32.add
        local.set 4
        local.get 23
        i64.const -1
        i64.add
        local.set 23
        local.get 3
        i64.load
        local.set 22
        br 0 (;@2;)
      end
    end
    local.get 5
    local.get 5
    i64.load
    local.get 5
    i64.load offset=128
    i64.const 38
    i64.mul
    i64.add
    i64.store
    local.get 5
    local.get 5
    i64.load offset=8
    local.get 5
    i64.load offset=136
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=8
    local.get 5
    local.get 5
    i64.load offset=16
    local.get 5
    i64.load offset=144
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=16
    local.get 5
    local.get 5
    i64.load offset=24
    local.get 5
    i64.load offset=152
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=24
    local.get 5
    local.get 5
    i64.load offset=32
    local.get 5
    i64.load offset=160
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=32
    local.get 5
    local.get 5
    i64.load offset=40
    local.get 5
    i64.load offset=168
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=40
    local.get 5
    local.get 5
    i64.load offset=48
    local.get 5
    i64.load offset=176
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=48
    local.get 5
    local.get 5
    i64.load offset=56
    local.get 5
    i64.load offset=184
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=56
    local.get 5
    local.get 5
    i64.load offset=64
    local.get 5
    i64.load offset=192
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=64
    local.get 5
    local.get 5
    i64.load offset=72
    local.get 5
    i64.load offset=200
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=72
    local.get 5
    local.get 5
    i64.load offset=80
    local.get 5
    i64.load offset=208
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=80
    local.get 5
    local.get 5
    i64.load offset=88
    local.get 5
    i64.load offset=216
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=88
    local.get 5
    local.get 5
    i64.load offset=96
    local.get 5
    i64.load offset=224
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=96
    local.get 5
    local.get 5
    i64.load offset=104
    local.get 5
    i64.load offset=232
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=104
    local.get 5
    local.get 5
    i64.load offset=112
    local.get 5
    i64.load offset=240
    i64.const 38
    i64.mul
    i64.add
    i64.store offset=112
    i32.const -16
    local.set 4
    local.get 0
    local.get 5
    i32.const 128
    call $memcpy
    local.tee 25
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 2
      i64.load
      i64.const 65536
      i64.add
      local.tee 24
      i64.store
      local.get 25
      i32.const 0
      local.get 4
      i32.const 17
      i32.add
      local.get 4
      i32.const 1
      i32.add
      local.tee 3
      local.get 4
      i32.lt_u
      local.tee 4
      select
      i32.const 3
      i32.shl
      i32.add
      local.tee 1
      local.get 24
      i64.const 16
      i64.shr_s
      i64.const -1
      i64.add
      local.tee 23
      local.get 1
      i64.load
      i64.add
      local.get 23
      i64.const 37
      i64.mul
      i64.const 0
      local.get 4
      select
      i64.add
      i64.store
      local.get 2
      local.get 2
      i64.load
      local.get 24
      i64.const -65536
      i64.and
      i64.sub
      i64.store
      local.get 2
      i32.const 8
      i32.add
      local.set 2
      local.get 3
      local.set 4
      local.get 3
      br_if 0 (;@1;)
    end
    i32.const -16
    local.set 4
    local.get 25
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 2
      i64.load
      i64.const 65536
      i64.add
      local.tee 24
      i64.store
      local.get 25
      i32.const 0
      local.get 4
      i32.const 17
      i32.add
      local.get 4
      i32.const 1
      i32.add
      local.tee 3
      local.get 4
      i32.lt_u
      local.tee 4
      select
      i32.const 3
      i32.shl
      i32.add
      local.tee 1
      local.get 24
      i64.const 16
      i64.shr_s
      i64.const -1
      i64.add
      local.tee 23
      local.get 1
      i64.load
      i64.add
      local.get 23
      i64.const 37
      i64.mul
      i64.const 0
      local.get 4
      select
      i64.add
      i64.store
      local.get 2
      local.get 2
      i64.load
      local.get 24
      i64.const -65536
      i64.and
      i64.sub
      i64.store
      local.get 2
      i32.const 8
      i32.add
      local.set 2
      local.get 3
      local.set 4
      local.get 3
      br_if 0 (;@1;)
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func $pack25519 (type 2) (param i32 i32)
    (local i32 i32 i64 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 2
    global.set 0
    i32.const -16
    local.set 3
    local.get 2
    local.get 1
    i32.const 128
    call $memcpy
    local.tee 2
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 1
      i64.load
      i64.const 65536
      i64.add
      local.tee 4
      i64.store
      local.get 2
      i32.const 0
      local.get 3
      i32.const 17
      i32.add
      local.get 3
      i32.const 1
      i32.add
      local.tee 5
      local.get 3
      i32.lt_u
      local.tee 3
      select
      i32.const 3
      i32.shl
      i32.add
      local.tee 6
      local.get 4
      i64.const 16
      i64.shr_s
      i64.const -1
      i64.add
      local.tee 7
      local.get 6
      i64.load
      i64.add
      local.get 7
      i64.const 37
      i64.mul
      i64.const 0
      local.get 3
      select
      i64.add
      i64.store
      local.get 1
      local.get 1
      i64.load
      local.get 4
      i64.const -65536
      i64.and
      i64.sub
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.set 1
      local.get 5
      local.set 3
      local.get 5
      br_if 0 (;@1;)
    end
    i32.const -16
    local.set 3
    local.get 2
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 1
      i64.load
      i64.const 65536
      i64.add
      local.tee 4
      i64.store
      local.get 2
      i32.const 0
      local.get 3
      i32.const 17
      i32.add
      local.get 3
      i32.const 1
      i32.add
      local.tee 5
      local.get 3
      i32.lt_u
      local.tee 3
      select
      i32.const 3
      i32.shl
      i32.add
      local.tee 6
      local.get 4
      i64.const 16
      i64.shr_s
      i64.const -1
      i64.add
      local.tee 7
      local.get 6
      i64.load
      i64.add
      local.get 7
      i64.const 37
      i64.mul
      i64.const 0
      local.get 3
      select
      i64.add
      i64.store
      local.get 1
      local.get 1
      i64.load
      local.get 4
      i64.const -65536
      i64.and
      i64.sub
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.set 1
      local.get 5
      local.set 3
      local.get 5
      br_if 0 (;@1;)
    end
    i32.const -16
    local.set 3
    local.get 2
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 1
      i64.load
      i64.const 65536
      i64.add
      local.tee 4
      i64.store
      local.get 2
      i32.const 0
      local.get 3
      i32.const 17
      i32.add
      local.get 3
      i32.const 1
      i32.add
      local.tee 5
      local.get 3
      i32.lt_u
      local.tee 3
      select
      i32.const 3
      i32.shl
      i32.add
      local.tee 6
      local.get 4
      i64.const 16
      i64.shr_s
      i64.const -1
      i64.add
      local.tee 7
      local.get 6
      i64.load
      i64.add
      local.get 7
      i64.const 37
      i64.mul
      i64.const 0
      local.get 3
      select
      i64.add
      i64.store
      local.get 1
      local.get 1
      i64.load
      local.get 4
      i64.const -65536
      i64.and
      i64.sub
      i64.store
      local.get 1
      i32.const 8
      i32.add
      local.set 1
      local.get 5
      local.set 3
      local.get 5
      br_if 0 (;@1;)
    end
    local.get 2
    local.get 2
    i64.load offset=120
    local.tee 7
    i64.const -32767
    i64.add
    local.get 2
    i64.load offset=112
    local.tee 8
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=104
    local.tee 9
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=96
    local.tee 10
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=88
    local.tee 11
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=80
    local.tee 12
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=72
    local.tee 13
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=64
    local.tee 14
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=56
    local.tee 15
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=48
    local.tee 16
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=40
    local.tee 17
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=32
    local.tee 18
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=24
    local.tee 19
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=16
    local.tee 20
    i64.const -65535
    i64.add
    local.get 2
    i64.load offset=8
    local.tee 21
    i64.const -65535
    i64.add
    local.get 2
    i64.load
    local.tee 22
    i64.const -65517
    i64.add
    local.tee 23
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 24
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 25
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 26
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 27
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 28
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 29
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 30
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 31
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 32
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 33
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 34
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 35
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 36
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 37
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 4
    local.get 7
    i64.xor
    i64.const 0
    local.get 4
    i64.const 16
    i64.shr_u
    i64.const -1
    i64.xor
    i64.const 1
    i64.and
    i64.sub
    local.tee 4
    i64.and
    local.get 7
    i64.xor
    local.tee 7
    i64.const -32767
    i64.add
    local.get 37
    i64.const 65535
    i64.and
    local.get 8
    i64.xor
    local.get 4
    i64.and
    local.get 8
    i64.xor
    local.tee 8
    i64.const -65535
    i64.add
    local.get 36
    i64.const 65535
    i64.and
    local.get 9
    i64.xor
    local.get 4
    i64.and
    local.get 9
    i64.xor
    local.tee 9
    i64.const -65535
    i64.add
    local.get 35
    i64.const 65535
    i64.and
    local.get 10
    i64.xor
    local.get 4
    i64.and
    local.get 10
    i64.xor
    local.tee 10
    i64.const -65535
    i64.add
    local.get 34
    i64.const 65535
    i64.and
    local.get 11
    i64.xor
    local.get 4
    i64.and
    local.get 11
    i64.xor
    local.tee 11
    i64.const -65535
    i64.add
    local.get 33
    i64.const 65535
    i64.and
    local.get 12
    i64.xor
    local.get 4
    i64.and
    local.get 12
    i64.xor
    local.tee 12
    i64.const -65535
    i64.add
    local.get 32
    i64.const 65535
    i64.and
    local.get 13
    i64.xor
    local.get 4
    i64.and
    local.get 13
    i64.xor
    local.tee 13
    i64.const -65535
    i64.add
    local.get 31
    i64.const 65535
    i64.and
    local.get 14
    i64.xor
    local.get 4
    i64.and
    local.get 14
    i64.xor
    local.tee 14
    i64.const -65535
    i64.add
    local.get 30
    i64.const 65535
    i64.and
    local.get 15
    i64.xor
    local.get 4
    i64.and
    local.get 15
    i64.xor
    local.tee 15
    i64.const -65535
    i64.add
    local.get 29
    i64.const 65535
    i64.and
    local.get 16
    i64.xor
    local.get 4
    i64.and
    local.get 16
    i64.xor
    local.tee 16
    i64.const -65535
    i64.add
    local.get 28
    i64.const 65535
    i64.and
    local.get 17
    i64.xor
    local.get 4
    i64.and
    local.get 17
    i64.xor
    local.tee 17
    i64.const -65535
    i64.add
    local.get 27
    i64.const 65535
    i64.and
    local.get 18
    i64.xor
    local.get 4
    i64.and
    local.get 18
    i64.xor
    local.tee 18
    i64.const -65535
    i64.add
    local.get 26
    i64.const 65535
    i64.and
    local.get 19
    i64.xor
    local.get 4
    i64.and
    local.get 19
    i64.xor
    local.tee 19
    i64.const -65535
    i64.add
    local.get 25
    i64.const 65535
    i64.and
    local.get 20
    i64.xor
    local.get 4
    i64.and
    local.get 20
    i64.xor
    local.tee 20
    i64.const -65535
    i64.add
    local.get 24
    i64.const 65535
    i64.and
    local.get 21
    i64.xor
    local.get 4
    i64.and
    local.get 21
    i64.xor
    local.tee 21
    i64.const -65535
    i64.add
    local.get 23
    i64.const 65535
    i64.and
    local.get 22
    i64.xor
    local.get 4
    i64.and
    local.get 22
    i64.xor
    local.tee 22
    i64.const -65517
    i64.add
    local.tee 23
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 24
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 25
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 26
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 27
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 28
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 29
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 30
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 31
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 32
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 33
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 34
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 35
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 36
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 37
    i64.const 16
    i64.shr_u
    i64.const 1
    i64.and
    i64.sub
    local.tee 4
    local.get 7
    i64.xor
    i64.const 0
    local.get 4
    i64.const 16
    i64.shr_u
    i64.const -1
    i64.xor
    i64.const 1
    i64.and
    i64.sub
    local.tee 4
    i64.and
    local.get 7
    i64.xor
    local.tee 7
    i64.store offset=120
    local.get 2
    local.get 37
    i64.const 65535
    i64.and
    local.get 8
    i64.xor
    local.get 4
    i64.and
    local.get 8
    i64.xor
    local.tee 8
    i64.store offset=112
    local.get 2
    local.get 36
    i64.const 65535
    i64.and
    local.get 9
    i64.xor
    local.get 4
    i64.and
    local.get 9
    i64.xor
    local.tee 9
    i64.store offset=104
    local.get 2
    local.get 26
    i64.const 65535
    i64.and
    local.get 19
    i64.xor
    local.get 4
    i64.and
    local.get 19
    i64.xor
    local.tee 19
    i64.store offset=24
    local.get 2
    local.get 25
    i64.const 65535
    i64.and
    local.get 20
    i64.xor
    local.get 4
    i64.and
    local.get 20
    i64.xor
    local.tee 20
    i64.store offset=16
    local.get 2
    local.get 24
    i64.const 65535
    i64.and
    local.get 21
    i64.xor
    local.get 4
    i64.and
    local.get 21
    i64.xor
    local.tee 21
    i64.store offset=8
    local.get 2
    local.get 23
    i64.const 65535
    i64.and
    local.get 22
    i64.xor
    local.get 4
    i64.and
    local.get 22
    i64.xor
    local.tee 22
    i64.store
    local.get 2
    local.get 35
    i64.const 65535
    i64.and
    local.get 10
    i64.xor
    local.get 4
    i64.and
    local.get 10
    i64.xor
    local.tee 10
    i64.store offset=96
    local.get 2
    local.get 34
    i64.const 65535
    i64.and
    local.get 11
    i64.xor
    local.get 4
    i64.and
    local.get 11
    i64.xor
    local.tee 11
    i64.store offset=88
    local.get 2
    local.get 33
    i64.const 65535
    i64.and
    local.get 12
    i64.xor
    local.get 4
    i64.and
    local.get 12
    i64.xor
    local.tee 12
    i64.store offset=80
    local.get 2
    local.get 32
    i64.const 65535
    i64.and
    local.get 13
    i64.xor
    local.get 4
    i64.and
    local.get 13
    i64.xor
    local.tee 13
    i64.store offset=72
    local.get 2
    local.get 31
    i64.const 65535
    i64.and
    local.get 14
    i64.xor
    local.get 4
    i64.and
    local.get 14
    i64.xor
    local.tee 14
    i64.store offset=64
    local.get 2
    local.get 30
    i64.const 65535
    i64.and
    local.get 15
    i64.xor
    local.get 4
    i64.and
    local.get 15
    i64.xor
    local.tee 15
    i64.store offset=56
    local.get 2
    local.get 29
    i64.const 65535
    i64.and
    local.get 16
    i64.xor
    local.get 4
    i64.and
    local.get 16
    i64.xor
    local.tee 16
    i64.store offset=48
    local.get 2
    local.get 28
    i64.const 65535
    i64.and
    local.get 17
    i64.xor
    local.get 4
    i64.and
    local.get 17
    i64.xor
    local.tee 17
    i64.store offset=40
    local.get 2
    local.get 27
    i64.const 65535
    i64.and
    local.get 18
    i64.xor
    local.get 4
    i64.and
    local.get 18
    i64.xor
    local.tee 4
    i64.store offset=32
    local.get 0
    local.get 7
    i64.const 8
    i64.shr_u
    i64.store8 offset=31
    local.get 0
    local.get 7
    i64.store8 offset=30
    local.get 0
    local.get 8
    i64.const 8
    i64.shr_u
    i64.store8 offset=29
    local.get 0
    local.get 8
    i64.store8 offset=28
    local.get 0
    local.get 9
    i64.const 8
    i64.shr_u
    i64.store8 offset=27
    local.get 0
    local.get 9
    i64.store8 offset=26
    local.get 0
    local.get 10
    i64.const 8
    i64.shr_u
    i64.store8 offset=25
    local.get 0
    local.get 10
    i64.store8 offset=24
    local.get 0
    local.get 11
    i64.const 8
    i64.shr_u
    i64.store8 offset=23
    local.get 0
    local.get 11
    i64.store8 offset=22
    local.get 0
    local.get 12
    i64.const 8
    i64.shr_u
    i64.store8 offset=21
    local.get 0
    local.get 12
    i64.store8 offset=20
    local.get 0
    local.get 13
    i64.const 8
    i64.shr_u
    i64.store8 offset=19
    local.get 0
    local.get 13
    i64.store8 offset=18
    local.get 0
    local.get 14
    i64.const 8
    i64.shr_u
    i64.store8 offset=17
    local.get 0
    local.get 14
    i64.store8 offset=16
    local.get 0
    local.get 15
    i64.const 8
    i64.shr_u
    i64.store8 offset=15
    local.get 0
    local.get 15
    i64.store8 offset=14
    local.get 0
    local.get 16
    i64.const 8
    i64.shr_u
    i64.store8 offset=13
    local.get 0
    local.get 16
    i64.store8 offset=12
    local.get 0
    local.get 17
    i64.const 8
    i64.shr_u
    i64.store8 offset=11
    local.get 0
    local.get 17
    i64.store8 offset=10
    local.get 0
    local.get 4
    i64.const 8
    i64.shr_u
    i64.store8 offset=9
    local.get 0
    local.get 4
    i64.store8 offset=8
    local.get 0
    local.get 19
    i64.const 8
    i64.shr_u
    i64.store8 offset=7
    local.get 0
    local.get 19
    i64.store8 offset=6
    local.get 0
    local.get 20
    i64.const 8
    i64.shr_u
    i64.store8 offset=5
    local.get 0
    local.get 20
    i64.store8 offset=4
    local.get 0
    local.get 21
    i64.const 8
    i64.shr_u
    i64.store8 offset=3
    local.get 0
    local.get 21
    i64.store8 offset=2
    local.get 0
    local.get 22
    i64.const 8
    i64.shr_u
    i64.store8 offset=1
    local.get 0
    local.get 22
    i64.store8
    local.get 2
    i32.const 128
    i32.add
    global.set 0)
  (func $crypto_hashblocks_sha512_tweet (type 6) (param i32 i32 i64) (result i32)
    (local i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.set 3
    local.get 0
    i64.load8_u offset=56
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=57
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=58
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=59
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=60
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=61
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=62
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=63
    i64.or
    local.set 4
    local.get 0
    i64.load8_u offset=48
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=49
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=50
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=51
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=52
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=53
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=54
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=55
    i64.or
    local.set 5
    local.get 0
    i64.load8_u offset=40
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=41
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=42
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=43
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=44
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=45
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=46
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=47
    i64.or
    local.set 6
    local.get 0
    i64.load8_u offset=32
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=33
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=34
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=35
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=36
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=37
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=38
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=39
    i64.or
    local.set 7
    local.get 0
    i64.load8_u offset=24
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=25
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=26
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=27
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=28
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=29
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=30
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=31
    i64.or
    local.set 8
    local.get 0
    i64.load8_u offset=16
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=17
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=18
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=19
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=20
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=21
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=22
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=23
    i64.or
    local.set 9
    local.get 0
    i64.load8_u offset=8
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=9
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=10
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=11
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=12
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=13
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=14
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=15
    i64.or
    local.set 10
    local.get 0
    i64.load8_u
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=1
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=2
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=3
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=4
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=5
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=6
    i64.or
    i64.const 8
    i64.shl
    local.get 0
    i64.load8_u offset=7
    i64.or
    local.set 11
    block  ;; label = @1
      local.get 2
      i64.const 128
      i64.lt_u
      br_if 0 (;@1;)
      local.get 2
      local.set 12
      loop  ;; label = @2
        i32.const 0
        local.set 13
        loop  ;; label = @3
          local.get 3
          local.get 13
          i32.add
          local.get 1
          local.get 13
          i32.add
          local.tee 14
          i64.load8_u
          i64.const 8
          i64.shl
          local.get 14
          i32.const 1
          i32.add
          i64.load8_u
          i64.or
          i64.const 8
          i64.shl
          local.get 14
          i32.const 2
          i32.add
          i64.load8_u
          i64.or
          i64.const 8
          i64.shl
          local.get 14
          i32.const 3
          i32.add
          i64.load8_u
          i64.or
          i64.const 8
          i64.shl
          local.get 14
          i32.const 4
          i32.add
          i64.load8_u
          i64.or
          i64.const 8
          i64.shl
          local.get 14
          i32.const 5
          i32.add
          i64.load8_u
          i64.or
          i64.const 8
          i64.shl
          local.get 14
          i32.const 6
          i32.add
          i64.load8_u
          i64.or
          i64.const 8
          i64.shl
          local.get 14
          i32.const 7
          i32.add
          i64.load8_u
          i64.or
          i64.store
          local.get 13
          i32.const 8
          i32.add
          local.tee 13
          i32.const 128
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 15
        local.get 5
        local.set 16
        local.get 6
        local.set 17
        local.get 7
        local.set 18
        local.get 8
        local.set 19
        local.get 9
        local.set 20
        local.get 10
        local.set 21
        local.get 11
        local.set 22
        local.get 4
        local.set 23
        loop  ;; label = @3
          local.get 22
          local.tee 24
          i64.const 36
          i64.rotl
          local.get 24
          i64.const 30
          i64.rotl
          i64.xor
          local.get 24
          i64.const 25
          i64.rotl
          i64.xor
          local.get 21
          local.tee 25
          local.get 20
          local.tee 26
          i64.xor
          local.get 24
          i64.and
          local.get 25
          local.get 26
          i64.and
          i64.xor
          i64.add
          local.set 22
          local.get 18
          local.tee 27
          i64.const 50
          i64.rotl
          local.get 27
          i64.const 46
          i64.rotl
          i64.xor
          local.get 27
          i64.const 23
          i64.rotl
          i64.xor
          local.get 16
          local.tee 28
          local.get 27
          i64.const -1
          i64.xor
          i64.and
          local.get 27
          local.get 17
          local.tee 29
          i64.and
          i64.or
          i64.add
          local.get 23
          i64.add
          local.get 15
          i32.const 3
          i32.shl
          i32.const 1040
          i32.add
          i64.load
          i64.add
          local.get 3
          local.get 15
          i32.const 15
          i32.and
          local.tee 14
          i32.const 3
          i32.shl
          i32.add
          i64.load
          i64.add
          local.set 16
          block  ;; label = @4
            local.get 14
            i32.const 15
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.set 13
            i32.const 14
            local.set 14
            loop  ;; label = @5
              local.get 13
              local.get 13
              i64.load
              local.get 3
              local.get 14
              i32.const -5
              i32.add
              i32.const 15
              i32.and
              i32.const 3
              i32.shl
              i32.add
              i64.load
              i64.add
              local.get 3
              local.get 14
              i32.const -13
              i32.add
              i32.const 15
              i32.and
              i32.const 3
              i32.shl
              i32.add
              i64.load
              local.tee 18
              i64.const 56
              i64.rotl
              local.get 18
              i64.const 7
              i64.shr_u
              i64.xor
              local.get 18
              i64.const 63
              i64.rotl
              i64.xor
              i64.add
              local.get 3
              local.get 14
              i32.const 15
              i32.and
              i32.const 3
              i32.shl
              i32.add
              i64.load
              local.tee 18
              i64.const 3
              i64.rotl
              local.get 18
              i64.const 6
              i64.shr_u
              i64.xor
              local.get 18
              i64.const 45
              i64.rotl
              i64.xor
              i64.add
              i64.store
              local.get 13
              i32.const 8
              i32.add
              local.set 13
              local.get 14
              i32.const 1
              i32.add
              local.tee 14
              i32.const 30
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 22
          local.get 16
          i64.add
          local.set 22
          local.get 16
          local.get 19
          i64.add
          local.set 18
          local.get 29
          local.set 16
          local.get 27
          local.set 17
          local.get 26
          local.set 19
          local.get 25
          local.set 20
          local.get 24
          local.set 21
          local.get 28
          local.set 23
          local.get 15
          i32.const 1
          i32.add
          local.tee 15
          i32.const 80
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 1
        i32.const 128
        i32.add
        local.set 1
        local.get 28
        local.get 4
        i64.add
        local.set 4
        local.get 29
        local.get 5
        i64.add
        local.set 5
        local.get 27
        local.get 6
        i64.add
        local.set 6
        local.get 18
        local.get 7
        i64.add
        local.set 7
        local.get 26
        local.get 8
        i64.add
        local.set 8
        local.get 25
        local.get 9
        i64.add
        local.set 9
        local.get 24
        local.get 10
        i64.add
        local.set 10
        local.get 22
        local.get 11
        i64.add
        local.set 11
        local.get 12
        i64.const -128
        i64.add
        local.tee 12
        i64.const 127
        i64.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i64.const 127
      i64.and
      local.set 2
    end
    local.get 0
    local.get 11
    i64.store8 offset=7
    local.get 0
    local.get 10
    i64.store8 offset=15
    local.get 0
    local.get 9
    i64.store8 offset=23
    local.get 0
    local.get 11
    i64.const 8
    i64.shr_u
    i64.store8 offset=6
    local.get 0
    local.get 11
    i64.const 16
    i64.shr_u
    i64.store8 offset=5
    local.get 0
    local.get 11
    i64.const 24
    i64.shr_u
    i64.store8 offset=4
    local.get 0
    local.get 11
    i64.const 32
    i64.shr_u
    i64.store8 offset=3
    local.get 0
    local.get 11
    i64.const 40
    i64.shr_u
    i64.store8 offset=2
    local.get 0
    local.get 11
    i64.const 48
    i64.shr_u
    i64.store8 offset=1
    local.get 0
    local.get 11
    i64.const 56
    i64.shr_u
    i64.store8
    local.get 0
    local.get 10
    i64.const 8
    i64.shr_u
    i64.store8 offset=14
    local.get 0
    local.get 10
    i64.const 16
    i64.shr_u
    i64.store8 offset=13
    local.get 0
    local.get 10
    i64.const 24
    i64.shr_u
    i64.store8 offset=12
    local.get 0
    local.get 10
    i64.const 32
    i64.shr_u
    i64.store8 offset=11
    local.get 0
    local.get 10
    i64.const 40
    i64.shr_u
    i64.store8 offset=10
    local.get 0
    local.get 10
    i64.const 48
    i64.shr_u
    i64.store8 offset=9
    local.get 0
    local.get 10
    i64.const 56
    i64.shr_u
    i64.store8 offset=8
    local.get 0
    local.get 9
    i64.const 8
    i64.shr_u
    i64.store8 offset=22
    local.get 0
    local.get 9
    i64.const 16
    i64.shr_u
    i64.store8 offset=21
    local.get 0
    local.get 9
    i64.const 32
    i64.shr_u
    i64.store8 offset=19
    local.get 0
    local.get 9
    i64.const 24
    i64.shr_u
    i64.store8 offset=20
    local.get 0
    local.get 9
    i64.const 40
    i64.shr_u
    i64.store8 offset=18
    local.get 0
    local.get 8
    i64.store8 offset=31
    local.get 0
    local.get 9
    i64.const 48
    i64.shr_u
    i64.store8 offset=17
    local.get 0
    local.get 9
    i64.const 56
    i64.shr_u
    i64.store8 offset=16
    local.get 0
    local.get 8
    i64.const 8
    i64.shr_u
    i64.store8 offset=30
    local.get 0
    local.get 8
    i64.const 16
    i64.shr_u
    i64.store8 offset=29
    local.get 0
    local.get 8
    i64.const 24
    i64.shr_u
    i64.store8 offset=28
    local.get 0
    local.get 8
    i64.const 32
    i64.shr_u
    i64.store8 offset=27
    local.get 0
    local.get 8
    i64.const 40
    i64.shr_u
    i64.store8 offset=26
    local.get 0
    local.get 7
    i64.store8 offset=39
    local.get 0
    local.get 8
    i64.const 48
    i64.shr_u
    i64.store8 offset=25
    local.get 0
    local.get 8
    i64.const 56
    i64.shr_u
    i64.store8 offset=24
    local.get 0
    local.get 7
    i64.const 8
    i64.shr_u
    i64.store8 offset=38
    local.get 0
    local.get 7
    i64.const 16
    i64.shr_u
    i64.store8 offset=37
    local.get 0
    local.get 7
    i64.const 24
    i64.shr_u
    i64.store8 offset=36
    local.get 0
    local.get 7
    i64.const 32
    i64.shr_u
    i64.store8 offset=35
    local.get 0
    local.get 7
    i64.const 40
    i64.shr_u
    i64.store8 offset=34
    local.get 0
    local.get 7
    i64.const 48
    i64.shr_u
    i64.store8 offset=33
    local.get 0
    local.get 6
    i64.store8 offset=47
    local.get 0
    local.get 7
    i64.const 56
    i64.shr_u
    i64.store8 offset=32
    local.get 0
    local.get 6
    i64.const 8
    i64.shr_u
    i64.store8 offset=46
    local.get 0
    local.get 6
    i64.const 16
    i64.shr_u
    i64.store8 offset=45
    local.get 0
    local.get 6
    i64.const 24
    i64.shr_u
    i64.store8 offset=44
    local.get 0
    local.get 6
    i64.const 32
    i64.shr_u
    i64.store8 offset=43
    local.get 0
    local.get 6
    i64.const 40
    i64.shr_u
    i64.store8 offset=42
    local.get 0
    local.get 6
    i64.const 48
    i64.shr_u
    i64.store8 offset=41
    local.get 0
    local.get 5
    i64.store8 offset=55
    local.get 0
    local.get 6
    i64.const 56
    i64.shr_u
    i64.store8 offset=40
    local.get 0
    local.get 5
    i64.const 8
    i64.shr_u
    i64.store8 offset=54
    local.get 0
    local.get 5
    i64.const 16
    i64.shr_u
    i64.store8 offset=53
    local.get 0
    local.get 5
    i64.const 24
    i64.shr_u
    i64.store8 offset=52
    local.get 0
    local.get 5
    i64.const 32
    i64.shr_u
    i64.store8 offset=51
    local.get 0
    local.get 5
    i64.const 40
    i64.shr_u
    i64.store8 offset=50
    local.get 0
    local.get 5
    i64.const 48
    i64.shr_u
    i64.store8 offset=49
    local.get 0
    local.get 4
    i64.store8 offset=63
    local.get 0
    local.get 5
    i64.const 56
    i64.shr_u
    i64.store8 offset=48
    local.get 0
    local.get 4
    i64.const 8
    i64.shr_u
    i64.store8 offset=62
    local.get 0
    local.get 4
    i64.const 16
    i64.shr_u
    i64.store8 offset=61
    local.get 0
    local.get 4
    i64.const 24
    i64.shr_u
    i64.store8 offset=60
    local.get 0
    local.get 4
    i64.const 32
    i64.shr_u
    i64.store8 offset=59
    local.get 0
    local.get 4
    i64.const 40
    i64.shr_u
    i64.store8 offset=58
    local.get 0
    local.get 4
    i64.const 48
    i64.shr_u
    i64.store8 offset=57
    local.get 0
    local.get 4
    i64.const 56
    i64.shr_u
    i64.store8 offset=56
    local.get 2
    i32.wrap_i64)
  (func $crypto_hash_sha512_tweet (type 6) (param i32 i32 i64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 320
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 256
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i32.const 0
    i64.load offset=1696
    i64.store
    local.get 3
    i32.const 256
    i32.add
    i32.const 24
    i32.add
    local.tee 5
    i32.const 0
    i64.load offset=1704
    i64.store
    local.get 3
    i32.const 256
    i32.add
    i32.const 32
    i32.add
    local.tee 6
    i32.const 0
    i64.load offset=1712
    i64.store
    local.get 3
    i32.const 256
    i32.add
    i32.const 40
    i32.add
    local.tee 7
    i32.const 0
    i64.load offset=1720
    i64.store
    local.get 3
    i32.const 256
    i32.add
    i32.const 48
    i32.add
    local.tee 8
    i32.const 0
    i64.load offset=1728
    i64.store
    local.get 3
    i32.const 256
    i32.add
    i32.const 56
    i32.add
    local.tee 9
    i32.const 0
    i64.load offset=1736
    i64.store
    local.get 3
    i32.const 0
    i64.load offset=1680
    i64.store offset=256
    local.get 3
    i32.const 0
    i64.load offset=1688
    i64.store offset=264
    local.get 3
    i32.const 256
    i32.add
    local.get 1
    local.get 2
    call $crypto_hashblocks_sha512_tweet
    drop
    local.get 3
    i32.const 0
    i32.const 256
    call $memset
    local.set 10
    local.get 2
    i64.const 127
    i64.and
    local.tee 11
    i32.wrap_i64
    local.set 3
    block  ;; label = @1
      local.get 11
      i64.eqz
      br_if 0 (;@1;)
      local.get 10
      local.get 1
      local.get 2
      i32.wrap_i64
      i32.add
      local.get 3
      i32.sub
      local.get 3
      call $memcpy
      drop
    end
    local.get 10
    local.get 3
    i32.add
    i32.const 128
    i32.store8
    local.get 10
    i32.const 256
    local.get 11
    i64.const 112
    i64.lt_u
    i32.const 7
    i32.shl
    i32.sub
    local.tee 1
    i32.add
    local.tee 3
    i32.const -1
    i32.add
    local.get 2
    i32.wrap_i64
    i32.const 3
    i32.shl
    i32.store8
    local.get 3
    i32.const -9
    i32.add
    local.get 2
    i64.const 61
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -2
    i32.add
    local.get 2
    i64.const 5
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -3
    i32.add
    local.get 2
    i64.const 13
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -4
    i32.add
    local.get 2
    i64.const 21
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -5
    i32.add
    local.get 2
    i64.const 29
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -6
    i32.add
    local.get 2
    i64.const 37
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -7
    i32.add
    local.get 2
    i64.const 45
    i64.shr_u
    i64.store8
    local.get 3
    i32.const -8
    i32.add
    local.get 2
    i64.const 53
    i64.shr_u
    i64.store8
    local.get 10
    i32.const 256
    i32.add
    local.get 10
    local.get 1
    i64.extend_i32_u
    call $crypto_hashblocks_sha512_tweet
    drop
    local.get 0
    i32.const 56
    i32.add
    local.get 9
    i64.load
    i64.store align=1
    local.get 0
    i32.const 48
    i32.add
    local.get 8
    i64.load
    i64.store align=1
    local.get 0
    i32.const 40
    i32.add
    local.get 7
    i64.load
    i64.store align=1
    local.get 0
    i32.const 32
    i32.add
    local.get 6
    i64.load
    i64.store align=1
    local.get 0
    i32.const 24
    i32.add
    local.get 5
    i64.load
    i64.store align=1
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    i64.load
    i64.store align=1
    local.get 0
    i32.const 8
    i32.add
    local.get 10
    i64.load offset=264
    i64.store align=1
    local.get 0
    local.get 10
    i64.load offset=256
    i64.store align=1
    local.get 10
    i32.const 320
    i32.add
    global.set 0
    i32.const 0)
  (func $cswap (type 1) (param i32 i32 i32)
    (local i64 i32 i32 i64 i64 i32 i32)
    i64.const 0
    local.get 2
    i64.extend_i32_u
    i64.sub
    local.set 3
    i32.const 0
    local.set 4
    loop  ;; label = @1
      local.get 0
      local.get 4
      i32.add
      local.tee 5
      local.get 1
      local.get 4
      i32.add
      local.tee 2
      i64.load
      local.get 5
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 2
      local.get 2
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 8
      i32.add
      local.tee 8
      local.get 2
      i32.const 8
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 16
      i32.add
      local.tee 8
      local.get 2
      i32.const 16
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 24
      i32.add
      local.tee 8
      local.get 2
      i32.const 24
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 32
      i32.add
      local.tee 8
      local.get 2
      i32.const 32
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 40
      i32.add
      local.tee 8
      local.get 2
      i32.const 40
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 48
      i32.add
      local.tee 8
      local.get 2
      i32.const 48
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 56
      i32.add
      local.tee 8
      local.get 2
      i32.const 56
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 64
      i32.add
      local.tee 8
      local.get 2
      i32.const 64
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 72
      i32.add
      local.tee 8
      local.get 2
      i32.const 72
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 80
      i32.add
      local.tee 8
      local.get 2
      i32.const 80
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 88
      i32.add
      local.tee 8
      local.get 2
      i32.const 88
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 96
      i32.add
      local.tee 8
      local.get 2
      i32.const 96
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 104
      i32.add
      local.tee 8
      local.get 2
      i32.const 104
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 112
      i32.add
      local.tee 8
      local.get 2
      i32.const 112
      i32.add
      local.tee 9
      i64.load
      local.get 8
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 9
      local.get 9
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 5
      i32.const 120
      i32.add
      local.tee 5
      local.get 2
      i32.const 120
      i32.add
      local.tee 2
      i64.load
      local.get 5
      i64.load
      local.tee 6
      i64.xor
      local.get 3
      i64.and
      local.tee 7
      local.get 6
      i64.xor
      i64.store
      local.get 2
      local.get 2
      i64.load
      local.get 7
      i64.xor
      i64.store
      local.get 4
      i32.const 128
      i32.add
      local.tee 4
      i32.const 512
      i32.ne
      br_if 0 (;@1;)
    end)
  (func $add (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 1152
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i64.load offset=128
    local.get 0
    i64.load
    i64.sub
    i64.store offset=1024
    local.get 2
    local.get 0
    i32.const 136
    i32.add
    local.tee 3
    i64.load
    local.get 0
    i64.load offset=8
    i64.sub
    i64.store offset=1032
    local.get 2
    local.get 0
    i32.const 144
    i32.add
    local.tee 4
    i64.load
    local.get 0
    i64.load offset=16
    i64.sub
    i64.store offset=1040
    local.get 2
    local.get 0
    i32.const 152
    i32.add
    local.tee 5
    i64.load
    local.get 0
    i64.load offset=24
    i64.sub
    i64.store offset=1048
    local.get 2
    local.get 0
    i32.const 160
    i32.add
    local.tee 6
    i64.load
    local.get 0
    i64.load offset=32
    i64.sub
    i64.store offset=1056
    local.get 2
    local.get 0
    i32.const 168
    i32.add
    local.tee 7
    i64.load
    local.get 0
    i64.load offset=40
    i64.sub
    i64.store offset=1064
    local.get 2
    local.get 0
    i32.const 176
    i32.add
    local.tee 8
    i64.load
    local.get 0
    i64.load offset=48
    i64.sub
    i64.store offset=1072
    local.get 2
    local.get 0
    i32.const 184
    i32.add
    local.tee 9
    i64.load
    local.get 0
    i64.load offset=56
    i64.sub
    i64.store offset=1080
    local.get 2
    local.get 0
    i32.const 192
    i32.add
    local.tee 10
    i64.load
    local.get 0
    i64.load offset=64
    i64.sub
    i64.store offset=1088
    local.get 2
    local.get 0
    i32.const 200
    i32.add
    local.tee 11
    i64.load
    local.get 0
    i64.load offset=72
    i64.sub
    i64.store offset=1096
    local.get 2
    local.get 0
    i32.const 208
    i32.add
    local.tee 12
    i64.load
    local.get 0
    i64.load offset=80
    i64.sub
    i64.store offset=1104
    local.get 2
    local.get 0
    i32.const 216
    i32.add
    local.tee 13
    i64.load
    local.get 0
    i64.load offset=88
    i64.sub
    i64.store offset=1112
    local.get 2
    local.get 0
    i32.const 224
    i32.add
    local.tee 14
    i64.load
    local.get 0
    i64.load offset=96
    i64.sub
    i64.store offset=1120
    local.get 2
    local.get 0
    i32.const 232
    i32.add
    local.tee 15
    i64.load
    local.get 0
    i64.load offset=104
    i64.sub
    i64.store offset=1128
    local.get 2
    local.get 0
    i32.const 240
    i32.add
    local.tee 16
    i64.load
    local.get 0
    i64.load offset=112
    i64.sub
    i64.store offset=1136
    local.get 2
    local.get 0
    i32.const 248
    i32.add
    local.tee 17
    i64.load
    local.get 0
    i64.load offset=120
    i64.sub
    i64.store offset=1144
    local.get 2
    local.get 1
    i64.load offset=128
    local.get 1
    i64.load
    i64.sub
    i64.store offset=512
    local.get 2
    local.get 1
    i32.const 136
    i32.add
    local.tee 18
    i64.load
    local.get 1
    i64.load offset=8
    i64.sub
    i64.store offset=520
    local.get 2
    local.get 1
    i32.const 144
    i32.add
    local.tee 19
    i64.load
    local.get 1
    i64.load offset=16
    i64.sub
    i64.store offset=528
    local.get 2
    local.get 1
    i32.const 152
    i32.add
    local.tee 20
    i64.load
    local.get 1
    i64.load offset=24
    i64.sub
    i64.store offset=536
    local.get 2
    local.get 1
    i32.const 160
    i32.add
    local.tee 21
    i64.load
    local.get 1
    i64.load offset=32
    i64.sub
    i64.store offset=544
    local.get 2
    local.get 1
    i32.const 168
    i32.add
    local.tee 22
    i64.load
    local.get 1
    i64.load offset=40
    i64.sub
    i64.store offset=552
    local.get 2
    local.get 1
    i32.const 176
    i32.add
    local.tee 23
    i64.load
    local.get 1
    i64.load offset=48
    i64.sub
    i64.store offset=560
    local.get 2
    local.get 1
    i32.const 184
    i32.add
    local.tee 24
    i64.load
    local.get 1
    i64.load offset=56
    i64.sub
    i64.store offset=568
    local.get 2
    local.get 1
    i32.const 192
    i32.add
    local.tee 25
    i64.load
    local.get 1
    i64.load offset=64
    i64.sub
    i64.store offset=576
    local.get 2
    local.get 1
    i32.const 200
    i32.add
    local.tee 26
    i64.load
    local.get 1
    i64.load offset=72
    i64.sub
    i64.store offset=584
    local.get 2
    local.get 1
    i32.const 208
    i32.add
    local.tee 27
    i64.load
    local.get 1
    i64.load offset=80
    i64.sub
    i64.store offset=592
    local.get 2
    local.get 1
    i32.const 216
    i32.add
    local.tee 28
    i64.load
    local.get 1
    i64.load offset=88
    i64.sub
    i64.store offset=600
    local.get 2
    local.get 1
    i32.const 224
    i32.add
    local.tee 29
    i64.load
    local.get 1
    i64.load offset=96
    i64.sub
    i64.store offset=608
    local.get 2
    local.get 1
    i32.const 232
    i32.add
    local.tee 30
    i64.load
    local.get 1
    i64.load offset=104
    i64.sub
    i64.store offset=616
    local.get 2
    local.get 1
    i32.const 240
    i32.add
    local.tee 31
    i64.load
    local.get 1
    i64.load offset=112
    i64.sub
    i64.store offset=624
    local.get 2
    local.get 1
    i32.const 248
    i32.add
    local.tee 32
    i64.load
    local.get 1
    i64.load offset=120
    i64.sub
    i64.store offset=632
    local.get 2
    i32.const 1024
    i32.add
    local.get 2
    i32.const 1024
    i32.add
    local.get 2
    i32.const 512
    i32.add
    call $M
    local.get 2
    local.get 0
    i64.load offset=128
    local.get 0
    i64.load
    i64.add
    i64.store offset=896
    local.get 2
    local.get 3
    i64.load
    local.get 0
    i64.load offset=8
    i64.add
    i64.store offset=904
    local.get 2
    local.get 4
    i64.load
    local.get 0
    i64.load offset=16
    i64.add
    i64.store offset=912
    local.get 2
    local.get 5
    i64.load
    local.get 0
    i64.load offset=24
    i64.add
    i64.store offset=920
    local.get 2
    local.get 6
    i64.load
    local.get 0
    i64.load offset=32
    i64.add
    i64.store offset=928
    local.get 2
    local.get 7
    i64.load
    local.get 0
    i64.load offset=40
    i64.add
    i64.store offset=936
    local.get 2
    local.get 8
    i64.load
    local.get 0
    i64.load offset=48
    i64.add
    i64.store offset=944
    local.get 2
    local.get 9
    i64.load
    local.get 0
    i64.load offset=56
    i64.add
    i64.store offset=952
    local.get 2
    local.get 10
    i64.load
    local.get 0
    i64.load offset=64
    i64.add
    i64.store offset=960
    local.get 2
    local.get 11
    i64.load
    local.get 0
    i64.load offset=72
    i64.add
    i64.store offset=968
    local.get 2
    local.get 12
    i64.load
    local.get 0
    i64.load offset=80
    i64.add
    i64.store offset=976
    local.get 2
    local.get 13
    i64.load
    local.get 0
    i64.load offset=88
    i64.add
    i64.store offset=984
    local.get 2
    local.get 14
    i64.load
    local.get 0
    i64.load offset=96
    i64.add
    i64.store offset=992
    local.get 2
    local.get 15
    i64.load
    local.get 0
    i64.load offset=104
    i64.add
    i64.store offset=1000
    local.get 2
    local.get 16
    i64.load
    local.get 0
    i64.load offset=112
    i64.add
    i64.store offset=1008
    local.get 2
    local.get 17
    i64.load
    local.get 0
    i64.load offset=120
    i64.add
    i64.store offset=1016
    local.get 2
    local.get 1
    i64.load offset=128
    local.get 1
    i64.load
    i64.add
    i64.store offset=512
    local.get 2
    local.get 18
    i64.load
    local.get 1
    i64.load offset=8
    i64.add
    i64.store offset=520
    local.get 2
    local.get 19
    i64.load
    local.get 1
    i64.load offset=16
    i64.add
    i64.store offset=528
    local.get 2
    local.get 20
    i64.load
    local.get 1
    i64.load offset=24
    i64.add
    i64.store offset=536
    local.get 2
    local.get 21
    i64.load
    local.get 1
    i64.load offset=32
    i64.add
    i64.store offset=544
    local.get 2
    local.get 22
    i64.load
    local.get 1
    i64.load offset=40
    i64.add
    i64.store offset=552
    local.get 2
    local.get 23
    i64.load
    local.get 1
    i64.load offset=48
    i64.add
    i64.store offset=560
    local.get 2
    local.get 24
    i64.load
    local.get 1
    i64.load offset=56
    i64.add
    i64.store offset=568
    local.get 2
    local.get 25
    i64.load
    local.get 1
    i64.load offset=64
    i64.add
    i64.store offset=576
    local.get 2
    local.get 26
    i64.load
    local.get 1
    i64.load offset=72
    i64.add
    i64.store offset=584
    local.get 2
    local.get 27
    i64.load
    local.get 1
    i64.load offset=80
    i64.add
    i64.store offset=592
    local.get 2
    local.get 28
    i64.load
    local.get 1
    i64.load offset=88
    i64.add
    i64.store offset=600
    local.get 2
    local.get 29
    i64.load
    local.get 1
    i64.load offset=96
    i64.add
    i64.store offset=608
    local.get 2
    local.get 30
    i64.load
    local.get 1
    i64.load offset=104
    i64.add
    i64.store offset=616
    local.get 2
    local.get 31
    i64.load
    local.get 1
    i64.load offset=112
    i64.add
    i64.store offset=624
    local.get 2
    local.get 32
    i64.load
    local.get 1
    i64.load offset=120
    i64.add
    i64.store offset=632
    local.get 2
    i32.const 896
    i32.add
    local.get 2
    i32.const 896
    i32.add
    local.get 2
    i32.const 512
    i32.add
    call $M
    local.get 2
    i32.const 768
    i32.add
    local.get 0
    i32.const 384
    i32.add
    local.tee 3
    local.get 1
    i32.const 384
    i32.add
    call $M
    local.get 2
    i32.const 768
    i32.add
    local.get 2
    i32.const 768
    i32.add
    i32.const 2512
    call $M
    local.get 2
    i32.const 640
    i32.add
    local.get 0
    i32.const 256
    i32.add
    local.tee 4
    local.get 1
    i32.const 256
    i32.add
    call $M
    local.get 2
    local.get 2
    i64.load offset=712
    i64.const 1
    i64.shl
    local.tee 33
    i64.store offset=712
    local.get 2
    local.get 2
    i64.load offset=704
    i64.const 1
    i64.shl
    local.tee 34
    i64.store offset=704
    local.get 2
    local.get 2
    i64.load offset=696
    i64.const 1
    i64.shl
    local.tee 35
    i64.store offset=696
    local.get 2
    local.get 2
    i64.load offset=688
    i64.const 1
    i64.shl
    local.tee 36
    i64.store offset=688
    local.get 2
    local.get 2
    i64.load offset=680
    i64.const 1
    i64.shl
    local.tee 37
    i64.store offset=680
    local.get 2
    local.get 2
    i64.load offset=672
    i64.const 1
    i64.shl
    local.tee 38
    i64.store offset=672
    local.get 2
    local.get 2
    i64.load offset=664
    i64.const 1
    i64.shl
    local.tee 39
    i64.store offset=664
    local.get 2
    local.get 2
    i64.load offset=656
    i64.const 1
    i64.shl
    local.tee 40
    i64.store offset=656
    local.get 2
    local.get 2
    i64.load offset=648
    i64.const 1
    i64.shl
    local.tee 41
    i64.store offset=648
    local.get 2
    local.get 2
    i64.load offset=640
    i64.const 1
    i64.shl
    local.tee 42
    i64.store offset=640
    local.get 2
    local.get 2
    i64.load offset=720
    i64.const 1
    i64.shl
    local.tee 43
    i64.store offset=720
    local.get 2
    local.get 2
    i64.load offset=728
    i64.const 1
    i64.shl
    local.tee 44
    i64.store offset=728
    local.get 2
    local.get 2
    i64.load offset=736
    i64.const 1
    i64.shl
    local.tee 45
    i64.store offset=736
    local.get 2
    local.get 2
    i64.load offset=744
    i64.const 1
    i64.shl
    local.tee 46
    i64.store offset=744
    local.get 2
    local.get 2
    i64.load offset=752
    i64.const 1
    i64.shl
    local.tee 47
    i64.store offset=752
    local.get 2
    local.get 2
    i64.load offset=760
    i64.const 1
    i64.shl
    local.tee 48
    i64.store offset=760
    local.get 2
    local.get 2
    i64.load offset=896
    local.tee 49
    local.get 2
    i64.load offset=1024
    local.tee 50
    i64.sub
    i64.store offset=384
    local.get 2
    local.get 2
    i64.load offset=904
    local.tee 51
    local.get 2
    i64.load offset=1032
    local.tee 52
    i64.sub
    i64.store offset=392
    local.get 2
    local.get 2
    i64.load offset=912
    local.tee 53
    local.get 2
    i64.load offset=1040
    local.tee 54
    i64.sub
    i64.store offset=400
    local.get 2
    local.get 2
    i64.load offset=920
    local.tee 55
    local.get 2
    i64.load offset=1048
    local.tee 56
    i64.sub
    i64.store offset=408
    local.get 2
    local.get 2
    i64.load offset=928
    local.tee 57
    local.get 2
    i64.load offset=1056
    local.tee 58
    i64.sub
    i64.store offset=416
    local.get 2
    local.get 2
    i64.load offset=936
    local.tee 59
    local.get 2
    i64.load offset=1064
    local.tee 60
    i64.sub
    i64.store offset=424
    local.get 2
    local.get 2
    i64.load offset=944
    local.tee 61
    local.get 2
    i64.load offset=1072
    local.tee 62
    i64.sub
    i64.store offset=432
    local.get 2
    local.get 2
    i64.load offset=952
    local.tee 63
    local.get 2
    i64.load offset=1080
    local.tee 64
    i64.sub
    i64.store offset=440
    local.get 2
    local.get 2
    i64.load offset=960
    local.tee 65
    local.get 2
    i64.load offset=1088
    local.tee 66
    i64.sub
    i64.store offset=448
    local.get 2
    local.get 2
    i64.load offset=968
    local.tee 67
    local.get 2
    i64.load offset=1096
    local.tee 68
    i64.sub
    i64.store offset=456
    local.get 2
    local.get 2
    i64.load offset=976
    local.tee 69
    local.get 2
    i64.load offset=1104
    local.tee 70
    i64.sub
    i64.store offset=464
    local.get 2
    local.get 2
    i64.load offset=984
    local.tee 71
    local.get 2
    i64.load offset=1112
    local.tee 72
    i64.sub
    i64.store offset=472
    local.get 2
    local.get 2
    i64.load offset=992
    local.tee 73
    local.get 2
    i64.load offset=1120
    local.tee 74
    i64.sub
    i64.store offset=480
    local.get 2
    local.get 2
    i64.load offset=1000
    local.tee 75
    local.get 2
    i64.load offset=1128
    local.tee 76
    i64.sub
    i64.store offset=488
    local.get 2
    local.get 2
    i64.load offset=1008
    local.tee 77
    local.get 2
    i64.load offset=1136
    local.tee 78
    i64.sub
    i64.store offset=496
    local.get 2
    local.get 2
    i64.load offset=1016
    local.tee 79
    local.get 2
    i64.load offset=1144
    local.tee 80
    i64.sub
    i64.store offset=504
    local.get 2
    local.get 42
    local.get 2
    i64.load offset=768
    local.tee 81
    i64.sub
    i64.store offset=256
    local.get 2
    local.get 41
    local.get 2
    i64.load offset=776
    local.tee 82
    i64.sub
    i64.store offset=264
    local.get 2
    local.get 40
    local.get 2
    i64.load offset=784
    local.tee 83
    i64.sub
    i64.store offset=272
    local.get 2
    local.get 39
    local.get 2
    i64.load offset=792
    local.tee 84
    i64.sub
    i64.store offset=280
    local.get 2
    local.get 38
    local.get 2
    i64.load offset=800
    local.tee 85
    i64.sub
    i64.store offset=288
    local.get 2
    local.get 37
    local.get 2
    i64.load offset=808
    local.tee 86
    i64.sub
    i64.store offset=296
    local.get 2
    local.get 36
    local.get 2
    i64.load offset=816
    local.tee 87
    i64.sub
    i64.store offset=304
    local.get 2
    local.get 35
    local.get 2
    i64.load offset=824
    local.tee 88
    i64.sub
    i64.store offset=312
    local.get 2
    local.get 34
    local.get 2
    i64.load offset=832
    local.tee 89
    i64.sub
    i64.store offset=320
    local.get 2
    local.get 33
    local.get 2
    i64.load offset=840
    local.tee 90
    i64.sub
    i64.store offset=328
    local.get 2
    local.get 43
    local.get 2
    i64.load offset=848
    local.tee 91
    i64.sub
    i64.store offset=336
    local.get 2
    local.get 44
    local.get 2
    i64.load offset=856
    local.tee 92
    i64.sub
    i64.store offset=344
    local.get 2
    local.get 45
    local.get 2
    i64.load offset=864
    local.tee 93
    i64.sub
    i64.store offset=352
    local.get 2
    local.get 46
    local.get 2
    i64.load offset=872
    local.tee 94
    i64.sub
    i64.store offset=360
    local.get 2
    local.get 47
    local.get 2
    i64.load offset=880
    local.tee 95
    i64.sub
    i64.store offset=368
    local.get 2
    local.get 48
    local.get 2
    i64.load offset=888
    local.tee 96
    i64.sub
    i64.store offset=376
    local.get 2
    local.get 96
    local.get 48
    i64.add
    i64.store offset=248
    local.get 2
    local.get 95
    local.get 47
    i64.add
    i64.store offset=240
    local.get 2
    local.get 94
    local.get 46
    i64.add
    i64.store offset=232
    local.get 2
    local.get 93
    local.get 45
    i64.add
    i64.store offset=224
    local.get 2
    local.get 92
    local.get 44
    i64.add
    i64.store offset=216
    local.get 2
    local.get 91
    local.get 43
    i64.add
    i64.store offset=208
    local.get 2
    local.get 90
    local.get 33
    i64.add
    i64.store offset=200
    local.get 2
    local.get 89
    local.get 34
    i64.add
    i64.store offset=192
    local.get 2
    local.get 88
    local.get 35
    i64.add
    i64.store offset=184
    local.get 2
    local.get 87
    local.get 36
    i64.add
    i64.store offset=176
    local.get 2
    local.get 86
    local.get 37
    i64.add
    i64.store offset=168
    local.get 2
    local.get 85
    local.get 38
    i64.add
    i64.store offset=160
    local.get 2
    local.get 84
    local.get 39
    i64.add
    i64.store offset=152
    local.get 2
    local.get 83
    local.get 40
    i64.add
    i64.store offset=144
    local.get 2
    local.get 82
    local.get 41
    i64.add
    i64.store offset=136
    local.get 2
    local.get 81
    local.get 42
    i64.add
    i64.store offset=128
    local.get 2
    local.get 80
    local.get 79
    i64.add
    i64.store offset=120
    local.get 2
    local.get 78
    local.get 77
    i64.add
    i64.store offset=112
    local.get 2
    local.get 76
    local.get 75
    i64.add
    i64.store offset=104
    local.get 2
    local.get 74
    local.get 73
    i64.add
    i64.store offset=96
    local.get 2
    local.get 72
    local.get 71
    i64.add
    i64.store offset=88
    local.get 2
    local.get 70
    local.get 69
    i64.add
    i64.store offset=80
    local.get 2
    local.get 68
    local.get 67
    i64.add
    i64.store offset=72
    local.get 2
    local.get 66
    local.get 65
    i64.add
    i64.store offset=64
    local.get 2
    local.get 64
    local.get 63
    i64.add
    i64.store offset=56
    local.get 2
    local.get 62
    local.get 61
    i64.add
    i64.store offset=48
    local.get 2
    local.get 60
    local.get 59
    i64.add
    i64.store offset=40
    local.get 2
    local.get 58
    local.get 57
    i64.add
    i64.store offset=32
    local.get 2
    local.get 56
    local.get 55
    i64.add
    i64.store offset=24
    local.get 2
    local.get 54
    local.get 53
    i64.add
    i64.store offset=16
    local.get 2
    local.get 52
    local.get 51
    i64.add
    i64.store offset=8
    local.get 2
    local.get 50
    local.get 49
    i64.add
    i64.store
    local.get 0
    local.get 2
    i32.const 384
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $M
    local.get 0
    i32.const 128
    i32.add
    local.get 2
    local.get 2
    i32.const 128
    i32.add
    call $M
    local.get 4
    local.get 2
    i32.const 128
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $M
    local.get 3
    local.get 2
    i32.const 384
    i32.add
    local.get 2
    call $M
    local.get 2
    i32.const 1152
    i32.add
    global.set 0)
  (func $pack (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 416
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 256
    i32.add
    local.get 1
    i32.const 256
    i32.add
    local.tee 3
    i32.const 128
    call $memcpy
    drop
    i32.const 253
    local.set 4
    loop  ;; label = @1
      local.get 2
      i32.const 256
      i32.add
      local.get 2
      i32.const 256
      i32.add
      local.get 2
      i32.const 256
      i32.add
      call $M
      block  ;; label = @2
        local.get 4
        i32.const 2
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 256
        i32.add
        local.get 2
        i32.const 256
        i32.add
        local.get 3
        call $M
      end
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    local.get 2
    i32.const 256
    i32.add
    i32.const 128
    call $memcpy
    local.tee 2
    i32.const 256
    i32.add
    local.get 1
    local.get 2
    call $M
    local.get 2
    i32.const 128
    i32.add
    local.get 1
    i32.const 128
    i32.add
    local.get 2
    call $M
    local.get 0
    local.get 2
    i32.const 128
    i32.add
    call $pack25519
    local.get 2
    i32.const 384
    i32.add
    local.get 2
    i32.const 256
    i32.add
    call $pack25519
    local.get 0
    local.get 0
    i32.load8_u offset=31
    local.get 2
    i32.load8_u offset=384
    i32.const 7
    i32.shl
    i32.xor
    i32.store8 offset=31
    local.get 2
    i32.const 416
    i32.add
    global.set 0)
  (func $modL (type 2) (param i32 i32)
    (local i32 i64 i64 i32 i64 i32 i64 i32)
    local.get 1
    i32.const 248
    i32.add
    local.set 2
    i64.const 63
    local.set 3
    i64.const 51
    local.set 4
    loop  ;; label = @1
      local.get 1
      local.get 3
      i32.wrap_i64
      i32.const 3
      i32.shl
      i32.add
      local.set 5
      i64.const 20
      local.set 6
      i32.const 0
      local.set 7
      i64.const 0
      local.set 8
      loop  ;; label = @2
        local.get 2
        local.get 7
        i32.add
        local.tee 9
        local.get 8
        local.get 5
        i64.load
        local.get 7
        i32.const 2000
        i32.add
        i64.load
        i64.mul
        i64.const 4
        i64.shl
        i64.sub
        local.get 9
        i64.load
        i64.add
        local.tee 8
        local.get 8
        i64.const 128
        i64.add
        local.tee 8
        i64.const -256
        i64.and
        i64.sub
        i64.store
        local.get 8
        i64.const 8
        i64.shr_s
        local.set 8
        local.get 7
        i32.const 8
        i32.add
        local.set 7
        local.get 6
        i64.const -1
        i64.add
        local.tee 6
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
      local.get 1
      local.get 4
      i32.wrap_i64
      i32.const 3
      i32.shl
      i32.add
      local.tee 7
      local.get 7
      i64.load
      local.get 8
      i64.add
      i64.store
      local.get 5
      i64.const 0
      i64.store
      local.get 2
      i32.const -8
      i32.add
      local.set 2
      local.get 4
      i64.const -1
      i64.add
      local.set 4
      local.get 3
      i64.const -1
      i64.add
      local.tee 3
      i64.const 31
      i64.gt_u
      br_if 0 (;@1;)
    end
    i64.const 0
    local.set 8
    i64.const 32
    local.set 6
    i32.const 0
    local.set 7
    loop  ;; label = @1
      local.get 1
      local.get 7
      i32.add
      local.tee 9
      local.get 8
      local.get 1
      i64.load offset=248
      i64.const 4
      i64.shr_s
      local.get 7
      i32.const 2000
      i32.add
      i64.load
      i64.mul
      i64.sub
      local.get 9
      i64.load
      i64.add
      local.tee 8
      i64.const 255
      i64.and
      i64.store
      local.get 8
      i64.const 8
      i64.shr_s
      local.set 8
      local.get 7
      i32.const 8
      i32.add
      local.set 7
      local.get 6
      i64.const -1
      i64.add
      local.tee 6
      i64.eqz
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 1
    local.get 1
    i64.load
    local.get 8
    i64.const -237
    i64.mul
    i64.add
    local.tee 6
    i64.store
    local.get 1
    local.get 1
    i64.load offset=8
    local.get 8
    i64.const -211
    i64.mul
    i64.add
    i64.store offset=8
    local.get 1
    local.get 1
    i64.load offset=16
    local.get 8
    i64.const -245
    i64.mul
    i64.add
    i64.store offset=16
    local.get 1
    local.get 1
    i64.load offset=24
    local.get 8
    i64.const -92
    i64.mul
    i64.add
    i64.store offset=24
    local.get 1
    local.get 1
    i64.load offset=32
    local.get 8
    i64.const -26
    i64.mul
    i64.add
    i64.store offset=32
    local.get 1
    local.get 1
    i64.load offset=40
    local.get 8
    i64.const -99
    i64.mul
    i64.add
    i64.store offset=40
    local.get 1
    local.get 1
    i64.load offset=48
    local.get 8
    i64.const -18
    i64.mul
    i64.add
    i64.store offset=48
    local.get 1
    local.get 1
    i64.load offset=56
    local.get 8
    i64.const -88
    i64.mul
    i64.add
    i64.store offset=56
    local.get 1
    local.get 1
    i64.load offset=64
    local.get 8
    i64.const -214
    i64.mul
    i64.add
    i64.store offset=64
    local.get 1
    local.get 1
    i64.load offset=72
    local.get 8
    i64.const -156
    i64.mul
    i64.add
    i64.store offset=72
    local.get 1
    local.get 1
    i64.load offset=80
    local.get 8
    i64.const -247
    i64.mul
    i64.add
    i64.store offset=80
    local.get 1
    local.get 1
    i64.load offset=88
    local.get 8
    i64.const -162
    i64.mul
    i64.add
    i64.store offset=88
    local.get 1
    local.get 1
    i64.load offset=96
    local.get 8
    i64.const 222
    i64.mul
    local.tee 3
    i64.sub
    i64.store offset=96
    local.get 1
    local.get 1
    i64.load offset=104
    local.get 8
    i64.const -249
    i64.mul
    i64.add
    i64.store offset=104
    local.get 1
    local.get 1
    i64.load offset=112
    local.get 3
    i64.sub
    i64.store offset=112
    local.get 1
    local.get 1
    i64.load offset=120
    local.get 8
    i64.const -20
    i64.mul
    i64.add
    i64.store offset=120
    local.get 1
    local.get 1
    i64.load offset=248
    local.get 8
    i64.const 4
    i64.shl
    i64.sub
    i64.store offset=248
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 32
          i32.add
          local.get 1
          i32.le_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 264
          i32.add
          local.get 0
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 8
        i32.add
        local.set 7
        i64.const 32
        local.set 8
        loop  ;; label = @3
          local.get 7
          local.get 7
          i64.load
          local.get 6
          i64.const 8
          i64.shr_s
          i64.add
          local.tee 3
          i64.store
          local.get 0
          local.get 6
          i64.store8
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 7
          i32.const 8
          i32.add
          local.set 7
          local.get 3
          local.set 6
          local.get 8
          i64.const -1
          i64.add
          local.tee 8
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      local.get 1
      i64.load offset=8
      local.get 6
      i64.const 8
      i64.shr_s
      i64.add
      i64.store offset=8
      local.get 0
      local.get 1
      i64.load
      i64.store8
      local.get 0
      i32.const 1
      i32.add
      local.set 9
      block  ;; label = @2
        local.get 0
        i32.const 32
        i32.add
        local.get 1
        i32.const 8
        i32.add
        local.tee 7
        i32.le_u
        br_if 0 (;@2;)
        local.get 9
        local.get 1
        i32.const 264
        i32.add
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 1
        i32.add
        local.set 9
        i64.const 31
        local.set 6
        loop  ;; label = @3
          local.get 7
          i64.load
          local.set 8
          local.get 7
          i32.const 8
          i32.add
          local.tee 7
          local.get 7
          i64.load
          local.get 8
          i64.const 8
          i64.shr_s
          i64.add
          i64.store
          local.get 9
          local.get 8
          i64.store8
          local.get 9
          i32.const 1
          i32.add
          local.set 9
          local.get 6
          i64.const -1
          i64.add
          local.tee 6
          i64.eqz
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      i32.const 16
      i32.add
      local.set 7
      local.get 1
      i64.load offset=8
      local.set 8
      i64.const 31
      local.set 6
      loop  ;; label = @2
        local.get 7
        local.get 7
        i64.load
        local.get 8
        i64.const 8
        i64.shr_s
        i64.add
        local.tee 3
        i64.store
        local.get 9
        local.get 8
        i64.store8
        local.get 7
        i32.const 8
        i32.add
        local.set 7
        local.get 9
        i32.const 1
        i32.add
        local.set 9
        local.get 3
        local.set 8
        local.get 6
        i64.const -1
        i64.add
        local.tee 6
        i64.eqz
        i32.eqz
        br_if 0 (;@2;)
      end
    end)
  (func $crypto_sign_ed25519_tweet_open (type 7) (param i32 i32 i32 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    i32.const 2336
    i32.sub
    local.tee 5
    global.set 0
    local.get 1
    i64.const -1
    i64.store
    i32.const -1
    local.set 6
    block  ;; label = @1
      local.get 3
      i64.const 64
      i64.lt_u
      br_if 0 (;@1;)
      local.get 5
      i64.const 1
      i64.store offset=256
      local.get 5
      i32.const 264
      i32.add
      i32.const 0
      i32.const 120
      call $memset
      local.set 7
      local.get 5
      i32.const 136
      i32.add
      local.tee 8
      local.get 4
      i64.load8_u offset=3
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=2
      i64.or
      i64.store
      local.get 5
      i32.const 144
      i32.add
      local.get 4
      i64.load8_u offset=5
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=4
      i64.or
      i64.store
      local.get 5
      i32.const 152
      i32.add
      local.get 4
      i64.load8_u offset=7
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=6
      i64.or
      i64.store
      local.get 5
      i32.const 160
      i32.add
      local.get 4
      i64.load8_u offset=9
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=8
      i64.or
      i64.store
      local.get 5
      i32.const 168
      i32.add
      local.get 4
      i64.load8_u offset=11
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=10
      i64.or
      i64.store
      local.get 5
      local.get 4
      i64.load8_u offset=1
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u
      i64.or
      i64.store offset=128
      local.get 5
      i32.const 176
      i32.add
      local.get 4
      i64.load8_u offset=13
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=12
      i64.or
      i64.store
      local.get 5
      i32.const 184
      i32.add
      local.get 4
      i64.load8_u offset=15
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=14
      i64.or
      i64.store
      local.get 5
      i32.const 192
      i32.add
      local.get 4
      i64.load8_u offset=17
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=16
      i64.or
      i64.store
      local.get 5
      i32.const 200
      i32.add
      local.get 4
      i64.load8_u offset=19
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=18
      i64.or
      i64.store
      local.get 5
      i32.const 208
      i32.add
      local.get 4
      i64.load8_u offset=21
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=20
      i64.or
      i64.store
      local.get 5
      i32.const 216
      i32.add
      local.get 4
      i64.load8_u offset=23
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=22
      i64.or
      i64.store
      local.get 5
      i32.const 224
      i32.add
      local.get 4
      i64.load8_u offset=25
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=24
      i64.or
      i64.store
      local.get 5
      i32.const 232
      i32.add
      local.get 4
      i64.load8_u offset=27
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=26
      i64.or
      i64.store
      local.get 5
      i32.const 240
      i32.add
      local.get 4
      i64.load8_u offset=29
      i64.const 8
      i64.shl
      local.get 4
      i64.load8_u offset=28
      i64.or
      i64.store
      local.get 5
      i32.const 248
      i32.add
      local.get 4
      i64.load8_u offset=31
      i64.const 8
      i64.shl
      i64.const 32512
      i64.and
      local.get 4
      i64.load8_u offset=30
      i64.or
      i64.store
      local.get 5
      i32.const 1536
      i32.add
      local.get 5
      i32.const 128
      i32.add
      local.tee 9
      local.get 9
      call $M
      local.get 5
      i32.const 1408
      i32.add
      local.get 5
      i32.const 1536
      i32.add
      i32.const 2256
      call $M
      local.get 5
      local.get 5
      i64.load offset=1536
      local.get 5
      i64.load offset=256
      local.tee 10
      i64.sub
      i64.store offset=1536
      local.get 5
      local.get 5
      i64.load offset=1544
      local.get 7
      i64.load
      local.tee 11
      i64.sub
      i64.store offset=1544
      local.get 5
      local.get 5
      i64.load offset=1552
      local.get 5
      i32.const 272
      i32.add
      i64.load
      local.tee 12
      i64.sub
      i64.store offset=1552
      local.get 5
      local.get 5
      i64.load offset=1560
      local.get 5
      i32.const 280
      i32.add
      i64.load
      local.tee 13
      i64.sub
      i64.store offset=1560
      local.get 5
      local.get 5
      i64.load offset=1568
      local.get 5
      i32.const 288
      i32.add
      i64.load
      local.tee 14
      i64.sub
      i64.store offset=1568
      local.get 5
      local.get 5
      i64.load offset=1576
      local.get 5
      i32.const 296
      i32.add
      i64.load
      local.tee 15
      i64.sub
      i64.store offset=1576
      local.get 5
      local.get 5
      i64.load offset=1584
      local.get 5
      i32.const 304
      i32.add
      i64.load
      local.tee 16
      i64.sub
      i64.store offset=1584
      local.get 5
      local.get 5
      i64.load offset=1592
      local.get 5
      i32.const 312
      i32.add
      i64.load
      local.tee 17
      i64.sub
      i64.store offset=1592
      local.get 5
      local.get 5
      i64.load offset=1600
      local.get 5
      i32.const 320
      i32.add
      i64.load
      local.tee 18
      i64.sub
      i64.store offset=1600
      local.get 5
      local.get 5
      i64.load offset=1608
      local.get 5
      i32.const 328
      i32.add
      i64.load
      local.tee 19
      i64.sub
      i64.store offset=1608
      local.get 5
      local.get 5
      i64.load offset=1616
      local.get 5
      i32.const 336
      i32.add
      i64.load
      local.tee 20
      i64.sub
      i64.store offset=1616
      local.get 5
      local.get 5
      i64.load offset=1624
      local.get 5
      i32.const 344
      i32.add
      i64.load
      local.tee 21
      i64.sub
      i64.store offset=1624
      local.get 5
      local.get 5
      i64.load offset=1632
      local.get 5
      i32.const 352
      i32.add
      i64.load
      local.tee 22
      i64.sub
      i64.store offset=1632
      local.get 5
      local.get 5
      i64.load offset=1640
      local.get 5
      i32.const 360
      i32.add
      i64.load
      local.tee 23
      i64.sub
      i64.store offset=1640
      local.get 5
      local.get 5
      i64.load offset=1648
      local.get 5
      i32.const 368
      i32.add
      i64.load
      local.tee 24
      i64.sub
      i64.store offset=1648
      local.get 5
      local.get 5
      i64.load offset=1656
      local.get 5
      i32.const 376
      i32.add
      i64.load
      local.tee 25
      i64.sub
      i64.store offset=1656
      local.get 5
      local.get 10
      local.get 5
      i64.load offset=1408
      i64.add
      i64.store offset=1408
      local.get 5
      local.get 11
      local.get 5
      i64.load offset=1416
      i64.add
      i64.store offset=1416
      local.get 5
      local.get 12
      local.get 5
      i64.load offset=1424
      i64.add
      i64.store offset=1424
      local.get 5
      local.get 13
      local.get 5
      i64.load offset=1432
      i64.add
      i64.store offset=1432
      local.get 5
      local.get 14
      local.get 5
      i64.load offset=1440
      i64.add
      i64.store offset=1440
      local.get 5
      local.get 15
      local.get 5
      i64.load offset=1448
      i64.add
      i64.store offset=1448
      local.get 5
      local.get 16
      local.get 5
      i64.load offset=1456
      i64.add
      i64.store offset=1456
      local.get 5
      local.get 17
      local.get 5
      i64.load offset=1464
      i64.add
      i64.store offset=1464
      local.get 5
      local.get 18
      local.get 5
      i64.load offset=1472
      i64.add
      i64.store offset=1472
      local.get 5
      local.get 19
      local.get 5
      i64.load offset=1480
      i64.add
      i64.store offset=1480
      local.get 5
      local.get 20
      local.get 5
      i64.load offset=1488
      i64.add
      i64.store offset=1488
      local.get 5
      local.get 21
      local.get 5
      i64.load offset=1496
      i64.add
      i64.store offset=1496
      local.get 5
      local.get 22
      local.get 5
      i64.load offset=1504
      i64.add
      i64.store offset=1504
      local.get 5
      local.get 23
      local.get 5
      i64.load offset=1512
      i64.add
      i64.store offset=1512
      local.get 5
      local.get 24
      local.get 5
      i64.load offset=1520
      i64.add
      i64.store offset=1520
      local.get 5
      local.get 25
      local.get 5
      i64.load offset=1528
      i64.add
      i64.store offset=1528
      local.get 5
      i32.const 1280
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      i32.const 1152
      i32.add
      local.get 5
      i32.const 1280
      i32.add
      local.get 5
      i32.const 1280
      i32.add
      call $M
      local.get 5
      i32.const 1024
      i32.add
      local.get 5
      i32.const 1152
      i32.add
      local.get 5
      i32.const 1280
      i32.add
      call $M
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1024
      i32.add
      local.get 5
      i32.const 1536
      i32.add
      call $M
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      i32.const 1824
      i32.add
      local.get 5
      i32.const 512
      i32.add
      i32.const 128
      call $memcpy
      drop
      i32.const 251
      local.set 6
      loop  ;; label = @2
        local.get 5
        i32.const 1824
        i32.add
        local.get 5
        i32.const 1824
        i32.add
        local.get 5
        i32.const 1824
        i32.add
        call $M
        block  ;; label = @3
          local.get 6
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 1824
          i32.add
          local.get 5
          i32.const 1824
          i32.add
          local.get 5
          i32.const 512
          i32.add
          call $M
        end
        local.get 6
        i32.const -1
        i32.add
        local.tee 6
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1824
      i32.add
      i32.const 128
      call $memcpy
      drop
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1536
      i32.add
      call $M
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      local.get 5
      i32.const 512
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      i32.const 1664
      i32.add
      local.get 5
      local.get 5
      call $M
      local.get 5
      i32.const 1664
      i32.add
      local.get 5
      i32.const 1664
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      i32.const 1792
      i32.add
      local.get 5
      i32.const 1664
      i32.add
      call $pack25519
      local.get 5
      i32.const 1824
      i32.add
      local.get 5
      i32.const 1536
      i32.add
      call $pack25519
      block  ;; label = @2
        local.get 5
        i32.load8_u offset=1825
        local.get 5
        i32.load8_u offset=1793
        i32.xor
        local.get 5
        i32.load8_u offset=1824
        local.get 5
        i32.load8_u offset=1792
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1826
        local.get 5
        i32.load8_u offset=1794
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1827
        local.get 5
        i32.load8_u offset=1795
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1828
        local.get 5
        i32.load8_u offset=1796
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1829
        local.get 5
        i32.load8_u offset=1797
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1830
        local.get 5
        i32.load8_u offset=1798
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1831
        local.get 5
        i32.load8_u offset=1799
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1832
        local.get 5
        i32.load8_u offset=1800
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1833
        local.get 5
        i32.load8_u offset=1801
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1834
        local.get 5
        i32.load8_u offset=1802
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1835
        local.get 5
        i32.load8_u offset=1803
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1836
        local.get 5
        i32.load8_u offset=1804
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1837
        local.get 5
        i32.load8_u offset=1805
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1838
        local.get 5
        i32.load8_u offset=1806
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1839
        local.get 5
        i32.load8_u offset=1807
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1840
        local.get 5
        i32.load8_u offset=1808
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1841
        local.get 5
        i32.load8_u offset=1809
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1842
        local.get 5
        i32.load8_u offset=1810
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1843
        local.get 5
        i32.load8_u offset=1811
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1844
        local.get 5
        i32.load8_u offset=1812
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1845
        local.get 5
        i32.load8_u offset=1813
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1846
        local.get 5
        i32.load8_u offset=1814
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1847
        local.get 5
        i32.load8_u offset=1815
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1848
        local.get 5
        i32.load8_u offset=1816
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1849
        local.get 5
        i32.load8_u offset=1817
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1850
        local.get 5
        i32.load8_u offset=1818
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1851
        local.get 5
        i32.load8_u offset=1819
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1852
        local.get 5
        i32.load8_u offset=1820
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1853
        local.get 5
        i32.load8_u offset=1821
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1854
        local.get 5
        i32.load8_u offset=1822
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1855
        local.get 5
        i32.load8_u offset=1823
        i32.xor
        i32.or
        i32.const -1
        i32.add
        i32.const 256
        i32.and
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.const 2384
        call $M
      end
      local.get 5
      i32.const 1664
      i32.add
      local.get 5
      local.get 5
      call $M
      local.get 5
      i32.const 1664
      i32.add
      local.get 5
      i32.const 1664
      i32.add
      local.get 5
      i32.const 1408
      i32.add
      call $M
      local.get 5
      i32.const 1792
      i32.add
      local.get 5
      i32.const 1664
      i32.add
      call $pack25519
      local.get 5
      i32.const 1824
      i32.add
      local.get 5
      i32.const 1536
      i32.add
      call $pack25519
      block  ;; label = @2
        local.get 5
        i32.load8_u offset=1825
        local.get 5
        i32.load8_u offset=1793
        i32.xor
        local.get 5
        i32.load8_u offset=1824
        local.get 5
        i32.load8_u offset=1792
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1826
        local.get 5
        i32.load8_u offset=1794
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1827
        local.get 5
        i32.load8_u offset=1795
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1828
        local.get 5
        i32.load8_u offset=1796
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1829
        local.get 5
        i32.load8_u offset=1797
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1830
        local.get 5
        i32.load8_u offset=1798
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1831
        local.get 5
        i32.load8_u offset=1799
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1832
        local.get 5
        i32.load8_u offset=1800
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1833
        local.get 5
        i32.load8_u offset=1801
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1834
        local.get 5
        i32.load8_u offset=1802
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1835
        local.get 5
        i32.load8_u offset=1803
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1836
        local.get 5
        i32.load8_u offset=1804
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1837
        local.get 5
        i32.load8_u offset=1805
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1838
        local.get 5
        i32.load8_u offset=1806
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1839
        local.get 5
        i32.load8_u offset=1807
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1840
        local.get 5
        i32.load8_u offset=1808
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1841
        local.get 5
        i32.load8_u offset=1809
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1842
        local.get 5
        i32.load8_u offset=1810
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1843
        local.get 5
        i32.load8_u offset=1811
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1844
        local.get 5
        i32.load8_u offset=1812
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1845
        local.get 5
        i32.load8_u offset=1813
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1846
        local.get 5
        i32.load8_u offset=1814
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1847
        local.get 5
        i32.load8_u offset=1815
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1848
        local.get 5
        i32.load8_u offset=1816
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1849
        local.get 5
        i32.load8_u offset=1817
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1850
        local.get 5
        i32.load8_u offset=1818
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1851
        local.get 5
        i32.load8_u offset=1819
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1852
        local.get 5
        i32.load8_u offset=1820
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1853
        local.get 5
        i32.load8_u offset=1821
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1854
        local.get 5
        i32.load8_u offset=1822
        i32.xor
        i32.or
        local.get 5
        i32.load8_u offset=1855
        local.get 5
        i32.load8_u offset=1823
        i32.xor
        i32.or
        i32.const -1
        i32.add
        i32.const 256
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 1792
        i32.add
        local.get 5
        call $pack25519
        block  ;; label = @3
          local.get 5
          i32.load8_u offset=1792
          i32.const 1
          i32.and
          local.get 4
          i32.load8_u offset=31
          i32.const 7
          i32.shr_u
          i32.ne
          br_if 0 (;@3;)
          local.get 5
          i64.const 0
          local.get 5
          i64.load
          i64.sub
          i64.store
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=8
          i64.sub
          i64.store offset=8
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=16
          i64.sub
          i64.store offset=16
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=24
          i64.sub
          i64.store offset=24
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=32
          i64.sub
          i64.store offset=32
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=40
          i64.sub
          i64.store offset=40
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=48
          i64.sub
          i64.store offset=48
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=56
          i64.sub
          i64.store offset=56
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=64
          i64.sub
          i64.store offset=64
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=72
          i64.sub
          i64.store offset=72
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=80
          i64.sub
          i64.store offset=80
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=88
          i64.sub
          i64.store offset=88
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=96
          i64.sub
          i64.store offset=96
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=104
          i64.sub
          i64.store offset=104
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=112
          i64.sub
          i64.store offset=112
          local.get 5
          i64.const 0
          local.get 5
          i64.load offset=120
          i64.sub
          i64.store offset=120
        end
        local.get 5
        i32.const 384
        i32.add
        local.get 5
        local.get 9
        call $M
        block  ;; label = @3
          local.get 3
          i64.eqz
          br_if 0 (;@3;)
          local.get 2
          local.set 6
          local.get 0
          local.set 9
          local.get 3
          local.set 10
          loop  ;; label = @4
            local.get 9
            local.get 6
            i32.load8_u
            i32.store8
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 9
            i32.const 1
            i32.add
            local.set 9
            local.get 10
            i64.const -1
            i64.add
            local.tee 10
            i64.eqz
            i32.eqz
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 4
        i32.load8_u
        i32.store8 offset=32
        local.get 0
        local.get 4
        i32.load8_u offset=1
        i32.store8 offset=33
        local.get 0
        local.get 4
        i32.load8_u offset=2
        i32.store8 offset=34
        local.get 0
        local.get 4
        i32.load8_u offset=3
        i32.store8 offset=35
        local.get 0
        local.get 4
        i32.load8_u offset=4
        i32.store8 offset=36
        local.get 0
        local.get 4
        i32.load8_u offset=5
        i32.store8 offset=37
        local.get 0
        local.get 4
        i32.load8_u offset=6
        i32.store8 offset=38
        local.get 0
        local.get 4
        i32.load8_u offset=7
        i32.store8 offset=39
        local.get 0
        local.get 4
        i32.load8_u offset=8
        i32.store8 offset=40
        local.get 0
        local.get 4
        i32.load8_u offset=9
        i32.store8 offset=41
        local.get 0
        local.get 4
        i32.load8_u offset=10
        i32.store8 offset=42
        local.get 0
        local.get 4
        i32.load8_u offset=11
        i32.store8 offset=43
        local.get 0
        local.get 4
        i32.load8_u offset=12
        i32.store8 offset=44
        local.get 0
        local.get 4
        i32.load8_u offset=13
        i32.store8 offset=45
        local.get 0
        local.get 4
        i32.load8_u offset=14
        i32.store8 offset=46
        local.get 0
        local.get 4
        i32.load8_u offset=15
        i32.store8 offset=47
        local.get 0
        local.get 4
        i32.load8_u offset=16
        i32.store8 offset=48
        local.get 0
        local.get 4
        i32.load8_u offset=17
        i32.store8 offset=49
        local.get 0
        local.get 4
        i32.load8_u offset=18
        i32.store8 offset=50
        local.get 0
        local.get 4
        i32.load8_u offset=19
        i32.store8 offset=51
        local.get 0
        local.get 4
        i32.load8_u offset=20
        i32.store8 offset=52
        local.get 0
        local.get 4
        i32.load8_u offset=21
        i32.store8 offset=53
        local.get 0
        local.get 4
        i32.load8_u offset=22
        i32.store8 offset=54
        local.get 0
        local.get 4
        i32.load8_u offset=23
        i32.store8 offset=55
        local.get 0
        local.get 4
        i32.load8_u offset=24
        i32.store8 offset=56
        local.get 0
        local.get 4
        i32.load8_u offset=25
        i32.store8 offset=57
        local.get 0
        local.get 4
        i32.load8_u offset=26
        i32.store8 offset=58
        local.get 0
        local.get 4
        i32.load8_u offset=27
        i32.store8 offset=59
        local.get 0
        local.get 4
        i32.load8_u offset=28
        i32.store8 offset=60
        local.get 0
        local.get 4
        i32.load8_u offset=29
        i32.store8 offset=61
        local.get 0
        local.get 4
        i32.load8_u offset=30
        i32.store8 offset=62
        local.get 0
        local.get 4
        i32.load8_u offset=31
        i32.store8 offset=63
        local.get 5
        i32.const 1664
        i32.add
        local.get 0
        local.get 3
        call $crypto_hash_sha512_tweet
        drop
        i64.const 64
        local.set 10
        local.get 5
        i32.const 1824
        i32.add
        local.set 6
        local.get 5
        i32.const 1664
        i32.add
        local.set 4
        loop  ;; label = @3
          local.get 6
          local.get 4
          i64.load8_u
          i64.store
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 6
          i32.const 8
          i32.add
          local.set 6
          local.get 10
          i64.const -1
          i64.add
          local.tee 10
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 1720
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 1712
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 1704
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 1696
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 1688
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i32.const 1680
        i32.add
        i64.const 0
        i64.store
        local.get 5
        i64.const 0
        i64.store offset=1672
        local.get 5
        i64.const 0
        i64.store offset=1664
        local.get 5
        i32.const 1664
        i32.add
        local.get 5
        i32.const 1824
        i32.add
        call $modL
        local.get 5
        i32.const 512
        i32.add
        i32.const 0
        i32.const 128
        call $memset
        drop
        local.get 5
        i64.const 1
        i64.store offset=640
        local.get 5
        i32.const 648
        i32.add
        i32.const 0
        i32.const 120
        call $memset
        drop
        local.get 5
        i64.const 1
        i64.store offset=768
        local.get 5
        i32.const 776
        i32.add
        i32.const 0
        i32.const 248
        call $memset
        drop
        i32.const 255
        local.set 6
        loop  ;; label = @3
          local.get 5
          i32.const 512
          i32.add
          local.get 5
          local.get 5
          i32.const 1664
          i32.add
          local.get 6
          i32.const 3
          i32.shr_u
          i32.add
          i32.load8_u
          local.get 6
          i32.const 7
          i32.and
          i32.shr_u
          i32.const 1
          i32.and
          local.tee 4
          call $cswap
          local.get 5
          local.get 5
          i32.const 512
          i32.add
          call $add
          local.get 5
          i32.const 512
          i32.add
          local.get 5
          i32.const 512
          i32.add
          call $add
          local.get 5
          i32.const 512
          i32.add
          local.get 5
          local.get 4
          call $cswap
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 5
        i32.const 1824
        i32.add
        i32.const 248
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2064
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2056
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2048
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2040
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2032
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2024
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2016
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2008
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 2000
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 1992
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 1984
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 1976
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 1968
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i32.const 1960
        i32.add
        i64.const 26214
        i64.store
        local.get 5
        i64.const 1
        i64.store offset=2080
        local.get 5
        i64.const 26200
        i64.store offset=1952
        local.get 5
        i64.const 8553
        i64.store offset=1944
        local.get 5
        i64.const 14035
        i64.store offset=1936
        local.get 5
        i64.const 52590
        i64.store offset=1928
        local.get 5
        i64.const 21502
        i64.store offset=1920
        local.get 5
        i64.const 49316
        i64.store offset=1912
        local.get 5
        i64.const 57905
        i64.store offset=1904
        local.get 5
        i64.const 64982
        i64.store offset=1896
        local.get 5
        i64.const 56412
        i64.store offset=1888
        local.get 5
        i64.const 26924
        i64.store offset=1880
        local.get 5
        i64.const 51040
        i64.store offset=1872
        local.get 5
        i64.const 38181
        i64.store offset=1864
        local.get 5
        i64.const 42930
        i64.store offset=1856
        local.get 5
        i64.const 51542
        i64.store offset=1848
        local.get 5
        i64.const 11616
        i64.store offset=1840
        local.get 5
        i64.const 36645
        i64.store offset=1832
        local.get 5
        i64.const 54554
        i64.store offset=1824
        local.get 5
        i32.const 2088
        i32.add
        i32.const 0
        i32.const 120
        call $memset
        drop
        local.get 5
        i32.const 2208
        i32.add
        i32.const 1744
        i32.const 1872
        call $M
        local.get 5
        i32.const 0
        i32.const 128
        call $memset
        local.tee 6
        i64.const 1
        i64.store offset=128
        local.get 8
        i32.const 0
        i32.const 120
        call $memset
        drop
        local.get 6
        i64.const 1
        i64.store offset=256
        local.get 7
        i32.const 0
        i32.const 248
        call $memset
        drop
        local.get 2
        i32.const 32
        i32.add
        local.set 7
        i32.const 255
        local.set 4
        loop  ;; label = @3
          local.get 6
          local.get 6
          i32.const 1824
          i32.add
          local.get 7
          local.get 4
          i32.const 3
          i32.shr_u
          i32.add
          i32.load8_u
          local.get 4
          i32.const 7
          i32.and
          i32.shr_u
          i32.const 1
          i32.and
          local.tee 9
          call $cswap
          local.get 6
          i32.const 1824
          i32.add
          local.get 6
          call $add
          local.get 6
          local.get 6
          call $add
          local.get 6
          local.get 6
          i32.const 1824
          i32.add
          local.get 9
          call $cswap
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        i64.const -64
        i64.add
        local.set 11
        local.get 6
        i32.const 512
        i32.add
        local.get 6
        call $add
        local.get 6
        i32.const 1824
        i32.add
        local.get 6
        i32.const 512
        i32.add
        call $pack
        block  ;; label = @3
          local.get 2
          local.get 6
          i32.const 1824
          i32.add
          call $crypto_verify_32_tweet
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 6
          local.get 11
          i64.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 0
          local.get 3
          i32.wrap_i64
          i32.const -64
          i32.add
          call $memset
          drop
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i64.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 64
          i32.add
          local.set 6
          local.get 11
          local.set 10
          loop  ;; label = @4
            local.get 0
            local.get 6
            i32.load8_u
            i32.store8
            local.get 6
            i32.const 1
            i32.add
            local.set 6
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 10
            i64.const -1
            i64.add
            local.tee 10
            i64.const 0
            i64.ne
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 11
        i64.store
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      i32.const -1
      local.set 6
    end
    local.get 5
    i32.const 2336
    i32.add
    global.set 0
    local.get 6)
  (func $_main (type 8)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
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
    i32.const 0
    call $malloc
    local.set 3
    i32.const 4
    call $malloc
    local.tee 4
    local.get 3
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.const 32
    i32.add
    local.get 1
    i64.extend_i32_s
    i64.const -32
    i64.add
    local.get 2
    call $crypto_sign_ed25519_tweet_open
    i32.store
    local.get 4
    i32.const 4
    call $finish
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 68176))
  (global (;1;) i32 (i32.const 68176))
  (global (;2;) i32 (i32.const 2640))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "_main" (func $_main))
  (data (;0;) (i32.const 1024) "P\0a\00\00")
  (data (;1;) (i32.const 1040) "\22\ae(\d7\98/\8aB\cde\ef#\91D7q/;M\ec\cf\fb\c0\b5\bc\db\89\81\a5\db\b5\e98\b5H\f3[\c2V9\19\d0\05\b6\f1\11\f1Y\9bO\19\af\a4\82?\92\18\81m\da\d5^\1c\abB\02\03\a3\98\aa\07\d8\beopE\01[\83\12\8c\b2\e4N\be\851$\e2\b4\ff\d5\c3}\0cUo\89{\f2t]\ber\b1\96\16;\fe\b1\de\805\12\c7%\a7\06\dc\9b\94&i\cft\f1\9b\c1\d2J\f1\9e\c1i\9b\e4\e3%O8\86G\be\ef\b5\d5\8c\8b\c6\9d\c1\0fe\9c\acw\cc\a1\0c$u\02+Yo,\e9-\83\e4\a6n\aa\84tJ\d4\fbA\bd\dc\a9\b0\5c\b5S\11\83\da\88\f9v\ab\dff\eeRQ>\98\102\b4-m\c61\a8?!\fb\98\c8'\03\b0\e4\0e\ef\be\c7\7fY\bf\c2\8f\a8=\f3\0b\e0\c6%\a7\0a\93G\91\a7\d5o\82\03\e0Qc\ca\06pn\0e\0ag))\14\fc/\d2F\85\0a\b7'&\c9&\5c8!\1b.\ed*\c4Z\fcm,M\df\b3\95\9d\13\0d8S\dec\af\8bTs\0ae\a8\b2w<\bb\0ajv\e6\ae\edG.\c9\c2\81;5\82\14\85,r\92d\03\f1L\a1\e8\bf\a2\010B\bcKf\1a\a8\91\97\f8\d0p\8bK\c20\beT\06\a3Ql\c7\18R\ef\d6\19\e8\92\d1\10\a9eU$\06\99\d6* qW\855\0e\f4\b8\d1\bb2p\a0j\10\c8\d0\d2\b8\16\c1\a4\19S\abAQ\08l7\1e\99\eb\8e\dfLwH'\a8H\9b\e1\b5\bc\b04cZ\c9\c5\b3\0c\1c9\cb\8aA\e3J\aa\d8Ns\e3cwO\ca\9c[\a3\b8\b2\d6\f3o.h\fc\b2\ef]\ee\82\8ft`/\17Coc\a5xr\ab\f0\a1\14x\c8\84\ec9d\1a\08\02\c7\8c(\1ec#\fa\ff\be\90\e9\bd\82\de\eblP\a4\15y\c6\b2\f7\a3\f9\be+Sr\e3\f2xq\c6\9ca&\ea\ce>'\ca\07\c2\c0!\c7\b8\86\d1\1e\eb\e0\cd\d6}\da\eax\d1n\ee\7fO}\f5\bao\17r\aag\f0\06\a6\98\c8\a2\c5}c\0a\ae\0d\f9\be\04\98?\11\1bG\1c\135\0bq\1b\84}\04#\f5w\db(\93$\c7@{\ab\ca2\bc\be\c9\15\0a\be\9e<L\0d\10\9c\c4g\1dC\b6B>\cb\be\d4\c5L*~e\fc\9c)\7fY\ec\fa\d6:\abo\cb_\17XGJ\8c\19Dlj\09\e6g\f3\bc\c9\08\bbg\ae\85\84\ca\a7;<n\f3r\fe\94\f8+\a5O\f5:_\1d6\f1Q\0eR\7f\ad\e6\82\d1\9b\05h\8c+>l\1f\1f\83\d9\ab\fbA\bdk[\e0\cd\19\13~!y\1a\d5\00\00\00\00\00\00%\8f\00\00\00\00\00\00`-\00\00\00\00\00\00V\c9\00\00\00\00\00\00\b2\a7\00\00\00\00\00\00%\95\00\00\00\00\00\00`\c7\00\00\00\00\00\00,i\00\00\00\00\00\00\5c\dc\00\00\00\00\00\00\d6\fd\00\00\00\00\00\001\e2\00\00\00\00\00\00\a4\c0\00\00\00\00\00\00\feS\00\00\00\00\00\00n\cd\00\00\00\00\00\00\d36\00\00\00\00\00\00i!\00\00\00\00\00\00Xf\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00\ed\00\00\00\00\00\00\00\d3\00\00\00\00\00\00\00\f5\00\00\00\00\00\00\00\5c\00\00\00\00\00\00\00\1a\00\00\00\00\00\00\00c\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\d6\00\00\00\00\00\00\00\9c\00\00\00\00\00\00\00\f7\00\00\00\00\00\00\00\a2\00\00\00\00\00\00\00\de\00\00\00\00\00\00\00\f9\00\00\00\00\00\00\00\de\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\a3x\00\00\00\00\00\00Y\13\00\00\00\00\00\00\caM\00\00\00\00\00\00\ebu\00\00\00\00\00\00\ab\d8\00\00\00\00\00\00AA\00\00\00\00\00\00M\0a\00\00\00\00\00\00p\00\00\00\00\00\00\00\98\e8\00\00\00\00\00\00yw\00\00\00\00\00\00y@\00\00\00\00\00\00\c7\8c\00\00\00\00\00\00s\fe\00\00\00\00\00\00o+\00\00\00\00\00\00\eel\00\00\00\00\00\00\03R\00\00\00\00\00\00\b0\a0\00\00\00\00\00\00\0eJ\00\00\00\00\00\00'\1b\00\00\00\00\00\00\ee\c4\00\00\00\00\00\00x\e4\00\00\00\00\00\00/\ad\00\00\00\00\00\00\06\18\00\00\00\00\00\00C/\00\00\00\00\00\00\a7\d7\00\00\00\00\00\00\fb=\00\00\00\00\00\00\99\00\00\00\00\00\00\00M+\00\00\00\00\00\00\0b\df\00\00\00\00\00\00\c1O\00\00\00\00\00\00\80$\00\00\00\00\00\00\83+\00\00\00\00\00\00Y\f1\00\00\00\00\00\00\b2&\00\00\00\00\00\00\94\9b\00\00\00\00\00\00\d6\eb\00\00\00\00\00\00V\b1\00\00\00\00\00\00\83\82\00\00\00\00\00\00\9a\14\00\00\00\00\00\00\e0\00\00\00\00\00\00\000\d1\00\00\00\00\00\00\f3\ee\00\00\00\00\00\00\f2\80\00\00\00\00\00\00\8e\19\00\00\00\00\00\00\e7\fc\00\00\00\00\00\00\dfV\00\00\00\00\00\00\dc\d9\00\00\00\00\00\00\06$\00\00\00\00\00\00"))
