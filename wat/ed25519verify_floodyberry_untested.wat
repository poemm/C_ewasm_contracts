(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32) (result i32)))
  (type (;7;) (func))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32) (result i64)))
  (type (;13;) (func (param i64 i32) (result i64)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 10)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 4
    i32.load offset=5816
    local.set 5
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 5
    local.get 6
    i32.add
    local.set 7
    local.get 3
    local.get 7
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 8
    memory.size
    local.set 9
    i32.const 16
    local.set 10
    local.get 9
    local.get 10
    i32.shl
    local.set 11
    local.get 8
    local.set 12
    local.get 11
    local.set 13
    local.get 12
    local.get 13
    i32.gt_u
    local.set 14
    i32.const 1
    local.set 15
    local.get 14
    local.get 15
    i32.and
    local.set 16
    block  ;; label = @1
      local.get 16
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 17
      i32.const 0
      local.set 18
      local.get 3
      i32.load offset=8
      local.set 19
      i32.const 16
      local.set 20
      local.get 19
      local.get 20
      i32.shr_u
      local.set 21
      local.get 3
      i32.load offset=8
      local.set 22
      i32.const 65535
      local.set 23
      local.get 22
      local.get 23
      i32.and
      local.set 24
      local.get 17
      local.get 18
      local.get 24
      select
      local.set 25
      local.get 21
      local.get 25
      i32.add
      local.set 26
      local.get 3
      local.get 26
      i32.store offset=4
      local.get 3
      i32.load offset=4
      local.set 27
      memory.size
      local.set 28
      local.get 27
      local.get 28
      i32.sub
      local.set 29
      local.get 29
      memory.grow
      drop
    end
    i32.const 0
    local.set 30
    local.get 3
    i32.load offset=8
    local.set 31
    i32.const 0
    local.set 32
    local.get 32
    local.get 31
    i32.store offset=5816
    i32.const 0
    local.set 33
    local.get 33
    i32.load offset=5816
    local.set 34
    local.get 3
    i32.load offset=12
    local.set 35
    local.get 30
    local.get 35
    i32.sub
    local.set 36
    local.get 34
    local.get 36
    i32.add
    local.set 37
    local.get 37
    return)
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    local.get 5
    i32.load offset=28
    local.set 6
    local.get 5
    local.get 6
    i32.store offset=16
    local.get 5
    i32.load offset=24
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 7
        local.set 8
        local.get 5
        i32.load offset=20
        local.set 9
        local.get 9
        local.set 10
        local.get 8
        local.set 11
        local.get 10
        local.get 11
        i32.gt_u
        local.set 12
        i32.const 1
        local.set 13
        local.get 12
        local.get 13
        i32.and
        local.set 14
        local.get 14
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=12
        local.set 15
        local.get 15
        i64.load
        local.set 43
        local.get 5
        i32.load offset=16
        local.set 16
        local.get 16
        local.get 43
        i64.store
        local.get 5
        i32.load offset=16
        local.set 17
        i32.const 8
        local.set 18
        local.get 17
        local.get 18
        i32.add
        local.set 19
        local.get 5
        local.get 19
        i32.store offset=16
        local.get 5
        i32.load offset=12
        local.set 20
        i32.const 8
        local.set 21
        local.get 20
        local.get 21
        i32.add
        local.set 22
        local.get 5
        local.get 22
        i32.store offset=12
        local.get 5
        i32.load offset=20
        local.set 23
        i32.const 8
        local.set 24
        local.get 23
        local.get 24
        i32.sub
        local.set 25
        local.get 5
        local.get 25
        i32.store offset=20
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 26
        local.get 5
        i32.load offset=20
        local.set 27
        i32.const -1
        local.set 28
        local.get 27
        local.get 28
        i32.add
        local.set 29
        local.get 5
        local.get 29
        i32.store offset=20
        local.get 27
        local.set 30
        local.get 26
        local.set 31
        local.get 30
        local.get 31
        i32.gt_u
        local.set 32
        i32.const 1
        local.set 33
        local.get 32
        local.get 33
        i32.and
        local.set 34
        local.get 34
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=12
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.add
        local.set 37
        local.get 5
        local.get 37
        i32.store offset=12
        local.get 35
        i32.load8_u
        local.set 38
        local.get 5
        i32.load offset=16
        local.set 39
        i32.const 1
        local.set 40
        local.get 39
        local.get 40
        i32.add
        local.set 41
        local.get 5
        local.get 41
        i32.store offset=16
        local.get 39
        local.get 38
        i32.store8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    i32.load offset=28
    local.set 42
    local.get 42
    return)
  (func $memset (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    i32.const 8
    local.set 6
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    local.get 5
    i32.load offset=28
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=16
    local.get 5
    i32.load offset=20
    local.set 8
    local.get 8
    local.set 9
    local.get 6
    local.set 10
    local.get 9
    local.get 10
    i32.gt_u
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    block  ;; label = @1
      local.get 13
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=24
      local.set 14
      local.get 5
      i32.load offset=24
      local.set 15
      i32.const 8
      local.set 16
      local.get 15
      local.get 16
      i32.shl
      local.set 17
      local.get 14
      local.get 17
      i32.add
      local.set 18
      local.get 5
      i32.load offset=24
      local.set 19
      i32.const 16
      local.set 20
      local.get 19
      local.get 20
      i32.shl
      local.set 21
      local.get 18
      local.get 21
      i32.add
      local.set 22
      local.get 5
      i32.load offset=24
      local.set 23
      i32.const 24
      local.set 24
      local.get 23
      local.get 24
      i32.shl
      local.set 25
      local.get 22
      local.get 25
      i32.add
      local.set 26
      local.get 26
      local.set 27
      local.get 27
      i64.extend_i32_s
      local.set 62
      local.get 5
      i32.load offset=24
      local.set 28
      local.get 28
      local.set 29
      local.get 29
      i64.extend_i32_s
      local.set 63
      i64.const 32
      local.set 64
      local.get 63
      local.get 64
      i64.shl
      local.set 65
      local.get 62
      local.get 65
      i64.add
      local.set 66
      local.get 5
      i32.load offset=24
      local.set 30
      local.get 30
      local.set 31
      local.get 31
      i64.extend_i32_s
      local.set 67
      i64.const 40
      local.set 68
      local.get 67
      local.get 68
      i64.shl
      local.set 69
      local.get 66
      local.get 69
      i64.add
      local.set 70
      local.get 5
      i32.load offset=24
      local.set 32
      local.get 32
      local.set 33
      local.get 33
      i64.extend_i32_s
      local.set 71
      i64.const 56
      local.set 72
      local.get 71
      local.get 72
      i64.shl
      local.set 73
      local.get 70
      local.get 73
      i64.add
      local.set 74
      local.get 5
      local.get 74
      i64.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 7
          local.set 34
          local.get 5
          i32.load offset=20
          local.set 35
          local.get 35
          local.set 36
          local.get 34
          local.set 37
          local.get 36
          local.get 37
          i32.gt_u
          local.set 38
          i32.const 1
          local.set 39
          local.get 38
          local.get 39
          i32.and
          local.set 40
          local.get 40
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          i64.load offset=8
          local.set 75
          local.get 5
          i32.load offset=16
          local.set 41
          local.get 41
          local.get 75
          i64.store
          local.get 5
          i32.load offset=16
          local.set 42
          i32.const 8
          local.set 43
          local.get 42
          local.get 43
          i32.add
          local.set 44
          local.get 5
          local.get 44
          i32.store offset=16
          local.get 5
          i32.load offset=20
          local.set 45
          i32.const 8
          local.set 46
          local.get 45
          local.get 46
          i32.sub
          local.set 47
          local.get 5
          local.get 47
          i32.store offset=20
          br 0 (;@3;)
          unreachable
        end
        unreachable
      end
    end
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 48
        local.get 5
        i32.load offset=20
        local.set 49
        i32.const -1
        local.set 50
        local.get 49
        local.get 50
        i32.add
        local.set 51
        local.get 5
        local.get 51
        i32.store offset=20
        local.get 49
        local.set 52
        local.get 48
        local.set 53
        local.get 52
        local.get 53
        i32.gt_u
        local.set 54
        i32.const 1
        local.set 55
        local.get 54
        local.get 55
        i32.and
        local.set 56
        local.get 56
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=24
        local.set 57
        local.get 5
        i32.load offset=16
        local.set 58
        i32.const 1
        local.set 59
        local.get 58
        local.get 59
        i32.add
        local.set 60
        local.get 5
        local.get 60
        i32.store offset=16
        local.get 58
        local.get 57
        i32.store8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    i32.load offset=16
    local.set 61
    local.get 61
    return)
  (func $abs (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 31
    local.set 5
    local.get 4
    local.get 5
    i32.shr_s
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=4
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 3
    i32.load offset=4
    local.set 8
    local.get 7
    local.get 8
    i32.add
    local.set 9
    local.get 3
    i32.load offset=4
    local.set 10
    local.get 9
    local.get 10
    i32.xor
    local.set 11
    local.get 3
    local.get 11
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 12
    local.get 12
    return)
  (func $ed25519_sign_open (type 11) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 4
    i32.const 544
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set 0
    local.get 6
    local.get 0
    i32.store offset=536
    local.get 6
    local.get 1
    i32.store offset=532
    local.get 6
    local.get 2
    i32.store offset=528
    local.get 6
    local.get 3
    i32.store offset=524
    local.get 6
    i32.load offset=524
    local.set 7
    local.get 7
    i32.load8_u offset=63
    local.set 8
    i32.const 255
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    i32.const 224
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 12
          br_if 0 (;@3;)
          i32.const 192
          local.set 13
          local.get 6
          local.get 13
          i32.add
          local.set 14
          local.get 14
          local.set 15
          local.get 6
          i32.load offset=528
          local.set 16
          local.get 15
          local.get 16
          call $ge25519_unpack_negative_vartime
          local.set 17
          local.get 17
          br_if 1 (;@2;)
        end
        i32.const -1
        local.set 18
        local.get 6
        local.get 18
        i32.store offset=540
        br 1 (;@1;)
      end
      i32.const 0
      local.set 19
      i32.const -1
      local.set 20
      i32.const 32
      local.set 21
      local.get 6
      local.set 22
      i32.const 352
      local.set 23
      local.get 6
      local.get 23
      i32.add
      local.set 24
      local.get 24
      local.set 25
      i32.const 192
      local.set 26
      local.get 6
      local.get 26
      i32.add
      local.set 27
      local.get 27
      local.set 28
      i32.const 32
      local.set 29
      local.get 6
      local.get 29
      i32.add
      local.set 30
      local.get 30
      local.set 31
      i32.const 80
      local.set 32
      local.get 6
      local.get 32
      i32.add
      local.set 33
      local.get 33
      local.set 34
      i32.const 64
      local.set 35
      i32.const 128
      local.set 36
      local.get 6
      local.get 36
      i32.add
      local.set 37
      local.get 37
      local.set 38
      local.get 6
      i32.load offset=524
      local.set 39
      local.get 6
      i32.load offset=528
      local.set 40
      local.get 6
      i32.load offset=536
      local.set 41
      local.get 6
      i32.load offset=532
      local.set 42
      local.get 38
      local.get 39
      local.get 40
      local.get 41
      local.get 42
      call $ed25519_hram
      local.get 34
      local.get 38
      local.get 35
      call $expand256_modm
      local.get 6
      i32.load offset=524
      local.set 43
      i32.const 32
      local.set 44
      local.get 43
      local.get 44
      i32.add
      local.set 45
      local.get 31
      local.get 45
      local.get 21
      call $expand256_modm
      local.get 25
      local.get 28
      local.get 34
      local.get 31
      call $ge25519_double_scalarmult_vartime
      local.get 22
      local.get 25
      call $ge25519_pack
      local.get 6
      i32.load offset=524
      local.set 46
      local.get 46
      local.get 22
      local.get 21
      call $ed25519_verify
      local.set 47
      local.get 19
      local.get 20
      local.get 47
      select
      local.set 48
      local.get 6
      local.get 48
      i32.store offset=540
    end
    local.get 6
    i32.load offset=540
    local.set 49
    i32.const 544
    local.set 50
    local.get 6
    local.get 50
    i32.add
    local.set 51
    local.get 51
    global.set 0
    local.get 49
    return)
  (func $ge25519_unpack_negative_vartime (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 384
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 1024
    local.set 5
    i32.const 32
    local.set 6
    i32.const 240
    local.set 7
    local.get 4
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    i32.const 144
    local.set 10
    local.get 4
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    i32.const 96
    local.set 13
    local.get 4
    local.get 13
    i32.add
    local.set 14
    local.get 14
    local.set 15
    i32.const 192
    local.set 16
    local.get 4
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.set 18
    i32.const 48
    local.set 19
    local.get 4
    local.get 19
    i32.add
    local.set 20
    local.get 20
    local.set 21
    local.get 4
    local.set 22
    i32.const 1104
    local.set 23
    i32.const 1056
    local.set 24
    local.get 24
    local.set 25
    local.get 4
    local.get 0
    i32.store offset=288
    local.get 4
    local.get 1
    i32.store offset=284
    local.get 4
    i32.load offset=284
    local.set 26
    local.get 26
    i32.load8_u offset=31
    local.set 27
    i32.const 255
    local.set 28
    local.get 27
    local.get 28
    i32.and
    local.set 29
    i32.const 7
    local.set 30
    local.get 29
    local.get 30
    i32.shr_s
    local.set 31
    local.get 4
    local.get 31
    i32.store8 offset=283
    local.get 4
    i32.load offset=288
    local.set 32
    i32.const 40
    local.set 33
    local.get 32
    local.get 33
    i32.add
    local.set 34
    local.get 4
    i32.load offset=284
    local.set 35
    local.get 34
    local.get 35
    call $curve25519_expand
    local.get 4
    i32.load offset=288
    local.set 36
    i32.const 80
    local.set 37
    local.get 36
    local.get 37
    i32.add
    local.set 38
    local.get 4
    local.get 38
    i32.store offset=300
    local.get 4
    local.get 25
    i32.store offset=296
    local.get 4
    i32.load offset=296
    local.set 39
    local.get 39
    i32.load
    local.set 40
    local.get 4
    i32.load offset=300
    local.set 41
    local.get 41
    local.get 40
    i32.store
    local.get 4
    i32.load offset=296
    local.set 42
    local.get 42
    i32.load offset=4
    local.set 43
    local.get 4
    i32.load offset=300
    local.set 44
    local.get 44
    local.get 43
    i32.store offset=4
    local.get 4
    i32.load offset=296
    local.set 45
    local.get 45
    i32.load offset=8
    local.set 46
    local.get 4
    i32.load offset=300
    local.set 47
    local.get 47
    local.get 46
    i32.store offset=8
    local.get 4
    i32.load offset=296
    local.set 48
    local.get 48
    i32.load offset=12
    local.set 49
    local.get 4
    i32.load offset=300
    local.set 50
    local.get 50
    local.get 49
    i32.store offset=12
    local.get 4
    i32.load offset=296
    local.set 51
    local.get 51
    i32.load offset=16
    local.set 52
    local.get 4
    i32.load offset=300
    local.set 53
    local.get 53
    local.get 52
    i32.store offset=16
    local.get 4
    i32.load offset=296
    local.set 54
    local.get 54
    i32.load offset=20
    local.set 55
    local.get 4
    i32.load offset=300
    local.set 56
    local.get 56
    local.get 55
    i32.store offset=20
    local.get 4
    i32.load offset=296
    local.set 57
    local.get 57
    i32.load offset=24
    local.set 58
    local.get 4
    i32.load offset=300
    local.set 59
    local.get 59
    local.get 58
    i32.store offset=24
    local.get 4
    i32.load offset=296
    local.set 60
    local.get 60
    i32.load offset=28
    local.set 61
    local.get 4
    i32.load offset=300
    local.set 62
    local.get 62
    local.get 61
    i32.store offset=28
    local.get 4
    i32.load offset=296
    local.set 63
    local.get 63
    i32.load offset=32
    local.set 64
    local.get 4
    i32.load offset=300
    local.set 65
    local.get 65
    local.get 64
    i32.store offset=32
    local.get 4
    i32.load offset=296
    local.set 66
    local.get 66
    i32.load offset=36
    local.set 67
    local.get 4
    i32.load offset=300
    local.set 68
    local.get 68
    local.get 67
    i32.store offset=36
    local.get 4
    i32.load offset=288
    local.set 69
    i32.const 40
    local.set 70
    local.get 69
    local.get 70
    i32.add
    local.set 71
    local.get 15
    local.get 71
    call $curve25519_square
    local.get 21
    local.get 15
    local.get 23
    call $curve25519_mul
    local.get 4
    i32.load offset=288
    local.set 72
    i32.const 80
    local.set 73
    local.get 72
    local.get 73
    i32.add
    local.set 74
    local.get 4
    local.get 15
    i32.store offset=316
    local.get 4
    local.get 15
    i32.store offset=312
    local.get 4
    local.get 74
    i32.store offset=308
    local.get 4
    i32.load offset=312
    local.set 75
    local.get 75
    i32.load
    local.set 76
    i32.const 268435380
    local.set 77
    local.get 76
    local.get 77
    i32.add
    local.set 78
    local.get 4
    i32.load offset=308
    local.set 79
    local.get 79
    i32.load
    local.set 80
    local.get 78
    local.get 80
    i32.sub
    local.set 81
    local.get 4
    i32.load offset=316
    local.set 82
    local.get 82
    local.get 81
    i32.store
    local.get 4
    i32.load offset=316
    local.set 83
    local.get 83
    i32.load
    local.set 84
    i32.const 26
    local.set 85
    local.get 84
    local.get 85
    i32.shr_u
    local.set 86
    local.get 4
    local.get 86
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 87
    local.get 87
    i32.load
    local.set 88
    i32.const 67108863
    local.set 89
    local.get 88
    local.get 89
    i32.and
    local.set 90
    local.get 87
    local.get 90
    i32.store
    local.get 4
    i32.load offset=312
    local.set 91
    local.get 91
    i32.load offset=4
    local.set 92
    i32.const 134217724
    local.set 93
    local.get 92
    local.get 93
    i32.add
    local.set 94
    local.get 4
    i32.load offset=308
    local.set 95
    local.get 95
    i32.load offset=4
    local.set 96
    local.get 94
    local.get 96
    i32.sub
    local.set 97
    local.get 4
    i32.load offset=304
    local.set 98
    local.get 97
    local.get 98
    i32.add
    local.set 99
    local.get 4
    i32.load offset=316
    local.set 100
    local.get 100
    local.get 99
    i32.store offset=4
    local.get 4
    i32.load offset=316
    local.set 101
    local.get 101
    i32.load offset=4
    local.set 102
    i32.const 25
    local.set 103
    local.get 102
    local.get 103
    i32.shr_u
    local.set 104
    local.get 4
    local.get 104
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 105
    local.get 105
    i32.load offset=4
    local.set 106
    i32.const 33554431
    local.set 107
    local.get 106
    local.get 107
    i32.and
    local.set 108
    local.get 105
    local.get 108
    i32.store offset=4
    local.get 4
    i32.load offset=312
    local.set 109
    local.get 109
    i32.load offset=8
    local.set 110
    i32.const 268435452
    local.set 111
    local.get 110
    local.get 111
    i32.add
    local.set 112
    local.get 4
    i32.load offset=308
    local.set 113
    local.get 113
    i32.load offset=8
    local.set 114
    local.get 112
    local.get 114
    i32.sub
    local.set 115
    local.get 4
    i32.load offset=304
    local.set 116
    local.get 115
    local.get 116
    i32.add
    local.set 117
    local.get 4
    i32.load offset=316
    local.set 118
    local.get 118
    local.get 117
    i32.store offset=8
    local.get 4
    i32.load offset=316
    local.set 119
    local.get 119
    i32.load offset=8
    local.set 120
    i32.const 26
    local.set 121
    local.get 120
    local.get 121
    i32.shr_u
    local.set 122
    local.get 4
    local.get 122
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 123
    local.get 123
    i32.load offset=8
    local.set 124
    i32.const 67108863
    local.set 125
    local.get 124
    local.get 125
    i32.and
    local.set 126
    local.get 123
    local.get 126
    i32.store offset=8
    local.get 4
    i32.load offset=312
    local.set 127
    local.get 127
    i32.load offset=12
    local.set 128
    i32.const 134217724
    local.set 129
    local.get 128
    local.get 129
    i32.add
    local.set 130
    local.get 4
    i32.load offset=308
    local.set 131
    local.get 131
    i32.load offset=12
    local.set 132
    local.get 130
    local.get 132
    i32.sub
    local.set 133
    local.get 4
    i32.load offset=304
    local.set 134
    local.get 133
    local.get 134
    i32.add
    local.set 135
    local.get 4
    i32.load offset=316
    local.set 136
    local.get 136
    local.get 135
    i32.store offset=12
    local.get 4
    i32.load offset=316
    local.set 137
    local.get 137
    i32.load offset=12
    local.set 138
    i32.const 25
    local.set 139
    local.get 138
    local.get 139
    i32.shr_u
    local.set 140
    local.get 4
    local.get 140
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 141
    local.get 141
    i32.load offset=12
    local.set 142
    i32.const 33554431
    local.set 143
    local.get 142
    local.get 143
    i32.and
    local.set 144
    local.get 141
    local.get 144
    i32.store offset=12
    local.get 4
    i32.load offset=312
    local.set 145
    local.get 145
    i32.load offset=16
    local.set 146
    i32.const 268435452
    local.set 147
    local.get 146
    local.get 147
    i32.add
    local.set 148
    local.get 4
    i32.load offset=308
    local.set 149
    local.get 149
    i32.load offset=16
    local.set 150
    local.get 148
    local.get 150
    i32.sub
    local.set 151
    local.get 4
    i32.load offset=304
    local.set 152
    local.get 151
    local.get 152
    i32.add
    local.set 153
    local.get 4
    i32.load offset=316
    local.set 154
    local.get 154
    local.get 153
    i32.store offset=16
    local.get 4
    i32.load offset=316
    local.set 155
    local.get 155
    i32.load offset=16
    local.set 156
    i32.const 26
    local.set 157
    local.get 156
    local.get 157
    i32.shr_u
    local.set 158
    local.get 4
    local.get 158
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 159
    local.get 159
    i32.load offset=16
    local.set 160
    i32.const 67108863
    local.set 161
    local.get 160
    local.get 161
    i32.and
    local.set 162
    local.get 159
    local.get 162
    i32.store offset=16
    local.get 4
    i32.load offset=312
    local.set 163
    local.get 163
    i32.load offset=20
    local.set 164
    i32.const 134217724
    local.set 165
    local.get 164
    local.get 165
    i32.add
    local.set 166
    local.get 4
    i32.load offset=308
    local.set 167
    local.get 167
    i32.load offset=20
    local.set 168
    local.get 166
    local.get 168
    i32.sub
    local.set 169
    local.get 4
    i32.load offset=304
    local.set 170
    local.get 169
    local.get 170
    i32.add
    local.set 171
    local.get 4
    i32.load offset=316
    local.set 172
    local.get 172
    local.get 171
    i32.store offset=20
    local.get 4
    i32.load offset=316
    local.set 173
    local.get 173
    i32.load offset=20
    local.set 174
    i32.const 25
    local.set 175
    local.get 174
    local.get 175
    i32.shr_u
    local.set 176
    local.get 4
    local.get 176
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 177
    local.get 177
    i32.load offset=20
    local.set 178
    i32.const 33554431
    local.set 179
    local.get 178
    local.get 179
    i32.and
    local.set 180
    local.get 177
    local.get 180
    i32.store offset=20
    local.get 4
    i32.load offset=312
    local.set 181
    local.get 181
    i32.load offset=24
    local.set 182
    i32.const 268435452
    local.set 183
    local.get 182
    local.get 183
    i32.add
    local.set 184
    local.get 4
    i32.load offset=308
    local.set 185
    local.get 185
    i32.load offset=24
    local.set 186
    local.get 184
    local.get 186
    i32.sub
    local.set 187
    local.get 4
    i32.load offset=304
    local.set 188
    local.get 187
    local.get 188
    i32.add
    local.set 189
    local.get 4
    i32.load offset=316
    local.set 190
    local.get 190
    local.get 189
    i32.store offset=24
    local.get 4
    i32.load offset=316
    local.set 191
    local.get 191
    i32.load offset=24
    local.set 192
    i32.const 26
    local.set 193
    local.get 192
    local.get 193
    i32.shr_u
    local.set 194
    local.get 4
    local.get 194
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 195
    local.get 195
    i32.load offset=24
    local.set 196
    i32.const 67108863
    local.set 197
    local.get 196
    local.get 197
    i32.and
    local.set 198
    local.get 195
    local.get 198
    i32.store offset=24
    local.get 4
    i32.load offset=312
    local.set 199
    local.get 199
    i32.load offset=28
    local.set 200
    i32.const 134217724
    local.set 201
    local.get 200
    local.get 201
    i32.add
    local.set 202
    local.get 4
    i32.load offset=308
    local.set 203
    local.get 203
    i32.load offset=28
    local.set 204
    local.get 202
    local.get 204
    i32.sub
    local.set 205
    local.get 4
    i32.load offset=304
    local.set 206
    local.get 205
    local.get 206
    i32.add
    local.set 207
    local.get 4
    i32.load offset=316
    local.set 208
    local.get 208
    local.get 207
    i32.store offset=28
    local.get 4
    i32.load offset=316
    local.set 209
    local.get 209
    i32.load offset=28
    local.set 210
    i32.const 25
    local.set 211
    local.get 210
    local.get 211
    i32.shr_u
    local.set 212
    local.get 4
    local.get 212
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 213
    local.get 213
    i32.load offset=28
    local.set 214
    i32.const 33554431
    local.set 215
    local.get 214
    local.get 215
    i32.and
    local.set 216
    local.get 213
    local.get 216
    i32.store offset=28
    local.get 4
    i32.load offset=312
    local.set 217
    local.get 217
    i32.load offset=32
    local.set 218
    i32.const 268435452
    local.set 219
    local.get 218
    local.get 219
    i32.add
    local.set 220
    local.get 4
    i32.load offset=308
    local.set 221
    local.get 221
    i32.load offset=32
    local.set 222
    local.get 220
    local.get 222
    i32.sub
    local.set 223
    local.get 4
    i32.load offset=304
    local.set 224
    local.get 223
    local.get 224
    i32.add
    local.set 225
    local.get 4
    i32.load offset=316
    local.set 226
    local.get 226
    local.get 225
    i32.store offset=32
    local.get 4
    i32.load offset=316
    local.set 227
    local.get 227
    i32.load offset=32
    local.set 228
    i32.const 26
    local.set 229
    local.get 228
    local.get 229
    i32.shr_u
    local.set 230
    local.get 4
    local.get 230
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 231
    local.get 231
    i32.load offset=32
    local.set 232
    i32.const 67108863
    local.set 233
    local.get 232
    local.get 233
    i32.and
    local.set 234
    local.get 231
    local.get 234
    i32.store offset=32
    local.get 4
    i32.load offset=312
    local.set 235
    local.get 235
    i32.load offset=36
    local.set 236
    i32.const 134217724
    local.set 237
    local.get 236
    local.get 237
    i32.add
    local.set 238
    local.get 4
    i32.load offset=308
    local.set 239
    local.get 239
    i32.load offset=36
    local.set 240
    local.get 238
    local.get 240
    i32.sub
    local.set 241
    local.get 4
    i32.load offset=304
    local.set 242
    local.get 241
    local.get 242
    i32.add
    local.set 243
    local.get 4
    i32.load offset=316
    local.set 244
    local.get 244
    local.get 243
    i32.store offset=36
    local.get 4
    i32.load offset=316
    local.set 245
    local.get 245
    i32.load offset=36
    local.set 246
    i32.const 25
    local.set 247
    local.get 246
    local.get 247
    i32.shr_u
    local.set 248
    local.get 4
    local.get 248
    i32.store offset=304
    local.get 4
    i32.load offset=316
    local.set 249
    local.get 249
    i32.load offset=36
    local.set 250
    i32.const 33554431
    local.set 251
    local.get 250
    local.get 251
    i32.and
    local.set 252
    local.get 249
    local.get 252
    i32.store offset=36
    local.get 4
    i32.load offset=304
    local.set 253
    i32.const 19
    local.set 254
    local.get 253
    local.get 254
    i32.mul
    local.set 255
    local.get 4
    i32.load offset=316
    local.set 256
    local.get 256
    i32.load
    local.set 257
    local.get 257
    local.get 255
    i32.add
    local.set 258
    local.get 256
    local.get 258
    i32.store
    local.get 4
    i32.load offset=288
    local.set 259
    i32.const 80
    local.set 260
    local.get 259
    local.get 260
    i32.add
    local.set 261
    local.get 4
    local.get 21
    i32.store offset=348
    local.get 4
    local.get 21
    i32.store offset=344
    local.get 4
    local.get 261
    i32.store offset=340
    local.get 4
    i32.load offset=344
    local.set 262
    local.get 262
    i32.load
    local.set 263
    local.get 4
    i32.load offset=340
    local.set 264
    local.get 264
    i32.load
    local.set 265
    local.get 263
    local.get 265
    i32.add
    local.set 266
    local.get 4
    i32.load offset=348
    local.set 267
    local.get 267
    local.get 266
    i32.store
    local.get 4
    i32.load offset=344
    local.set 268
    local.get 268
    i32.load offset=4
    local.set 269
    local.get 4
    i32.load offset=340
    local.set 270
    local.get 270
    i32.load offset=4
    local.set 271
    local.get 269
    local.get 271
    i32.add
    local.set 272
    local.get 4
    i32.load offset=348
    local.set 273
    local.get 273
    local.get 272
    i32.store offset=4
    local.get 4
    i32.load offset=344
    local.set 274
    local.get 274
    i32.load offset=8
    local.set 275
    local.get 4
    i32.load offset=340
    local.set 276
    local.get 276
    i32.load offset=8
    local.set 277
    local.get 275
    local.get 277
    i32.add
    local.set 278
    local.get 4
    i32.load offset=348
    local.set 279
    local.get 279
    local.get 278
    i32.store offset=8
    local.get 4
    i32.load offset=344
    local.set 280
    local.get 280
    i32.load offset=12
    local.set 281
    local.get 4
    i32.load offset=340
    local.set 282
    local.get 282
    i32.load offset=12
    local.set 283
    local.get 281
    local.get 283
    i32.add
    local.set 284
    local.get 4
    i32.load offset=348
    local.set 285
    local.get 285
    local.get 284
    i32.store offset=12
    local.get 4
    i32.load offset=344
    local.set 286
    local.get 286
    i32.load offset=16
    local.set 287
    local.get 4
    i32.load offset=340
    local.set 288
    local.get 288
    i32.load offset=16
    local.set 289
    local.get 287
    local.get 289
    i32.add
    local.set 290
    local.get 4
    i32.load offset=348
    local.set 291
    local.get 291
    local.get 290
    i32.store offset=16
    local.get 4
    i32.load offset=344
    local.set 292
    local.get 292
    i32.load offset=20
    local.set 293
    local.get 4
    i32.load offset=340
    local.set 294
    local.get 294
    i32.load offset=20
    local.set 295
    local.get 293
    local.get 295
    i32.add
    local.set 296
    local.get 4
    i32.load offset=348
    local.set 297
    local.get 297
    local.get 296
    i32.store offset=20
    local.get 4
    i32.load offset=344
    local.set 298
    local.get 298
    i32.load offset=24
    local.set 299
    local.get 4
    i32.load offset=340
    local.set 300
    local.get 300
    i32.load offset=24
    local.set 301
    local.get 299
    local.get 301
    i32.add
    local.set 302
    local.get 4
    i32.load offset=348
    local.set 303
    local.get 303
    local.get 302
    i32.store offset=24
    local.get 4
    i32.load offset=344
    local.set 304
    local.get 304
    i32.load offset=28
    local.set 305
    local.get 4
    i32.load offset=340
    local.set 306
    local.get 306
    i32.load offset=28
    local.set 307
    local.get 305
    local.get 307
    i32.add
    local.set 308
    local.get 4
    i32.load offset=348
    local.set 309
    local.get 309
    local.get 308
    i32.store offset=28
    local.get 4
    i32.load offset=344
    local.set 310
    local.get 310
    i32.load offset=32
    local.set 311
    local.get 4
    i32.load offset=340
    local.set 312
    local.get 312
    i32.load offset=32
    local.set 313
    local.get 311
    local.get 313
    i32.add
    local.set 314
    local.get 4
    i32.load offset=348
    local.set 315
    local.get 315
    local.get 314
    i32.store offset=32
    local.get 4
    i32.load offset=344
    local.set 316
    local.get 316
    i32.load offset=36
    local.set 317
    local.get 4
    i32.load offset=340
    local.set 318
    local.get 318
    i32.load offset=36
    local.set 319
    local.get 317
    local.get 319
    i32.add
    local.set 320
    local.get 4
    i32.load offset=348
    local.set 321
    local.get 321
    local.get 320
    i32.store offset=36
    local.get 18
    local.get 21
    call $curve25519_square
    local.get 22
    local.get 18
    local.get 21
    call $curve25519_mul
    local.get 4
    i32.load offset=288
    local.set 322
    local.get 322
    local.get 22
    call $curve25519_square
    local.get 4
    i32.load offset=288
    local.set 323
    local.get 4
    i32.load offset=288
    local.set 324
    local.get 323
    local.get 324
    local.get 21
    call $curve25519_mul
    local.get 4
    i32.load offset=288
    local.set 325
    local.get 4
    i32.load offset=288
    local.set 326
    local.get 325
    local.get 326
    local.get 15
    call $curve25519_mul
    local.get 4
    i32.load offset=288
    local.set 327
    local.get 4
    i32.load offset=288
    local.set 328
    local.get 327
    local.get 328
    call $curve25519_pow_two252m3
    local.get 4
    i32.load offset=288
    local.set 329
    local.get 4
    i32.load offset=288
    local.set 330
    local.get 329
    local.get 330
    local.get 22
    call $curve25519_mul
    local.get 4
    i32.load offset=288
    local.set 331
    local.get 4
    i32.load offset=288
    local.set 332
    local.get 331
    local.get 332
    local.get 15
    call $curve25519_mul
    local.get 4
    i32.load offset=288
    local.set 333
    local.get 18
    local.get 333
    call $curve25519_square
    local.get 18
    local.get 18
    local.get 21
    call $curve25519_mul
    local.get 4
    local.get 12
    i32.store offset=364
    local.get 4
    local.get 18
    i32.store offset=360
    local.get 4
    local.get 15
    i32.store offset=356
    local.get 4
    i32.load offset=360
    local.set 334
    local.get 334
    i32.load
    local.set 335
    i32.const 268435380
    local.set 336
    local.get 335
    local.get 336
    i32.add
    local.set 337
    local.get 4
    i32.load offset=356
    local.set 338
    local.get 338
    i32.load
    local.set 339
    local.get 337
    local.get 339
    i32.sub
    local.set 340
    local.get 4
    i32.load offset=364
    local.set 341
    local.get 341
    local.get 340
    i32.store
    local.get 4
    i32.load offset=364
    local.set 342
    local.get 342
    i32.load
    local.set 343
    i32.const 26
    local.set 344
    local.get 343
    local.get 344
    i32.shr_u
    local.set 345
    local.get 4
    local.get 345
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 346
    local.get 346
    i32.load
    local.set 347
    i32.const 67108863
    local.set 348
    local.get 347
    local.get 348
    i32.and
    local.set 349
    local.get 346
    local.get 349
    i32.store
    local.get 4
    i32.load offset=360
    local.set 350
    local.get 350
    i32.load offset=4
    local.set 351
    i32.const 134217724
    local.set 352
    local.get 351
    local.get 352
    i32.add
    local.set 353
    local.get 4
    i32.load offset=356
    local.set 354
    local.get 354
    i32.load offset=4
    local.set 355
    local.get 353
    local.get 355
    i32.sub
    local.set 356
    local.get 4
    i32.load offset=352
    local.set 357
    local.get 356
    local.get 357
    i32.add
    local.set 358
    local.get 4
    i32.load offset=364
    local.set 359
    local.get 359
    local.get 358
    i32.store offset=4
    local.get 4
    i32.load offset=364
    local.set 360
    local.get 360
    i32.load offset=4
    local.set 361
    i32.const 25
    local.set 362
    local.get 361
    local.get 362
    i32.shr_u
    local.set 363
    local.get 4
    local.get 363
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 364
    local.get 364
    i32.load offset=4
    local.set 365
    i32.const 33554431
    local.set 366
    local.get 365
    local.get 366
    i32.and
    local.set 367
    local.get 364
    local.get 367
    i32.store offset=4
    local.get 4
    i32.load offset=360
    local.set 368
    local.get 368
    i32.load offset=8
    local.set 369
    i32.const 268435452
    local.set 370
    local.get 369
    local.get 370
    i32.add
    local.set 371
    local.get 4
    i32.load offset=356
    local.set 372
    local.get 372
    i32.load offset=8
    local.set 373
    local.get 371
    local.get 373
    i32.sub
    local.set 374
    local.get 4
    i32.load offset=352
    local.set 375
    local.get 374
    local.get 375
    i32.add
    local.set 376
    local.get 4
    i32.load offset=364
    local.set 377
    local.get 377
    local.get 376
    i32.store offset=8
    local.get 4
    i32.load offset=364
    local.set 378
    local.get 378
    i32.load offset=8
    local.set 379
    i32.const 26
    local.set 380
    local.get 379
    local.get 380
    i32.shr_u
    local.set 381
    local.get 4
    local.get 381
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 382
    local.get 382
    i32.load offset=8
    local.set 383
    i32.const 67108863
    local.set 384
    local.get 383
    local.get 384
    i32.and
    local.set 385
    local.get 382
    local.get 385
    i32.store offset=8
    local.get 4
    i32.load offset=360
    local.set 386
    local.get 386
    i32.load offset=12
    local.set 387
    i32.const 134217724
    local.set 388
    local.get 387
    local.get 388
    i32.add
    local.set 389
    local.get 4
    i32.load offset=356
    local.set 390
    local.get 390
    i32.load offset=12
    local.set 391
    local.get 389
    local.get 391
    i32.sub
    local.set 392
    local.get 4
    i32.load offset=352
    local.set 393
    local.get 392
    local.get 393
    i32.add
    local.set 394
    local.get 4
    i32.load offset=364
    local.set 395
    local.get 395
    local.get 394
    i32.store offset=12
    local.get 4
    i32.load offset=364
    local.set 396
    local.get 396
    i32.load offset=12
    local.set 397
    i32.const 25
    local.set 398
    local.get 397
    local.get 398
    i32.shr_u
    local.set 399
    local.get 4
    local.get 399
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 400
    local.get 400
    i32.load offset=12
    local.set 401
    i32.const 33554431
    local.set 402
    local.get 401
    local.get 402
    i32.and
    local.set 403
    local.get 400
    local.get 403
    i32.store offset=12
    local.get 4
    i32.load offset=360
    local.set 404
    local.get 404
    i32.load offset=16
    local.set 405
    i32.const 268435452
    local.set 406
    local.get 405
    local.get 406
    i32.add
    local.set 407
    local.get 4
    i32.load offset=356
    local.set 408
    local.get 408
    i32.load offset=16
    local.set 409
    local.get 407
    local.get 409
    i32.sub
    local.set 410
    local.get 4
    i32.load offset=352
    local.set 411
    local.get 410
    local.get 411
    i32.add
    local.set 412
    local.get 4
    i32.load offset=364
    local.set 413
    local.get 413
    local.get 412
    i32.store offset=16
    local.get 4
    i32.load offset=364
    local.set 414
    local.get 414
    i32.load offset=16
    local.set 415
    i32.const 26
    local.set 416
    local.get 415
    local.get 416
    i32.shr_u
    local.set 417
    local.get 4
    local.get 417
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 418
    local.get 418
    i32.load offset=16
    local.set 419
    i32.const 67108863
    local.set 420
    local.get 419
    local.get 420
    i32.and
    local.set 421
    local.get 418
    local.get 421
    i32.store offset=16
    local.get 4
    i32.load offset=360
    local.set 422
    local.get 422
    i32.load offset=20
    local.set 423
    i32.const 134217724
    local.set 424
    local.get 423
    local.get 424
    i32.add
    local.set 425
    local.get 4
    i32.load offset=356
    local.set 426
    local.get 426
    i32.load offset=20
    local.set 427
    local.get 425
    local.get 427
    i32.sub
    local.set 428
    local.get 4
    i32.load offset=352
    local.set 429
    local.get 428
    local.get 429
    i32.add
    local.set 430
    local.get 4
    i32.load offset=364
    local.set 431
    local.get 431
    local.get 430
    i32.store offset=20
    local.get 4
    i32.load offset=364
    local.set 432
    local.get 432
    i32.load offset=20
    local.set 433
    i32.const 25
    local.set 434
    local.get 433
    local.get 434
    i32.shr_u
    local.set 435
    local.get 4
    local.get 435
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 436
    local.get 436
    i32.load offset=20
    local.set 437
    i32.const 33554431
    local.set 438
    local.get 437
    local.get 438
    i32.and
    local.set 439
    local.get 436
    local.get 439
    i32.store offset=20
    local.get 4
    i32.load offset=360
    local.set 440
    local.get 440
    i32.load offset=24
    local.set 441
    i32.const 268435452
    local.set 442
    local.get 441
    local.get 442
    i32.add
    local.set 443
    local.get 4
    i32.load offset=356
    local.set 444
    local.get 444
    i32.load offset=24
    local.set 445
    local.get 443
    local.get 445
    i32.sub
    local.set 446
    local.get 4
    i32.load offset=352
    local.set 447
    local.get 446
    local.get 447
    i32.add
    local.set 448
    local.get 4
    i32.load offset=364
    local.set 449
    local.get 449
    local.get 448
    i32.store offset=24
    local.get 4
    i32.load offset=364
    local.set 450
    local.get 450
    i32.load offset=24
    local.set 451
    i32.const 26
    local.set 452
    local.get 451
    local.get 452
    i32.shr_u
    local.set 453
    local.get 4
    local.get 453
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 454
    local.get 454
    i32.load offset=24
    local.set 455
    i32.const 67108863
    local.set 456
    local.get 455
    local.get 456
    i32.and
    local.set 457
    local.get 454
    local.get 457
    i32.store offset=24
    local.get 4
    i32.load offset=360
    local.set 458
    local.get 458
    i32.load offset=28
    local.set 459
    i32.const 134217724
    local.set 460
    local.get 459
    local.get 460
    i32.add
    local.set 461
    local.get 4
    i32.load offset=356
    local.set 462
    local.get 462
    i32.load offset=28
    local.set 463
    local.get 461
    local.get 463
    i32.sub
    local.set 464
    local.get 4
    i32.load offset=352
    local.set 465
    local.get 464
    local.get 465
    i32.add
    local.set 466
    local.get 4
    i32.load offset=364
    local.set 467
    local.get 467
    local.get 466
    i32.store offset=28
    local.get 4
    i32.load offset=364
    local.set 468
    local.get 468
    i32.load offset=28
    local.set 469
    i32.const 25
    local.set 470
    local.get 469
    local.get 470
    i32.shr_u
    local.set 471
    local.get 4
    local.get 471
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 472
    local.get 472
    i32.load offset=28
    local.set 473
    i32.const 33554431
    local.set 474
    local.get 473
    local.get 474
    i32.and
    local.set 475
    local.get 472
    local.get 475
    i32.store offset=28
    local.get 4
    i32.load offset=360
    local.set 476
    local.get 476
    i32.load offset=32
    local.set 477
    i32.const 268435452
    local.set 478
    local.get 477
    local.get 478
    i32.add
    local.set 479
    local.get 4
    i32.load offset=356
    local.set 480
    local.get 480
    i32.load offset=32
    local.set 481
    local.get 479
    local.get 481
    i32.sub
    local.set 482
    local.get 4
    i32.load offset=352
    local.set 483
    local.get 482
    local.get 483
    i32.add
    local.set 484
    local.get 4
    i32.load offset=364
    local.set 485
    local.get 485
    local.get 484
    i32.store offset=32
    local.get 4
    i32.load offset=364
    local.set 486
    local.get 486
    i32.load offset=32
    local.set 487
    i32.const 26
    local.set 488
    local.get 487
    local.get 488
    i32.shr_u
    local.set 489
    local.get 4
    local.get 489
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 490
    local.get 490
    i32.load offset=32
    local.set 491
    i32.const 67108863
    local.set 492
    local.get 491
    local.get 492
    i32.and
    local.set 493
    local.get 490
    local.get 493
    i32.store offset=32
    local.get 4
    i32.load offset=360
    local.set 494
    local.get 494
    i32.load offset=36
    local.set 495
    i32.const 134217724
    local.set 496
    local.get 495
    local.get 496
    i32.add
    local.set 497
    local.get 4
    i32.load offset=356
    local.set 498
    local.get 498
    i32.load offset=36
    local.set 499
    local.get 497
    local.get 499
    i32.sub
    local.set 500
    local.get 4
    i32.load offset=352
    local.set 501
    local.get 500
    local.get 501
    i32.add
    local.set 502
    local.get 4
    i32.load offset=364
    local.set 503
    local.get 503
    local.get 502
    i32.store offset=36
    local.get 4
    i32.load offset=364
    local.set 504
    local.get 504
    i32.load offset=36
    local.set 505
    i32.const 25
    local.set 506
    local.get 505
    local.get 506
    i32.shr_u
    local.set 507
    local.get 4
    local.get 507
    i32.store offset=352
    local.get 4
    i32.load offset=364
    local.set 508
    local.get 508
    i32.load offset=36
    local.set 509
    i32.const 33554431
    local.set 510
    local.get 509
    local.get 510
    i32.and
    local.set 511
    local.get 508
    local.get 511
    i32.store offset=36
    local.get 4
    i32.load offset=352
    local.set 512
    i32.const 19
    local.set 513
    local.get 512
    local.get 513
    i32.mul
    local.set 514
    local.get 4
    i32.load offset=364
    local.set 515
    local.get 515
    i32.load
    local.set 516
    local.get 516
    local.get 514
    i32.add
    local.set 517
    local.get 515
    local.get 517
    i32.store
    local.get 9
    local.get 12
    call $curve25519_contract
    local.get 9
    local.get 5
    local.get 6
    call $ed25519_verify
    local.set 518
    block  ;; label = @1
      block  ;; label = @2
        local.get 518
        br_if 0 (;@2;)
        i32.const 1024
        local.set 519
        i32.const 32
        local.set 520
        i32.const 240
        local.set 521
        local.get 4
        local.get 521
        i32.add
        local.set 522
        local.get 522
        local.set 523
        i32.const 192
        local.set 524
        local.get 4
        local.get 524
        i32.add
        local.set 525
        local.get 525
        local.set 526
        i32.const 96
        local.set 527
        local.get 4
        local.get 527
        i32.add
        local.set 528
        local.get 528
        local.set 529
        local.get 4
        local.get 526
        i32.store offset=380
        local.get 4
        local.get 526
        i32.store offset=376
        local.get 4
        local.get 529
        i32.store offset=372
        local.get 4
        i32.load offset=376
        local.set 530
        local.get 530
        i32.load
        local.set 531
        local.get 4
        i32.load offset=372
        local.set 532
        local.get 532
        i32.load
        local.set 533
        local.get 531
        local.get 533
        i32.add
        local.set 534
        local.get 4
        i32.load offset=380
        local.set 535
        local.get 535
        local.get 534
        i32.store
        local.get 4
        i32.load offset=380
        local.set 536
        local.get 536
        i32.load
        local.set 537
        i32.const 26
        local.set 538
        local.get 537
        local.get 538
        i32.shr_u
        local.set 539
        local.get 4
        local.get 539
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 540
        local.get 540
        i32.load
        local.set 541
        i32.const 67108863
        local.set 542
        local.get 541
        local.get 542
        i32.and
        local.set 543
        local.get 540
        local.get 543
        i32.store
        local.get 4
        i32.load offset=376
        local.set 544
        local.get 544
        i32.load offset=4
        local.set 545
        local.get 4
        i32.load offset=372
        local.set 546
        local.get 546
        i32.load offset=4
        local.set 547
        local.get 545
        local.get 547
        i32.add
        local.set 548
        local.get 4
        i32.load offset=368
        local.set 549
        local.get 548
        local.get 549
        i32.add
        local.set 550
        local.get 4
        i32.load offset=380
        local.set 551
        local.get 551
        local.get 550
        i32.store offset=4
        local.get 4
        i32.load offset=380
        local.set 552
        local.get 552
        i32.load offset=4
        local.set 553
        i32.const 25
        local.set 554
        local.get 553
        local.get 554
        i32.shr_u
        local.set 555
        local.get 4
        local.get 555
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 556
        local.get 556
        i32.load offset=4
        local.set 557
        i32.const 33554431
        local.set 558
        local.get 557
        local.get 558
        i32.and
        local.set 559
        local.get 556
        local.get 559
        i32.store offset=4
        local.get 4
        i32.load offset=376
        local.set 560
        local.get 560
        i32.load offset=8
        local.set 561
        local.get 4
        i32.load offset=372
        local.set 562
        local.get 562
        i32.load offset=8
        local.set 563
        local.get 561
        local.get 563
        i32.add
        local.set 564
        local.get 4
        i32.load offset=368
        local.set 565
        local.get 564
        local.get 565
        i32.add
        local.set 566
        local.get 4
        i32.load offset=380
        local.set 567
        local.get 567
        local.get 566
        i32.store offset=8
        local.get 4
        i32.load offset=380
        local.set 568
        local.get 568
        i32.load offset=8
        local.set 569
        i32.const 26
        local.set 570
        local.get 569
        local.get 570
        i32.shr_u
        local.set 571
        local.get 4
        local.get 571
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 572
        local.get 572
        i32.load offset=8
        local.set 573
        i32.const 67108863
        local.set 574
        local.get 573
        local.get 574
        i32.and
        local.set 575
        local.get 572
        local.get 575
        i32.store offset=8
        local.get 4
        i32.load offset=376
        local.set 576
        local.get 576
        i32.load offset=12
        local.set 577
        local.get 4
        i32.load offset=372
        local.set 578
        local.get 578
        i32.load offset=12
        local.set 579
        local.get 577
        local.get 579
        i32.add
        local.set 580
        local.get 4
        i32.load offset=368
        local.set 581
        local.get 580
        local.get 581
        i32.add
        local.set 582
        local.get 4
        i32.load offset=380
        local.set 583
        local.get 583
        local.get 582
        i32.store offset=12
        local.get 4
        i32.load offset=380
        local.set 584
        local.get 584
        i32.load offset=12
        local.set 585
        i32.const 25
        local.set 586
        local.get 585
        local.get 586
        i32.shr_u
        local.set 587
        local.get 4
        local.get 587
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 588
        local.get 588
        i32.load offset=12
        local.set 589
        i32.const 33554431
        local.set 590
        local.get 589
        local.get 590
        i32.and
        local.set 591
        local.get 588
        local.get 591
        i32.store offset=12
        local.get 4
        i32.load offset=376
        local.set 592
        local.get 592
        i32.load offset=16
        local.set 593
        local.get 4
        i32.load offset=372
        local.set 594
        local.get 594
        i32.load offset=16
        local.set 595
        local.get 593
        local.get 595
        i32.add
        local.set 596
        local.get 4
        i32.load offset=368
        local.set 597
        local.get 596
        local.get 597
        i32.add
        local.set 598
        local.get 4
        i32.load offset=380
        local.set 599
        local.get 599
        local.get 598
        i32.store offset=16
        local.get 4
        i32.load offset=380
        local.set 600
        local.get 600
        i32.load offset=16
        local.set 601
        i32.const 26
        local.set 602
        local.get 601
        local.get 602
        i32.shr_u
        local.set 603
        local.get 4
        local.get 603
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 604
        local.get 604
        i32.load offset=16
        local.set 605
        i32.const 67108863
        local.set 606
        local.get 605
        local.get 606
        i32.and
        local.set 607
        local.get 604
        local.get 607
        i32.store offset=16
        local.get 4
        i32.load offset=376
        local.set 608
        local.get 608
        i32.load offset=20
        local.set 609
        local.get 4
        i32.load offset=372
        local.set 610
        local.get 610
        i32.load offset=20
        local.set 611
        local.get 609
        local.get 611
        i32.add
        local.set 612
        local.get 4
        i32.load offset=368
        local.set 613
        local.get 612
        local.get 613
        i32.add
        local.set 614
        local.get 4
        i32.load offset=380
        local.set 615
        local.get 615
        local.get 614
        i32.store offset=20
        local.get 4
        i32.load offset=380
        local.set 616
        local.get 616
        i32.load offset=20
        local.set 617
        i32.const 25
        local.set 618
        local.get 617
        local.get 618
        i32.shr_u
        local.set 619
        local.get 4
        local.get 619
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 620
        local.get 620
        i32.load offset=20
        local.set 621
        i32.const 33554431
        local.set 622
        local.get 621
        local.get 622
        i32.and
        local.set 623
        local.get 620
        local.get 623
        i32.store offset=20
        local.get 4
        i32.load offset=376
        local.set 624
        local.get 624
        i32.load offset=24
        local.set 625
        local.get 4
        i32.load offset=372
        local.set 626
        local.get 626
        i32.load offset=24
        local.set 627
        local.get 625
        local.get 627
        i32.add
        local.set 628
        local.get 4
        i32.load offset=368
        local.set 629
        local.get 628
        local.get 629
        i32.add
        local.set 630
        local.get 4
        i32.load offset=380
        local.set 631
        local.get 631
        local.get 630
        i32.store offset=24
        local.get 4
        i32.load offset=380
        local.set 632
        local.get 632
        i32.load offset=24
        local.set 633
        i32.const 26
        local.set 634
        local.get 633
        local.get 634
        i32.shr_u
        local.set 635
        local.get 4
        local.get 635
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 636
        local.get 636
        i32.load offset=24
        local.set 637
        i32.const 67108863
        local.set 638
        local.get 637
        local.get 638
        i32.and
        local.set 639
        local.get 636
        local.get 639
        i32.store offset=24
        local.get 4
        i32.load offset=376
        local.set 640
        local.get 640
        i32.load offset=28
        local.set 641
        local.get 4
        i32.load offset=372
        local.set 642
        local.get 642
        i32.load offset=28
        local.set 643
        local.get 641
        local.get 643
        i32.add
        local.set 644
        local.get 4
        i32.load offset=368
        local.set 645
        local.get 644
        local.get 645
        i32.add
        local.set 646
        local.get 4
        i32.load offset=380
        local.set 647
        local.get 647
        local.get 646
        i32.store offset=28
        local.get 4
        i32.load offset=380
        local.set 648
        local.get 648
        i32.load offset=28
        local.set 649
        i32.const 25
        local.set 650
        local.get 649
        local.get 650
        i32.shr_u
        local.set 651
        local.get 4
        local.get 651
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 652
        local.get 652
        i32.load offset=28
        local.set 653
        i32.const 33554431
        local.set 654
        local.get 653
        local.get 654
        i32.and
        local.set 655
        local.get 652
        local.get 655
        i32.store offset=28
        local.get 4
        i32.load offset=376
        local.set 656
        local.get 656
        i32.load offset=32
        local.set 657
        local.get 4
        i32.load offset=372
        local.set 658
        local.get 658
        i32.load offset=32
        local.set 659
        local.get 657
        local.get 659
        i32.add
        local.set 660
        local.get 4
        i32.load offset=368
        local.set 661
        local.get 660
        local.get 661
        i32.add
        local.set 662
        local.get 4
        i32.load offset=380
        local.set 663
        local.get 663
        local.get 662
        i32.store offset=32
        local.get 4
        i32.load offset=380
        local.set 664
        local.get 664
        i32.load offset=32
        local.set 665
        i32.const 26
        local.set 666
        local.get 665
        local.get 666
        i32.shr_u
        local.set 667
        local.get 4
        local.get 667
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 668
        local.get 668
        i32.load offset=32
        local.set 669
        i32.const 67108863
        local.set 670
        local.get 669
        local.get 670
        i32.and
        local.set 671
        local.get 668
        local.get 671
        i32.store offset=32
        local.get 4
        i32.load offset=376
        local.set 672
        local.get 672
        i32.load offset=36
        local.set 673
        local.get 4
        i32.load offset=372
        local.set 674
        local.get 674
        i32.load offset=36
        local.set 675
        local.get 673
        local.get 675
        i32.add
        local.set 676
        local.get 4
        i32.load offset=368
        local.set 677
        local.get 676
        local.get 677
        i32.add
        local.set 678
        local.get 4
        i32.load offset=380
        local.set 679
        local.get 679
        local.get 678
        i32.store offset=36
        local.get 4
        i32.load offset=380
        local.set 680
        local.get 680
        i32.load offset=36
        local.set 681
        i32.const 25
        local.set 682
        local.get 681
        local.get 682
        i32.shr_u
        local.set 683
        local.get 4
        local.get 683
        i32.store offset=368
        local.get 4
        i32.load offset=380
        local.set 684
        local.get 684
        i32.load offset=36
        local.set 685
        i32.const 33554431
        local.set 686
        local.get 685
        local.get 686
        i32.and
        local.set 687
        local.get 684
        local.get 687
        i32.store offset=36
        local.get 4
        i32.load offset=368
        local.set 688
        i32.const 19
        local.set 689
        local.get 688
        local.get 689
        i32.mul
        local.set 690
        local.get 4
        i32.load offset=380
        local.set 691
        local.get 691
        i32.load
        local.set 692
        local.get 692
        local.get 690
        i32.add
        local.set 693
        local.get 691
        local.get 693
        i32.store
        local.get 523
        local.get 526
        call $curve25519_contract
        local.get 523
        local.get 519
        local.get 520
        call $ed25519_verify
        local.set 694
        block  ;; label = @3
          local.get 694
          br_if 0 (;@3;)
          i32.const 0
          local.set 695
          local.get 4
          local.get 695
          i32.store offset=292
          br 2 (;@1;)
        end
        i32.const 1152
        local.set 696
        local.get 4
        i32.load offset=288
        local.set 697
        local.get 4
        i32.load offset=288
        local.set 698
        local.get 697
        local.get 698
        local.get 696
        call $curve25519_mul
      end
      i32.const 240
      local.set 699
      local.get 4
      local.get 699
      i32.add
      local.set 700
      local.get 700
      local.set 701
      local.get 4
      i32.load offset=288
      local.set 702
      local.get 701
      local.get 702
      call $curve25519_contract
      local.get 4
      i32.load8_u offset=240
      local.set 703
      i32.const 255
      local.set 704
      local.get 703
      local.get 704
      i32.and
      local.set 705
      i32.const 1
      local.set 706
      local.get 705
      local.get 706
      i32.and
      local.set 707
      local.get 4
      i32.load8_u offset=283
      local.set 708
      i32.const 255
      local.set 709
      local.get 708
      local.get 709
      i32.and
      local.set 710
      local.get 707
      local.set 711
      local.get 710
      local.set 712
      local.get 711
      local.get 712
      i32.eq
      local.set 713
      i32.const 1
      local.set 714
      local.get 713
      local.get 714
      i32.and
      local.set 715
      block  ;; label = @2
        local.get 715
        i32.eqz
        br_if 0 (;@2;)
        i32.const 67108862
        local.set 716
        i32.const 134217726
        local.set 717
        i32.const 134217690
        local.set 718
        i32.const 192
        local.set 719
        local.get 4
        local.get 719
        i32.add
        local.set 720
        local.get 720
        local.set 721
        local.get 4
        i32.load offset=288
        local.set 722
        local.get 4
        local.get 721
        i32.store offset=336
        local.get 4
        local.get 722
        i32.store offset=332
        local.get 4
        i32.load offset=332
        local.set 723
        local.get 723
        i32.load
        local.set 724
        local.get 4
        i32.load offset=336
        local.set 725
        local.get 725
        local.get 724
        i32.store
        local.get 4
        i32.load offset=332
        local.set 726
        local.get 726
        i32.load offset=4
        local.set 727
        local.get 4
        i32.load offset=336
        local.set 728
        local.get 728
        local.get 727
        i32.store offset=4
        local.get 4
        i32.load offset=332
        local.set 729
        local.get 729
        i32.load offset=8
        local.set 730
        local.get 4
        i32.load offset=336
        local.set 731
        local.get 731
        local.get 730
        i32.store offset=8
        local.get 4
        i32.load offset=332
        local.set 732
        local.get 732
        i32.load offset=12
        local.set 733
        local.get 4
        i32.load offset=336
        local.set 734
        local.get 734
        local.get 733
        i32.store offset=12
        local.get 4
        i32.load offset=332
        local.set 735
        local.get 735
        i32.load offset=16
        local.set 736
        local.get 4
        i32.load offset=336
        local.set 737
        local.get 737
        local.get 736
        i32.store offset=16
        local.get 4
        i32.load offset=332
        local.set 738
        local.get 738
        i32.load offset=20
        local.set 739
        local.get 4
        i32.load offset=336
        local.set 740
        local.get 740
        local.get 739
        i32.store offset=20
        local.get 4
        i32.load offset=332
        local.set 741
        local.get 741
        i32.load offset=24
        local.set 742
        local.get 4
        i32.load offset=336
        local.set 743
        local.get 743
        local.get 742
        i32.store offset=24
        local.get 4
        i32.load offset=332
        local.set 744
        local.get 744
        i32.load offset=28
        local.set 745
        local.get 4
        i32.load offset=336
        local.set 746
        local.get 746
        local.get 745
        i32.store offset=28
        local.get 4
        i32.load offset=332
        local.set 747
        local.get 747
        i32.load offset=32
        local.set 748
        local.get 4
        i32.load offset=336
        local.set 749
        local.get 749
        local.get 748
        i32.store offset=32
        local.get 4
        i32.load offset=332
        local.set 750
        local.get 750
        i32.load offset=36
        local.set 751
        local.get 4
        i32.load offset=336
        local.set 752
        local.get 752
        local.get 751
        i32.store offset=36
        local.get 4
        i32.load offset=288
        local.set 753
        local.get 4
        local.get 753
        i32.store offset=328
        local.get 4
        local.get 721
        i32.store offset=324
        local.get 4
        i32.load offset=324
        local.set 754
        local.get 754
        i32.load
        local.set 755
        local.get 718
        local.get 755
        i32.sub
        local.set 756
        local.get 4
        i32.load offset=328
        local.set 757
        local.get 757
        local.get 756
        i32.store
        local.get 4
        i32.load offset=328
        local.set 758
        local.get 758
        i32.load
        local.set 759
        i32.const 26
        local.set 760
        local.get 759
        local.get 760
        i32.shr_u
        local.set 761
        local.get 4
        local.get 761
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 762
        local.get 762
        i32.load
        local.set 763
        i32.const 67108863
        local.set 764
        local.get 763
        local.get 764
        i32.and
        local.set 765
        local.get 762
        local.get 765
        i32.store
        local.get 4
        i32.load offset=324
        local.set 766
        local.get 766
        i32.load offset=4
        local.set 767
        local.get 716
        local.get 767
        i32.sub
        local.set 768
        local.get 4
        i32.load offset=320
        local.set 769
        local.get 768
        local.get 769
        i32.add
        local.set 770
        local.get 4
        i32.load offset=328
        local.set 771
        local.get 771
        local.get 770
        i32.store offset=4
        local.get 4
        i32.load offset=328
        local.set 772
        local.get 772
        i32.load offset=4
        local.set 773
        i32.const 25
        local.set 774
        local.get 773
        local.get 774
        i32.shr_u
        local.set 775
        local.get 4
        local.get 775
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 776
        local.get 776
        i32.load offset=4
        local.set 777
        i32.const 33554431
        local.set 778
        local.get 777
        local.get 778
        i32.and
        local.set 779
        local.get 776
        local.get 779
        i32.store offset=4
        local.get 4
        i32.load offset=324
        local.set 780
        local.get 780
        i32.load offset=8
        local.set 781
        local.get 717
        local.get 781
        i32.sub
        local.set 782
        local.get 4
        i32.load offset=320
        local.set 783
        local.get 782
        local.get 783
        i32.add
        local.set 784
        local.get 4
        i32.load offset=328
        local.set 785
        local.get 785
        local.get 784
        i32.store offset=8
        local.get 4
        i32.load offset=328
        local.set 786
        local.get 786
        i32.load offset=8
        local.set 787
        i32.const 26
        local.set 788
        local.get 787
        local.get 788
        i32.shr_u
        local.set 789
        local.get 4
        local.get 789
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 790
        local.get 790
        i32.load offset=8
        local.set 791
        i32.const 67108863
        local.set 792
        local.get 791
        local.get 792
        i32.and
        local.set 793
        local.get 790
        local.get 793
        i32.store offset=8
        local.get 4
        i32.load offset=324
        local.set 794
        local.get 794
        i32.load offset=12
        local.set 795
        local.get 716
        local.get 795
        i32.sub
        local.set 796
        local.get 4
        i32.load offset=320
        local.set 797
        local.get 796
        local.get 797
        i32.add
        local.set 798
        local.get 4
        i32.load offset=328
        local.set 799
        local.get 799
        local.get 798
        i32.store offset=12
        local.get 4
        i32.load offset=328
        local.set 800
        local.get 800
        i32.load offset=12
        local.set 801
        i32.const 25
        local.set 802
        local.get 801
        local.get 802
        i32.shr_u
        local.set 803
        local.get 4
        local.get 803
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 804
        local.get 804
        i32.load offset=12
        local.set 805
        i32.const 33554431
        local.set 806
        local.get 805
        local.get 806
        i32.and
        local.set 807
        local.get 804
        local.get 807
        i32.store offset=12
        local.get 4
        i32.load offset=324
        local.set 808
        local.get 808
        i32.load offset=16
        local.set 809
        local.get 717
        local.get 809
        i32.sub
        local.set 810
        local.get 4
        i32.load offset=320
        local.set 811
        local.get 810
        local.get 811
        i32.add
        local.set 812
        local.get 4
        i32.load offset=328
        local.set 813
        local.get 813
        local.get 812
        i32.store offset=16
        local.get 4
        i32.load offset=328
        local.set 814
        local.get 814
        i32.load offset=16
        local.set 815
        i32.const 26
        local.set 816
        local.get 815
        local.get 816
        i32.shr_u
        local.set 817
        local.get 4
        local.get 817
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 818
        local.get 818
        i32.load offset=16
        local.set 819
        i32.const 67108863
        local.set 820
        local.get 819
        local.get 820
        i32.and
        local.set 821
        local.get 818
        local.get 821
        i32.store offset=16
        local.get 4
        i32.load offset=324
        local.set 822
        local.get 822
        i32.load offset=20
        local.set 823
        local.get 716
        local.get 823
        i32.sub
        local.set 824
        local.get 4
        i32.load offset=320
        local.set 825
        local.get 824
        local.get 825
        i32.add
        local.set 826
        local.get 4
        i32.load offset=328
        local.set 827
        local.get 827
        local.get 826
        i32.store offset=20
        local.get 4
        i32.load offset=328
        local.set 828
        local.get 828
        i32.load offset=20
        local.set 829
        i32.const 25
        local.set 830
        local.get 829
        local.get 830
        i32.shr_u
        local.set 831
        local.get 4
        local.get 831
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 832
        local.get 832
        i32.load offset=20
        local.set 833
        i32.const 33554431
        local.set 834
        local.get 833
        local.get 834
        i32.and
        local.set 835
        local.get 832
        local.get 835
        i32.store offset=20
        local.get 4
        i32.load offset=324
        local.set 836
        local.get 836
        i32.load offset=24
        local.set 837
        local.get 717
        local.get 837
        i32.sub
        local.set 838
        local.get 4
        i32.load offset=320
        local.set 839
        local.get 838
        local.get 839
        i32.add
        local.set 840
        local.get 4
        i32.load offset=328
        local.set 841
        local.get 841
        local.get 840
        i32.store offset=24
        local.get 4
        i32.load offset=328
        local.set 842
        local.get 842
        i32.load offset=24
        local.set 843
        i32.const 26
        local.set 844
        local.get 843
        local.get 844
        i32.shr_u
        local.set 845
        local.get 4
        local.get 845
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 846
        local.get 846
        i32.load offset=24
        local.set 847
        i32.const 67108863
        local.set 848
        local.get 847
        local.get 848
        i32.and
        local.set 849
        local.get 846
        local.get 849
        i32.store offset=24
        local.get 4
        i32.load offset=324
        local.set 850
        local.get 850
        i32.load offset=28
        local.set 851
        local.get 716
        local.get 851
        i32.sub
        local.set 852
        local.get 4
        i32.load offset=320
        local.set 853
        local.get 852
        local.get 853
        i32.add
        local.set 854
        local.get 4
        i32.load offset=328
        local.set 855
        local.get 855
        local.get 854
        i32.store offset=28
        local.get 4
        i32.load offset=328
        local.set 856
        local.get 856
        i32.load offset=28
        local.set 857
        i32.const 25
        local.set 858
        local.get 857
        local.get 858
        i32.shr_u
        local.set 859
        local.get 4
        local.get 859
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 860
        local.get 860
        i32.load offset=28
        local.set 861
        i32.const 33554431
        local.set 862
        local.get 861
        local.get 862
        i32.and
        local.set 863
        local.get 860
        local.get 863
        i32.store offset=28
        local.get 4
        i32.load offset=324
        local.set 864
        local.get 864
        i32.load offset=32
        local.set 865
        local.get 717
        local.get 865
        i32.sub
        local.set 866
        local.get 4
        i32.load offset=320
        local.set 867
        local.get 866
        local.get 867
        i32.add
        local.set 868
        local.get 4
        i32.load offset=328
        local.set 869
        local.get 869
        local.get 868
        i32.store offset=32
        local.get 4
        i32.load offset=328
        local.set 870
        local.get 870
        i32.load offset=32
        local.set 871
        i32.const 26
        local.set 872
        local.get 871
        local.get 872
        i32.shr_u
        local.set 873
        local.get 4
        local.get 873
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 874
        local.get 874
        i32.load offset=32
        local.set 875
        i32.const 67108863
        local.set 876
        local.get 875
        local.get 876
        i32.and
        local.set 877
        local.get 874
        local.get 877
        i32.store offset=32
        local.get 4
        i32.load offset=324
        local.set 878
        local.get 878
        i32.load offset=36
        local.set 879
        local.get 716
        local.get 879
        i32.sub
        local.set 880
        local.get 4
        i32.load offset=320
        local.set 881
        local.get 880
        local.get 881
        i32.add
        local.set 882
        local.get 4
        i32.load offset=328
        local.set 883
        local.get 883
        local.get 882
        i32.store offset=36
        local.get 4
        i32.load offset=328
        local.set 884
        local.get 884
        i32.load offset=36
        local.set 885
        i32.const 25
        local.set 886
        local.get 885
        local.get 886
        i32.shr_u
        local.set 887
        local.get 4
        local.get 887
        i32.store offset=320
        local.get 4
        i32.load offset=328
        local.set 888
        local.get 888
        i32.load offset=36
        local.set 889
        i32.const 33554431
        local.set 890
        local.get 889
        local.get 890
        i32.and
        local.set 891
        local.get 888
        local.get 891
        i32.store offset=36
        local.get 4
        i32.load offset=320
        local.set 892
        i32.const 19
        local.set 893
        local.get 892
        local.get 893
        i32.mul
        local.set 894
        local.get 4
        i32.load offset=328
        local.set 895
        local.get 895
        i32.load
        local.set 896
        local.get 896
        local.get 894
        i32.add
        local.set 897
        local.get 895
        local.get 897
        i32.store
      end
      i32.const 1
      local.set 898
      local.get 4
      i32.load offset=288
      local.set 899
      i32.const 120
      local.set 900
      local.get 899
      local.get 900
      i32.add
      local.set 901
      local.get 4
      i32.load offset=288
      local.set 902
      local.get 4
      i32.load offset=288
      local.set 903
      i32.const 40
      local.set 904
      local.get 903
      local.get 904
      i32.add
      local.set 905
      local.get 901
      local.get 902
      local.get 905
      call $curve25519_mul
      local.get 4
      local.get 898
      i32.store offset=292
    end
    local.get 4
    i32.load offset=292
    local.set 906
    i32.const 384
    local.set 907
    local.get 4
    local.get 907
    i32.add
    local.set 908
    local.get 908
    global.set 0
    local.get 906
    return)
  (func $ed25519_hram (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 5
    i32.const 240
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set 0
    local.get 7
    local.set 8
    i32.const 32
    local.set 9
    local.get 7
    local.get 0
    i32.store offset=236
    local.get 7
    local.get 1
    i32.store offset=232
    local.get 7
    local.get 2
    i32.store offset=228
    local.get 7
    local.get 3
    i32.store offset=224
    local.get 7
    local.get 4
    i32.store offset=220
    local.get 8
    call $ed25519_hash_init
    local.get 7
    i32.load offset=232
    local.set 10
    local.get 8
    local.get 10
    local.get 9
    call $ed25519_hash_update
    local.get 7
    i32.load offset=228
    local.set 11
    local.get 8
    local.get 11
    local.get 9
    call $ed25519_hash_update
    local.get 7
    i32.load offset=224
    local.set 12
    local.get 7
    i32.load offset=220
    local.set 13
    local.get 8
    local.get 12
    local.get 13
    call $ed25519_hash_update
    local.get 7
    i32.load offset=236
    local.set 14
    local.get 8
    local.get 14
    call $ed25519_hash_final
    i32.const 240
    local.set 15
    local.get 7
    local.get 15
    i32.add
    local.set 16
    local.get 16
    global.set 0
    return)
  (func $expand256_modm (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    local.set 3
    i32.const 192
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    i32.const 32
    local.set 6
    i32.const 112
    local.set 7
    local.get 5
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    local.get 5
    local.get 0
    i32.store offset=188
    local.get 5
    local.get 1
    i32.store offset=184
    local.get 5
    local.get 2
    i32.store offset=180
    i64.const 0
    local.set 242
    local.get 9
    local.get 242
    i64.store
    i32.const 56
    local.set 10
    local.get 9
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.get 242
    i64.store
    i32.const 48
    local.set 12
    local.get 9
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.get 242
    i64.store
    i32.const 40
    local.set 14
    local.get 9
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.get 242
    i64.store
    i32.const 32
    local.set 16
    local.get 9
    local.get 16
    i32.add
    local.set 17
    local.get 17
    local.get 242
    i64.store
    i32.const 24
    local.set 18
    local.get 9
    local.get 18
    i32.add
    local.set 19
    local.get 19
    local.get 242
    i64.store
    i32.const 16
    local.set 20
    local.get 9
    local.get 20
    i32.add
    local.set 21
    local.get 21
    local.get 242
    i64.store
    i32.const 8
    local.set 22
    local.get 9
    local.get 22
    i32.add
    local.set 23
    local.get 23
    local.get 242
    i64.store
    local.get 5
    i32.load offset=184
    local.set 24
    local.get 5
    i32.load offset=180
    local.set 25
    local.get 9
    local.get 24
    local.get 25
    call $memcpy
    drop
    local.get 9
    call $U8TO32_LE
    local.set 26
    local.get 5
    local.get 26
    i32.store offset=48
    i32.const 4
    local.set 27
    local.get 9
    local.get 27
    i32.add
    local.set 28
    local.get 28
    call $U8TO32_LE
    local.set 29
    local.get 5
    local.get 29
    i32.store offset=52
    i32.const 8
    local.set 30
    local.get 9
    local.get 30
    i32.add
    local.set 31
    local.get 31
    call $U8TO32_LE
    local.set 32
    local.get 5
    local.get 32
    i32.store offset=56
    i32.const 12
    local.set 33
    local.get 9
    local.get 33
    i32.add
    local.set 34
    local.get 34
    call $U8TO32_LE
    local.set 35
    local.get 5
    local.get 35
    i32.store offset=60
    i32.const 16
    local.set 36
    local.get 9
    local.get 36
    i32.add
    local.set 37
    local.get 37
    call $U8TO32_LE
    local.set 38
    local.get 5
    local.get 38
    i32.store offset=64
    i32.const 20
    local.set 39
    local.get 9
    local.get 39
    i32.add
    local.set 40
    local.get 40
    call $U8TO32_LE
    local.set 41
    local.get 5
    local.get 41
    i32.store offset=68
    i32.const 24
    local.set 42
    local.get 9
    local.get 42
    i32.add
    local.set 43
    local.get 43
    call $U8TO32_LE
    local.set 44
    local.get 5
    local.get 44
    i32.store offset=72
    i32.const 28
    local.set 45
    local.get 9
    local.get 45
    i32.add
    local.set 46
    local.get 46
    call $U8TO32_LE
    local.set 47
    local.get 5
    local.get 47
    i32.store offset=76
    i32.const 32
    local.set 48
    local.get 9
    local.get 48
    i32.add
    local.set 49
    local.get 49
    call $U8TO32_LE
    local.set 50
    local.get 5
    local.get 50
    i32.store offset=80
    i32.const 36
    local.set 51
    local.get 9
    local.get 51
    i32.add
    local.set 52
    local.get 52
    call $U8TO32_LE
    local.set 53
    local.get 5
    local.get 53
    i32.store offset=84
    i32.const 40
    local.set 54
    local.get 9
    local.get 54
    i32.add
    local.set 55
    local.get 55
    call $U8TO32_LE
    local.set 56
    local.get 5
    local.get 56
    i32.store offset=88
    i32.const 44
    local.set 57
    local.get 9
    local.get 57
    i32.add
    local.set 58
    local.get 58
    call $U8TO32_LE
    local.set 59
    local.get 5
    local.get 59
    i32.store offset=92
    i32.const 48
    local.set 60
    local.get 9
    local.get 60
    i32.add
    local.set 61
    local.get 61
    call $U8TO32_LE
    local.set 62
    local.get 5
    local.get 62
    i32.store offset=96
    i32.const 52
    local.set 63
    local.get 9
    local.get 63
    i32.add
    local.set 64
    local.get 64
    call $U8TO32_LE
    local.set 65
    local.get 5
    local.get 65
    i32.store offset=100
    i32.const 56
    local.set 66
    local.get 9
    local.get 66
    i32.add
    local.set 67
    local.get 67
    call $U8TO32_LE
    local.set 68
    local.get 5
    local.get 68
    i32.store offset=104
    i32.const 60
    local.set 69
    local.get 9
    local.get 69
    i32.add
    local.set 70
    local.get 70
    call $U8TO32_LE
    local.set 71
    local.get 5
    local.get 71
    i32.store offset=108
    local.get 5
    i32.load offset=48
    local.set 72
    i32.const 1073741823
    local.set 73
    local.get 72
    local.get 73
    i32.and
    local.set 74
    local.get 5
    i32.load offset=188
    local.set 75
    local.get 75
    local.get 74
    i32.store
    local.get 5
    i32.load offset=48
    local.set 76
    i32.const 30
    local.set 77
    local.get 76
    local.get 77
    i32.shr_u
    local.set 78
    local.get 5
    i32.load offset=52
    local.set 79
    i32.const 2
    local.set 80
    local.get 79
    local.get 80
    i32.shl
    local.set 81
    local.get 78
    local.get 81
    i32.or
    local.set 82
    i32.const 1073741823
    local.set 83
    local.get 82
    local.get 83
    i32.and
    local.set 84
    local.get 5
    i32.load offset=188
    local.set 85
    local.get 85
    local.get 84
    i32.store offset=4
    local.get 5
    i32.load offset=52
    local.set 86
    i32.const 28
    local.set 87
    local.get 86
    local.get 87
    i32.shr_u
    local.set 88
    local.get 5
    i32.load offset=56
    local.set 89
    i32.const 4
    local.set 90
    local.get 89
    local.get 90
    i32.shl
    local.set 91
    local.get 88
    local.get 91
    i32.or
    local.set 92
    i32.const 1073741823
    local.set 93
    local.get 92
    local.get 93
    i32.and
    local.set 94
    local.get 5
    i32.load offset=188
    local.set 95
    local.get 95
    local.get 94
    i32.store offset=8
    local.get 5
    i32.load offset=56
    local.set 96
    i32.const 26
    local.set 97
    local.get 96
    local.get 97
    i32.shr_u
    local.set 98
    local.get 5
    i32.load offset=60
    local.set 99
    i32.const 6
    local.set 100
    local.get 99
    local.get 100
    i32.shl
    local.set 101
    local.get 98
    local.get 101
    i32.or
    local.set 102
    i32.const 1073741823
    local.set 103
    local.get 102
    local.get 103
    i32.and
    local.set 104
    local.get 5
    i32.load offset=188
    local.set 105
    local.get 105
    local.get 104
    i32.store offset=12
    local.get 5
    i32.load offset=60
    local.set 106
    i32.const 24
    local.set 107
    local.get 106
    local.get 107
    i32.shr_u
    local.set 108
    local.get 5
    i32.load offset=64
    local.set 109
    i32.const 8
    local.set 110
    local.get 109
    local.get 110
    i32.shl
    local.set 111
    local.get 108
    local.get 111
    i32.or
    local.set 112
    i32.const 1073741823
    local.set 113
    local.get 112
    local.get 113
    i32.and
    local.set 114
    local.get 5
    i32.load offset=188
    local.set 115
    local.get 115
    local.get 114
    i32.store offset=16
    local.get 5
    i32.load offset=64
    local.set 116
    i32.const 22
    local.set 117
    local.get 116
    local.get 117
    i32.shr_u
    local.set 118
    local.get 5
    i32.load offset=68
    local.set 119
    i32.const 10
    local.set 120
    local.get 119
    local.get 120
    i32.shl
    local.set 121
    local.get 118
    local.get 121
    i32.or
    local.set 122
    i32.const 1073741823
    local.set 123
    local.get 122
    local.get 123
    i32.and
    local.set 124
    local.get 5
    i32.load offset=188
    local.set 125
    local.get 125
    local.get 124
    i32.store offset=20
    local.get 5
    i32.load offset=68
    local.set 126
    i32.const 20
    local.set 127
    local.get 126
    local.get 127
    i32.shr_u
    local.set 128
    local.get 5
    i32.load offset=72
    local.set 129
    i32.const 12
    local.set 130
    local.get 129
    local.get 130
    i32.shl
    local.set 131
    local.get 128
    local.get 131
    i32.or
    local.set 132
    i32.const 1073741823
    local.set 133
    local.get 132
    local.get 133
    i32.and
    local.set 134
    local.get 5
    i32.load offset=188
    local.set 135
    local.get 135
    local.get 134
    i32.store offset=24
    local.get 5
    i32.load offset=72
    local.set 136
    i32.const 18
    local.set 137
    local.get 136
    local.get 137
    i32.shr_u
    local.set 138
    local.get 5
    i32.load offset=76
    local.set 139
    i32.const 14
    local.set 140
    local.get 139
    local.get 140
    i32.shl
    local.set 141
    local.get 138
    local.get 141
    i32.or
    local.set 142
    i32.const 1073741823
    local.set 143
    local.get 142
    local.get 143
    i32.and
    local.set 144
    local.get 5
    i32.load offset=188
    local.set 145
    local.get 145
    local.get 144
    i32.store offset=28
    local.get 5
    i32.load offset=76
    local.set 146
    i32.const 16
    local.set 147
    local.get 146
    local.get 147
    i32.shr_u
    local.set 148
    local.get 5
    i32.load offset=80
    local.set 149
    i32.const 16
    local.set 150
    local.get 149
    local.get 150
    i32.shl
    local.set 151
    local.get 148
    local.get 151
    i32.or
    local.set 152
    i32.const 16777215
    local.set 153
    local.get 152
    local.get 153
    i32.and
    local.set 154
    local.get 5
    i32.load offset=188
    local.set 155
    local.get 155
    local.get 154
    i32.store offset=32
    local.get 5
    i32.load offset=180
    local.set 156
    local.get 156
    local.set 157
    local.get 6
    local.set 158
    local.get 157
    local.get 158
    i32.lt_u
    local.set 159
    i32.const 1
    local.set 160
    local.get 159
    local.get 160
    i32.and
    local.set 161
    block  ;; label = @1
      block  ;; label = @2
        local.get 161
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 5
      local.set 162
      local.get 5
      i32.load offset=76
      local.set 163
      i32.const 24
      local.set 164
      local.get 163
      local.get 164
      i32.shr_u
      local.set 165
      local.get 5
      i32.load offset=80
      local.set 166
      i32.const 8
      local.set 167
      local.get 166
      local.get 167
      i32.shl
      local.set 168
      local.get 165
      local.get 168
      i32.or
      local.set 169
      i32.const 1073741823
      local.set 170
      local.get 169
      local.get 170
      i32.and
      local.set 171
      local.get 5
      local.get 171
      i32.store
      local.get 5
      i32.load offset=80
      local.set 172
      i32.const 22
      local.set 173
      local.get 172
      local.get 173
      i32.shr_u
      local.set 174
      local.get 5
      i32.load offset=84
      local.set 175
      i32.const 10
      local.set 176
      local.get 175
      local.get 176
      i32.shl
      local.set 177
      local.get 174
      local.get 177
      i32.or
      local.set 178
      i32.const 1073741823
      local.set 179
      local.get 178
      local.get 179
      i32.and
      local.set 180
      local.get 5
      local.get 180
      i32.store offset=4
      local.get 5
      i32.load offset=84
      local.set 181
      i32.const 20
      local.set 182
      local.get 181
      local.get 182
      i32.shr_u
      local.set 183
      local.get 5
      i32.load offset=88
      local.set 184
      i32.const 12
      local.set 185
      local.get 184
      local.get 185
      i32.shl
      local.set 186
      local.get 183
      local.get 186
      i32.or
      local.set 187
      i32.const 1073741823
      local.set 188
      local.get 187
      local.get 188
      i32.and
      local.set 189
      local.get 5
      local.get 189
      i32.store offset=8
      local.get 5
      i32.load offset=88
      local.set 190
      i32.const 18
      local.set 191
      local.get 190
      local.get 191
      i32.shr_u
      local.set 192
      local.get 5
      i32.load offset=92
      local.set 193
      i32.const 14
      local.set 194
      local.get 193
      local.get 194
      i32.shl
      local.set 195
      local.get 192
      local.get 195
      i32.or
      local.set 196
      i32.const 1073741823
      local.set 197
      local.get 196
      local.get 197
      i32.and
      local.set 198
      local.get 5
      local.get 198
      i32.store offset=12
      local.get 5
      i32.load offset=92
      local.set 199
      i32.const 16
      local.set 200
      local.get 199
      local.get 200
      i32.shr_u
      local.set 201
      local.get 5
      i32.load offset=96
      local.set 202
      i32.const 16
      local.set 203
      local.get 202
      local.get 203
      i32.shl
      local.set 204
      local.get 201
      local.get 204
      i32.or
      local.set 205
      i32.const 1073741823
      local.set 206
      local.get 205
      local.get 206
      i32.and
      local.set 207
      local.get 5
      local.get 207
      i32.store offset=16
      local.get 5
      i32.load offset=96
      local.set 208
      i32.const 14
      local.set 209
      local.get 208
      local.get 209
      i32.shr_u
      local.set 210
      local.get 5
      i32.load offset=100
      local.set 211
      i32.const 18
      local.set 212
      local.get 211
      local.get 212
      i32.shl
      local.set 213
      local.get 210
      local.get 213
      i32.or
      local.set 214
      i32.const 1073741823
      local.set 215
      local.get 214
      local.get 215
      i32.and
      local.set 216
      local.get 5
      local.get 216
      i32.store offset=20
      local.get 5
      i32.load offset=100
      local.set 217
      i32.const 12
      local.set 218
      local.get 217
      local.get 218
      i32.shr_u
      local.set 219
      local.get 5
      i32.load offset=104
      local.set 220
      i32.const 20
      local.set 221
      local.get 220
      local.get 221
      i32.shl
      local.set 222
      local.get 219
      local.get 222
      i32.or
      local.set 223
      i32.const 1073741823
      local.set 224
      local.get 223
      local.get 224
      i32.and
      local.set 225
      local.get 5
      local.get 225
      i32.store offset=24
      local.get 5
      i32.load offset=104
      local.set 226
      i32.const 10
      local.set 227
      local.get 226
      local.get 227
      i32.shr_u
      local.set 228
      local.get 5
      i32.load offset=108
      local.set 229
      i32.const 22
      local.set 230
      local.get 229
      local.get 230
      i32.shl
      local.set 231
      local.get 228
      local.get 231
      i32.or
      local.set 232
      i32.const 1073741823
      local.set 233
      local.get 232
      local.get 233
      i32.and
      local.set 234
      local.get 5
      local.get 234
      i32.store offset=28
      local.get 5
      i32.load offset=108
      local.set 235
      i32.const 8
      local.set 236
      local.get 235
      local.get 236
      i32.shr_u
      local.set 237
      local.get 5
      local.get 237
      i32.store offset=32
      local.get 5
      i32.load offset=188
      local.set 238
      local.get 5
      i32.load offset=188
      local.set 239
      local.get 238
      local.get 162
      local.get 239
      call $barrett_reduce256_modm
    end
    i32.const 192
    local.set 240
    local.get 5
    local.get 240
    i32.add
    local.set 241
    local.get 241
    global.set 0
    return)
  (func $ge25519_double_scalarmult_vartime (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 4
    i32.const 2176
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set 0
    i32.const 0
    local.set 7
    i32.const 336
    local.set 8
    local.get 6
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    i32.const 176
    local.set 11
    local.get 6
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 7
    local.set 14
    i32.const 1616
    local.set 15
    local.get 6
    local.get 15
    i32.add
    local.set 16
    local.get 16
    local.set 17
    i32.const 5
    local.set 18
    i32.const 1872
    local.set 19
    local.get 6
    local.get 19
    i32.add
    local.set 20
    local.get 20
    local.set 21
    local.get 6
    local.get 0
    i32.store offset=2148
    local.get 6
    local.get 1
    i32.store offset=2144
    local.get 6
    local.get 2
    i32.store offset=2140
    local.get 6
    local.get 3
    i32.store offset=2136
    local.get 6
    i32.load offset=2140
    local.set 22
    local.get 21
    local.get 22
    local.get 18
    call $contract256_slidingwindow_modm
    local.get 6
    i32.load offset=2136
    local.set 23
    local.get 17
    local.get 23
    local.get 14
    call $contract256_slidingwindow_modm
    local.get 6
    i32.load offset=2144
    local.set 24
    local.get 13
    local.get 24
    call $ge25519_double
    local.get 6
    i32.load offset=2144
    local.set 25
    local.get 10
    local.get 25
    call $ge25519_full_to_pniels
    local.get 6
    local.get 7
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 7
        local.set 26
        local.get 6
        i32.load offset=12
        local.set 27
        local.get 27
        local.set 28
        local.get 26
        local.set 29
        local.get 28
        local.get 29
        i32.lt_s
        local.set 30
        i32.const 1
        local.set 31
        local.get 30
        local.get 31
        i32.and
        local.set 32
        local.get 32
        i32.eqz
        br_if 1 (;@1;)
        i32.const 176
        local.set 33
        local.get 6
        local.get 33
        i32.add
        local.set 34
        local.get 34
        local.set 35
        i32.const 336
        local.set 36
        local.get 6
        local.get 36
        i32.add
        local.set 37
        local.get 37
        local.set 38
        local.get 6
        i32.load offset=12
        local.set 39
        i32.const 1
        local.set 40
        local.get 39
        local.get 40
        i32.add
        local.set 41
        i32.const 160
        local.set 42
        local.get 41
        local.get 42
        i32.mul
        local.set 43
        local.get 38
        local.get 43
        i32.add
        local.set 44
        local.get 6
        i32.load offset=12
        local.set 45
        i32.const 160
        local.set 46
        local.get 45
        local.get 46
        i32.mul
        local.set 47
        local.get 38
        local.get 47
        i32.add
        local.set 48
        local.get 44
        local.get 35
        local.get 48
        call $ge25519_pnielsadd
        local.get 6
        i32.load offset=12
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.add
        local.set 51
        local.get 6
        local.get 51
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 255
    local.set 52
    i32.const 1
    local.set 53
    local.get 6
    i32.load offset=2148
    local.set 54
    i32.const 160
    local.set 55
    i32.const 0
    local.set 56
    local.get 54
    local.get 56
    local.get 55
    call $memset
    drop
    local.get 6
    i32.load offset=2148
    local.set 57
    local.get 57
    local.get 53
    i32.store offset=40
    local.get 6
    i32.load offset=2148
    local.set 58
    local.get 58
    local.get 53
    i32.store offset=80
    local.get 6
    local.get 52
    i32.store offset=12
    loop  ;; label = @1
      i32.const 0
      local.set 59
      i32.const 0
      local.set 60
      local.get 6
      i32.load offset=12
      local.set 61
      local.get 61
      local.set 62
      local.get 60
      local.set 63
      local.get 62
      local.get 63
      i32.ge_s
      local.set 64
      i32.const 1
      local.set 65
      local.get 64
      local.get 65
      i32.and
      local.set 66
      local.get 59
      local.set 67
      block  ;; label = @2
        local.get 66
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 68
        i32.const 1616
        local.set 69
        local.get 6
        local.get 69
        i32.add
        local.set 70
        local.get 70
        local.set 71
        i32.const 1872
        local.set 72
        local.get 6
        local.get 72
        i32.add
        local.set 73
        local.get 73
        local.set 74
        local.get 6
        i32.load offset=12
        local.set 75
        local.get 74
        local.get 75
        i32.add
        local.set 76
        local.get 76
        i32.load8_u
        local.set 77
        i32.const 24
        local.set 78
        local.get 77
        local.get 78
        i32.shl
        local.set 79
        local.get 79
        local.get 78
        i32.shr_s
        local.set 80
        local.get 6
        i32.load offset=12
        local.set 81
        local.get 71
        local.get 81
        i32.add
        local.set 82
        local.get 82
        i32.load8_u
        local.set 83
        i32.const 24
        local.set 84
        local.get 83
        local.get 84
        i32.shl
        local.set 85
        local.get 85
        local.get 84
        i32.shr_s
        local.set 86
        local.get 80
        local.get 86
        i32.or
        local.set 87
        local.get 87
        local.set 88
        local.get 68
        local.set 89
        local.get 88
        local.get 89
        i32.ne
        local.set 90
        i32.const -1
        local.set 91
        local.get 90
        local.get 91
        i32.xor
        local.set 92
        local.get 92
        local.set 67
      end
      local.get 67
      local.set 93
      i32.const 1
      local.set 94
      local.get 93
      local.get 94
      i32.and
      local.set 95
      block  ;; label = @2
        local.get 95
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.load offset=12
        local.set 96
        i32.const -1
        local.set 97
        local.get 96
        local.get 97
        i32.add
        local.set 98
        local.get 6
        local.get 98
        i32.store offset=12
        br 1 (;@1;)
      end
    end
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 99
        local.get 6
        i32.load offset=12
        local.set 100
        local.get 100
        local.set 101
        local.get 99
        local.set 102
        local.get 101
        local.get 102
        i32.ge_s
        local.set 103
        i32.const 1
        local.set 104
        local.get 103
        local.get 104
        i32.and
        local.set 105
        local.get 105
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 106
        i32.const 1872
        local.set 107
        local.get 6
        local.get 107
        i32.add
        local.set 108
        local.get 108
        local.set 109
        i32.const 16
        local.set 110
        local.get 6
        local.get 110
        i32.add
        local.set 111
        local.get 111
        local.set 112
        local.get 6
        i32.load offset=2148
        local.set 113
        local.get 112
        local.get 113
        call $ge25519_double_p1p1
        local.get 6
        i32.load offset=12
        local.set 114
        local.get 109
        local.get 114
        i32.add
        local.set 115
        local.get 115
        i32.load8_u
        local.set 116
        i32.const 255
        local.set 117
        local.get 116
        local.get 117
        i32.and
        local.set 118
        i32.const 255
        local.set 119
        local.get 106
        local.get 119
        i32.and
        local.set 120
        local.get 118
        local.get 120
        i32.ne
        local.set 121
        i32.const 1
        local.set 122
        local.get 121
        local.get 122
        i32.and
        local.set 123
        block  ;; label = @3
          local.get 123
          i32.eqz
          br_if 0 (;@3;)
          i32.const 16
          local.set 124
          local.get 6
          local.get 124
          i32.add
          local.set 125
          local.get 125
          local.set 126
          i32.const 1872
          local.set 127
          local.get 6
          local.get 127
          i32.add
          local.set 128
          local.get 128
          local.set 129
          i32.const 336
          local.set 130
          local.get 6
          local.get 130
          i32.add
          local.set 131
          local.get 131
          local.set 132
          local.get 6
          i32.load offset=2148
          local.set 133
          local.get 6
          local.get 133
          i32.store offset=2156
          local.get 6
          local.get 126
          i32.store offset=2152
          local.get 6
          i32.load offset=2156
          local.set 134
          local.get 6
          i32.load offset=2152
          local.set 135
          local.get 6
          i32.load offset=2152
          local.set 136
          i32.const 120
          local.set 137
          local.get 136
          local.get 137
          i32.add
          local.set 138
          local.get 134
          local.get 135
          local.get 138
          call $curve25519_mul
          local.get 6
          i32.load offset=2156
          local.set 139
          i32.const 40
          local.set 140
          local.get 139
          local.get 140
          i32.add
          local.set 141
          local.get 6
          i32.load offset=2152
          local.set 142
          i32.const 40
          local.set 143
          local.get 142
          local.get 143
          i32.add
          local.set 144
          local.get 6
          i32.load offset=2152
          local.set 145
          i32.const 80
          local.set 146
          local.get 145
          local.get 146
          i32.add
          local.set 147
          local.get 141
          local.get 144
          local.get 147
          call $curve25519_mul
          local.get 6
          i32.load offset=2156
          local.set 148
          i32.const 80
          local.set 149
          local.get 148
          local.get 149
          i32.add
          local.set 150
          local.get 6
          i32.load offset=2152
          local.set 151
          i32.const 80
          local.set 152
          local.get 151
          local.get 152
          i32.add
          local.set 153
          local.get 6
          i32.load offset=2152
          local.set 154
          i32.const 120
          local.set 155
          local.get 154
          local.get 155
          i32.add
          local.set 156
          local.get 150
          local.get 153
          local.get 156
          call $curve25519_mul
          local.get 6
          i32.load offset=2156
          local.set 157
          i32.const 120
          local.set 158
          local.get 157
          local.get 158
          i32.add
          local.set 159
          local.get 6
          i32.load offset=2152
          local.set 160
          local.get 6
          i32.load offset=2152
          local.set 161
          i32.const 40
          local.set 162
          local.get 161
          local.get 162
          i32.add
          local.set 163
          local.get 159
          local.get 160
          local.get 163
          call $curve25519_mul
          local.get 6
          i32.load offset=2148
          local.set 164
          local.get 6
          i32.load offset=12
          local.set 165
          local.get 129
          local.get 165
          i32.add
          local.set 166
          local.get 166
          i32.load8_u
          local.set 167
          i32.const 24
          local.set 168
          local.get 167
          local.get 168
          i32.shl
          local.set 169
          local.get 169
          local.get 168
          i32.shr_s
          local.set 170
          local.get 170
          call $abs
          local.set 171
          i32.const 2
          local.set 172
          local.get 171
          local.get 172
          i32.div_s
          local.set 173
          i32.const 160
          local.set 174
          local.get 173
          local.get 174
          i32.mul
          local.set 175
          local.get 132
          local.get 175
          i32.add
          local.set 176
          local.get 6
          i32.load offset=12
          local.set 177
          local.get 129
          local.get 177
          i32.add
          local.set 178
          local.get 178
          i32.load8_u
          local.set 179
          i32.const 255
          local.set 180
          local.get 179
          local.get 180
          i32.and
          local.set 181
          i32.const 7
          local.set 182
          local.get 181
          local.get 182
          i32.shr_s
          local.set 183
          i32.const 255
          local.set 184
          local.get 183
          local.get 184
          i32.and
          local.set 185
          local.get 126
          local.get 164
          local.get 176
          local.get 185
          call $ge25519_pnielsadd_p1p1
        end
        i32.const 0
        local.set 186
        i32.const 1616
        local.set 187
        local.get 6
        local.get 187
        i32.add
        local.set 188
        local.get 188
        local.set 189
        local.get 6
        i32.load offset=12
        local.set 190
        local.get 189
        local.get 190
        i32.add
        local.set 191
        local.get 191
        i32.load8_u
        local.set 192
        i32.const 255
        local.set 193
        local.get 192
        local.get 193
        i32.and
        local.set 194
        i32.const 255
        local.set 195
        local.get 186
        local.get 195
        i32.and
        local.set 196
        local.get 194
        local.get 196
        i32.ne
        local.set 197
        i32.const 1
        local.set 198
        local.get 197
        local.get 198
        i32.and
        local.set 199
        block  ;; label = @3
          local.get 199
          i32.eqz
          br_if 0 (;@3;)
          i32.const 16
          local.set 200
          local.get 6
          local.get 200
          i32.add
          local.set 201
          local.get 201
          local.set 202
          i32.const 1616
          local.set 203
          local.get 6
          local.get 203
          i32.add
          local.set 204
          local.get 204
          local.set 205
          i32.const 1936
          local.set 206
          local.get 6
          i32.load offset=2148
          local.set 207
          local.get 6
          local.get 207
          i32.store offset=2164
          local.get 6
          local.get 202
          i32.store offset=2160
          local.get 6
          i32.load offset=2164
          local.set 208
          local.get 6
          i32.load offset=2160
          local.set 209
          local.get 6
          i32.load offset=2160
          local.set 210
          i32.const 120
          local.set 211
          local.get 210
          local.get 211
          i32.add
          local.set 212
          local.get 208
          local.get 209
          local.get 212
          call $curve25519_mul
          local.get 6
          i32.load offset=2164
          local.set 213
          i32.const 40
          local.set 214
          local.get 213
          local.get 214
          i32.add
          local.set 215
          local.get 6
          i32.load offset=2160
          local.set 216
          i32.const 40
          local.set 217
          local.get 216
          local.get 217
          i32.add
          local.set 218
          local.get 6
          i32.load offset=2160
          local.set 219
          i32.const 80
          local.set 220
          local.get 219
          local.get 220
          i32.add
          local.set 221
          local.get 215
          local.get 218
          local.get 221
          call $curve25519_mul
          local.get 6
          i32.load offset=2164
          local.set 222
          i32.const 80
          local.set 223
          local.get 222
          local.get 223
          i32.add
          local.set 224
          local.get 6
          i32.load offset=2160
          local.set 225
          i32.const 80
          local.set 226
          local.get 225
          local.get 226
          i32.add
          local.set 227
          local.get 6
          i32.load offset=2160
          local.set 228
          i32.const 120
          local.set 229
          local.get 228
          local.get 229
          i32.add
          local.set 230
          local.get 224
          local.get 227
          local.get 230
          call $curve25519_mul
          local.get 6
          i32.load offset=2164
          local.set 231
          i32.const 120
          local.set 232
          local.get 231
          local.get 232
          i32.add
          local.set 233
          local.get 6
          i32.load offset=2160
          local.set 234
          local.get 6
          i32.load offset=2160
          local.set 235
          i32.const 40
          local.set 236
          local.get 235
          local.get 236
          i32.add
          local.set 237
          local.get 233
          local.get 234
          local.get 237
          call $curve25519_mul
          local.get 6
          i32.load offset=2148
          local.set 238
          local.get 6
          i32.load offset=12
          local.set 239
          local.get 205
          local.get 239
          i32.add
          local.set 240
          local.get 240
          i32.load8_u
          local.set 241
          i32.const 24
          local.set 242
          local.get 241
          local.get 242
          i32.shl
          local.set 243
          local.get 243
          local.get 242
          i32.shr_s
          local.set 244
          local.get 244
          call $abs
          local.set 245
          i32.const 2
          local.set 246
          local.get 245
          local.get 246
          i32.div_s
          local.set 247
          i32.const 120
          local.set 248
          local.get 247
          local.get 248
          i32.mul
          local.set 249
          local.get 206
          local.get 249
          i32.add
          local.set 250
          local.get 6
          i32.load offset=12
          local.set 251
          local.get 205
          local.get 251
          i32.add
          local.set 252
          local.get 252
          i32.load8_u
          local.set 253
          i32.const 255
          local.set 254
          local.get 253
          local.get 254
          i32.and
          local.set 255
          i32.const 7
          local.set 256
          local.get 255
          local.get 256
          i32.shr_s
          local.set 257
          i32.const 255
          local.set 258
          local.get 257
          local.get 258
          i32.and
          local.set 259
          local.get 202
          local.get 238
          local.get 250
          local.get 259
          call $ge25519_nielsadd2_p1p1
        end
        i32.const 16
        local.set 260
        local.get 6
        local.get 260
        i32.add
        local.set 261
        local.get 261
        local.set 262
        local.get 6
        i32.load offset=2148
        local.set 263
        local.get 6
        local.get 263
        i32.store offset=2172
        local.get 6
        local.get 262
        i32.store offset=2168
        local.get 6
        i32.load offset=2172
        local.set 264
        local.get 6
        i32.load offset=2168
        local.set 265
        local.get 6
        i32.load offset=2168
        local.set 266
        i32.const 120
        local.set 267
        local.get 266
        local.get 267
        i32.add
        local.set 268
        local.get 264
        local.get 265
        local.get 268
        call $curve25519_mul
        local.get 6
        i32.load offset=2172
        local.set 269
        i32.const 40
        local.set 270
        local.get 269
        local.get 270
        i32.add
        local.set 271
        local.get 6
        i32.load offset=2168
        local.set 272
        i32.const 40
        local.set 273
        local.get 272
        local.get 273
        i32.add
        local.set 274
        local.get 6
        i32.load offset=2168
        local.set 275
        i32.const 80
        local.set 276
        local.get 275
        local.get 276
        i32.add
        local.set 277
        local.get 271
        local.get 274
        local.get 277
        call $curve25519_mul
        local.get 6
        i32.load offset=2172
        local.set 278
        i32.const 80
        local.set 279
        local.get 278
        local.get 279
        i32.add
        local.set 280
        local.get 6
        i32.load offset=2168
        local.set 281
        i32.const 80
        local.set 282
        local.get 281
        local.get 282
        i32.add
        local.set 283
        local.get 6
        i32.load offset=2168
        local.set 284
        i32.const 120
        local.set 285
        local.get 284
        local.get 285
        i32.add
        local.set 286
        local.get 280
        local.get 283
        local.get 286
        call $curve25519_mul
        local.get 6
        i32.load offset=12
        local.set 287
        i32.const -1
        local.set 288
        local.get 287
        local.get 288
        i32.add
        local.set 289
        local.get 6
        local.get 289
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 2176
    local.set 290
    local.get 6
    local.get 290
    i32.add
    local.set 291
    local.get 291
    global.set 0
    return)
  (func $ge25519_pack (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 176
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 128
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    local.get 4
    local.set 8
    i32.const 80
    local.set 9
    local.get 4
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    i32.const 32
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.set 14
    local.get 4
    local.get 0
    i32.store offset=172
    local.get 4
    local.get 1
    i32.store offset=168
    local.get 4
    i32.load offset=168
    local.set 15
    i32.const 80
    local.set 16
    local.get 15
    local.get 16
    i32.add
    local.set 17
    local.get 14
    local.get 17
    call $curve25519_recip
    local.get 4
    i32.load offset=168
    local.set 18
    local.get 7
    local.get 18
    local.get 14
    call $curve25519_mul
    local.get 4
    i32.load offset=168
    local.set 19
    i32.const 40
    local.set 20
    local.get 19
    local.get 20
    i32.add
    local.set 21
    local.get 11
    local.get 21
    local.get 14
    call $curve25519_mul
    local.get 4
    i32.load offset=172
    local.set 22
    local.get 22
    local.get 11
    call $curve25519_contract
    local.get 8
    local.get 7
    call $curve25519_contract
    local.get 4
    i32.load8_u
    local.set 23
    i32.const 255
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.and
    local.set 27
    i32.const 7
    local.set 28
    local.get 27
    local.get 28
    i32.shl
    local.set 29
    local.get 4
    i32.load offset=172
    local.set 30
    local.get 30
    i32.load8_u offset=31
    local.set 31
    i32.const 255
    local.set 32
    local.get 31
    local.get 32
    i32.and
    local.set 33
    local.get 33
    local.get 29
    i32.xor
    local.set 34
    local.get 30
    local.get 34
    i32.store8 offset=31
    i32.const 176
    local.set 35
    local.get 4
    local.get 35
    i32.add
    local.set 36
    local.get 36
    global.set 0
    return)
  (func $ed25519_verify (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    local.get 6
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=4
        local.set 7
        i32.const -1
        local.set 8
        local.get 7
        local.get 8
        i32.add
        local.set 9
        local.get 5
        local.get 9
        i32.store offset=4
        local.get 7
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=12
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.add
        local.set 12
        local.get 5
        local.get 12
        i32.store offset=12
        local.get 10
        i32.load8_u
        local.set 13
        i32.const 255
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 5
        i32.load offset=8
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.add
        local.set 18
        local.get 5
        local.get 18
        i32.store offset=8
        local.get 16
        i32.load8_u
        local.set 19
        i32.const 255
        local.set 20
        local.get 19
        local.get 20
        i32.and
        local.set 21
        local.get 15
        local.get 21
        i32.xor
        local.set 22
        local.get 5
        i32.load
        local.set 23
        local.get 23
        local.get 22
        i32.or
        local.set 24
        local.get 5
        local.get 24
        i32.store
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    i32.load
    local.set 25
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.sub
    local.set 27
    i32.const 8
    local.set 28
    local.get 27
    local.get 28
    i32.shr_u
    local.set 29
    i32.const 1
    local.set 30
    local.get 29
    local.get 30
    i32.and
    local.set 31
    local.get 31
    return)
  (func $curve25519_expand (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 48
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i32.const 1
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=44
    local.get 4
    local.get 1
    i32.store offset=40
    i32.const 0
    local.set 6
    local.get 6
    i32.load16_u offset=1192
    local.set 7
    i32.const 65535
    local.set 8
    local.get 7
    local.get 8
    i32.and
    local.set 9
    local.get 9
    local.set 10
    local.get 5
    local.set 11
    local.get 10
    local.get 11
    i32.eq
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    block  ;; label = @1
      block  ;; label = @2
        local.get 14
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=40
        local.set 15
        local.get 15
        i32.load
        local.set 16
        local.get 4
        local.get 16
        i32.store offset=36
        local.get 4
        i32.load offset=40
        local.set 17
        local.get 17
        i32.load offset=4
        local.set 18
        local.get 4
        local.get 18
        i32.store offset=32
        local.get 4
        i32.load offset=40
        local.set 19
        local.get 19
        i32.load offset=8
        local.set 20
        local.get 4
        local.get 20
        i32.store offset=28
        local.get 4
        i32.load offset=40
        local.set 21
        local.get 21
        i32.load offset=12
        local.set 22
        local.get 4
        local.get 22
        i32.store offset=24
        local.get 4
        i32.load offset=40
        local.set 23
        local.get 23
        i32.load offset=16
        local.set 24
        local.get 4
        local.get 24
        i32.store offset=20
        local.get 4
        i32.load offset=40
        local.set 25
        local.get 25
        i32.load offset=20
        local.set 26
        local.get 4
        local.get 26
        i32.store offset=16
        local.get 4
        i32.load offset=40
        local.set 27
        local.get 27
        i32.load offset=24
        local.set 28
        local.get 4
        local.get 28
        i32.store offset=12
        local.get 4
        i32.load offset=40
        local.set 29
        local.get 29
        i32.load offset=28
        local.set 30
        local.get 4
        local.get 30
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=40
      local.set 31
      local.get 31
      i32.load8_u
      local.set 32
      i32.const 255
      local.set 33
      local.get 32
      local.get 33
      i32.and
      local.set 34
      local.get 4
      i32.load offset=40
      local.set 35
      local.get 35
      i32.load8_u offset=1
      local.set 36
      i32.const 255
      local.set 37
      local.get 36
      local.get 37
      i32.and
      local.set 38
      i32.const 8
      local.set 39
      local.get 38
      local.get 39
      i32.shl
      local.set 40
      local.get 34
      local.get 40
      i32.or
      local.set 41
      local.get 4
      i32.load offset=40
      local.set 42
      local.get 42
      i32.load8_u offset=2
      local.set 43
      i32.const 255
      local.set 44
      local.get 43
      local.get 44
      i32.and
      local.set 45
      i32.const 16
      local.set 46
      local.get 45
      local.get 46
      i32.shl
      local.set 47
      local.get 41
      local.get 47
      i32.or
      local.set 48
      local.get 4
      i32.load offset=40
      local.set 49
      local.get 49
      i32.load8_u offset=3
      local.set 50
      i32.const 255
      local.set 51
      local.get 50
      local.get 51
      i32.and
      local.set 52
      i32.const 24
      local.set 53
      local.get 52
      local.get 53
      i32.shl
      local.set 54
      local.get 48
      local.get 54
      i32.or
      local.set 55
      local.get 4
      local.get 55
      i32.store offset=36
      local.get 4
      i32.load offset=40
      local.set 56
      local.get 56
      i32.load8_u offset=4
      local.set 57
      i32.const 255
      local.set 58
      local.get 57
      local.get 58
      i32.and
      local.set 59
      local.get 4
      i32.load offset=40
      local.set 60
      local.get 60
      i32.load8_u offset=5
      local.set 61
      i32.const 255
      local.set 62
      local.get 61
      local.get 62
      i32.and
      local.set 63
      i32.const 8
      local.set 64
      local.get 63
      local.get 64
      i32.shl
      local.set 65
      local.get 59
      local.get 65
      i32.or
      local.set 66
      local.get 4
      i32.load offset=40
      local.set 67
      local.get 67
      i32.load8_u offset=6
      local.set 68
      i32.const 255
      local.set 69
      local.get 68
      local.get 69
      i32.and
      local.set 70
      i32.const 16
      local.set 71
      local.get 70
      local.get 71
      i32.shl
      local.set 72
      local.get 66
      local.get 72
      i32.or
      local.set 73
      local.get 4
      i32.load offset=40
      local.set 74
      local.get 74
      i32.load8_u offset=7
      local.set 75
      i32.const 255
      local.set 76
      local.get 75
      local.get 76
      i32.and
      local.set 77
      i32.const 24
      local.set 78
      local.get 77
      local.get 78
      i32.shl
      local.set 79
      local.get 73
      local.get 79
      i32.or
      local.set 80
      local.get 4
      local.get 80
      i32.store offset=32
      local.get 4
      i32.load offset=40
      local.set 81
      local.get 81
      i32.load8_u offset=8
      local.set 82
      i32.const 255
      local.set 83
      local.get 82
      local.get 83
      i32.and
      local.set 84
      local.get 4
      i32.load offset=40
      local.set 85
      local.get 85
      i32.load8_u offset=9
      local.set 86
      i32.const 255
      local.set 87
      local.get 86
      local.get 87
      i32.and
      local.set 88
      i32.const 8
      local.set 89
      local.get 88
      local.get 89
      i32.shl
      local.set 90
      local.get 84
      local.get 90
      i32.or
      local.set 91
      local.get 4
      i32.load offset=40
      local.set 92
      local.get 92
      i32.load8_u offset=10
      local.set 93
      i32.const 255
      local.set 94
      local.get 93
      local.get 94
      i32.and
      local.set 95
      i32.const 16
      local.set 96
      local.get 95
      local.get 96
      i32.shl
      local.set 97
      local.get 91
      local.get 97
      i32.or
      local.set 98
      local.get 4
      i32.load offset=40
      local.set 99
      local.get 99
      i32.load8_u offset=11
      local.set 100
      i32.const 255
      local.set 101
      local.get 100
      local.get 101
      i32.and
      local.set 102
      i32.const 24
      local.set 103
      local.get 102
      local.get 103
      i32.shl
      local.set 104
      local.get 98
      local.get 104
      i32.or
      local.set 105
      local.get 4
      local.get 105
      i32.store offset=28
      local.get 4
      i32.load offset=40
      local.set 106
      local.get 106
      i32.load8_u offset=12
      local.set 107
      i32.const 255
      local.set 108
      local.get 107
      local.get 108
      i32.and
      local.set 109
      local.get 4
      i32.load offset=40
      local.set 110
      local.get 110
      i32.load8_u offset=13
      local.set 111
      i32.const 255
      local.set 112
      local.get 111
      local.get 112
      i32.and
      local.set 113
      i32.const 8
      local.set 114
      local.get 113
      local.get 114
      i32.shl
      local.set 115
      local.get 109
      local.get 115
      i32.or
      local.set 116
      local.get 4
      i32.load offset=40
      local.set 117
      local.get 117
      i32.load8_u offset=14
      local.set 118
      i32.const 255
      local.set 119
      local.get 118
      local.get 119
      i32.and
      local.set 120
      i32.const 16
      local.set 121
      local.get 120
      local.get 121
      i32.shl
      local.set 122
      local.get 116
      local.get 122
      i32.or
      local.set 123
      local.get 4
      i32.load offset=40
      local.set 124
      local.get 124
      i32.load8_u offset=15
      local.set 125
      i32.const 255
      local.set 126
      local.get 125
      local.get 126
      i32.and
      local.set 127
      i32.const 24
      local.set 128
      local.get 127
      local.get 128
      i32.shl
      local.set 129
      local.get 123
      local.get 129
      i32.or
      local.set 130
      local.get 4
      local.get 130
      i32.store offset=24
      local.get 4
      i32.load offset=40
      local.set 131
      local.get 131
      i32.load8_u offset=16
      local.set 132
      i32.const 255
      local.set 133
      local.get 132
      local.get 133
      i32.and
      local.set 134
      local.get 4
      i32.load offset=40
      local.set 135
      local.get 135
      i32.load8_u offset=17
      local.set 136
      i32.const 255
      local.set 137
      local.get 136
      local.get 137
      i32.and
      local.set 138
      i32.const 8
      local.set 139
      local.get 138
      local.get 139
      i32.shl
      local.set 140
      local.get 134
      local.get 140
      i32.or
      local.set 141
      local.get 4
      i32.load offset=40
      local.set 142
      local.get 142
      i32.load8_u offset=18
      local.set 143
      i32.const 255
      local.set 144
      local.get 143
      local.get 144
      i32.and
      local.set 145
      i32.const 16
      local.set 146
      local.get 145
      local.get 146
      i32.shl
      local.set 147
      local.get 141
      local.get 147
      i32.or
      local.set 148
      local.get 4
      i32.load offset=40
      local.set 149
      local.get 149
      i32.load8_u offset=19
      local.set 150
      i32.const 255
      local.set 151
      local.get 150
      local.get 151
      i32.and
      local.set 152
      i32.const 24
      local.set 153
      local.get 152
      local.get 153
      i32.shl
      local.set 154
      local.get 148
      local.get 154
      i32.or
      local.set 155
      local.get 4
      local.get 155
      i32.store offset=20
      local.get 4
      i32.load offset=40
      local.set 156
      local.get 156
      i32.load8_u offset=20
      local.set 157
      i32.const 255
      local.set 158
      local.get 157
      local.get 158
      i32.and
      local.set 159
      local.get 4
      i32.load offset=40
      local.set 160
      local.get 160
      i32.load8_u offset=21
      local.set 161
      i32.const 255
      local.set 162
      local.get 161
      local.get 162
      i32.and
      local.set 163
      i32.const 8
      local.set 164
      local.get 163
      local.get 164
      i32.shl
      local.set 165
      local.get 159
      local.get 165
      i32.or
      local.set 166
      local.get 4
      i32.load offset=40
      local.set 167
      local.get 167
      i32.load8_u offset=22
      local.set 168
      i32.const 255
      local.set 169
      local.get 168
      local.get 169
      i32.and
      local.set 170
      i32.const 16
      local.set 171
      local.get 170
      local.get 171
      i32.shl
      local.set 172
      local.get 166
      local.get 172
      i32.or
      local.set 173
      local.get 4
      i32.load offset=40
      local.set 174
      local.get 174
      i32.load8_u offset=23
      local.set 175
      i32.const 255
      local.set 176
      local.get 175
      local.get 176
      i32.and
      local.set 177
      i32.const 24
      local.set 178
      local.get 177
      local.get 178
      i32.shl
      local.set 179
      local.get 173
      local.get 179
      i32.or
      local.set 180
      local.get 4
      local.get 180
      i32.store offset=16
      local.get 4
      i32.load offset=40
      local.set 181
      local.get 181
      i32.load8_u offset=24
      local.set 182
      i32.const 255
      local.set 183
      local.get 182
      local.get 183
      i32.and
      local.set 184
      local.get 4
      i32.load offset=40
      local.set 185
      local.get 185
      i32.load8_u offset=25
      local.set 186
      i32.const 255
      local.set 187
      local.get 186
      local.get 187
      i32.and
      local.set 188
      i32.const 8
      local.set 189
      local.get 188
      local.get 189
      i32.shl
      local.set 190
      local.get 184
      local.get 190
      i32.or
      local.set 191
      local.get 4
      i32.load offset=40
      local.set 192
      local.get 192
      i32.load8_u offset=26
      local.set 193
      i32.const 255
      local.set 194
      local.get 193
      local.get 194
      i32.and
      local.set 195
      i32.const 16
      local.set 196
      local.get 195
      local.get 196
      i32.shl
      local.set 197
      local.get 191
      local.get 197
      i32.or
      local.set 198
      local.get 4
      i32.load offset=40
      local.set 199
      local.get 199
      i32.load8_u offset=27
      local.set 200
      i32.const 255
      local.set 201
      local.get 200
      local.get 201
      i32.and
      local.set 202
      i32.const 24
      local.set 203
      local.get 202
      local.get 203
      i32.shl
      local.set 204
      local.get 198
      local.get 204
      i32.or
      local.set 205
      local.get 4
      local.get 205
      i32.store offset=12
      local.get 4
      i32.load offset=40
      local.set 206
      local.get 206
      i32.load8_u offset=28
      local.set 207
      i32.const 255
      local.set 208
      local.get 207
      local.get 208
      i32.and
      local.set 209
      local.get 4
      i32.load offset=40
      local.set 210
      local.get 210
      i32.load8_u offset=29
      local.set 211
      i32.const 255
      local.set 212
      local.get 211
      local.get 212
      i32.and
      local.set 213
      i32.const 8
      local.set 214
      local.get 213
      local.get 214
      i32.shl
      local.set 215
      local.get 209
      local.get 215
      i32.or
      local.set 216
      local.get 4
      i32.load offset=40
      local.set 217
      local.get 217
      i32.load8_u offset=30
      local.set 218
      i32.const 255
      local.set 219
      local.get 218
      local.get 219
      i32.and
      local.set 220
      i32.const 16
      local.set 221
      local.get 220
      local.get 221
      i32.shl
      local.set 222
      local.get 216
      local.get 222
      i32.or
      local.set 223
      local.get 4
      i32.load offset=40
      local.set 224
      local.get 224
      i32.load8_u offset=31
      local.set 225
      i32.const 255
      local.set 226
      local.get 225
      local.get 226
      i32.and
      local.set 227
      i32.const 24
      local.set 228
      local.get 227
      local.get 228
      i32.shl
      local.set 229
      local.get 223
      local.get 229
      i32.or
      local.set 230
      local.get 4
      local.get 230
      i32.store offset=8
    end
    local.get 4
    i32.load offset=36
    local.set 231
    i32.const 67108863
    local.set 232
    local.get 231
    local.get 232
    i32.and
    local.set 233
    local.get 4
    i32.load offset=44
    local.set 234
    local.get 234
    local.get 233
    i32.store
    local.get 4
    i32.load offset=32
    local.set 235
    local.get 235
    local.set 236
    local.get 236
    i64.extend_i32_u
    local.set 287
    i64.const 32
    local.set 288
    local.get 287
    local.get 288
    i64.shl
    local.set 289
    local.get 4
    i32.load offset=36
    local.set 237
    local.get 237
    local.set 238
    local.get 238
    i64.extend_i32_u
    local.set 290
    local.get 289
    local.get 290
    i64.or
    local.set 291
    i64.const 26
    local.set 292
    local.get 291
    local.get 292
    i64.shr_u
    local.set 293
    i64.const 33554431
    local.set 294
    local.get 293
    local.get 294
    i64.and
    local.set 295
    local.get 295
    i32.wrap_i64
    local.set 239
    local.get 4
    i32.load offset=44
    local.set 240
    local.get 240
    local.get 239
    i32.store offset=4
    local.get 4
    i32.load offset=28
    local.set 241
    local.get 241
    local.set 242
    local.get 242
    i64.extend_i32_u
    local.set 296
    i64.const 32
    local.set 297
    local.get 296
    local.get 297
    i64.shl
    local.set 298
    local.get 4
    i32.load offset=32
    local.set 243
    local.get 243
    local.set 244
    local.get 244
    i64.extend_i32_u
    local.set 299
    local.get 298
    local.get 299
    i64.or
    local.set 300
    i64.const 19
    local.set 301
    local.get 300
    local.get 301
    i64.shr_u
    local.set 302
    i64.const 67108863
    local.set 303
    local.get 302
    local.get 303
    i64.and
    local.set 304
    local.get 304
    i32.wrap_i64
    local.set 245
    local.get 4
    i32.load offset=44
    local.set 246
    local.get 246
    local.get 245
    i32.store offset=8
    local.get 4
    i32.load offset=24
    local.set 247
    local.get 247
    local.set 248
    local.get 248
    i64.extend_i32_u
    local.set 305
    i64.const 32
    local.set 306
    local.get 305
    local.get 306
    i64.shl
    local.set 307
    local.get 4
    i32.load offset=28
    local.set 249
    local.get 249
    local.set 250
    local.get 250
    i64.extend_i32_u
    local.set 308
    local.get 307
    local.get 308
    i64.or
    local.set 309
    i64.const 13
    local.set 310
    local.get 309
    local.get 310
    i64.shr_u
    local.set 311
    i64.const 33554431
    local.set 312
    local.get 311
    local.get 312
    i64.and
    local.set 313
    local.get 313
    i32.wrap_i64
    local.set 251
    local.get 4
    i32.load offset=44
    local.set 252
    local.get 252
    local.get 251
    i32.store offset=12
    local.get 4
    i32.load offset=24
    local.set 253
    i32.const 6
    local.set 254
    local.get 253
    local.get 254
    i32.shr_u
    local.set 255
    i32.const 67108863
    local.set 256
    local.get 255
    local.get 256
    i32.and
    local.set 257
    local.get 4
    i32.load offset=44
    local.set 258
    local.get 258
    local.get 257
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 259
    i32.const 33554431
    local.set 260
    local.get 259
    local.get 260
    i32.and
    local.set 261
    local.get 4
    i32.load offset=44
    local.set 262
    local.get 262
    local.get 261
    i32.store offset=20
    local.get 4
    i32.load offset=16
    local.set 263
    local.get 263
    local.set 264
    local.get 264
    i64.extend_i32_u
    local.set 314
    i64.const 32
    local.set 315
    local.get 314
    local.get 315
    i64.shl
    local.set 316
    local.get 4
    i32.load offset=20
    local.set 265
    local.get 265
    local.set 266
    local.get 266
    i64.extend_i32_u
    local.set 317
    local.get 316
    local.get 317
    i64.or
    local.set 318
    i64.const 25
    local.set 319
    local.get 318
    local.get 319
    i64.shr_u
    local.set 320
    i64.const 67108863
    local.set 321
    local.get 320
    local.get 321
    i64.and
    local.set 322
    local.get 322
    i32.wrap_i64
    local.set 267
    local.get 4
    i32.load offset=44
    local.set 268
    local.get 268
    local.get 267
    i32.store offset=24
    local.get 4
    i32.load offset=12
    local.set 269
    local.get 269
    local.set 270
    local.get 270
    i64.extend_i32_u
    local.set 323
    i64.const 32
    local.set 324
    local.get 323
    local.get 324
    i64.shl
    local.set 325
    local.get 4
    i32.load offset=16
    local.set 271
    local.get 271
    local.set 272
    local.get 272
    i64.extend_i32_u
    local.set 326
    local.get 325
    local.get 326
    i64.or
    local.set 327
    i64.const 19
    local.set 328
    local.get 327
    local.get 328
    i64.shr_u
    local.set 329
    i64.const 33554431
    local.set 330
    local.get 329
    local.get 330
    i64.and
    local.set 331
    local.get 331
    i32.wrap_i64
    local.set 273
    local.get 4
    i32.load offset=44
    local.set 274
    local.get 274
    local.get 273
    i32.store offset=28
    local.get 4
    i32.load offset=8
    local.set 275
    local.get 275
    local.set 276
    local.get 276
    i64.extend_i32_u
    local.set 332
    i64.const 32
    local.set 333
    local.get 332
    local.get 333
    i64.shl
    local.set 334
    local.get 4
    i32.load offset=12
    local.set 277
    local.get 277
    local.set 278
    local.get 278
    i64.extend_i32_u
    local.set 335
    local.get 334
    local.get 335
    i64.or
    local.set 336
    i64.const 12
    local.set 337
    local.get 336
    local.get 337
    i64.shr_u
    local.set 338
    i64.const 67108863
    local.set 339
    local.get 338
    local.get 339
    i64.and
    local.set 340
    local.get 340
    i32.wrap_i64
    local.set 279
    local.get 4
    i32.load offset=44
    local.set 280
    local.get 280
    local.get 279
    i32.store offset=32
    local.get 4
    i32.load offset=8
    local.set 281
    i32.const 6
    local.set 282
    local.get 281
    local.get 282
    i32.shr_u
    local.set 283
    i32.const 33554431
    local.set 284
    local.get 283
    local.get 284
    i32.and
    local.set 285
    local.get 4
    i32.load offset=44
    local.set 286
    local.get 286
    local.get 285
    i32.store offset=36
    return)
  (func $curve25519_square (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 160
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.get 0
    i32.store offset=156
    local.get 4
    local.get 1
    i32.store offset=152
    local.get 4
    i32.load offset=152
    local.set 5
    local.get 5
    i32.load
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=148
    local.get 4
    i32.load offset=152
    local.set 7
    local.get 7
    i32.load offset=4
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=144
    local.get 4
    i32.load offset=152
    local.set 9
    local.get 9
    i32.load offset=8
    local.set 10
    local.get 4
    local.get 10
    i32.store offset=140
    local.get 4
    i32.load offset=152
    local.set 11
    local.get 11
    i32.load offset=12
    local.set 12
    local.get 4
    local.get 12
    i32.store offset=136
    local.get 4
    i32.load offset=152
    local.set 13
    local.get 13
    i32.load offset=16
    local.set 14
    local.get 4
    local.get 14
    i32.store offset=132
    local.get 4
    i32.load offset=152
    local.set 15
    local.get 15
    i32.load offset=20
    local.set 16
    local.get 4
    local.get 16
    i32.store offset=128
    local.get 4
    i32.load offset=152
    local.set 17
    local.get 17
    i32.load offset=24
    local.set 18
    local.get 4
    local.get 18
    i32.store offset=124
    local.get 4
    i32.load offset=152
    local.set 19
    local.get 19
    i32.load offset=28
    local.set 20
    local.get 4
    local.get 20
    i32.store offset=120
    local.get 4
    i32.load offset=152
    local.set 21
    local.get 21
    i32.load offset=32
    local.set 22
    local.get 4
    local.get 22
    i32.store offset=116
    local.get 4
    i32.load offset=152
    local.set 23
    local.get 23
    i32.load offset=36
    local.set 24
    local.get 4
    local.get 24
    i32.store offset=112
    local.get 4
    i32.load offset=148
    local.set 25
    local.get 25
    local.set 26
    local.get 26
    i64.extend_i32_u
    local.set 375
    local.get 4
    i32.load offset=148
    local.set 27
    local.get 27
    local.set 28
    local.get 28
    i64.extend_i32_u
    local.set 376
    local.get 375
    local.get 376
    i64.mul
    local.set 377
    local.get 4
    local.get 377
    i64.store offset=88
    local.get 4
    i32.load offset=148
    local.set 29
    i32.const 1
    local.set 30
    local.get 29
    local.get 30
    i32.shl
    local.set 31
    local.get 4
    local.get 31
    i32.store offset=148
    local.get 4
    i32.load offset=148
    local.set 32
    local.get 32
    local.set 33
    local.get 33
    i64.extend_i32_u
    local.set 378
    local.get 4
    i32.load offset=144
    local.set 34
    local.get 34
    local.set 35
    local.get 35
    i64.extend_i32_u
    local.set 379
    local.get 378
    local.get 379
    i64.mul
    local.set 380
    local.get 4
    local.get 380
    i64.store offset=80
    local.get 4
    i32.load offset=148
    local.set 36
    local.get 36
    local.set 37
    local.get 37
    i64.extend_i32_u
    local.set 381
    local.get 4
    i32.load offset=140
    local.set 38
    local.get 38
    local.set 39
    local.get 39
    i64.extend_i32_u
    local.set 382
    local.get 381
    local.get 382
    i64.mul
    local.set 383
    local.get 4
    i32.load offset=144
    local.set 40
    local.get 40
    local.set 41
    local.get 41
    i64.extend_i32_u
    local.set 384
    local.get 4
    i32.load offset=144
    local.set 42
    i32.const 1
    local.set 43
    local.get 42
    local.get 43
    i32.shl
    local.set 44
    local.get 44
    local.set 45
    local.get 45
    i64.extend_i32_u
    local.set 385
    local.get 384
    local.get 385
    i64.mul
    local.set 386
    local.get 383
    local.get 386
    i64.add
    local.set 387
    local.get 4
    local.get 387
    i64.store offset=72
    local.get 4
    i32.load offset=144
    local.set 46
    i32.const 1
    local.set 47
    local.get 46
    local.get 47
    i32.shl
    local.set 48
    local.get 4
    local.get 48
    i32.store offset=144
    local.get 4
    i32.load offset=148
    local.set 49
    local.get 49
    local.set 50
    local.get 50
    i64.extend_i32_u
    local.set 388
    local.get 4
    i32.load offset=136
    local.set 51
    local.get 51
    local.set 52
    local.get 52
    i64.extend_i32_u
    local.set 389
    local.get 388
    local.get 389
    i64.mul
    local.set 390
    local.get 4
    i32.load offset=144
    local.set 53
    local.get 53
    local.set 54
    local.get 54
    i64.extend_i32_u
    local.set 391
    local.get 4
    i32.load offset=140
    local.set 55
    local.get 55
    local.set 56
    local.get 56
    i64.extend_i32_u
    local.set 392
    local.get 391
    local.get 392
    i64.mul
    local.set 393
    local.get 390
    local.get 393
    i64.add
    local.set 394
    local.get 4
    local.get 394
    i64.store offset=64
    local.get 4
    i32.load offset=148
    local.set 57
    local.get 57
    local.set 58
    local.get 58
    i64.extend_i32_u
    local.set 395
    local.get 4
    i32.load offset=132
    local.set 59
    local.get 59
    local.set 60
    local.get 60
    i64.extend_i32_u
    local.set 396
    local.get 395
    local.get 396
    i64.mul
    local.set 397
    local.get 4
    i32.load offset=144
    local.set 61
    local.get 61
    local.set 62
    local.get 62
    i64.extend_i32_u
    local.set 398
    local.get 4
    i32.load offset=136
    local.set 63
    i32.const 1
    local.set 64
    local.get 63
    local.get 64
    i32.shl
    local.set 65
    local.get 65
    local.set 66
    local.get 66
    i64.extend_i32_u
    local.set 399
    local.get 398
    local.get 399
    i64.mul
    local.set 400
    local.get 397
    local.get 400
    i64.add
    local.set 401
    local.get 4
    i32.load offset=140
    local.set 67
    local.get 67
    local.set 68
    local.get 68
    i64.extend_i32_u
    local.set 402
    local.get 4
    i32.load offset=140
    local.set 69
    local.get 69
    local.set 70
    local.get 70
    i64.extend_i32_u
    local.set 403
    local.get 402
    local.get 403
    i64.mul
    local.set 404
    local.get 401
    local.get 404
    i64.add
    local.set 405
    local.get 4
    local.get 405
    i64.store offset=56
    local.get 4
    i32.load offset=140
    local.set 71
    i32.const 1
    local.set 72
    local.get 71
    local.get 72
    i32.shl
    local.set 73
    local.get 4
    local.get 73
    i32.store offset=140
    local.get 4
    i32.load offset=148
    local.set 74
    local.get 74
    local.set 75
    local.get 75
    i64.extend_i32_u
    local.set 406
    local.get 4
    i32.load offset=128
    local.set 76
    local.get 76
    local.set 77
    local.get 77
    i64.extend_i32_u
    local.set 407
    local.get 406
    local.get 407
    i64.mul
    local.set 408
    local.get 4
    i32.load offset=144
    local.set 78
    local.get 78
    local.set 79
    local.get 79
    i64.extend_i32_u
    local.set 409
    local.get 4
    i32.load offset=132
    local.set 80
    local.get 80
    local.set 81
    local.get 81
    i64.extend_i32_u
    local.set 410
    local.get 409
    local.get 410
    i64.mul
    local.set 411
    local.get 408
    local.get 411
    i64.add
    local.set 412
    local.get 4
    i32.load offset=140
    local.set 82
    local.get 82
    local.set 83
    local.get 83
    i64.extend_i32_u
    local.set 413
    local.get 4
    i32.load offset=136
    local.set 84
    local.get 84
    local.set 85
    local.get 85
    i64.extend_i32_u
    local.set 414
    local.get 413
    local.get 414
    i64.mul
    local.set 415
    local.get 412
    local.get 415
    i64.add
    local.set 416
    local.get 4
    local.get 416
    i64.store offset=48
    local.get 4
    i32.load offset=148
    local.set 86
    local.get 86
    local.set 87
    local.get 87
    i64.extend_i32_u
    local.set 417
    local.get 4
    i32.load offset=124
    local.set 88
    local.get 88
    local.set 89
    local.get 89
    i64.extend_i32_u
    local.set 418
    local.get 417
    local.get 418
    i64.mul
    local.set 419
    local.get 4
    i32.load offset=144
    local.set 90
    local.get 90
    local.set 91
    local.get 91
    i64.extend_i32_u
    local.set 420
    local.get 4
    i32.load offset=128
    local.set 92
    i32.const 1
    local.set 93
    local.get 92
    local.get 93
    i32.shl
    local.set 94
    local.get 94
    local.set 95
    local.get 95
    i64.extend_i32_u
    local.set 421
    local.get 420
    local.get 421
    i64.mul
    local.set 422
    local.get 419
    local.get 422
    i64.add
    local.set 423
    local.get 4
    i32.load offset=140
    local.set 96
    local.get 96
    local.set 97
    local.get 97
    i64.extend_i32_u
    local.set 424
    local.get 4
    i32.load offset=132
    local.set 98
    local.get 98
    local.set 99
    local.get 99
    i64.extend_i32_u
    local.set 425
    local.get 424
    local.get 425
    i64.mul
    local.set 426
    local.get 423
    local.get 426
    i64.add
    local.set 427
    local.get 4
    i32.load offset=136
    local.set 100
    local.get 100
    local.set 101
    local.get 101
    i64.extend_i32_u
    local.set 428
    local.get 4
    i32.load offset=136
    local.set 102
    i32.const 1
    local.set 103
    local.get 102
    local.get 103
    i32.shl
    local.set 104
    local.get 104
    local.set 105
    local.get 105
    i64.extend_i32_u
    local.set 429
    local.get 428
    local.get 429
    i64.mul
    local.set 430
    local.get 427
    local.get 430
    i64.add
    local.set 431
    local.get 4
    local.get 431
    i64.store offset=40
    local.get 4
    i32.load offset=136
    local.set 106
    i32.const 1
    local.set 107
    local.get 106
    local.get 107
    i32.shl
    local.set 108
    local.get 4
    local.get 108
    i32.store offset=136
    local.get 4
    i32.load offset=148
    local.set 109
    local.get 109
    local.set 110
    local.get 110
    i64.extend_i32_u
    local.set 432
    local.get 4
    i32.load offset=120
    local.set 111
    local.get 111
    local.set 112
    local.get 112
    i64.extend_i32_u
    local.set 433
    local.get 432
    local.get 433
    i64.mul
    local.set 434
    local.get 4
    i32.load offset=144
    local.set 113
    local.get 113
    local.set 114
    local.get 114
    i64.extend_i32_u
    local.set 435
    local.get 4
    i32.load offset=124
    local.set 115
    local.get 115
    local.set 116
    local.get 116
    i64.extend_i32_u
    local.set 436
    local.get 435
    local.get 436
    i64.mul
    local.set 437
    local.get 434
    local.get 437
    i64.add
    local.set 438
    local.get 4
    i32.load offset=140
    local.set 117
    local.get 117
    local.set 118
    local.get 118
    i64.extend_i32_u
    local.set 439
    local.get 4
    i32.load offset=128
    local.set 119
    local.get 119
    local.set 120
    local.get 120
    i64.extend_i32_u
    local.set 440
    local.get 439
    local.get 440
    i64.mul
    local.set 441
    local.get 438
    local.get 441
    i64.add
    local.set 442
    local.get 4
    i32.load offset=136
    local.set 121
    local.get 121
    local.set 122
    local.get 122
    i64.extend_i32_u
    local.set 443
    local.get 4
    i32.load offset=132
    local.set 123
    local.get 123
    local.set 124
    local.get 124
    i64.extend_i32_u
    local.set 444
    local.get 443
    local.get 444
    i64.mul
    local.set 445
    local.get 442
    local.get 445
    i64.add
    local.set 446
    local.get 4
    local.get 446
    i64.store offset=32
    local.get 4
    i32.load offset=148
    local.set 125
    local.get 125
    local.set 126
    local.get 126
    i64.extend_i32_u
    local.set 447
    local.get 4
    i32.load offset=116
    local.set 127
    local.get 127
    local.set 128
    local.get 128
    i64.extend_i32_u
    local.set 448
    local.get 447
    local.get 448
    i64.mul
    local.set 449
    local.get 4
    i32.load offset=144
    local.set 129
    local.get 129
    local.set 130
    local.get 130
    i64.extend_i32_u
    local.set 450
    local.get 4
    i32.load offset=120
    local.set 131
    i32.const 1
    local.set 132
    local.get 131
    local.get 132
    i32.shl
    local.set 133
    local.get 133
    local.set 134
    local.get 134
    i64.extend_i32_u
    local.set 451
    local.get 450
    local.get 451
    i64.mul
    local.set 452
    local.get 449
    local.get 452
    i64.add
    local.set 453
    local.get 4
    i32.load offset=140
    local.set 135
    local.get 135
    local.set 136
    local.get 136
    i64.extend_i32_u
    local.set 454
    local.get 4
    i32.load offset=124
    local.set 137
    local.get 137
    local.set 138
    local.get 138
    i64.extend_i32_u
    local.set 455
    local.get 454
    local.get 455
    i64.mul
    local.set 456
    local.get 453
    local.get 456
    i64.add
    local.set 457
    local.get 4
    i32.load offset=136
    local.set 139
    local.get 139
    local.set 140
    local.get 140
    i64.extend_i32_u
    local.set 458
    local.get 4
    i32.load offset=128
    local.set 141
    i32.const 1
    local.set 142
    local.get 141
    local.get 142
    i32.shl
    local.set 143
    local.get 143
    local.set 144
    local.get 144
    i64.extend_i32_u
    local.set 459
    local.get 458
    local.get 459
    i64.mul
    local.set 460
    local.get 457
    local.get 460
    i64.add
    local.set 461
    local.get 4
    i32.load offset=132
    local.set 145
    local.get 145
    local.set 146
    local.get 146
    i64.extend_i32_u
    local.set 462
    local.get 4
    i32.load offset=132
    local.set 147
    local.get 147
    local.set 148
    local.get 148
    i64.extend_i32_u
    local.set 463
    local.get 462
    local.get 463
    i64.mul
    local.set 464
    local.get 461
    local.get 464
    i64.add
    local.set 465
    local.get 4
    local.get 465
    i64.store offset=24
    local.get 4
    i32.load offset=148
    local.set 149
    local.get 149
    local.set 150
    local.get 150
    i64.extend_i32_u
    local.set 466
    local.get 4
    i32.load offset=112
    local.set 151
    local.get 151
    local.set 152
    local.get 152
    i64.extend_i32_u
    local.set 467
    local.get 466
    local.get 467
    i64.mul
    local.set 468
    local.get 4
    i32.load offset=144
    local.set 153
    local.get 153
    local.set 154
    local.get 154
    i64.extend_i32_u
    local.set 469
    local.get 4
    i32.load offset=116
    local.set 155
    local.get 155
    local.set 156
    local.get 156
    i64.extend_i32_u
    local.set 470
    local.get 469
    local.get 470
    i64.mul
    local.set 471
    local.get 468
    local.get 471
    i64.add
    local.set 472
    local.get 4
    i32.load offset=140
    local.set 157
    local.get 157
    local.set 158
    local.get 158
    i64.extend_i32_u
    local.set 473
    local.get 4
    i32.load offset=120
    local.set 159
    local.get 159
    local.set 160
    local.get 160
    i64.extend_i32_u
    local.set 474
    local.get 473
    local.get 474
    i64.mul
    local.set 475
    local.get 472
    local.get 475
    i64.add
    local.set 476
    local.get 4
    i32.load offset=136
    local.set 161
    local.get 161
    local.set 162
    local.get 162
    i64.extend_i32_u
    local.set 477
    local.get 4
    i32.load offset=124
    local.set 163
    local.get 163
    local.set 164
    local.get 164
    i64.extend_i32_u
    local.set 478
    local.get 477
    local.get 478
    i64.mul
    local.set 479
    local.get 476
    local.get 479
    i64.add
    local.set 480
    local.get 4
    i32.load offset=132
    local.set 165
    local.get 165
    local.set 166
    local.get 166
    i64.extend_i32_u
    local.set 481
    local.get 4
    i32.load offset=128
    local.set 167
    i32.const 1
    local.set 168
    local.get 167
    local.get 168
    i32.shl
    local.set 169
    local.get 169
    local.set 170
    local.get 170
    i64.extend_i32_u
    local.set 482
    local.get 481
    local.get 482
    i64.mul
    local.set 483
    local.get 480
    local.get 483
    i64.add
    local.set 484
    local.get 4
    local.get 484
    i64.store offset=16
    local.get 4
    i32.load offset=124
    local.set 171
    i32.const 19
    local.set 172
    local.get 171
    local.get 172
    i32.mul
    local.set 173
    local.get 4
    local.get 173
    i32.store offset=108
    local.get 4
    i32.load offset=120
    local.set 174
    i32.const 1
    local.set 175
    local.get 174
    local.get 175
    i32.shl
    local.set 176
    i32.const 19
    local.set 177
    local.get 176
    local.get 177
    i32.mul
    local.set 178
    local.get 4
    local.get 178
    i32.store offset=104
    local.get 4
    i32.load offset=116
    local.set 179
    i32.const 19
    local.set 180
    local.get 179
    local.get 180
    i32.mul
    local.set 181
    local.get 4
    local.get 181
    i32.store offset=100
    local.get 4
    i32.load offset=112
    local.set 182
    i32.const 1
    local.set 183
    local.get 182
    local.get 183
    i32.shl
    local.set 184
    i32.const 19
    local.set 185
    local.get 184
    local.get 185
    i32.mul
    local.set 186
    local.get 4
    local.get 186
    i32.store offset=96
    local.get 4
    i32.load offset=96
    local.set 187
    local.get 187
    local.set 188
    local.get 188
    i64.extend_i32_u
    local.set 485
    local.get 4
    i32.load offset=144
    local.set 189
    local.get 189
    local.set 190
    local.get 190
    i64.extend_i32_u
    local.set 486
    local.get 485
    local.get 486
    i64.mul
    local.set 487
    local.get 4
    i32.load offset=100
    local.set 191
    local.get 191
    local.set 192
    local.get 192
    i64.extend_i32_u
    local.set 488
    local.get 4
    i32.load offset=140
    local.set 193
    local.get 193
    local.set 194
    local.get 194
    i64.extend_i32_u
    local.set 489
    local.get 488
    local.get 489
    i64.mul
    local.set 490
    local.get 487
    local.get 490
    i64.add
    local.set 491
    local.get 4
    i32.load offset=104
    local.set 195
    local.get 195
    local.set 196
    local.get 196
    i64.extend_i32_u
    local.set 492
    local.get 4
    i32.load offset=136
    local.set 197
    local.get 197
    local.set 198
    local.get 198
    i64.extend_i32_u
    local.set 493
    local.get 492
    local.get 493
    i64.mul
    local.set 494
    local.get 491
    local.get 494
    i64.add
    local.set 495
    local.get 4
    i32.load offset=108
    local.set 199
    local.get 199
    local.set 200
    local.get 200
    i64.extend_i32_u
    local.set 496
    local.get 4
    i32.load offset=132
    local.set 201
    i32.const 1
    local.set 202
    local.get 201
    local.get 202
    i32.shl
    local.set 203
    local.get 203
    local.set 204
    local.get 204
    i64.extend_i32_u
    local.set 497
    local.get 496
    local.get 497
    i64.mul
    local.set 498
    local.get 495
    local.get 498
    i64.add
    local.set 499
    local.get 4
    i32.load offset=128
    local.set 205
    local.get 205
    local.set 206
    local.get 206
    i64.extend_i32_u
    local.set 500
    local.get 4
    i32.load offset=128
    local.set 207
    i32.const 1
    local.set 208
    local.get 207
    local.get 208
    i32.shl
    local.set 209
    i32.const 19
    local.set 210
    local.get 209
    local.get 210
    i32.mul
    local.set 211
    local.get 211
    local.set 212
    local.get 212
    i64.extend_i32_u
    local.set 501
    local.get 500
    local.get 501
    i64.mul
    local.set 502
    local.get 499
    local.get 502
    i64.add
    local.set 503
    local.get 4
    i64.load offset=88
    local.set 504
    local.get 504
    local.get 503
    i64.add
    local.set 505
    local.get 4
    local.get 505
    i64.store offset=88
    local.get 4
    i32.load offset=96
    local.set 213
    local.get 213
    local.set 214
    local.get 214
    i64.extend_i32_u
    local.set 506
    local.get 4
    i32.load offset=140
    local.set 215
    i32.const 1
    local.set 216
    local.get 215
    local.get 216
    i32.shr_u
    local.set 217
    local.get 217
    local.set 218
    local.get 218
    i64.extend_i32_u
    local.set 507
    local.get 506
    local.get 507
    i64.mul
    local.set 508
    local.get 4
    i32.load offset=100
    local.set 219
    local.get 219
    local.set 220
    local.get 220
    i64.extend_i32_u
    local.set 509
    local.get 4
    i32.load offset=136
    local.set 221
    local.get 221
    local.set 222
    local.get 222
    i64.extend_i32_u
    local.set 510
    local.get 509
    local.get 510
    i64.mul
    local.set 511
    local.get 508
    local.get 511
    i64.add
    local.set 512
    local.get 4
    i32.load offset=104
    local.set 223
    local.get 223
    local.set 224
    local.get 224
    i64.extend_i32_u
    local.set 513
    local.get 4
    i32.load offset=132
    local.set 225
    local.get 225
    local.set 226
    local.get 226
    i64.extend_i32_u
    local.set 514
    local.get 513
    local.get 514
    i64.mul
    local.set 515
    local.get 512
    local.get 515
    i64.add
    local.set 516
    local.get 4
    i32.load offset=108
    local.set 227
    local.get 227
    local.set 228
    local.get 228
    i64.extend_i32_u
    local.set 517
    local.get 4
    i32.load offset=128
    local.set 229
    i32.const 1
    local.set 230
    local.get 229
    local.get 230
    i32.shl
    local.set 231
    local.get 231
    local.set 232
    local.get 232
    i64.extend_i32_u
    local.set 518
    local.get 517
    local.get 518
    i64.mul
    local.set 519
    local.get 516
    local.get 519
    i64.add
    local.set 520
    local.get 4
    i64.load offset=80
    local.set 521
    local.get 521
    local.get 520
    i64.add
    local.set 522
    local.get 4
    local.get 522
    i64.store offset=80
    local.get 4
    i32.load offset=96
    local.set 233
    local.get 233
    local.set 234
    local.get 234
    i64.extend_i32_u
    local.set 523
    local.get 4
    i32.load offset=136
    local.set 235
    local.get 235
    local.set 236
    local.get 236
    i64.extend_i32_u
    local.set 524
    local.get 523
    local.get 524
    i64.mul
    local.set 525
    local.get 4
    i32.load offset=100
    local.set 237
    local.get 237
    local.set 238
    local.get 238
    i64.extend_i32_u
    local.set 526
    local.get 4
    i32.load offset=132
    local.set 239
    i32.const 1
    local.set 240
    local.get 239
    local.get 240
    i32.shl
    local.set 241
    local.get 241
    local.set 242
    local.get 242
    i64.extend_i32_u
    local.set 527
    local.get 526
    local.get 527
    i64.mul
    local.set 528
    local.get 525
    local.get 528
    i64.add
    local.set 529
    local.get 4
    i32.load offset=104
    local.set 243
    local.get 243
    local.set 244
    local.get 244
    i64.extend_i32_u
    local.set 530
    local.get 4
    i32.load offset=128
    local.set 245
    i32.const 1
    local.set 246
    local.get 245
    local.get 246
    i32.shl
    local.set 247
    local.get 247
    local.set 248
    local.get 248
    i64.extend_i32_u
    local.set 531
    local.get 530
    local.get 531
    i64.mul
    local.set 532
    local.get 529
    local.get 532
    i64.add
    local.set 533
    local.get 4
    i32.load offset=108
    local.set 249
    local.get 249
    local.set 250
    local.get 250
    i64.extend_i32_u
    local.set 534
    local.get 4
    i32.load offset=124
    local.set 251
    local.get 251
    local.set 252
    local.get 252
    i64.extend_i32_u
    local.set 535
    local.get 534
    local.get 535
    i64.mul
    local.set 536
    local.get 533
    local.get 536
    i64.add
    local.set 537
    local.get 4
    i64.load offset=72
    local.set 538
    local.get 538
    local.get 537
    i64.add
    local.set 539
    local.get 4
    local.get 539
    i64.store offset=72
    local.get 4
    i32.load offset=96
    local.set 253
    local.get 253
    local.set 254
    local.get 254
    i64.extend_i32_u
    local.set 540
    local.get 4
    i32.load offset=132
    local.set 255
    local.get 255
    local.set 256
    local.get 256
    i64.extend_i32_u
    local.set 541
    local.get 540
    local.get 541
    i64.mul
    local.set 542
    local.get 4
    i32.load offset=100
    local.set 257
    local.get 257
    local.set 258
    local.get 258
    i64.extend_i32_u
    local.set 543
    local.get 4
    i32.load offset=128
    local.set 259
    i32.const 1
    local.set 260
    local.get 259
    local.get 260
    i32.shl
    local.set 261
    local.get 261
    local.set 262
    local.get 262
    i64.extend_i32_u
    local.set 544
    local.get 543
    local.get 544
    i64.mul
    local.set 545
    local.get 542
    local.get 545
    i64.add
    local.set 546
    local.get 4
    i32.load offset=104
    local.set 263
    local.get 263
    local.set 264
    local.get 264
    i64.extend_i32_u
    local.set 547
    local.get 4
    i32.load offset=124
    local.set 265
    local.get 265
    local.set 266
    local.get 266
    i64.extend_i32_u
    local.set 548
    local.get 547
    local.get 548
    i64.mul
    local.set 549
    local.get 546
    local.get 549
    i64.add
    local.set 550
    local.get 4
    i64.load offset=64
    local.set 551
    local.get 551
    local.get 550
    i64.add
    local.set 552
    local.get 4
    local.get 552
    i64.store offset=64
    local.get 4
    i32.load offset=96
    local.set 267
    local.get 267
    local.set 268
    local.get 268
    i64.extend_i32_u
    local.set 553
    local.get 4
    i32.load offset=128
    local.set 269
    i32.const 1
    local.set 270
    local.get 269
    local.get 270
    i32.shl
    local.set 271
    local.get 271
    local.set 272
    local.get 272
    i64.extend_i32_u
    local.set 554
    local.get 553
    local.get 554
    i64.mul
    local.set 555
    local.get 4
    i32.load offset=100
    local.set 273
    local.get 273
    local.set 274
    local.get 274
    i64.extend_i32_u
    local.set 556
    local.get 4
    i32.load offset=124
    local.set 275
    i32.const 1
    local.set 276
    local.get 275
    local.get 276
    i32.shl
    local.set 277
    local.get 277
    local.set 278
    local.get 278
    i64.extend_i32_u
    local.set 557
    local.get 556
    local.get 557
    i64.mul
    local.set 558
    local.get 555
    local.get 558
    i64.add
    local.set 559
    local.get 4
    i32.load offset=104
    local.set 279
    local.get 279
    local.set 280
    local.get 280
    i64.extend_i32_u
    local.set 560
    local.get 4
    i32.load offset=120
    local.set 281
    local.get 281
    local.set 282
    local.get 282
    i64.extend_i32_u
    local.set 561
    local.get 560
    local.get 561
    i64.mul
    local.set 562
    local.get 559
    local.get 562
    i64.add
    local.set 563
    local.get 4
    i64.load offset=56
    local.set 564
    local.get 564
    local.get 563
    i64.add
    local.set 565
    local.get 4
    local.get 565
    i64.store offset=56
    local.get 4
    i32.load offset=96
    local.set 283
    local.get 283
    local.set 284
    local.get 284
    i64.extend_i32_u
    local.set 566
    local.get 4
    i32.load offset=124
    local.set 285
    local.get 285
    local.set 286
    local.get 286
    i64.extend_i32_u
    local.set 567
    local.get 566
    local.get 567
    i64.mul
    local.set 568
    local.get 4
    i32.load offset=100
    local.set 287
    local.get 287
    local.set 288
    local.get 288
    i64.extend_i32_u
    local.set 569
    local.get 4
    i32.load offset=120
    local.set 289
    i32.const 1
    local.set 290
    local.get 289
    local.get 290
    i32.shl
    local.set 291
    local.get 291
    local.set 292
    local.get 292
    i64.extend_i32_u
    local.set 570
    local.get 569
    local.get 570
    i64.mul
    local.set 571
    local.get 568
    local.get 571
    i64.add
    local.set 572
    local.get 4
    i64.load offset=48
    local.set 573
    local.get 573
    local.get 572
    i64.add
    local.set 574
    local.get 4
    local.get 574
    i64.store offset=48
    local.get 4
    i32.load offset=96
    local.set 293
    local.get 293
    local.set 294
    local.get 294
    i64.extend_i32_u
    local.set 575
    local.get 4
    i32.load offset=120
    local.set 295
    i32.const 1
    local.set 296
    local.get 295
    local.get 296
    i32.shl
    local.set 297
    local.get 297
    local.set 298
    local.get 298
    i64.extend_i32_u
    local.set 576
    local.get 575
    local.get 576
    i64.mul
    local.set 577
    local.get 4
    i32.load offset=100
    local.set 299
    local.get 299
    local.set 300
    local.get 300
    i64.extend_i32_u
    local.set 578
    local.get 4
    i32.load offset=116
    local.set 301
    local.get 301
    local.set 302
    local.get 302
    i64.extend_i32_u
    local.set 579
    local.get 578
    local.get 579
    i64.mul
    local.set 580
    local.get 577
    local.get 580
    i64.add
    local.set 581
    local.get 4
    i64.load offset=40
    local.set 582
    local.get 582
    local.get 581
    i64.add
    local.set 583
    local.get 4
    local.get 583
    i64.store offset=40
    local.get 4
    i32.load offset=96
    local.set 303
    local.get 303
    local.set 304
    local.get 304
    i64.extend_i32_u
    local.set 584
    local.get 4
    i32.load offset=116
    local.set 305
    local.get 305
    local.set 306
    local.get 306
    i64.extend_i32_u
    local.set 585
    local.get 584
    local.get 585
    i64.mul
    local.set 586
    local.get 4
    i64.load offset=32
    local.set 587
    local.get 587
    local.get 586
    i64.add
    local.set 588
    local.get 4
    local.get 588
    i64.store offset=32
    local.get 4
    i32.load offset=96
    local.set 307
    local.get 307
    local.set 308
    local.get 308
    i64.extend_i32_u
    local.set 589
    local.get 4
    i32.load offset=112
    local.set 309
    local.get 309
    local.set 310
    local.get 310
    i64.extend_i32_u
    local.set 590
    local.get 589
    local.get 590
    i64.mul
    local.set 591
    local.get 4
    i64.load offset=24
    local.set 592
    local.get 592
    local.get 591
    i64.add
    local.set 593
    local.get 4
    local.get 593
    i64.store offset=24
    local.get 4
    i64.load offset=88
    local.set 594
    local.get 594
    i32.wrap_i64
    local.set 311
    i32.const 67108863
    local.set 312
    local.get 311
    local.get 312
    i32.and
    local.set 313
    local.get 4
    local.get 313
    i32.store offset=148
    local.get 4
    i64.load offset=88
    local.set 595
    i64.const 26
    local.set 596
    local.get 595
    local.get 596
    i64.shr_u
    local.set 597
    local.get 4
    local.get 597
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 598
    local.get 4
    i64.load offset=80
    local.set 599
    local.get 599
    local.get 598
    i64.add
    local.set 600
    local.get 4
    local.get 600
    i64.store offset=80
    local.get 4
    i64.load offset=80
    local.set 601
    local.get 601
    i32.wrap_i64
    local.set 314
    i32.const 33554431
    local.set 315
    local.get 314
    local.get 315
    i32.and
    local.set 316
    local.get 4
    local.get 316
    i32.store offset=144
    local.get 4
    i64.load offset=80
    local.set 602
    i64.const 25
    local.set 603
    local.get 602
    local.get 603
    i64.shr_u
    local.set 604
    local.get 4
    local.get 604
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 605
    local.get 4
    i64.load offset=72
    local.set 606
    local.get 606
    local.get 605
    i64.add
    local.set 607
    local.get 4
    local.get 607
    i64.store offset=72
    local.get 4
    i64.load offset=72
    local.set 608
    local.get 608
    i32.wrap_i64
    local.set 317
    i32.const 67108863
    local.set 318
    local.get 317
    local.get 318
    i32.and
    local.set 319
    local.get 4
    local.get 319
    i32.store offset=140
    local.get 4
    i64.load offset=72
    local.set 609
    i64.const 26
    local.set 610
    local.get 609
    local.get 610
    i64.shr_u
    local.set 611
    local.get 4
    local.get 611
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 612
    local.get 4
    i64.load offset=64
    local.set 613
    local.get 613
    local.get 612
    i64.add
    local.set 614
    local.get 4
    local.get 614
    i64.store offset=64
    local.get 4
    i64.load offset=64
    local.set 615
    local.get 615
    i32.wrap_i64
    local.set 320
    i32.const 33554431
    local.set 321
    local.get 320
    local.get 321
    i32.and
    local.set 322
    local.get 4
    local.get 322
    i32.store offset=136
    local.get 4
    i64.load offset=64
    local.set 616
    i64.const 25
    local.set 617
    local.get 616
    local.get 617
    i64.shr_u
    local.set 618
    local.get 4
    local.get 618
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 619
    local.get 4
    i64.load offset=56
    local.set 620
    local.get 620
    local.get 619
    i64.add
    local.set 621
    local.get 4
    local.get 621
    i64.store offset=56
    local.get 4
    i64.load offset=56
    local.set 622
    local.get 622
    i32.wrap_i64
    local.set 323
    i32.const 67108863
    local.set 324
    local.get 323
    local.get 324
    i32.and
    local.set 325
    local.get 4
    local.get 325
    i32.store offset=132
    local.get 4
    i64.load offset=56
    local.set 623
    i64.const 26
    local.set 624
    local.get 623
    local.get 624
    i64.shr_u
    local.set 625
    local.get 4
    local.get 625
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 626
    local.get 4
    i64.load offset=48
    local.set 627
    local.get 627
    local.get 626
    i64.add
    local.set 628
    local.get 4
    local.get 628
    i64.store offset=48
    local.get 4
    i64.load offset=48
    local.set 629
    local.get 629
    i32.wrap_i64
    local.set 326
    i32.const 33554431
    local.set 327
    local.get 326
    local.get 327
    i32.and
    local.set 328
    local.get 4
    local.get 328
    i32.store offset=128
    local.get 4
    i64.load offset=48
    local.set 630
    i64.const 25
    local.set 631
    local.get 630
    local.get 631
    i64.shr_u
    local.set 632
    local.get 4
    local.get 632
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 633
    local.get 4
    i64.load offset=40
    local.set 634
    local.get 634
    local.get 633
    i64.add
    local.set 635
    local.get 4
    local.get 635
    i64.store offset=40
    local.get 4
    i64.load offset=40
    local.set 636
    local.get 636
    i32.wrap_i64
    local.set 329
    i32.const 67108863
    local.set 330
    local.get 329
    local.get 330
    i32.and
    local.set 331
    local.get 4
    local.get 331
    i32.store offset=124
    local.get 4
    i64.load offset=40
    local.set 637
    i64.const 26
    local.set 638
    local.get 637
    local.get 638
    i64.shr_u
    local.set 639
    local.get 4
    local.get 639
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 640
    local.get 4
    i64.load offset=32
    local.set 641
    local.get 641
    local.get 640
    i64.add
    local.set 642
    local.get 4
    local.get 642
    i64.store offset=32
    local.get 4
    i64.load offset=32
    local.set 643
    local.get 643
    i32.wrap_i64
    local.set 332
    i32.const 33554431
    local.set 333
    local.get 332
    local.get 333
    i32.and
    local.set 334
    local.get 4
    local.get 334
    i32.store offset=120
    local.get 4
    i64.load offset=32
    local.set 644
    i64.const 25
    local.set 645
    local.get 644
    local.get 645
    i64.shr_u
    local.set 646
    local.get 4
    local.get 646
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 647
    local.get 4
    i64.load offset=24
    local.set 648
    local.get 648
    local.get 647
    i64.add
    local.set 649
    local.get 4
    local.get 649
    i64.store offset=24
    local.get 4
    i64.load offset=24
    local.set 650
    local.get 650
    i32.wrap_i64
    local.set 335
    i32.const 67108863
    local.set 336
    local.get 335
    local.get 336
    i32.and
    local.set 337
    local.get 4
    local.get 337
    i32.store offset=116
    local.get 4
    i64.load offset=24
    local.set 651
    i64.const 26
    local.set 652
    local.get 651
    local.get 652
    i64.shr_u
    local.set 653
    local.get 4
    local.get 653
    i64.store offset=8
    local.get 4
    i64.load offset=8
    local.set 654
    local.get 4
    i64.load offset=16
    local.set 655
    local.get 655
    local.get 654
    i64.add
    local.set 656
    local.get 4
    local.get 656
    i64.store offset=16
    local.get 4
    i64.load offset=16
    local.set 657
    local.get 657
    i32.wrap_i64
    local.set 338
    i32.const 33554431
    local.set 339
    local.get 338
    local.get 339
    i32.and
    local.set 340
    local.get 4
    local.get 340
    i32.store offset=112
    local.get 4
    i64.load offset=16
    local.set 658
    i64.const 25
    local.set 659
    local.get 658
    local.get 659
    i64.shr_u
    local.set 660
    local.get 660
    i32.wrap_i64
    local.set 341
    local.get 4
    local.get 341
    i32.store offset=4
    local.get 4
    i32.load offset=148
    local.set 342
    local.get 342
    local.set 343
    local.get 343
    i64.extend_i32_u
    local.set 661
    local.get 4
    i32.load offset=4
    local.set 344
    local.get 344
    local.set 345
    local.get 345
    i64.extend_i32_u
    local.set 662
    i64.const 19
    local.set 663
    local.get 662
    local.get 663
    i64.mul
    local.set 664
    local.get 661
    local.get 664
    i64.add
    local.set 665
    local.get 4
    local.get 665
    i64.store offset=88
    local.get 4
    i64.load offset=88
    local.set 666
    local.get 666
    i32.wrap_i64
    local.set 346
    i32.const 67108863
    local.set 347
    local.get 346
    local.get 347
    i32.and
    local.set 348
    local.get 4
    local.get 348
    i32.store offset=148
    local.get 4
    i64.load offset=88
    local.set 667
    i64.const 26
    local.set 668
    local.get 667
    local.get 668
    i64.shr_u
    local.set 669
    local.get 669
    i32.wrap_i64
    local.set 349
    local.get 4
    local.get 349
    i32.store offset=4
    local.get 4
    i32.load offset=4
    local.set 350
    local.get 4
    i32.load offset=144
    local.set 351
    local.get 351
    local.get 350
    i32.add
    local.set 352
    local.get 4
    local.get 352
    i32.store offset=144
    local.get 4
    i32.load offset=148
    local.set 353
    local.get 4
    i32.load offset=156
    local.set 354
    local.get 354
    local.get 353
    i32.store
    local.get 4
    i32.load offset=144
    local.set 355
    local.get 4
    i32.load offset=156
    local.set 356
    local.get 356
    local.get 355
    i32.store offset=4
    local.get 4
    i32.load offset=140
    local.set 357
    local.get 4
    i32.load offset=156
    local.set 358
    local.get 358
    local.get 357
    i32.store offset=8
    local.get 4
    i32.load offset=136
    local.set 359
    local.get 4
    i32.load offset=156
    local.set 360
    local.get 360
    local.get 359
    i32.store offset=12
    local.get 4
    i32.load offset=132
    local.set 361
    local.get 4
    i32.load offset=156
    local.set 362
    local.get 362
    local.get 361
    i32.store offset=16
    local.get 4
    i32.load offset=128
    local.set 363
    local.get 4
    i32.load offset=156
    local.set 364
    local.get 364
    local.get 363
    i32.store offset=20
    local.get 4
    i32.load offset=124
    local.set 365
    local.get 4
    i32.load offset=156
    local.set 366
    local.get 366
    local.get 365
    i32.store offset=24
    local.get 4
    i32.load offset=120
    local.set 367
    local.get 4
    i32.load offset=156
    local.set 368
    local.get 368
    local.get 367
    i32.store offset=28
    local.get 4
    i32.load offset=116
    local.set 369
    local.get 4
    i32.load offset=156
    local.set 370
    local.get 370
    local.get 369
    i32.store offset=32
    local.get 4
    i32.load offset=112
    local.set 371
    local.get 4
    i32.load offset=156
    local.set 372
    local.get 372
    local.get 371
    i32.store offset=36
    i32.const 160
    local.set 373
    local.get 4
    local.get 373
    i32.add
    local.set 374
    local.get 374
    global.set 0
    return)
  (func $curve25519_mul (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 192
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=188
    local.get 5
    local.get 1
    i32.store offset=184
    local.get 5
    local.get 2
    i32.store offset=180
    local.get 5
    i32.load offset=180
    local.set 6
    local.get 6
    i32.load
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=176
    local.get 5
    i32.load offset=180
    local.set 8
    local.get 8
    i32.load offset=4
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=172
    local.get 5
    i32.load offset=180
    local.set 10
    local.get 10
    i32.load offset=8
    local.set 11
    local.get 5
    local.get 11
    i32.store offset=168
    local.get 5
    i32.load offset=180
    local.set 12
    local.get 12
    i32.load offset=12
    local.set 13
    local.get 5
    local.get 13
    i32.store offset=164
    local.get 5
    i32.load offset=180
    local.set 14
    local.get 14
    i32.load offset=16
    local.set 15
    local.get 5
    local.get 15
    i32.store offset=160
    local.get 5
    i32.load offset=180
    local.set 16
    local.get 16
    i32.load offset=20
    local.set 17
    local.get 5
    local.get 17
    i32.store offset=156
    local.get 5
    i32.load offset=180
    local.set 18
    local.get 18
    i32.load offset=24
    local.set 19
    local.get 5
    local.get 19
    i32.store offset=152
    local.get 5
    i32.load offset=180
    local.set 20
    local.get 20
    i32.load offset=28
    local.set 21
    local.get 5
    local.get 21
    i32.store offset=148
    local.get 5
    i32.load offset=180
    local.set 22
    local.get 22
    i32.load offset=32
    local.set 23
    local.get 5
    local.get 23
    i32.store offset=144
    local.get 5
    i32.load offset=180
    local.set 24
    local.get 24
    i32.load offset=36
    local.set 25
    local.get 5
    local.get 25
    i32.store offset=140
    local.get 5
    i32.load offset=184
    local.set 26
    local.get 26
    i32.load
    local.set 27
    local.get 5
    local.get 27
    i32.store offset=136
    local.get 5
    i32.load offset=184
    local.set 28
    local.get 28
    i32.load offset=4
    local.set 29
    local.get 5
    local.get 29
    i32.store offset=132
    local.get 5
    i32.load offset=184
    local.set 30
    local.get 30
    i32.load offset=8
    local.set 31
    local.get 5
    local.get 31
    i32.store offset=128
    local.get 5
    i32.load offset=184
    local.set 32
    local.get 32
    i32.load offset=12
    local.set 33
    local.get 5
    local.get 33
    i32.store offset=124
    local.get 5
    i32.load offset=184
    local.set 34
    local.get 34
    i32.load offset=16
    local.set 35
    local.get 5
    local.get 35
    i32.store offset=120
    local.get 5
    i32.load offset=184
    local.set 36
    local.get 36
    i32.load offset=20
    local.set 37
    local.get 5
    local.get 37
    i32.store offset=116
    local.get 5
    i32.load offset=184
    local.set 38
    local.get 38
    i32.load offset=24
    local.set 39
    local.get 5
    local.get 39
    i32.store offset=112
    local.get 5
    i32.load offset=184
    local.set 40
    local.get 40
    i32.load offset=28
    local.set 41
    local.get 5
    local.get 41
    i32.store offset=108
    local.get 5
    i32.load offset=184
    local.set 42
    local.get 42
    i32.load offset=32
    local.set 43
    local.get 5
    local.get 43
    i32.store offset=104
    local.get 5
    i32.load offset=184
    local.set 44
    local.get 44
    i32.load offset=36
    local.set 45
    local.get 5
    local.get 45
    i32.store offset=100
    local.get 5
    i32.load offset=176
    local.set 46
    local.get 46
    local.set 47
    local.get 47
    i64.extend_i32_u
    local.set 567
    local.get 5
    i32.load offset=132
    local.set 48
    local.get 48
    local.set 49
    local.get 49
    i64.extend_i32_u
    local.set 568
    local.get 567
    local.get 568
    i64.mul
    local.set 569
    local.get 5
    i32.load offset=172
    local.set 50
    local.get 50
    local.set 51
    local.get 51
    i64.extend_i32_u
    local.set 570
    local.get 5
    i32.load offset=136
    local.set 52
    local.get 52
    local.set 53
    local.get 53
    i64.extend_i32_u
    local.set 571
    local.get 570
    local.get 571
    i64.mul
    local.set 572
    local.get 569
    local.get 572
    i64.add
    local.set 573
    local.get 5
    local.get 573
    i64.store offset=80
    local.get 5
    i32.load offset=176
    local.set 54
    local.get 54
    local.set 55
    local.get 55
    i64.extend_i32_u
    local.set 574
    local.get 5
    i32.load offset=124
    local.set 56
    local.get 56
    local.set 57
    local.get 57
    i64.extend_i32_u
    local.set 575
    local.get 574
    local.get 575
    i64.mul
    local.set 576
    local.get 5
    i32.load offset=172
    local.set 58
    local.get 58
    local.set 59
    local.get 59
    i64.extend_i32_u
    local.set 577
    local.get 5
    i32.load offset=128
    local.set 60
    local.get 60
    local.set 61
    local.get 61
    i64.extend_i32_u
    local.set 578
    local.get 577
    local.get 578
    i64.mul
    local.set 579
    local.get 576
    local.get 579
    i64.add
    local.set 580
    local.get 5
    i32.load offset=168
    local.set 62
    local.get 62
    local.set 63
    local.get 63
    i64.extend_i32_u
    local.set 581
    local.get 5
    i32.load offset=132
    local.set 64
    local.get 64
    local.set 65
    local.get 65
    i64.extend_i32_u
    local.set 582
    local.get 581
    local.get 582
    i64.mul
    local.set 583
    local.get 580
    local.get 583
    i64.add
    local.set 584
    local.get 5
    i32.load offset=164
    local.set 66
    local.get 66
    local.set 67
    local.get 67
    i64.extend_i32_u
    local.set 585
    local.get 5
    i32.load offset=136
    local.set 68
    local.get 68
    local.set 69
    local.get 69
    i64.extend_i32_u
    local.set 586
    local.get 585
    local.get 586
    i64.mul
    local.set 587
    local.get 584
    local.get 587
    i64.add
    local.set 588
    local.get 5
    local.get 588
    i64.store offset=64
    local.get 5
    i32.load offset=176
    local.set 70
    local.get 70
    local.set 71
    local.get 71
    i64.extend_i32_u
    local.set 589
    local.get 5
    i32.load offset=116
    local.set 72
    local.get 72
    local.set 73
    local.get 73
    i64.extend_i32_u
    local.set 590
    local.get 589
    local.get 590
    i64.mul
    local.set 591
    local.get 5
    i32.load offset=172
    local.set 74
    local.get 74
    local.set 75
    local.get 75
    i64.extend_i32_u
    local.set 592
    local.get 5
    i32.load offset=120
    local.set 76
    local.get 76
    local.set 77
    local.get 77
    i64.extend_i32_u
    local.set 593
    local.get 592
    local.get 593
    i64.mul
    local.set 594
    local.get 591
    local.get 594
    i64.add
    local.set 595
    local.get 5
    i32.load offset=168
    local.set 78
    local.get 78
    local.set 79
    local.get 79
    i64.extend_i32_u
    local.set 596
    local.get 5
    i32.load offset=124
    local.set 80
    local.get 80
    local.set 81
    local.get 81
    i64.extend_i32_u
    local.set 597
    local.get 596
    local.get 597
    i64.mul
    local.set 598
    local.get 595
    local.get 598
    i64.add
    local.set 599
    local.get 5
    i32.load offset=164
    local.set 82
    local.get 82
    local.set 83
    local.get 83
    i64.extend_i32_u
    local.set 600
    local.get 5
    i32.load offset=128
    local.set 84
    local.get 84
    local.set 85
    local.get 85
    i64.extend_i32_u
    local.set 601
    local.get 600
    local.get 601
    i64.mul
    local.set 602
    local.get 599
    local.get 602
    i64.add
    local.set 603
    local.get 5
    i32.load offset=160
    local.set 86
    local.get 86
    local.set 87
    local.get 87
    i64.extend_i32_u
    local.set 604
    local.get 5
    i32.load offset=132
    local.set 88
    local.get 88
    local.set 89
    local.get 89
    i64.extend_i32_u
    local.set 605
    local.get 604
    local.get 605
    i64.mul
    local.set 606
    local.get 603
    local.get 606
    i64.add
    local.set 607
    local.get 5
    i32.load offset=156
    local.set 90
    local.get 90
    local.set 91
    local.get 91
    i64.extend_i32_u
    local.set 608
    local.get 5
    i32.load offset=136
    local.set 92
    local.get 92
    local.set 93
    local.get 93
    i64.extend_i32_u
    local.set 609
    local.get 608
    local.get 609
    i64.mul
    local.set 610
    local.get 607
    local.get 610
    i64.add
    local.set 611
    local.get 5
    local.get 611
    i64.store offset=48
    local.get 5
    i32.load offset=176
    local.set 94
    local.get 94
    local.set 95
    local.get 95
    i64.extend_i32_u
    local.set 612
    local.get 5
    i32.load offset=108
    local.set 96
    local.get 96
    local.set 97
    local.get 97
    i64.extend_i32_u
    local.set 613
    local.get 612
    local.get 613
    i64.mul
    local.set 614
    local.get 5
    i32.load offset=172
    local.set 98
    local.get 98
    local.set 99
    local.get 99
    i64.extend_i32_u
    local.set 615
    local.get 5
    i32.load offset=112
    local.set 100
    local.get 100
    local.set 101
    local.get 101
    i64.extend_i32_u
    local.set 616
    local.get 615
    local.get 616
    i64.mul
    local.set 617
    local.get 614
    local.get 617
    i64.add
    local.set 618
    local.get 5
    i32.load offset=168
    local.set 102
    local.get 102
    local.set 103
    local.get 103
    i64.extend_i32_u
    local.set 619
    local.get 5
    i32.load offset=116
    local.set 104
    local.get 104
    local.set 105
    local.get 105
    i64.extend_i32_u
    local.set 620
    local.get 619
    local.get 620
    i64.mul
    local.set 621
    local.get 618
    local.get 621
    i64.add
    local.set 622
    local.get 5
    i32.load offset=164
    local.set 106
    local.get 106
    local.set 107
    local.get 107
    i64.extend_i32_u
    local.set 623
    local.get 5
    i32.load offset=120
    local.set 108
    local.get 108
    local.set 109
    local.get 109
    i64.extend_i32_u
    local.set 624
    local.get 623
    local.get 624
    i64.mul
    local.set 625
    local.get 622
    local.get 625
    i64.add
    local.set 626
    local.get 5
    i32.load offset=160
    local.set 110
    local.get 110
    local.set 111
    local.get 111
    i64.extend_i32_u
    local.set 627
    local.get 5
    i32.load offset=124
    local.set 112
    local.get 112
    local.set 113
    local.get 113
    i64.extend_i32_u
    local.set 628
    local.get 627
    local.get 628
    i64.mul
    local.set 629
    local.get 626
    local.get 629
    i64.add
    local.set 630
    local.get 5
    i32.load offset=156
    local.set 114
    local.get 114
    local.set 115
    local.get 115
    i64.extend_i32_u
    local.set 631
    local.get 5
    i32.load offset=128
    local.set 116
    local.get 116
    local.set 117
    local.get 117
    i64.extend_i32_u
    local.set 632
    local.get 631
    local.get 632
    i64.mul
    local.set 633
    local.get 630
    local.get 633
    i64.add
    local.set 634
    local.get 5
    i32.load offset=152
    local.set 118
    local.get 118
    local.set 119
    local.get 119
    i64.extend_i32_u
    local.set 635
    local.get 5
    i32.load offset=132
    local.set 120
    local.get 120
    local.set 121
    local.get 121
    i64.extend_i32_u
    local.set 636
    local.get 635
    local.get 636
    i64.mul
    local.set 637
    local.get 634
    local.get 637
    i64.add
    local.set 638
    local.get 5
    i32.load offset=148
    local.set 122
    local.get 122
    local.set 123
    local.get 123
    i64.extend_i32_u
    local.set 639
    local.get 5
    i32.load offset=136
    local.set 124
    local.get 124
    local.set 125
    local.get 125
    i64.extend_i32_u
    local.set 640
    local.get 639
    local.get 640
    i64.mul
    local.set 641
    local.get 638
    local.get 641
    i64.add
    local.set 642
    local.get 5
    local.get 642
    i64.store offset=32
    local.get 5
    i32.load offset=176
    local.set 126
    local.get 126
    local.set 127
    local.get 127
    i64.extend_i32_u
    local.set 643
    local.get 5
    i32.load offset=100
    local.set 128
    local.get 128
    local.set 129
    local.get 129
    i64.extend_i32_u
    local.set 644
    local.get 643
    local.get 644
    i64.mul
    local.set 645
    local.get 5
    i32.load offset=172
    local.set 130
    local.get 130
    local.set 131
    local.get 131
    i64.extend_i32_u
    local.set 646
    local.get 5
    i32.load offset=104
    local.set 132
    local.get 132
    local.set 133
    local.get 133
    i64.extend_i32_u
    local.set 647
    local.get 646
    local.get 647
    i64.mul
    local.set 648
    local.get 645
    local.get 648
    i64.add
    local.set 649
    local.get 5
    i32.load offset=168
    local.set 134
    local.get 134
    local.set 135
    local.get 135
    i64.extend_i32_u
    local.set 650
    local.get 5
    i32.load offset=108
    local.set 136
    local.get 136
    local.set 137
    local.get 137
    i64.extend_i32_u
    local.set 651
    local.get 650
    local.get 651
    i64.mul
    local.set 652
    local.get 649
    local.get 652
    i64.add
    local.set 653
    local.get 5
    i32.load offset=164
    local.set 138
    local.get 138
    local.set 139
    local.get 139
    i64.extend_i32_u
    local.set 654
    local.get 5
    i32.load offset=112
    local.set 140
    local.get 140
    local.set 141
    local.get 141
    i64.extend_i32_u
    local.set 655
    local.get 654
    local.get 655
    i64.mul
    local.set 656
    local.get 653
    local.get 656
    i64.add
    local.set 657
    local.get 5
    i32.load offset=160
    local.set 142
    local.get 142
    local.set 143
    local.get 143
    i64.extend_i32_u
    local.set 658
    local.get 5
    i32.load offset=116
    local.set 144
    local.get 144
    local.set 145
    local.get 145
    i64.extend_i32_u
    local.set 659
    local.get 658
    local.get 659
    i64.mul
    local.set 660
    local.get 657
    local.get 660
    i64.add
    local.set 661
    local.get 5
    i32.load offset=156
    local.set 146
    local.get 146
    local.set 147
    local.get 147
    i64.extend_i32_u
    local.set 662
    local.get 5
    i32.load offset=120
    local.set 148
    local.get 148
    local.set 149
    local.get 149
    i64.extend_i32_u
    local.set 663
    local.get 662
    local.get 663
    i64.mul
    local.set 664
    local.get 661
    local.get 664
    i64.add
    local.set 665
    local.get 5
    i32.load offset=152
    local.set 150
    local.get 150
    local.set 151
    local.get 151
    i64.extend_i32_u
    local.set 666
    local.get 5
    i32.load offset=124
    local.set 152
    local.get 152
    local.set 153
    local.get 153
    i64.extend_i32_u
    local.set 667
    local.get 666
    local.get 667
    i64.mul
    local.set 668
    local.get 665
    local.get 668
    i64.add
    local.set 669
    local.get 5
    i32.load offset=148
    local.set 154
    local.get 154
    local.set 155
    local.get 155
    i64.extend_i32_u
    local.set 670
    local.get 5
    i32.load offset=128
    local.set 156
    local.get 156
    local.set 157
    local.get 157
    i64.extend_i32_u
    local.set 671
    local.get 670
    local.get 671
    i64.mul
    local.set 672
    local.get 669
    local.get 672
    i64.add
    local.set 673
    local.get 5
    i32.load offset=144
    local.set 158
    local.get 158
    local.set 159
    local.get 159
    i64.extend_i32_u
    local.set 674
    local.get 5
    i32.load offset=132
    local.set 160
    local.get 160
    local.set 161
    local.get 161
    i64.extend_i32_u
    local.set 675
    local.get 674
    local.get 675
    i64.mul
    local.set 676
    local.get 673
    local.get 676
    i64.add
    local.set 677
    local.get 5
    i32.load offset=140
    local.set 162
    local.get 162
    local.set 163
    local.get 163
    i64.extend_i32_u
    local.set 678
    local.get 5
    i32.load offset=136
    local.set 164
    local.get 164
    local.set 165
    local.get 165
    i64.extend_i32_u
    local.set 679
    local.get 678
    local.get 679
    i64.mul
    local.set 680
    local.get 677
    local.get 680
    i64.add
    local.set 681
    local.get 5
    local.get 681
    i64.store offset=16
    local.get 5
    i32.load offset=172
    local.set 166
    i32.const 1
    local.set 167
    local.get 166
    local.get 167
    i32.shl
    local.set 168
    local.get 5
    local.get 168
    i32.store offset=172
    local.get 5
    i32.load offset=164
    local.set 169
    i32.const 1
    local.set 170
    local.get 169
    local.get 170
    i32.shl
    local.set 171
    local.get 5
    local.get 171
    i32.store offset=164
    local.get 5
    i32.load offset=156
    local.set 172
    i32.const 1
    local.set 173
    local.get 172
    local.get 173
    i32.shl
    local.set 174
    local.get 5
    local.get 174
    i32.store offset=156
    local.get 5
    i32.load offset=148
    local.set 175
    i32.const 1
    local.set 176
    local.get 175
    local.get 176
    i32.shl
    local.set 177
    local.get 5
    local.get 177
    i32.store offset=148
    local.get 5
    i32.load offset=176
    local.set 178
    local.get 178
    local.set 179
    local.get 179
    i64.extend_i32_u
    local.set 682
    local.get 5
    i32.load offset=136
    local.set 180
    local.get 180
    local.set 181
    local.get 181
    i64.extend_i32_u
    local.set 683
    local.get 682
    local.get 683
    i64.mul
    local.set 684
    local.get 5
    local.get 684
    i64.store offset=88
    local.get 5
    i32.load offset=176
    local.set 182
    local.get 182
    local.set 183
    local.get 183
    i64.extend_i32_u
    local.set 685
    local.get 5
    i32.load offset=128
    local.set 184
    local.get 184
    local.set 185
    local.get 185
    i64.extend_i32_u
    local.set 686
    local.get 685
    local.get 686
    i64.mul
    local.set 687
    local.get 5
    i32.load offset=172
    local.set 186
    local.get 186
    local.set 187
    local.get 187
    i64.extend_i32_u
    local.set 688
    local.get 5
    i32.load offset=132
    local.set 188
    local.get 188
    local.set 189
    local.get 189
    i64.extend_i32_u
    local.set 689
    local.get 688
    local.get 689
    i64.mul
    local.set 690
    local.get 687
    local.get 690
    i64.add
    local.set 691
    local.get 5
    i32.load offset=168
    local.set 190
    local.get 190
    local.set 191
    local.get 191
    i64.extend_i32_u
    local.set 692
    local.get 5
    i32.load offset=136
    local.set 192
    local.get 192
    local.set 193
    local.get 193
    i64.extend_i32_u
    local.set 693
    local.get 692
    local.get 693
    i64.mul
    local.set 694
    local.get 691
    local.get 694
    i64.add
    local.set 695
    local.get 5
    local.get 695
    i64.store offset=72
    local.get 5
    i32.load offset=176
    local.set 194
    local.get 194
    local.set 195
    local.get 195
    i64.extend_i32_u
    local.set 696
    local.get 5
    i32.load offset=120
    local.set 196
    local.get 196
    local.set 197
    local.get 197
    i64.extend_i32_u
    local.set 697
    local.get 696
    local.get 697
    i64.mul
    local.set 698
    local.get 5
    i32.load offset=172
    local.set 198
    local.get 198
    local.set 199
    local.get 199
    i64.extend_i32_u
    local.set 699
    local.get 5
    i32.load offset=124
    local.set 200
    local.get 200
    local.set 201
    local.get 201
    i64.extend_i32_u
    local.set 700
    local.get 699
    local.get 700
    i64.mul
    local.set 701
    local.get 698
    local.get 701
    i64.add
    local.set 702
    local.get 5
    i32.load offset=168
    local.set 202
    local.get 202
    local.set 203
    local.get 203
    i64.extend_i32_u
    local.set 703
    local.get 5
    i32.load offset=128
    local.set 204
    local.get 204
    local.set 205
    local.get 205
    i64.extend_i32_u
    local.set 704
    local.get 703
    local.get 704
    i64.mul
    local.set 705
    local.get 702
    local.get 705
    i64.add
    local.set 706
    local.get 5
    i32.load offset=164
    local.set 206
    local.get 206
    local.set 207
    local.get 207
    i64.extend_i32_u
    local.set 707
    local.get 5
    i32.load offset=132
    local.set 208
    local.get 208
    local.set 209
    local.get 209
    i64.extend_i32_u
    local.set 708
    local.get 707
    local.get 708
    i64.mul
    local.set 709
    local.get 706
    local.get 709
    i64.add
    local.set 710
    local.get 5
    i32.load offset=160
    local.set 210
    local.get 210
    local.set 211
    local.get 211
    i64.extend_i32_u
    local.set 711
    local.get 5
    i32.load offset=136
    local.set 212
    local.get 212
    local.set 213
    local.get 213
    i64.extend_i32_u
    local.set 712
    local.get 711
    local.get 712
    i64.mul
    local.set 713
    local.get 710
    local.get 713
    i64.add
    local.set 714
    local.get 5
    local.get 714
    i64.store offset=56
    local.get 5
    i32.load offset=176
    local.set 214
    local.get 214
    local.set 215
    local.get 215
    i64.extend_i32_u
    local.set 715
    local.get 5
    i32.load offset=112
    local.set 216
    local.get 216
    local.set 217
    local.get 217
    i64.extend_i32_u
    local.set 716
    local.get 715
    local.get 716
    i64.mul
    local.set 717
    local.get 5
    i32.load offset=172
    local.set 218
    local.get 218
    local.set 219
    local.get 219
    i64.extend_i32_u
    local.set 718
    local.get 5
    i32.load offset=116
    local.set 220
    local.get 220
    local.set 221
    local.get 221
    i64.extend_i32_u
    local.set 719
    local.get 718
    local.get 719
    i64.mul
    local.set 720
    local.get 717
    local.get 720
    i64.add
    local.set 721
    local.get 5
    i32.load offset=168
    local.set 222
    local.get 222
    local.set 223
    local.get 223
    i64.extend_i32_u
    local.set 722
    local.get 5
    i32.load offset=120
    local.set 224
    local.get 224
    local.set 225
    local.get 225
    i64.extend_i32_u
    local.set 723
    local.get 722
    local.get 723
    i64.mul
    local.set 724
    local.get 721
    local.get 724
    i64.add
    local.set 725
    local.get 5
    i32.load offset=164
    local.set 226
    local.get 226
    local.set 227
    local.get 227
    i64.extend_i32_u
    local.set 726
    local.get 5
    i32.load offset=124
    local.set 228
    local.get 228
    local.set 229
    local.get 229
    i64.extend_i32_u
    local.set 727
    local.get 726
    local.get 727
    i64.mul
    local.set 728
    local.get 725
    local.get 728
    i64.add
    local.set 729
    local.get 5
    i32.load offset=160
    local.set 230
    local.get 230
    local.set 231
    local.get 231
    i64.extend_i32_u
    local.set 730
    local.get 5
    i32.load offset=128
    local.set 232
    local.get 232
    local.set 233
    local.get 233
    i64.extend_i32_u
    local.set 731
    local.get 730
    local.get 731
    i64.mul
    local.set 732
    local.get 729
    local.get 732
    i64.add
    local.set 733
    local.get 5
    i32.load offset=156
    local.set 234
    local.get 234
    local.set 235
    local.get 235
    i64.extend_i32_u
    local.set 734
    local.get 5
    i32.load offset=132
    local.set 236
    local.get 236
    local.set 237
    local.get 237
    i64.extend_i32_u
    local.set 735
    local.get 734
    local.get 735
    i64.mul
    local.set 736
    local.get 733
    local.get 736
    i64.add
    local.set 737
    local.get 5
    i32.load offset=152
    local.set 238
    local.get 238
    local.set 239
    local.get 239
    i64.extend_i32_u
    local.set 738
    local.get 5
    i32.load offset=136
    local.set 240
    local.get 240
    local.set 241
    local.get 241
    i64.extend_i32_u
    local.set 739
    local.get 738
    local.get 739
    i64.mul
    local.set 740
    local.get 737
    local.get 740
    i64.add
    local.set 741
    local.get 5
    local.get 741
    i64.store offset=40
    local.get 5
    i32.load offset=176
    local.set 242
    local.get 242
    local.set 243
    local.get 243
    i64.extend_i32_u
    local.set 742
    local.get 5
    i32.load offset=104
    local.set 244
    local.get 244
    local.set 245
    local.get 245
    i64.extend_i32_u
    local.set 743
    local.get 742
    local.get 743
    i64.mul
    local.set 744
    local.get 5
    i32.load offset=172
    local.set 246
    local.get 246
    local.set 247
    local.get 247
    i64.extend_i32_u
    local.set 745
    local.get 5
    i32.load offset=108
    local.set 248
    local.get 248
    local.set 249
    local.get 249
    i64.extend_i32_u
    local.set 746
    local.get 745
    local.get 746
    i64.mul
    local.set 747
    local.get 744
    local.get 747
    i64.add
    local.set 748
    local.get 5
    i32.load offset=168
    local.set 250
    local.get 250
    local.set 251
    local.get 251
    i64.extend_i32_u
    local.set 749
    local.get 5
    i32.load offset=112
    local.set 252
    local.get 252
    local.set 253
    local.get 253
    i64.extend_i32_u
    local.set 750
    local.get 749
    local.get 750
    i64.mul
    local.set 751
    local.get 748
    local.get 751
    i64.add
    local.set 752
    local.get 5
    i32.load offset=164
    local.set 254
    local.get 254
    local.set 255
    local.get 255
    i64.extend_i32_u
    local.set 753
    local.get 5
    i32.load offset=116
    local.set 256
    local.get 256
    local.set 257
    local.get 257
    i64.extend_i32_u
    local.set 754
    local.get 753
    local.get 754
    i64.mul
    local.set 755
    local.get 752
    local.get 755
    i64.add
    local.set 756
    local.get 5
    i32.load offset=160
    local.set 258
    local.get 258
    local.set 259
    local.get 259
    i64.extend_i32_u
    local.set 757
    local.get 5
    i32.load offset=120
    local.set 260
    local.get 260
    local.set 261
    local.get 261
    i64.extend_i32_u
    local.set 758
    local.get 757
    local.get 758
    i64.mul
    local.set 759
    local.get 756
    local.get 759
    i64.add
    local.set 760
    local.get 5
    i32.load offset=156
    local.set 262
    local.get 262
    local.set 263
    local.get 263
    i64.extend_i32_u
    local.set 761
    local.get 5
    i32.load offset=124
    local.set 264
    local.get 264
    local.set 265
    local.get 265
    i64.extend_i32_u
    local.set 762
    local.get 761
    local.get 762
    i64.mul
    local.set 763
    local.get 760
    local.get 763
    i64.add
    local.set 764
    local.get 5
    i32.load offset=152
    local.set 266
    local.get 266
    local.set 267
    local.get 267
    i64.extend_i32_u
    local.set 765
    local.get 5
    i32.load offset=128
    local.set 268
    local.get 268
    local.set 269
    local.get 269
    i64.extend_i32_u
    local.set 766
    local.get 765
    local.get 766
    i64.mul
    local.set 767
    local.get 764
    local.get 767
    i64.add
    local.set 768
    local.get 5
    i32.load offset=148
    local.set 270
    local.get 270
    local.set 271
    local.get 271
    i64.extend_i32_u
    local.set 769
    local.get 5
    i32.load offset=132
    local.set 272
    local.get 272
    local.set 273
    local.get 273
    i64.extend_i32_u
    local.set 770
    local.get 769
    local.get 770
    i64.mul
    local.set 771
    local.get 768
    local.get 771
    i64.add
    local.set 772
    local.get 5
    i32.load offset=144
    local.set 274
    local.get 274
    local.set 275
    local.get 275
    i64.extend_i32_u
    local.set 773
    local.get 5
    i32.load offset=136
    local.set 276
    local.get 276
    local.set 277
    local.get 277
    i64.extend_i32_u
    local.set 774
    local.get 773
    local.get 774
    i64.mul
    local.set 775
    local.get 772
    local.get 775
    i64.add
    local.set 776
    local.get 5
    local.get 776
    i64.store offset=24
    local.get 5
    i32.load offset=172
    local.set 278
    i32.const 19
    local.set 279
    local.get 278
    local.get 279
    i32.mul
    local.set 280
    local.get 5
    local.get 280
    i32.store offset=172
    local.get 5
    i32.load offset=168
    local.set 281
    i32.const 19
    local.set 282
    local.get 281
    local.get 282
    i32.mul
    local.set 283
    local.get 5
    local.get 283
    i32.store offset=168
    local.get 5
    i32.load offset=164
    local.set 284
    i32.const 1
    local.set 285
    local.get 284
    local.get 285
    i32.shr_u
    local.set 286
    i32.const 19
    local.set 287
    local.get 286
    local.get 287
    i32.mul
    local.set 288
    local.get 5
    local.get 288
    i32.store offset=164
    local.get 5
    i32.load offset=160
    local.set 289
    i32.const 19
    local.set 290
    local.get 289
    local.get 290
    i32.mul
    local.set 291
    local.get 5
    local.get 291
    i32.store offset=160
    local.get 5
    i32.load offset=156
    local.set 292
    i32.const 1
    local.set 293
    local.get 292
    local.get 293
    i32.shr_u
    local.set 294
    i32.const 19
    local.set 295
    local.get 294
    local.get 295
    i32.mul
    local.set 296
    local.get 5
    local.get 296
    i32.store offset=156
    local.get 5
    i32.load offset=152
    local.set 297
    i32.const 19
    local.set 298
    local.get 297
    local.get 298
    i32.mul
    local.set 299
    local.get 5
    local.get 299
    i32.store offset=152
    local.get 5
    i32.load offset=148
    local.set 300
    i32.const 1
    local.set 301
    local.get 300
    local.get 301
    i32.shr_u
    local.set 302
    i32.const 19
    local.set 303
    local.get 302
    local.get 303
    i32.mul
    local.set 304
    local.get 5
    local.get 304
    i32.store offset=148
    local.get 5
    i32.load offset=144
    local.set 305
    i32.const 19
    local.set 306
    local.get 305
    local.get 306
    i32.mul
    local.set 307
    local.get 5
    local.get 307
    i32.store offset=144
    local.get 5
    i32.load offset=140
    local.set 308
    i32.const 19
    local.set 309
    local.get 308
    local.get 309
    i32.mul
    local.set 310
    local.get 5
    local.get 310
    i32.store offset=140
    local.get 5
    i32.load offset=140
    local.set 311
    local.get 311
    local.set 312
    local.get 312
    i64.extend_i32_u
    local.set 777
    local.get 5
    i32.load offset=128
    local.set 313
    local.get 313
    local.set 314
    local.get 314
    i64.extend_i32_u
    local.set 778
    local.get 777
    local.get 778
    i64.mul
    local.set 779
    local.get 5
    i32.load offset=144
    local.set 315
    local.get 315
    local.set 316
    local.get 316
    i64.extend_i32_u
    local.set 780
    local.get 5
    i32.load offset=124
    local.set 317
    local.get 317
    local.set 318
    local.get 318
    i64.extend_i32_u
    local.set 781
    local.get 780
    local.get 781
    i64.mul
    local.set 782
    local.get 779
    local.get 782
    i64.add
    local.set 783
    local.get 5
    i32.load offset=148
    local.set 319
    local.get 319
    local.set 320
    local.get 320
    i64.extend_i32_u
    local.set 784
    local.get 5
    i32.load offset=120
    local.set 321
    local.get 321
    local.set 322
    local.get 322
    i64.extend_i32_u
    local.set 785
    local.get 784
    local.get 785
    i64.mul
    local.set 786
    local.get 783
    local.get 786
    i64.add
    local.set 787
    local.get 5
    i32.load offset=152
    local.set 323
    local.get 323
    local.set 324
    local.get 324
    i64.extend_i32_u
    local.set 788
    local.get 5
    i32.load offset=116
    local.set 325
    local.get 325
    local.set 326
    local.get 326
    i64.extend_i32_u
    local.set 789
    local.get 788
    local.get 789
    i64.mul
    local.set 790
    local.get 787
    local.get 790
    i64.add
    local.set 791
    local.get 5
    i32.load offset=156
    local.set 327
    local.get 327
    local.set 328
    local.get 328
    i64.extend_i32_u
    local.set 792
    local.get 5
    i32.load offset=112
    local.set 329
    local.get 329
    local.set 330
    local.get 330
    i64.extend_i32_u
    local.set 793
    local.get 792
    local.get 793
    i64.mul
    local.set 794
    local.get 791
    local.get 794
    i64.add
    local.set 795
    local.get 5
    i32.load offset=160
    local.set 331
    local.get 331
    local.set 332
    local.get 332
    i64.extend_i32_u
    local.set 796
    local.get 5
    i32.load offset=108
    local.set 333
    local.get 333
    local.set 334
    local.get 334
    i64.extend_i32_u
    local.set 797
    local.get 796
    local.get 797
    i64.mul
    local.set 798
    local.get 795
    local.get 798
    i64.add
    local.set 799
    local.get 5
    i32.load offset=164
    local.set 335
    local.get 335
    local.set 336
    local.get 336
    i64.extend_i32_u
    local.set 800
    local.get 5
    i32.load offset=104
    local.set 337
    local.get 337
    local.set 338
    local.get 338
    i64.extend_i32_u
    local.set 801
    local.get 800
    local.get 801
    i64.mul
    local.set 802
    local.get 799
    local.get 802
    i64.add
    local.set 803
    local.get 5
    i32.load offset=168
    local.set 339
    local.get 339
    local.set 340
    local.get 340
    i64.extend_i32_u
    local.set 804
    local.get 5
    i32.load offset=100
    local.set 341
    local.get 341
    local.set 342
    local.get 342
    i64.extend_i32_u
    local.set 805
    local.get 804
    local.get 805
    i64.mul
    local.set 806
    local.get 803
    local.get 806
    i64.add
    local.set 807
    local.get 5
    i64.load offset=80
    local.set 808
    local.get 808
    local.get 807
    i64.add
    local.set 809
    local.get 5
    local.get 809
    i64.store offset=80
    local.get 5
    i32.load offset=140
    local.set 343
    local.get 343
    local.set 344
    local.get 344
    i64.extend_i32_u
    local.set 810
    local.get 5
    i32.load offset=120
    local.set 345
    local.get 345
    local.set 346
    local.get 346
    i64.extend_i32_u
    local.set 811
    local.get 810
    local.get 811
    i64.mul
    local.set 812
    local.get 5
    i32.load offset=144
    local.set 347
    local.get 347
    local.set 348
    local.get 348
    i64.extend_i32_u
    local.set 813
    local.get 5
    i32.load offset=116
    local.set 349
    local.get 349
    local.set 350
    local.get 350
    i64.extend_i32_u
    local.set 814
    local.get 813
    local.get 814
    i64.mul
    local.set 815
    local.get 812
    local.get 815
    i64.add
    local.set 816
    local.get 5
    i32.load offset=148
    local.set 351
    local.get 351
    local.set 352
    local.get 352
    i64.extend_i32_u
    local.set 817
    local.get 5
    i32.load offset=112
    local.set 353
    local.get 353
    local.set 354
    local.get 354
    i64.extend_i32_u
    local.set 818
    local.get 817
    local.get 818
    i64.mul
    local.set 819
    local.get 816
    local.get 819
    i64.add
    local.set 820
    local.get 5
    i32.load offset=152
    local.set 355
    local.get 355
    local.set 356
    local.get 356
    i64.extend_i32_u
    local.set 821
    local.get 5
    i32.load offset=108
    local.set 357
    local.get 357
    local.set 358
    local.get 358
    i64.extend_i32_u
    local.set 822
    local.get 821
    local.get 822
    i64.mul
    local.set 823
    local.get 820
    local.get 823
    i64.add
    local.set 824
    local.get 5
    i32.load offset=156
    local.set 359
    local.get 359
    local.set 360
    local.get 360
    i64.extend_i32_u
    local.set 825
    local.get 5
    i32.load offset=104
    local.set 361
    local.get 361
    local.set 362
    local.get 362
    i64.extend_i32_u
    local.set 826
    local.get 825
    local.get 826
    i64.mul
    local.set 827
    local.get 824
    local.get 827
    i64.add
    local.set 828
    local.get 5
    i32.load offset=160
    local.set 363
    local.get 363
    local.set 364
    local.get 364
    i64.extend_i32_u
    local.set 829
    local.get 5
    i32.load offset=100
    local.set 365
    local.get 365
    local.set 366
    local.get 366
    i64.extend_i32_u
    local.set 830
    local.get 829
    local.get 830
    i64.mul
    local.set 831
    local.get 828
    local.get 831
    i64.add
    local.set 832
    local.get 5
    i64.load offset=64
    local.set 833
    local.get 833
    local.get 832
    i64.add
    local.set 834
    local.get 5
    local.get 834
    i64.store offset=64
    local.get 5
    i32.load offset=140
    local.set 367
    local.get 367
    local.set 368
    local.get 368
    i64.extend_i32_u
    local.set 835
    local.get 5
    i32.load offset=112
    local.set 369
    local.get 369
    local.set 370
    local.get 370
    i64.extend_i32_u
    local.set 836
    local.get 835
    local.get 836
    i64.mul
    local.set 837
    local.get 5
    i32.load offset=144
    local.set 371
    local.get 371
    local.set 372
    local.get 372
    i64.extend_i32_u
    local.set 838
    local.get 5
    i32.load offset=108
    local.set 373
    local.get 373
    local.set 374
    local.get 374
    i64.extend_i32_u
    local.set 839
    local.get 838
    local.get 839
    i64.mul
    local.set 840
    local.get 837
    local.get 840
    i64.add
    local.set 841
    local.get 5
    i32.load offset=148
    local.set 375
    local.get 375
    local.set 376
    local.get 376
    i64.extend_i32_u
    local.set 842
    local.get 5
    i32.load offset=104
    local.set 377
    local.get 377
    local.set 378
    local.get 378
    i64.extend_i32_u
    local.set 843
    local.get 842
    local.get 843
    i64.mul
    local.set 844
    local.get 841
    local.get 844
    i64.add
    local.set 845
    local.get 5
    i32.load offset=152
    local.set 379
    local.get 379
    local.set 380
    local.get 380
    i64.extend_i32_u
    local.set 846
    local.get 5
    i32.load offset=100
    local.set 381
    local.get 381
    local.set 382
    local.get 382
    i64.extend_i32_u
    local.set 847
    local.get 846
    local.get 847
    i64.mul
    local.set 848
    local.get 845
    local.get 848
    i64.add
    local.set 849
    local.get 5
    i64.load offset=48
    local.set 850
    local.get 850
    local.get 849
    i64.add
    local.set 851
    local.get 5
    local.get 851
    i64.store offset=48
    local.get 5
    i32.load offset=140
    local.set 383
    local.get 383
    local.set 384
    local.get 384
    i64.extend_i32_u
    local.set 852
    local.get 5
    i32.load offset=104
    local.set 385
    local.get 385
    local.set 386
    local.get 386
    i64.extend_i32_u
    local.set 853
    local.get 852
    local.get 853
    i64.mul
    local.set 854
    local.get 5
    i32.load offset=144
    local.set 387
    local.get 387
    local.set 388
    local.get 388
    i64.extend_i32_u
    local.set 855
    local.get 5
    i32.load offset=100
    local.set 389
    local.get 389
    local.set 390
    local.get 390
    i64.extend_i32_u
    local.set 856
    local.get 855
    local.get 856
    i64.mul
    local.set 857
    local.get 854
    local.get 857
    i64.add
    local.set 858
    local.get 5
    i64.load offset=32
    local.set 859
    local.get 859
    local.get 858
    i64.add
    local.set 860
    local.get 5
    local.get 860
    i64.store offset=32
    local.get 5
    i32.load offset=164
    local.set 391
    i32.const 1
    local.set 392
    local.get 391
    local.get 392
    i32.shl
    local.set 393
    local.get 5
    local.get 393
    i32.store offset=164
    local.get 5
    i32.load offset=156
    local.set 394
    i32.const 1
    local.set 395
    local.get 394
    local.get 395
    i32.shl
    local.set 396
    local.get 5
    local.get 396
    i32.store offset=156
    local.get 5
    i32.load offset=148
    local.set 397
    i32.const 1
    local.set 398
    local.get 397
    local.get 398
    i32.shl
    local.set 399
    local.get 5
    local.get 399
    i32.store offset=148
    local.get 5
    i32.load offset=140
    local.set 400
    i32.const 1
    local.set 401
    local.get 400
    local.get 401
    i32.shl
    local.set 402
    local.get 5
    local.get 402
    i32.store offset=140
    local.get 5
    i32.load offset=140
    local.set 403
    local.get 403
    local.set 404
    local.get 404
    i64.extend_i32_u
    local.set 861
    local.get 5
    i32.load offset=132
    local.set 405
    local.get 405
    local.set 406
    local.get 406
    i64.extend_i32_u
    local.set 862
    local.get 861
    local.get 862
    i64.mul
    local.set 863
    local.get 5
    i32.load offset=144
    local.set 407
    local.get 407
    local.set 408
    local.get 408
    i64.extend_i32_u
    local.set 864
    local.get 5
    i32.load offset=128
    local.set 409
    local.get 409
    local.set 410
    local.get 410
    i64.extend_i32_u
    local.set 865
    local.get 864
    local.get 865
    i64.mul
    local.set 866
    local.get 863
    local.get 866
    i64.add
    local.set 867
    local.get 5
    i32.load offset=148
    local.set 411
    local.get 411
    local.set 412
    local.get 412
    i64.extend_i32_u
    local.set 868
    local.get 5
    i32.load offset=124
    local.set 413
    local.get 413
    local.set 414
    local.get 414
    i64.extend_i32_u
    local.set 869
    local.get 868
    local.get 869
    i64.mul
    local.set 870
    local.get 867
    local.get 870
    i64.add
    local.set 871
    local.get 5
    i32.load offset=152
    local.set 415
    local.get 415
    local.set 416
    local.get 416
    i64.extend_i32_u
    local.set 872
    local.get 5
    i32.load offset=120
    local.set 417
    local.get 417
    local.set 418
    local.get 418
    i64.extend_i32_u
    local.set 873
    local.get 872
    local.get 873
    i64.mul
    local.set 874
    local.get 871
    local.get 874
    i64.add
    local.set 875
    local.get 5
    i32.load offset=156
    local.set 419
    local.get 419
    local.set 420
    local.get 420
    i64.extend_i32_u
    local.set 876
    local.get 5
    i32.load offset=116
    local.set 421
    local.get 421
    local.set 422
    local.get 422
    i64.extend_i32_u
    local.set 877
    local.get 876
    local.get 877
    i64.mul
    local.set 878
    local.get 875
    local.get 878
    i64.add
    local.set 879
    local.get 5
    i32.load offset=160
    local.set 423
    local.get 423
    local.set 424
    local.get 424
    i64.extend_i32_u
    local.set 880
    local.get 5
    i32.load offset=112
    local.set 425
    local.get 425
    local.set 426
    local.get 426
    i64.extend_i32_u
    local.set 881
    local.get 880
    local.get 881
    i64.mul
    local.set 882
    local.get 879
    local.get 882
    i64.add
    local.set 883
    local.get 5
    i32.load offset=164
    local.set 427
    local.get 427
    local.set 428
    local.get 428
    i64.extend_i32_u
    local.set 884
    local.get 5
    i32.load offset=108
    local.set 429
    local.get 429
    local.set 430
    local.get 430
    i64.extend_i32_u
    local.set 885
    local.get 884
    local.get 885
    i64.mul
    local.set 886
    local.get 883
    local.get 886
    i64.add
    local.set 887
    local.get 5
    i32.load offset=168
    local.set 431
    local.get 431
    local.set 432
    local.get 432
    i64.extend_i32_u
    local.set 888
    local.get 5
    i32.load offset=104
    local.set 433
    local.get 433
    local.set 434
    local.get 434
    i64.extend_i32_u
    local.set 889
    local.get 888
    local.get 889
    i64.mul
    local.set 890
    local.get 887
    local.get 890
    i64.add
    local.set 891
    local.get 5
    i32.load offset=172
    local.set 435
    local.get 435
    local.set 436
    local.get 436
    i64.extend_i32_u
    local.set 892
    local.get 5
    i32.load offset=100
    local.set 437
    local.get 437
    local.set 438
    local.get 438
    i64.extend_i32_u
    local.set 893
    local.get 892
    local.get 893
    i64.mul
    local.set 894
    local.get 891
    local.get 894
    i64.add
    local.set 895
    local.get 5
    i64.load offset=88
    local.set 896
    local.get 896
    local.get 895
    i64.add
    local.set 897
    local.get 5
    local.get 897
    i64.store offset=88
    local.get 5
    i32.load offset=140
    local.set 439
    local.get 439
    local.set 440
    local.get 440
    i64.extend_i32_u
    local.set 898
    local.get 5
    i32.load offset=124
    local.set 441
    local.get 441
    local.set 442
    local.get 442
    i64.extend_i32_u
    local.set 899
    local.get 898
    local.get 899
    i64.mul
    local.set 900
    local.get 5
    i32.load offset=144
    local.set 443
    local.get 443
    local.set 444
    local.get 444
    i64.extend_i32_u
    local.set 901
    local.get 5
    i32.load offset=120
    local.set 445
    local.get 445
    local.set 446
    local.get 446
    i64.extend_i32_u
    local.set 902
    local.get 901
    local.get 902
    i64.mul
    local.set 903
    local.get 900
    local.get 903
    i64.add
    local.set 904
    local.get 5
    i32.load offset=148
    local.set 447
    local.get 447
    local.set 448
    local.get 448
    i64.extend_i32_u
    local.set 905
    local.get 5
    i32.load offset=116
    local.set 449
    local.get 449
    local.set 450
    local.get 450
    i64.extend_i32_u
    local.set 906
    local.get 905
    local.get 906
    i64.mul
    local.set 907
    local.get 904
    local.get 907
    i64.add
    local.set 908
    local.get 5
    i32.load offset=152
    local.set 451
    local.get 451
    local.set 452
    local.get 452
    i64.extend_i32_u
    local.set 909
    local.get 5
    i32.load offset=112
    local.set 453
    local.get 453
    local.set 454
    local.get 454
    i64.extend_i32_u
    local.set 910
    local.get 909
    local.get 910
    i64.mul
    local.set 911
    local.get 908
    local.get 911
    i64.add
    local.set 912
    local.get 5
    i32.load offset=156
    local.set 455
    local.get 455
    local.set 456
    local.get 456
    i64.extend_i32_u
    local.set 913
    local.get 5
    i32.load offset=108
    local.set 457
    local.get 457
    local.set 458
    local.get 458
    i64.extend_i32_u
    local.set 914
    local.get 913
    local.get 914
    i64.mul
    local.set 915
    local.get 912
    local.get 915
    i64.add
    local.set 916
    local.get 5
    i32.load offset=160
    local.set 459
    local.get 459
    local.set 460
    local.get 460
    i64.extend_i32_u
    local.set 917
    local.get 5
    i32.load offset=104
    local.set 461
    local.get 461
    local.set 462
    local.get 462
    i64.extend_i32_u
    local.set 918
    local.get 917
    local.get 918
    i64.mul
    local.set 919
    local.get 916
    local.get 919
    i64.add
    local.set 920
    local.get 5
    i32.load offset=164
    local.set 463
    local.get 463
    local.set 464
    local.get 464
    i64.extend_i32_u
    local.set 921
    local.get 5
    i32.load offset=100
    local.set 465
    local.get 465
    local.set 466
    local.get 466
    i64.extend_i32_u
    local.set 922
    local.get 921
    local.get 922
    i64.mul
    local.set 923
    local.get 920
    local.get 923
    i64.add
    local.set 924
    local.get 5
    i64.load offset=72
    local.set 925
    local.get 925
    local.get 924
    i64.add
    local.set 926
    local.get 5
    local.get 926
    i64.store offset=72
    local.get 5
    i32.load offset=140
    local.set 467
    local.get 467
    local.set 468
    local.get 468
    i64.extend_i32_u
    local.set 927
    local.get 5
    i32.load offset=116
    local.set 469
    local.get 469
    local.set 470
    local.get 470
    i64.extend_i32_u
    local.set 928
    local.get 927
    local.get 928
    i64.mul
    local.set 929
    local.get 5
    i32.load offset=144
    local.set 471
    local.get 471
    local.set 472
    local.get 472
    i64.extend_i32_u
    local.set 930
    local.get 5
    i32.load offset=112
    local.set 473
    local.get 473
    local.set 474
    local.get 474
    i64.extend_i32_u
    local.set 931
    local.get 930
    local.get 931
    i64.mul
    local.set 932
    local.get 929
    local.get 932
    i64.add
    local.set 933
    local.get 5
    i32.load offset=148
    local.set 475
    local.get 475
    local.set 476
    local.get 476
    i64.extend_i32_u
    local.set 934
    local.get 5
    i32.load offset=108
    local.set 477
    local.get 477
    local.set 478
    local.get 478
    i64.extend_i32_u
    local.set 935
    local.get 934
    local.get 935
    i64.mul
    local.set 936
    local.get 933
    local.get 936
    i64.add
    local.set 937
    local.get 5
    i32.load offset=152
    local.set 479
    local.get 479
    local.set 480
    local.get 480
    i64.extend_i32_u
    local.set 938
    local.get 5
    i32.load offset=104
    local.set 481
    local.get 481
    local.set 482
    local.get 482
    i64.extend_i32_u
    local.set 939
    local.get 938
    local.get 939
    i64.mul
    local.set 940
    local.get 937
    local.get 940
    i64.add
    local.set 941
    local.get 5
    i32.load offset=156
    local.set 483
    local.get 483
    local.set 484
    local.get 484
    i64.extend_i32_u
    local.set 942
    local.get 5
    i32.load offset=100
    local.set 485
    local.get 485
    local.set 486
    local.get 486
    i64.extend_i32_u
    local.set 943
    local.get 942
    local.get 943
    i64.mul
    local.set 944
    local.get 941
    local.get 944
    i64.add
    local.set 945
    local.get 5
    i64.load offset=56
    local.set 946
    local.get 946
    local.get 945
    i64.add
    local.set 947
    local.get 5
    local.get 947
    i64.store offset=56
    local.get 5
    i32.load offset=140
    local.set 487
    local.get 487
    local.set 488
    local.get 488
    i64.extend_i32_u
    local.set 948
    local.get 5
    i32.load offset=108
    local.set 489
    local.get 489
    local.set 490
    local.get 490
    i64.extend_i32_u
    local.set 949
    local.get 948
    local.get 949
    i64.mul
    local.set 950
    local.get 5
    i32.load offset=144
    local.set 491
    local.get 491
    local.set 492
    local.get 492
    i64.extend_i32_u
    local.set 951
    local.get 5
    i32.load offset=104
    local.set 493
    local.get 493
    local.set 494
    local.get 494
    i64.extend_i32_u
    local.set 952
    local.get 951
    local.get 952
    i64.mul
    local.set 953
    local.get 950
    local.get 953
    i64.add
    local.set 954
    local.get 5
    i32.load offset=148
    local.set 495
    local.get 495
    local.set 496
    local.get 496
    i64.extend_i32_u
    local.set 955
    local.get 5
    i32.load offset=100
    local.set 497
    local.get 497
    local.set 498
    local.get 498
    i64.extend_i32_u
    local.set 956
    local.get 955
    local.get 956
    i64.mul
    local.set 957
    local.get 954
    local.get 957
    i64.add
    local.set 958
    local.get 5
    i64.load offset=40
    local.set 959
    local.get 959
    local.get 958
    i64.add
    local.set 960
    local.get 5
    local.get 960
    i64.store offset=40
    local.get 5
    i32.load offset=140
    local.set 499
    local.get 499
    local.set 500
    local.get 500
    i64.extend_i32_u
    local.set 961
    local.get 5
    i32.load offset=100
    local.set 501
    local.get 501
    local.set 502
    local.get 502
    i64.extend_i32_u
    local.set 962
    local.get 961
    local.get 962
    i64.mul
    local.set 963
    local.get 5
    i64.load offset=24
    local.set 964
    local.get 964
    local.get 963
    i64.add
    local.set 965
    local.get 5
    local.get 965
    i64.store offset=24
    local.get 5
    i64.load offset=88
    local.set 966
    local.get 966
    i32.wrap_i64
    local.set 503
    i32.const 67108863
    local.set 504
    local.get 503
    local.get 504
    i32.and
    local.set 505
    local.get 5
    local.get 505
    i32.store offset=176
    local.get 5
    i64.load offset=88
    local.set 967
    i64.const 26
    local.set 968
    local.get 967
    local.get 968
    i64.shr_u
    local.set 969
    local.get 5
    local.get 969
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 970
    local.get 5
    i64.load offset=80
    local.set 971
    local.get 971
    local.get 970
    i64.add
    local.set 972
    local.get 5
    local.get 972
    i64.store offset=80
    local.get 5
    i64.load offset=80
    local.set 973
    local.get 973
    i32.wrap_i64
    local.set 506
    i32.const 33554431
    local.set 507
    local.get 506
    local.get 507
    i32.and
    local.set 508
    local.get 5
    local.get 508
    i32.store offset=172
    local.get 5
    i64.load offset=80
    local.set 974
    i64.const 25
    local.set 975
    local.get 974
    local.get 975
    i64.shr_u
    local.set 976
    local.get 5
    local.get 976
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 977
    local.get 5
    i64.load offset=72
    local.set 978
    local.get 978
    local.get 977
    i64.add
    local.set 979
    local.get 5
    local.get 979
    i64.store offset=72
    local.get 5
    i64.load offset=72
    local.set 980
    local.get 980
    i32.wrap_i64
    local.set 509
    i32.const 67108863
    local.set 510
    local.get 509
    local.get 510
    i32.and
    local.set 511
    local.get 5
    local.get 511
    i32.store offset=168
    local.get 5
    i64.load offset=72
    local.set 981
    i64.const 26
    local.set 982
    local.get 981
    local.get 982
    i64.shr_u
    local.set 983
    local.get 5
    local.get 983
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 984
    local.get 5
    i64.load offset=64
    local.set 985
    local.get 985
    local.get 984
    i64.add
    local.set 986
    local.get 5
    local.get 986
    i64.store offset=64
    local.get 5
    i64.load offset=64
    local.set 987
    local.get 987
    i32.wrap_i64
    local.set 512
    i32.const 33554431
    local.set 513
    local.get 512
    local.get 513
    i32.and
    local.set 514
    local.get 5
    local.get 514
    i32.store offset=164
    local.get 5
    i64.load offset=64
    local.set 988
    i64.const 25
    local.set 989
    local.get 988
    local.get 989
    i64.shr_u
    local.set 990
    local.get 5
    local.get 990
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 991
    local.get 5
    i64.load offset=56
    local.set 992
    local.get 992
    local.get 991
    i64.add
    local.set 993
    local.get 5
    local.get 993
    i64.store offset=56
    local.get 5
    i64.load offset=56
    local.set 994
    local.get 994
    i32.wrap_i64
    local.set 515
    i32.const 67108863
    local.set 516
    local.get 515
    local.get 516
    i32.and
    local.set 517
    local.get 5
    local.get 517
    i32.store offset=160
    local.get 5
    i64.load offset=56
    local.set 995
    i64.const 26
    local.set 996
    local.get 995
    local.get 996
    i64.shr_u
    local.set 997
    local.get 5
    local.get 997
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 998
    local.get 5
    i64.load offset=48
    local.set 999
    local.get 999
    local.get 998
    i64.add
    local.set 1000
    local.get 5
    local.get 1000
    i64.store offset=48
    local.get 5
    i64.load offset=48
    local.set 1001
    local.get 1001
    i32.wrap_i64
    local.set 518
    i32.const 33554431
    local.set 519
    local.get 518
    local.get 519
    i32.and
    local.set 520
    local.get 5
    local.get 520
    i32.store offset=156
    local.get 5
    i64.load offset=48
    local.set 1002
    i64.const 25
    local.set 1003
    local.get 1002
    local.get 1003
    i64.shr_u
    local.set 1004
    local.get 5
    local.get 1004
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 1005
    local.get 5
    i64.load offset=40
    local.set 1006
    local.get 1006
    local.get 1005
    i64.add
    local.set 1007
    local.get 5
    local.get 1007
    i64.store offset=40
    local.get 5
    i64.load offset=40
    local.set 1008
    local.get 1008
    i32.wrap_i64
    local.set 521
    i32.const 67108863
    local.set 522
    local.get 521
    local.get 522
    i32.and
    local.set 523
    local.get 5
    local.get 523
    i32.store offset=152
    local.get 5
    i64.load offset=40
    local.set 1009
    i64.const 26
    local.set 1010
    local.get 1009
    local.get 1010
    i64.shr_u
    local.set 1011
    local.get 5
    local.get 1011
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 1012
    local.get 5
    i64.load offset=32
    local.set 1013
    local.get 1013
    local.get 1012
    i64.add
    local.set 1014
    local.get 5
    local.get 1014
    i64.store offset=32
    local.get 5
    i64.load offset=32
    local.set 1015
    local.get 1015
    i32.wrap_i64
    local.set 524
    i32.const 33554431
    local.set 525
    local.get 524
    local.get 525
    i32.and
    local.set 526
    local.get 5
    local.get 526
    i32.store offset=148
    local.get 5
    i64.load offset=32
    local.set 1016
    i64.const 25
    local.set 1017
    local.get 1016
    local.get 1017
    i64.shr_u
    local.set 1018
    local.get 5
    local.get 1018
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 1019
    local.get 5
    i64.load offset=24
    local.set 1020
    local.get 1020
    local.get 1019
    i64.add
    local.set 1021
    local.get 5
    local.get 1021
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1022
    local.get 1022
    i32.wrap_i64
    local.set 527
    i32.const 67108863
    local.set 528
    local.get 527
    local.get 528
    i32.and
    local.set 529
    local.get 5
    local.get 529
    i32.store offset=144
    local.get 5
    i64.load offset=24
    local.set 1023
    i64.const 26
    local.set 1024
    local.get 1023
    local.get 1024
    i64.shr_u
    local.set 1025
    local.get 5
    local.get 1025
    i64.store offset=8
    local.get 5
    i64.load offset=8
    local.set 1026
    local.get 5
    i64.load offset=16
    local.set 1027
    local.get 1027
    local.get 1026
    i64.add
    local.set 1028
    local.get 5
    local.get 1028
    i64.store offset=16
    local.get 5
    i64.load offset=16
    local.set 1029
    local.get 1029
    i32.wrap_i64
    local.set 530
    i32.const 33554431
    local.set 531
    local.get 530
    local.get 531
    i32.and
    local.set 532
    local.get 5
    local.get 532
    i32.store offset=140
    local.get 5
    i64.load offset=16
    local.set 1030
    i64.const 25
    local.set 1031
    local.get 1030
    local.get 1031
    i64.shr_u
    local.set 1032
    local.get 1032
    i32.wrap_i64
    local.set 533
    local.get 5
    local.get 533
    i32.store offset=4
    local.get 5
    i32.load offset=176
    local.set 534
    local.get 534
    local.set 535
    local.get 535
    i64.extend_i32_u
    local.set 1033
    local.get 5
    i32.load offset=4
    local.set 536
    local.get 536
    local.set 537
    local.get 537
    i64.extend_i32_u
    local.set 1034
    i64.const 19
    local.set 1035
    local.get 1034
    local.get 1035
    i64.mul
    local.set 1036
    local.get 1033
    local.get 1036
    i64.add
    local.set 1037
    local.get 5
    local.get 1037
    i64.store offset=88
    local.get 5
    i64.load offset=88
    local.set 1038
    local.get 1038
    i32.wrap_i64
    local.set 538
    i32.const 67108863
    local.set 539
    local.get 538
    local.get 539
    i32.and
    local.set 540
    local.get 5
    local.get 540
    i32.store offset=176
    local.get 5
    i64.load offset=88
    local.set 1039
    i64.const 26
    local.set 1040
    local.get 1039
    local.get 1040
    i64.shr_u
    local.set 1041
    local.get 1041
    i32.wrap_i64
    local.set 541
    local.get 5
    local.get 541
    i32.store offset=4
    local.get 5
    i32.load offset=4
    local.set 542
    local.get 5
    i32.load offset=172
    local.set 543
    local.get 543
    local.get 542
    i32.add
    local.set 544
    local.get 5
    local.get 544
    i32.store offset=172
    local.get 5
    i32.load offset=176
    local.set 545
    local.get 5
    i32.load offset=188
    local.set 546
    local.get 546
    local.get 545
    i32.store
    local.get 5
    i32.load offset=172
    local.set 547
    local.get 5
    i32.load offset=188
    local.set 548
    local.get 548
    local.get 547
    i32.store offset=4
    local.get 5
    i32.load offset=168
    local.set 549
    local.get 5
    i32.load offset=188
    local.set 550
    local.get 550
    local.get 549
    i32.store offset=8
    local.get 5
    i32.load offset=164
    local.set 551
    local.get 5
    i32.load offset=188
    local.set 552
    local.get 552
    local.get 551
    i32.store offset=12
    local.get 5
    i32.load offset=160
    local.set 553
    local.get 5
    i32.load offset=188
    local.set 554
    local.get 554
    local.get 553
    i32.store offset=16
    local.get 5
    i32.load offset=156
    local.set 555
    local.get 5
    i32.load offset=188
    local.set 556
    local.get 556
    local.get 555
    i32.store offset=20
    local.get 5
    i32.load offset=152
    local.set 557
    local.get 5
    i32.load offset=188
    local.set 558
    local.get 558
    local.get 557
    i32.store offset=24
    local.get 5
    i32.load offset=148
    local.set 559
    local.get 5
    i32.load offset=188
    local.set 560
    local.get 560
    local.get 559
    i32.store offset=28
    local.get 5
    i32.load offset=144
    local.set 561
    local.get 5
    i32.load offset=188
    local.set 562
    local.get 562
    local.get 561
    i32.store offset=32
    local.get 5
    i32.load offset=140
    local.set 563
    local.get 5
    i32.load offset=188
    local.set 564
    local.get 564
    local.get 563
    i32.store offset=36
    i32.const 192
    local.set 565
    local.get 5
    local.get 565
    i32.add
    local.set 566
    local.get 566
    global.set 0
    return)
  (func $curve25519_pow_two252m3 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 144
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 96
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    i32.const 2
    local.set 8
    local.get 4
    local.set 9
    i32.const 1
    local.set 10
    i32.const 48
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    local.get 4
    local.get 0
    i32.store offset=140
    local.get 4
    local.get 1
    i32.store offset=136
    local.get 4
    i32.load offset=136
    local.set 14
    local.get 13
    local.get 14
    local.get 10
    call $curve25519_square_times
    local.get 9
    local.get 13
    local.get 8
    call $curve25519_square_times
    local.get 4
    i32.load offset=136
    local.set 15
    local.get 7
    local.get 9
    local.get 15
    call $curve25519_mul
    local.get 13
    local.get 7
    local.get 13
    call $curve25519_mul
    local.get 9
    local.get 13
    local.get 10
    call $curve25519_square_times
    local.get 7
    local.get 9
    local.get 7
    call $curve25519_mul
    local.get 7
    call $curve25519_pow_two5mtwo0_two250mtwo0
    local.get 7
    local.get 7
    local.get 8
    call $curve25519_square_times
    local.get 4
    i32.load offset=140
    local.set 16
    local.get 4
    i32.load offset=136
    local.set 17
    local.get 16
    local.get 7
    local.get 17
    call $curve25519_mul
    i32.const 144
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set 0
    return)
  (func $curve25519_contract (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 64
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.set 6
    local.get 4
    local.get 0
    i32.store offset=52
    local.get 4
    local.get 1
    i32.store offset=48
    local.get 4
    i32.load offset=48
    local.set 7
    local.get 4
    local.get 6
    i32.store offset=60
    local.get 4
    local.get 7
    i32.store offset=56
    local.get 4
    i32.load offset=56
    local.set 8
    local.get 8
    i32.load
    local.set 9
    local.get 4
    i32.load offset=60
    local.set 10
    local.get 10
    local.get 9
    i32.store
    local.get 4
    i32.load offset=56
    local.set 11
    local.get 11
    i32.load offset=4
    local.set 12
    local.get 4
    i32.load offset=60
    local.set 13
    local.get 13
    local.get 12
    i32.store offset=4
    local.get 4
    i32.load offset=56
    local.set 14
    local.get 14
    i32.load offset=8
    local.set 15
    local.get 4
    i32.load offset=60
    local.set 16
    local.get 16
    local.get 15
    i32.store offset=8
    local.get 4
    i32.load offset=56
    local.set 17
    local.get 17
    i32.load offset=12
    local.set 18
    local.get 4
    i32.load offset=60
    local.set 19
    local.get 19
    local.get 18
    i32.store offset=12
    local.get 4
    i32.load offset=56
    local.set 20
    local.get 20
    i32.load offset=16
    local.set 21
    local.get 4
    i32.load offset=60
    local.set 22
    local.get 22
    local.get 21
    i32.store offset=16
    local.get 4
    i32.load offset=56
    local.set 23
    local.get 23
    i32.load offset=20
    local.set 24
    local.get 4
    i32.load offset=60
    local.set 25
    local.get 25
    local.get 24
    i32.store offset=20
    local.get 4
    i32.load offset=56
    local.set 26
    local.get 26
    i32.load offset=24
    local.set 27
    local.get 4
    i32.load offset=60
    local.set 28
    local.get 28
    local.get 27
    i32.store offset=24
    local.get 4
    i32.load offset=56
    local.set 29
    local.get 29
    i32.load offset=28
    local.set 30
    local.get 4
    i32.load offset=60
    local.set 31
    local.get 31
    local.get 30
    i32.store offset=28
    local.get 4
    i32.load offset=56
    local.set 32
    local.get 32
    i32.load offset=32
    local.set 33
    local.get 4
    i32.load offset=60
    local.set 34
    local.get 34
    local.get 33
    i32.store offset=32
    local.get 4
    i32.load offset=56
    local.set 35
    local.get 35
    i32.load offset=36
    local.set 36
    local.get 4
    i32.load offset=60
    local.set 37
    local.get 37
    local.get 36
    i32.store offset=36
    local.get 4
    i32.load
    local.set 38
    i32.const 26
    local.set 39
    local.get 38
    local.get 39
    i32.shr_u
    local.set 40
    local.get 4
    i32.load offset=4
    local.set 41
    local.get 41
    local.get 40
    i32.add
    local.set 42
    local.get 4
    local.get 42
    i32.store offset=4
    local.get 4
    i32.load
    local.set 43
    i32.const 67108863
    local.set 44
    local.get 43
    local.get 44
    i32.and
    local.set 45
    local.get 4
    local.get 45
    i32.store
    local.get 4
    i32.load offset=4
    local.set 46
    i32.const 25
    local.set 47
    local.get 46
    local.get 47
    i32.shr_u
    local.set 48
    local.get 4
    i32.load offset=8
    local.set 49
    local.get 49
    local.get 48
    i32.add
    local.set 50
    local.get 4
    local.get 50
    i32.store offset=8
    local.get 4
    i32.load offset=4
    local.set 51
    i32.const 33554431
    local.set 52
    local.get 51
    local.get 52
    i32.and
    local.set 53
    local.get 4
    local.get 53
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 54
    i32.const 26
    local.set 55
    local.get 54
    local.get 55
    i32.shr_u
    local.set 56
    local.get 4
    i32.load offset=12
    local.set 57
    local.get 57
    local.get 56
    i32.add
    local.set 58
    local.get 4
    local.get 58
    i32.store offset=12
    local.get 4
    i32.load offset=8
    local.set 59
    i32.const 67108863
    local.set 60
    local.get 59
    local.get 60
    i32.and
    local.set 61
    local.get 4
    local.get 61
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 62
    i32.const 25
    local.set 63
    local.get 62
    local.get 63
    i32.shr_u
    local.set 64
    local.get 4
    i32.load offset=16
    local.set 65
    local.get 65
    local.get 64
    i32.add
    local.set 66
    local.get 4
    local.get 66
    i32.store offset=16
    local.get 4
    i32.load offset=12
    local.set 67
    i32.const 33554431
    local.set 68
    local.get 67
    local.get 68
    i32.and
    local.set 69
    local.get 4
    local.get 69
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.set 70
    i32.const 26
    local.set 71
    local.get 70
    local.get 71
    i32.shr_u
    local.set 72
    local.get 4
    i32.load offset=20
    local.set 73
    local.get 73
    local.get 72
    i32.add
    local.set 74
    local.get 4
    local.get 74
    i32.store offset=20
    local.get 4
    i32.load offset=16
    local.set 75
    i32.const 67108863
    local.set 76
    local.get 75
    local.get 76
    i32.and
    local.set 77
    local.get 4
    local.get 77
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 78
    i32.const 25
    local.set 79
    local.get 78
    local.get 79
    i32.shr_u
    local.set 80
    local.get 4
    i32.load offset=24
    local.set 81
    local.get 81
    local.get 80
    i32.add
    local.set 82
    local.get 4
    local.get 82
    i32.store offset=24
    local.get 4
    i32.load offset=20
    local.set 83
    i32.const 33554431
    local.set 84
    local.get 83
    local.get 84
    i32.and
    local.set 85
    local.get 4
    local.get 85
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 86
    i32.const 26
    local.set 87
    local.get 86
    local.get 87
    i32.shr_u
    local.set 88
    local.get 4
    i32.load offset=28
    local.set 89
    local.get 89
    local.get 88
    i32.add
    local.set 90
    local.get 4
    local.get 90
    i32.store offset=28
    local.get 4
    i32.load offset=24
    local.set 91
    i32.const 67108863
    local.set 92
    local.get 91
    local.get 92
    i32.and
    local.set 93
    local.get 4
    local.get 93
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 94
    i32.const 25
    local.set 95
    local.get 94
    local.get 95
    i32.shr_u
    local.set 96
    local.get 4
    i32.load offset=32
    local.set 97
    local.get 97
    local.get 96
    i32.add
    local.set 98
    local.get 4
    local.get 98
    i32.store offset=32
    local.get 4
    i32.load offset=28
    local.set 99
    i32.const 33554431
    local.set 100
    local.get 99
    local.get 100
    i32.and
    local.set 101
    local.get 4
    local.get 101
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 102
    i32.const 26
    local.set 103
    local.get 102
    local.get 103
    i32.shr_u
    local.set 104
    local.get 4
    i32.load offset=36
    local.set 105
    local.get 105
    local.get 104
    i32.add
    local.set 106
    local.get 4
    local.get 106
    i32.store offset=36
    local.get 4
    i32.load offset=32
    local.set 107
    i32.const 67108863
    local.set 108
    local.get 107
    local.get 108
    i32.and
    local.set 109
    local.get 4
    local.get 109
    i32.store offset=32
    local.get 4
    i32.load offset=36
    local.set 110
    i32.const 25
    local.set 111
    local.get 110
    local.get 111
    i32.shr_u
    local.set 112
    i32.const 19
    local.set 113
    local.get 112
    local.get 113
    i32.mul
    local.set 114
    local.get 4
    i32.load
    local.set 115
    local.get 115
    local.get 114
    i32.add
    local.set 116
    local.get 4
    local.get 116
    i32.store
    local.get 4
    i32.load offset=36
    local.set 117
    i32.const 33554431
    local.set 118
    local.get 117
    local.get 118
    i32.and
    local.set 119
    local.get 4
    local.get 119
    i32.store offset=36
    local.get 4
    i32.load
    local.set 120
    i32.const 26
    local.set 121
    local.get 120
    local.get 121
    i32.shr_u
    local.set 122
    local.get 4
    i32.load offset=4
    local.set 123
    local.get 123
    local.get 122
    i32.add
    local.set 124
    local.get 4
    local.get 124
    i32.store offset=4
    local.get 4
    i32.load
    local.set 125
    i32.const 67108863
    local.set 126
    local.get 125
    local.get 126
    i32.and
    local.set 127
    local.get 4
    local.get 127
    i32.store
    local.get 4
    i32.load offset=4
    local.set 128
    i32.const 25
    local.set 129
    local.get 128
    local.get 129
    i32.shr_u
    local.set 130
    local.get 4
    i32.load offset=8
    local.set 131
    local.get 131
    local.get 130
    i32.add
    local.set 132
    local.get 4
    local.get 132
    i32.store offset=8
    local.get 4
    i32.load offset=4
    local.set 133
    i32.const 33554431
    local.set 134
    local.get 133
    local.get 134
    i32.and
    local.set 135
    local.get 4
    local.get 135
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 136
    i32.const 26
    local.set 137
    local.get 136
    local.get 137
    i32.shr_u
    local.set 138
    local.get 4
    i32.load offset=12
    local.set 139
    local.get 139
    local.get 138
    i32.add
    local.set 140
    local.get 4
    local.get 140
    i32.store offset=12
    local.get 4
    i32.load offset=8
    local.set 141
    i32.const 67108863
    local.set 142
    local.get 141
    local.get 142
    i32.and
    local.set 143
    local.get 4
    local.get 143
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 144
    i32.const 25
    local.set 145
    local.get 144
    local.get 145
    i32.shr_u
    local.set 146
    local.get 4
    i32.load offset=16
    local.set 147
    local.get 147
    local.get 146
    i32.add
    local.set 148
    local.get 4
    local.get 148
    i32.store offset=16
    local.get 4
    i32.load offset=12
    local.set 149
    i32.const 33554431
    local.set 150
    local.get 149
    local.get 150
    i32.and
    local.set 151
    local.get 4
    local.get 151
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.set 152
    i32.const 26
    local.set 153
    local.get 152
    local.get 153
    i32.shr_u
    local.set 154
    local.get 4
    i32.load offset=20
    local.set 155
    local.get 155
    local.get 154
    i32.add
    local.set 156
    local.get 4
    local.get 156
    i32.store offset=20
    local.get 4
    i32.load offset=16
    local.set 157
    i32.const 67108863
    local.set 158
    local.get 157
    local.get 158
    i32.and
    local.set 159
    local.get 4
    local.get 159
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 160
    i32.const 25
    local.set 161
    local.get 160
    local.get 161
    i32.shr_u
    local.set 162
    local.get 4
    i32.load offset=24
    local.set 163
    local.get 163
    local.get 162
    i32.add
    local.set 164
    local.get 4
    local.get 164
    i32.store offset=24
    local.get 4
    i32.load offset=20
    local.set 165
    i32.const 33554431
    local.set 166
    local.get 165
    local.get 166
    i32.and
    local.set 167
    local.get 4
    local.get 167
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 168
    i32.const 26
    local.set 169
    local.get 168
    local.get 169
    i32.shr_u
    local.set 170
    local.get 4
    i32.load offset=28
    local.set 171
    local.get 171
    local.get 170
    i32.add
    local.set 172
    local.get 4
    local.get 172
    i32.store offset=28
    local.get 4
    i32.load offset=24
    local.set 173
    i32.const 67108863
    local.set 174
    local.get 173
    local.get 174
    i32.and
    local.set 175
    local.get 4
    local.get 175
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 176
    i32.const 25
    local.set 177
    local.get 176
    local.get 177
    i32.shr_u
    local.set 178
    local.get 4
    i32.load offset=32
    local.set 179
    local.get 179
    local.get 178
    i32.add
    local.set 180
    local.get 4
    local.get 180
    i32.store offset=32
    local.get 4
    i32.load offset=28
    local.set 181
    i32.const 33554431
    local.set 182
    local.get 181
    local.get 182
    i32.and
    local.set 183
    local.get 4
    local.get 183
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 184
    i32.const 26
    local.set 185
    local.get 184
    local.get 185
    i32.shr_u
    local.set 186
    local.get 4
    i32.load offset=36
    local.set 187
    local.get 187
    local.get 186
    i32.add
    local.set 188
    local.get 4
    local.get 188
    i32.store offset=36
    local.get 4
    i32.load offset=32
    local.set 189
    i32.const 67108863
    local.set 190
    local.get 189
    local.get 190
    i32.and
    local.set 191
    local.get 4
    local.get 191
    i32.store offset=32
    local.get 4
    i32.load offset=36
    local.set 192
    i32.const 25
    local.set 193
    local.get 192
    local.get 193
    i32.shr_u
    local.set 194
    i32.const 19
    local.set 195
    local.get 194
    local.get 195
    i32.mul
    local.set 196
    local.get 4
    i32.load
    local.set 197
    local.get 197
    local.get 196
    i32.add
    local.set 198
    local.get 4
    local.get 198
    i32.store
    local.get 4
    i32.load offset=36
    local.set 199
    i32.const 33554431
    local.set 200
    local.get 199
    local.get 200
    i32.and
    local.set 201
    local.get 4
    local.get 201
    i32.store offset=36
    local.get 4
    i32.load
    local.set 202
    i32.const 19
    local.set 203
    local.get 202
    local.get 203
    i32.add
    local.set 204
    local.get 4
    local.get 204
    i32.store
    local.get 4
    i32.load
    local.set 205
    i32.const 26
    local.set 206
    local.get 205
    local.get 206
    i32.shr_u
    local.set 207
    local.get 4
    i32.load offset=4
    local.set 208
    local.get 208
    local.get 207
    i32.add
    local.set 209
    local.get 4
    local.get 209
    i32.store offset=4
    local.get 4
    i32.load
    local.set 210
    i32.const 67108863
    local.set 211
    local.get 210
    local.get 211
    i32.and
    local.set 212
    local.get 4
    local.get 212
    i32.store
    local.get 4
    i32.load offset=4
    local.set 213
    i32.const 25
    local.set 214
    local.get 213
    local.get 214
    i32.shr_u
    local.set 215
    local.get 4
    i32.load offset=8
    local.set 216
    local.get 216
    local.get 215
    i32.add
    local.set 217
    local.get 4
    local.get 217
    i32.store offset=8
    local.get 4
    i32.load offset=4
    local.set 218
    i32.const 33554431
    local.set 219
    local.get 218
    local.get 219
    i32.and
    local.set 220
    local.get 4
    local.get 220
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 221
    i32.const 26
    local.set 222
    local.get 221
    local.get 222
    i32.shr_u
    local.set 223
    local.get 4
    i32.load offset=12
    local.set 224
    local.get 224
    local.get 223
    i32.add
    local.set 225
    local.get 4
    local.get 225
    i32.store offset=12
    local.get 4
    i32.load offset=8
    local.set 226
    i32.const 67108863
    local.set 227
    local.get 226
    local.get 227
    i32.and
    local.set 228
    local.get 4
    local.get 228
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 229
    i32.const 25
    local.set 230
    local.get 229
    local.get 230
    i32.shr_u
    local.set 231
    local.get 4
    i32.load offset=16
    local.set 232
    local.get 232
    local.get 231
    i32.add
    local.set 233
    local.get 4
    local.get 233
    i32.store offset=16
    local.get 4
    i32.load offset=12
    local.set 234
    i32.const 33554431
    local.set 235
    local.get 234
    local.get 235
    i32.and
    local.set 236
    local.get 4
    local.get 236
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.set 237
    i32.const 26
    local.set 238
    local.get 237
    local.get 238
    i32.shr_u
    local.set 239
    local.get 4
    i32.load offset=20
    local.set 240
    local.get 240
    local.get 239
    i32.add
    local.set 241
    local.get 4
    local.get 241
    i32.store offset=20
    local.get 4
    i32.load offset=16
    local.set 242
    i32.const 67108863
    local.set 243
    local.get 242
    local.get 243
    i32.and
    local.set 244
    local.get 4
    local.get 244
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 245
    i32.const 25
    local.set 246
    local.get 245
    local.get 246
    i32.shr_u
    local.set 247
    local.get 4
    i32.load offset=24
    local.set 248
    local.get 248
    local.get 247
    i32.add
    local.set 249
    local.get 4
    local.get 249
    i32.store offset=24
    local.get 4
    i32.load offset=20
    local.set 250
    i32.const 33554431
    local.set 251
    local.get 250
    local.get 251
    i32.and
    local.set 252
    local.get 4
    local.get 252
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 253
    i32.const 26
    local.set 254
    local.get 253
    local.get 254
    i32.shr_u
    local.set 255
    local.get 4
    i32.load offset=28
    local.set 256
    local.get 256
    local.get 255
    i32.add
    local.set 257
    local.get 4
    local.get 257
    i32.store offset=28
    local.get 4
    i32.load offset=24
    local.set 258
    i32.const 67108863
    local.set 259
    local.get 258
    local.get 259
    i32.and
    local.set 260
    local.get 4
    local.get 260
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 261
    i32.const 25
    local.set 262
    local.get 261
    local.get 262
    i32.shr_u
    local.set 263
    local.get 4
    i32.load offset=32
    local.set 264
    local.get 264
    local.get 263
    i32.add
    local.set 265
    local.get 4
    local.get 265
    i32.store offset=32
    local.get 4
    i32.load offset=28
    local.set 266
    i32.const 33554431
    local.set 267
    local.get 266
    local.get 267
    i32.and
    local.set 268
    local.get 4
    local.get 268
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 269
    i32.const 26
    local.set 270
    local.get 269
    local.get 270
    i32.shr_u
    local.set 271
    local.get 4
    i32.load offset=36
    local.set 272
    local.get 272
    local.get 271
    i32.add
    local.set 273
    local.get 4
    local.get 273
    i32.store offset=36
    local.get 4
    i32.load offset=32
    local.set 274
    i32.const 67108863
    local.set 275
    local.get 274
    local.get 275
    i32.and
    local.set 276
    local.get 4
    local.get 276
    i32.store offset=32
    local.get 4
    i32.load offset=36
    local.set 277
    i32.const 25
    local.set 278
    local.get 277
    local.get 278
    i32.shr_u
    local.set 279
    i32.const 19
    local.set 280
    local.get 279
    local.get 280
    i32.mul
    local.set 281
    local.get 4
    i32.load
    local.set 282
    local.get 282
    local.get 281
    i32.add
    local.set 283
    local.get 4
    local.get 283
    i32.store
    local.get 4
    i32.load offset=36
    local.set 284
    i32.const 33554431
    local.set 285
    local.get 284
    local.get 285
    i32.and
    local.set 286
    local.get 4
    local.get 286
    i32.store offset=36
    local.get 4
    i32.load
    local.set 287
    i32.const 67108845
    local.set 288
    local.get 287
    local.get 288
    i32.add
    local.set 289
    local.get 4
    local.get 289
    i32.store
    local.get 4
    i32.load offset=4
    local.set 290
    i32.const 33554431
    local.set 291
    local.get 290
    local.get 291
    i32.add
    local.set 292
    local.get 4
    local.get 292
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 293
    i32.const 67108863
    local.set 294
    local.get 293
    local.get 294
    i32.add
    local.set 295
    local.get 4
    local.get 295
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 296
    i32.const 33554431
    local.set 297
    local.get 296
    local.get 297
    i32.add
    local.set 298
    local.get 4
    local.get 298
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.set 299
    i32.const 67108863
    local.set 300
    local.get 299
    local.get 300
    i32.add
    local.set 301
    local.get 4
    local.get 301
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 302
    i32.const 33554431
    local.set 303
    local.get 302
    local.get 303
    i32.add
    local.set 304
    local.get 4
    local.get 304
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 305
    i32.const 67108863
    local.set 306
    local.get 305
    local.get 306
    i32.add
    local.set 307
    local.get 4
    local.get 307
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 308
    i32.const 33554431
    local.set 309
    local.get 308
    local.get 309
    i32.add
    local.set 310
    local.get 4
    local.get 310
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 311
    i32.const 67108863
    local.set 312
    local.get 311
    local.get 312
    i32.add
    local.set 313
    local.get 4
    local.get 313
    i32.store offset=32
    local.get 4
    i32.load offset=36
    local.set 314
    i32.const 33554431
    local.set 315
    local.get 314
    local.get 315
    i32.add
    local.set 316
    local.get 4
    local.get 316
    i32.store offset=36
    local.get 4
    i32.load
    local.set 317
    i32.const 26
    local.set 318
    local.get 317
    local.get 318
    i32.shr_u
    local.set 319
    local.get 4
    i32.load offset=4
    local.set 320
    local.get 320
    local.get 319
    i32.add
    local.set 321
    local.get 4
    local.get 321
    i32.store offset=4
    local.get 4
    i32.load
    local.set 322
    i32.const 67108863
    local.set 323
    local.get 322
    local.get 323
    i32.and
    local.set 324
    local.get 4
    local.get 324
    i32.store
    local.get 4
    i32.load offset=4
    local.set 325
    i32.const 25
    local.set 326
    local.get 325
    local.get 326
    i32.shr_u
    local.set 327
    local.get 4
    i32.load offset=8
    local.set 328
    local.get 328
    local.get 327
    i32.add
    local.set 329
    local.get 4
    local.get 329
    i32.store offset=8
    local.get 4
    i32.load offset=4
    local.set 330
    i32.const 33554431
    local.set 331
    local.get 330
    local.get 331
    i32.and
    local.set 332
    local.get 4
    local.get 332
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 333
    i32.const 26
    local.set 334
    local.get 333
    local.get 334
    i32.shr_u
    local.set 335
    local.get 4
    i32.load offset=12
    local.set 336
    local.get 336
    local.get 335
    i32.add
    local.set 337
    local.get 4
    local.get 337
    i32.store offset=12
    local.get 4
    i32.load offset=8
    local.set 338
    i32.const 67108863
    local.set 339
    local.get 338
    local.get 339
    i32.and
    local.set 340
    local.get 4
    local.get 340
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 341
    i32.const 25
    local.set 342
    local.get 341
    local.get 342
    i32.shr_u
    local.set 343
    local.get 4
    i32.load offset=16
    local.set 344
    local.get 344
    local.get 343
    i32.add
    local.set 345
    local.get 4
    local.get 345
    i32.store offset=16
    local.get 4
    i32.load offset=12
    local.set 346
    i32.const 33554431
    local.set 347
    local.get 346
    local.get 347
    i32.and
    local.set 348
    local.get 4
    local.get 348
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.set 349
    i32.const 26
    local.set 350
    local.get 349
    local.get 350
    i32.shr_u
    local.set 351
    local.get 4
    i32.load offset=20
    local.set 352
    local.get 352
    local.get 351
    i32.add
    local.set 353
    local.get 4
    local.get 353
    i32.store offset=20
    local.get 4
    i32.load offset=16
    local.set 354
    i32.const 67108863
    local.set 355
    local.get 354
    local.get 355
    i32.and
    local.set 356
    local.get 4
    local.get 356
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 357
    i32.const 25
    local.set 358
    local.get 357
    local.get 358
    i32.shr_u
    local.set 359
    local.get 4
    i32.load offset=24
    local.set 360
    local.get 360
    local.get 359
    i32.add
    local.set 361
    local.get 4
    local.get 361
    i32.store offset=24
    local.get 4
    i32.load offset=20
    local.set 362
    i32.const 33554431
    local.set 363
    local.get 362
    local.get 363
    i32.and
    local.set 364
    local.get 4
    local.get 364
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 365
    i32.const 26
    local.set 366
    local.get 365
    local.get 366
    i32.shr_u
    local.set 367
    local.get 4
    i32.load offset=28
    local.set 368
    local.get 368
    local.get 367
    i32.add
    local.set 369
    local.get 4
    local.get 369
    i32.store offset=28
    local.get 4
    i32.load offset=24
    local.set 370
    i32.const 67108863
    local.set 371
    local.get 370
    local.get 371
    i32.and
    local.set 372
    local.get 4
    local.get 372
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 373
    i32.const 25
    local.set 374
    local.get 373
    local.get 374
    i32.shr_u
    local.set 375
    local.get 4
    i32.load offset=32
    local.set 376
    local.get 376
    local.get 375
    i32.add
    local.set 377
    local.get 4
    local.get 377
    i32.store offset=32
    local.get 4
    i32.load offset=28
    local.set 378
    i32.const 33554431
    local.set 379
    local.get 378
    local.get 379
    i32.and
    local.set 380
    local.get 4
    local.get 380
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 381
    i32.const 26
    local.set 382
    local.get 381
    local.get 382
    i32.shr_u
    local.set 383
    local.get 4
    i32.load offset=36
    local.set 384
    local.get 384
    local.get 383
    i32.add
    local.set 385
    local.get 4
    local.get 385
    i32.store offset=36
    local.get 4
    i32.load offset=32
    local.set 386
    i32.const 67108863
    local.set 387
    local.get 386
    local.get 387
    i32.and
    local.set 388
    local.get 4
    local.get 388
    i32.store offset=32
    local.get 4
    i32.load offset=36
    local.set 389
    i32.const 33554431
    local.set 390
    local.get 389
    local.get 390
    i32.and
    local.set 391
    local.get 4
    local.get 391
    i32.store offset=36
    local.get 4
    i32.load offset=4
    local.set 392
    i32.const 2
    local.set 393
    local.get 392
    local.get 393
    i32.shl
    local.set 394
    local.get 4
    local.get 394
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 395
    i32.const 3
    local.set 396
    local.get 395
    local.get 396
    i32.shl
    local.set 397
    local.get 4
    local.get 397
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 398
    i32.const 5
    local.set 399
    local.get 398
    local.get 399
    i32.shl
    local.set 400
    local.get 4
    local.get 400
    i32.store offset=12
    local.get 4
    i32.load offset=16
    local.set 401
    i32.const 6
    local.set 402
    local.get 401
    local.get 402
    i32.shl
    local.set 403
    local.get 4
    local.get 403
    i32.store offset=16
    local.get 4
    i32.load offset=24
    local.set 404
    i32.const 1
    local.set 405
    local.get 404
    local.get 405
    i32.shl
    local.set 406
    local.get 4
    local.get 406
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 407
    i32.const 3
    local.set 408
    local.get 407
    local.get 408
    i32.shl
    local.set 409
    local.get 4
    local.get 409
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 410
    i32.const 4
    local.set 411
    local.get 410
    local.get 411
    i32.shl
    local.set 412
    local.get 4
    local.get 412
    i32.store offset=32
    local.get 4
    i32.load offset=36
    local.set 413
    i32.const 6
    local.set 414
    local.get 413
    local.get 414
    i32.shl
    local.set 415
    local.get 4
    local.get 415
    i32.store offset=36
    local.get 4
    i32.load offset=52
    local.set 416
    local.get 416
    local.get 5
    i32.store8
    local.get 4
    i32.load offset=52
    local.set 417
    local.get 417
    local.get 5
    i32.store8 offset=16
    local.get 4
    i32.load
    local.set 418
    i32.const 255
    local.set 419
    local.get 418
    local.get 419
    i32.and
    local.set 420
    i32.const 255
    local.set 421
    local.get 420
    local.get 421
    i32.and
    local.set 422
    local.get 4
    i32.load offset=52
    local.set 423
    local.get 423
    i32.load8_u
    local.set 424
    i32.const 255
    local.set 425
    local.get 424
    local.get 425
    i32.and
    local.set 426
    local.get 426
    local.get 422
    i32.or
    local.set 427
    local.get 423
    local.get 427
    i32.store8
    local.get 4
    i32.load
    local.set 428
    i32.const 8
    local.set 429
    local.get 428
    local.get 429
    i32.shr_u
    local.set 430
    i32.const 255
    local.set 431
    local.get 430
    local.get 431
    i32.and
    local.set 432
    local.get 4
    i32.load offset=52
    local.set 433
    local.get 433
    local.get 432
    i32.store8 offset=1
    local.get 4
    i32.load
    local.set 434
    i32.const 16
    local.set 435
    local.get 434
    local.get 435
    i32.shr_u
    local.set 436
    i32.const 255
    local.set 437
    local.get 436
    local.get 437
    i32.and
    local.set 438
    local.get 4
    i32.load offset=52
    local.set 439
    local.get 439
    local.get 438
    i32.store8 offset=2
    local.get 4
    i32.load
    local.set 440
    i32.const 24
    local.set 441
    local.get 440
    local.get 441
    i32.shr_u
    local.set 442
    i32.const 255
    local.set 443
    local.get 442
    local.get 443
    i32.and
    local.set 444
    local.get 4
    i32.load offset=52
    local.set 445
    local.get 445
    local.get 444
    i32.store8 offset=3
    local.get 4
    i32.load offset=4
    local.set 446
    i32.const 255
    local.set 447
    local.get 446
    local.get 447
    i32.and
    local.set 448
    i32.const 255
    local.set 449
    local.get 448
    local.get 449
    i32.and
    local.set 450
    local.get 4
    i32.load offset=52
    local.set 451
    local.get 451
    i32.load8_u offset=3
    local.set 452
    i32.const 255
    local.set 453
    local.get 452
    local.get 453
    i32.and
    local.set 454
    local.get 454
    local.get 450
    i32.or
    local.set 455
    local.get 451
    local.get 455
    i32.store8 offset=3
    local.get 4
    i32.load offset=4
    local.set 456
    i32.const 8
    local.set 457
    local.get 456
    local.get 457
    i32.shr_u
    local.set 458
    i32.const 255
    local.set 459
    local.get 458
    local.get 459
    i32.and
    local.set 460
    local.get 4
    i32.load offset=52
    local.set 461
    local.get 461
    local.get 460
    i32.store8 offset=4
    local.get 4
    i32.load offset=4
    local.set 462
    i32.const 16
    local.set 463
    local.get 462
    local.get 463
    i32.shr_u
    local.set 464
    i32.const 255
    local.set 465
    local.get 464
    local.get 465
    i32.and
    local.set 466
    local.get 4
    i32.load offset=52
    local.set 467
    local.get 467
    local.get 466
    i32.store8 offset=5
    local.get 4
    i32.load offset=4
    local.set 468
    i32.const 24
    local.set 469
    local.get 468
    local.get 469
    i32.shr_u
    local.set 470
    i32.const 255
    local.set 471
    local.get 470
    local.get 471
    i32.and
    local.set 472
    local.get 4
    i32.load offset=52
    local.set 473
    local.get 473
    local.get 472
    i32.store8 offset=6
    local.get 4
    i32.load offset=8
    local.set 474
    i32.const 255
    local.set 475
    local.get 474
    local.get 475
    i32.and
    local.set 476
    i32.const 255
    local.set 477
    local.get 476
    local.get 477
    i32.and
    local.set 478
    local.get 4
    i32.load offset=52
    local.set 479
    local.get 479
    i32.load8_u offset=6
    local.set 480
    i32.const 255
    local.set 481
    local.get 480
    local.get 481
    i32.and
    local.set 482
    local.get 482
    local.get 478
    i32.or
    local.set 483
    local.get 479
    local.get 483
    i32.store8 offset=6
    local.get 4
    i32.load offset=8
    local.set 484
    i32.const 8
    local.set 485
    local.get 484
    local.get 485
    i32.shr_u
    local.set 486
    i32.const 255
    local.set 487
    local.get 486
    local.get 487
    i32.and
    local.set 488
    local.get 4
    i32.load offset=52
    local.set 489
    local.get 489
    local.get 488
    i32.store8 offset=7
    local.get 4
    i32.load offset=8
    local.set 490
    i32.const 16
    local.set 491
    local.get 490
    local.get 491
    i32.shr_u
    local.set 492
    i32.const 255
    local.set 493
    local.get 492
    local.get 493
    i32.and
    local.set 494
    local.get 4
    i32.load offset=52
    local.set 495
    local.get 495
    local.get 494
    i32.store8 offset=8
    local.get 4
    i32.load offset=8
    local.set 496
    i32.const 24
    local.set 497
    local.get 496
    local.get 497
    i32.shr_u
    local.set 498
    i32.const 255
    local.set 499
    local.get 498
    local.get 499
    i32.and
    local.set 500
    local.get 4
    i32.load offset=52
    local.set 501
    local.get 501
    local.get 500
    i32.store8 offset=9
    local.get 4
    i32.load offset=12
    local.set 502
    i32.const 255
    local.set 503
    local.get 502
    local.get 503
    i32.and
    local.set 504
    i32.const 255
    local.set 505
    local.get 504
    local.get 505
    i32.and
    local.set 506
    local.get 4
    i32.load offset=52
    local.set 507
    local.get 507
    i32.load8_u offset=9
    local.set 508
    i32.const 255
    local.set 509
    local.get 508
    local.get 509
    i32.and
    local.set 510
    local.get 510
    local.get 506
    i32.or
    local.set 511
    local.get 507
    local.get 511
    i32.store8 offset=9
    local.get 4
    i32.load offset=12
    local.set 512
    i32.const 8
    local.set 513
    local.get 512
    local.get 513
    i32.shr_u
    local.set 514
    i32.const 255
    local.set 515
    local.get 514
    local.get 515
    i32.and
    local.set 516
    local.get 4
    i32.load offset=52
    local.set 517
    local.get 517
    local.get 516
    i32.store8 offset=10
    local.get 4
    i32.load offset=12
    local.set 518
    i32.const 16
    local.set 519
    local.get 518
    local.get 519
    i32.shr_u
    local.set 520
    i32.const 255
    local.set 521
    local.get 520
    local.get 521
    i32.and
    local.set 522
    local.get 4
    i32.load offset=52
    local.set 523
    local.get 523
    local.get 522
    i32.store8 offset=11
    local.get 4
    i32.load offset=12
    local.set 524
    i32.const 24
    local.set 525
    local.get 524
    local.get 525
    i32.shr_u
    local.set 526
    i32.const 255
    local.set 527
    local.get 526
    local.get 527
    i32.and
    local.set 528
    local.get 4
    i32.load offset=52
    local.set 529
    local.get 529
    local.get 528
    i32.store8 offset=12
    local.get 4
    i32.load offset=16
    local.set 530
    i32.const 255
    local.set 531
    local.get 530
    local.get 531
    i32.and
    local.set 532
    i32.const 255
    local.set 533
    local.get 532
    local.get 533
    i32.and
    local.set 534
    local.get 4
    i32.load offset=52
    local.set 535
    local.get 535
    i32.load8_u offset=12
    local.set 536
    i32.const 255
    local.set 537
    local.get 536
    local.get 537
    i32.and
    local.set 538
    local.get 538
    local.get 534
    i32.or
    local.set 539
    local.get 535
    local.get 539
    i32.store8 offset=12
    local.get 4
    i32.load offset=16
    local.set 540
    i32.const 8
    local.set 541
    local.get 540
    local.get 541
    i32.shr_u
    local.set 542
    i32.const 255
    local.set 543
    local.get 542
    local.get 543
    i32.and
    local.set 544
    local.get 4
    i32.load offset=52
    local.set 545
    local.get 545
    local.get 544
    i32.store8 offset=13
    local.get 4
    i32.load offset=16
    local.set 546
    i32.const 16
    local.set 547
    local.get 546
    local.get 547
    i32.shr_u
    local.set 548
    i32.const 255
    local.set 549
    local.get 548
    local.get 549
    i32.and
    local.set 550
    local.get 4
    i32.load offset=52
    local.set 551
    local.get 551
    local.get 550
    i32.store8 offset=14
    local.get 4
    i32.load offset=16
    local.set 552
    i32.const 24
    local.set 553
    local.get 552
    local.get 553
    i32.shr_u
    local.set 554
    i32.const 255
    local.set 555
    local.get 554
    local.get 555
    i32.and
    local.set 556
    local.get 4
    i32.load offset=52
    local.set 557
    local.get 557
    local.get 556
    i32.store8 offset=15
    local.get 4
    i32.load offset=20
    local.set 558
    i32.const 255
    local.set 559
    local.get 558
    local.get 559
    i32.and
    local.set 560
    i32.const 255
    local.set 561
    local.get 560
    local.get 561
    i32.and
    local.set 562
    local.get 4
    i32.load offset=52
    local.set 563
    local.get 563
    i32.load8_u offset=16
    local.set 564
    i32.const 255
    local.set 565
    local.get 564
    local.get 565
    i32.and
    local.set 566
    local.get 566
    local.get 562
    i32.or
    local.set 567
    local.get 563
    local.get 567
    i32.store8 offset=16
    local.get 4
    i32.load offset=20
    local.set 568
    i32.const 8
    local.set 569
    local.get 568
    local.get 569
    i32.shr_u
    local.set 570
    i32.const 255
    local.set 571
    local.get 570
    local.get 571
    i32.and
    local.set 572
    local.get 4
    i32.load offset=52
    local.set 573
    local.get 573
    local.get 572
    i32.store8 offset=17
    local.get 4
    i32.load offset=20
    local.set 574
    i32.const 16
    local.set 575
    local.get 574
    local.get 575
    i32.shr_u
    local.set 576
    i32.const 255
    local.set 577
    local.get 576
    local.get 577
    i32.and
    local.set 578
    local.get 4
    i32.load offset=52
    local.set 579
    local.get 579
    local.get 578
    i32.store8 offset=18
    local.get 4
    i32.load offset=20
    local.set 580
    i32.const 24
    local.set 581
    local.get 580
    local.get 581
    i32.shr_u
    local.set 582
    i32.const 255
    local.set 583
    local.get 582
    local.get 583
    i32.and
    local.set 584
    local.get 4
    i32.load offset=52
    local.set 585
    local.get 585
    local.get 584
    i32.store8 offset=19
    local.get 4
    i32.load offset=24
    local.set 586
    i32.const 255
    local.set 587
    local.get 586
    local.get 587
    i32.and
    local.set 588
    i32.const 255
    local.set 589
    local.get 588
    local.get 589
    i32.and
    local.set 590
    local.get 4
    i32.load offset=52
    local.set 591
    local.get 591
    i32.load8_u offset=19
    local.set 592
    i32.const 255
    local.set 593
    local.get 592
    local.get 593
    i32.and
    local.set 594
    local.get 594
    local.get 590
    i32.or
    local.set 595
    local.get 591
    local.get 595
    i32.store8 offset=19
    local.get 4
    i32.load offset=24
    local.set 596
    i32.const 8
    local.set 597
    local.get 596
    local.get 597
    i32.shr_u
    local.set 598
    i32.const 255
    local.set 599
    local.get 598
    local.get 599
    i32.and
    local.set 600
    local.get 4
    i32.load offset=52
    local.set 601
    local.get 601
    local.get 600
    i32.store8 offset=20
    local.get 4
    i32.load offset=24
    local.set 602
    i32.const 16
    local.set 603
    local.get 602
    local.get 603
    i32.shr_u
    local.set 604
    i32.const 255
    local.set 605
    local.get 604
    local.get 605
    i32.and
    local.set 606
    local.get 4
    i32.load offset=52
    local.set 607
    local.get 607
    local.get 606
    i32.store8 offset=21
    local.get 4
    i32.load offset=24
    local.set 608
    i32.const 24
    local.set 609
    local.get 608
    local.get 609
    i32.shr_u
    local.set 610
    i32.const 255
    local.set 611
    local.get 610
    local.get 611
    i32.and
    local.set 612
    local.get 4
    i32.load offset=52
    local.set 613
    local.get 613
    local.get 612
    i32.store8 offset=22
    local.get 4
    i32.load offset=28
    local.set 614
    i32.const 255
    local.set 615
    local.get 614
    local.get 615
    i32.and
    local.set 616
    i32.const 255
    local.set 617
    local.get 616
    local.get 617
    i32.and
    local.set 618
    local.get 4
    i32.load offset=52
    local.set 619
    local.get 619
    i32.load8_u offset=22
    local.set 620
    i32.const 255
    local.set 621
    local.get 620
    local.get 621
    i32.and
    local.set 622
    local.get 622
    local.get 618
    i32.or
    local.set 623
    local.get 619
    local.get 623
    i32.store8 offset=22
    local.get 4
    i32.load offset=28
    local.set 624
    i32.const 8
    local.set 625
    local.get 624
    local.get 625
    i32.shr_u
    local.set 626
    i32.const 255
    local.set 627
    local.get 626
    local.get 627
    i32.and
    local.set 628
    local.get 4
    i32.load offset=52
    local.set 629
    local.get 629
    local.get 628
    i32.store8 offset=23
    local.get 4
    i32.load offset=28
    local.set 630
    i32.const 16
    local.set 631
    local.get 630
    local.get 631
    i32.shr_u
    local.set 632
    i32.const 255
    local.set 633
    local.get 632
    local.get 633
    i32.and
    local.set 634
    local.get 4
    i32.load offset=52
    local.set 635
    local.get 635
    local.get 634
    i32.store8 offset=24
    local.get 4
    i32.load offset=28
    local.set 636
    i32.const 24
    local.set 637
    local.get 636
    local.get 637
    i32.shr_u
    local.set 638
    i32.const 255
    local.set 639
    local.get 638
    local.get 639
    i32.and
    local.set 640
    local.get 4
    i32.load offset=52
    local.set 641
    local.get 641
    local.get 640
    i32.store8 offset=25
    local.get 4
    i32.load offset=32
    local.set 642
    i32.const 255
    local.set 643
    local.get 642
    local.get 643
    i32.and
    local.set 644
    i32.const 255
    local.set 645
    local.get 644
    local.get 645
    i32.and
    local.set 646
    local.get 4
    i32.load offset=52
    local.set 647
    local.get 647
    i32.load8_u offset=25
    local.set 648
    i32.const 255
    local.set 649
    local.get 648
    local.get 649
    i32.and
    local.set 650
    local.get 650
    local.get 646
    i32.or
    local.set 651
    local.get 647
    local.get 651
    i32.store8 offset=25
    local.get 4
    i32.load offset=32
    local.set 652
    i32.const 8
    local.set 653
    local.get 652
    local.get 653
    i32.shr_u
    local.set 654
    i32.const 255
    local.set 655
    local.get 654
    local.get 655
    i32.and
    local.set 656
    local.get 4
    i32.load offset=52
    local.set 657
    local.get 657
    local.get 656
    i32.store8 offset=26
    local.get 4
    i32.load offset=32
    local.set 658
    i32.const 16
    local.set 659
    local.get 658
    local.get 659
    i32.shr_u
    local.set 660
    i32.const 255
    local.set 661
    local.get 660
    local.get 661
    i32.and
    local.set 662
    local.get 4
    i32.load offset=52
    local.set 663
    local.get 663
    local.get 662
    i32.store8 offset=27
    local.get 4
    i32.load offset=32
    local.set 664
    i32.const 24
    local.set 665
    local.get 664
    local.get 665
    i32.shr_u
    local.set 666
    i32.const 255
    local.set 667
    local.get 666
    local.get 667
    i32.and
    local.set 668
    local.get 4
    i32.load offset=52
    local.set 669
    local.get 669
    local.get 668
    i32.store8 offset=28
    local.get 4
    i32.load offset=36
    local.set 670
    i32.const 255
    local.set 671
    local.get 670
    local.get 671
    i32.and
    local.set 672
    i32.const 255
    local.set 673
    local.get 672
    local.get 673
    i32.and
    local.set 674
    local.get 4
    i32.load offset=52
    local.set 675
    local.get 675
    i32.load8_u offset=28
    local.set 676
    i32.const 255
    local.set 677
    local.get 676
    local.get 677
    i32.and
    local.set 678
    local.get 678
    local.get 674
    i32.or
    local.set 679
    local.get 675
    local.get 679
    i32.store8 offset=28
    local.get 4
    i32.load offset=36
    local.set 680
    i32.const 8
    local.set 681
    local.get 680
    local.get 681
    i32.shr_u
    local.set 682
    i32.const 255
    local.set 683
    local.get 682
    local.get 683
    i32.and
    local.set 684
    local.get 4
    i32.load offset=52
    local.set 685
    local.get 685
    local.get 684
    i32.store8 offset=29
    local.get 4
    i32.load offset=36
    local.set 686
    i32.const 16
    local.set 687
    local.get 686
    local.get 687
    i32.shr_u
    local.set 688
    i32.const 255
    local.set 689
    local.get 688
    local.get 689
    i32.and
    local.set 690
    local.get 4
    i32.load offset=52
    local.set 691
    local.get 691
    local.get 690
    i32.store8 offset=30
    local.get 4
    i32.load offset=36
    local.set 692
    i32.const 24
    local.set 693
    local.get 692
    local.get 693
    i32.shr_u
    local.set 694
    i32.const 255
    local.set 695
    local.get 694
    local.get 695
    i32.and
    local.set 696
    local.get 4
    i32.load offset=52
    local.set 697
    local.get 697
    local.get 696
    i32.store8 offset=31
    return)
  (func $ed25519_hash_init (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    i32.const 0
    local.set 4
    i64.const 0
    local.set 16
    i64.const 6620516959819538809
    local.set 17
    i64.const 2270897969802886507
    local.set 18
    i64.const -7276294671716946913
    local.set 19
    i64.const 5840696475078001361
    local.set 20
    i64.const -6534734903238641935
    local.set 21
    i64.const 4354685564936845355
    local.set 22
    i64.const -4942790177534073029
    local.set 23
    i64.const 7640891576956012808
    local.set 24
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 5
    local.get 5
    local.get 24
    i64.store
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 6
    local.get 23
    i64.store offset=8
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 7
    local.get 22
    i64.store offset=16
    local.get 3
    i32.load offset=12
    local.set 8
    local.get 8
    local.get 21
    i64.store offset=24
    local.get 3
    i32.load offset=12
    local.set 9
    local.get 9
    local.get 20
    i64.store offset=32
    local.get 3
    i32.load offset=12
    local.set 10
    local.get 10
    local.get 19
    i64.store offset=40
    local.get 3
    i32.load offset=12
    local.set 11
    local.get 11
    local.get 18
    i64.store offset=48
    local.get 3
    i32.load offset=12
    local.set 12
    local.get 12
    local.get 17
    i64.store offset=56
    local.get 3
    i32.load offset=12
    local.set 13
    local.get 13
    local.get 16
    i64.store offset=64
    local.get 3
    i32.load offset=12
    local.set 14
    local.get 14
    local.get 16
    i64.store offset=72
    local.get 3
    i32.load offset=12
    local.set 15
    local.get 15
    local.get 4
    i32.store offset=80
    return)
  (func $ed25519_hash_update (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=28
    local.get 5
    local.get 1
    i32.store offset=24
    local.get 5
    local.get 2
    i32.store offset=20
    local.get 5
    i32.load offset=28
    local.set 6
    local.get 6
    i32.load offset=80
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        i32.const 128
        local.set 8
        local.get 5
        i32.load offset=28
        local.set 9
        local.get 9
        i32.load offset=80
        local.set 10
        local.get 8
        local.get 10
        i32.sub
        local.set 11
        local.get 5
        local.get 11
        i32.store offset=12
        local.get 5
        i32.load offset=12
        local.set 12
        local.get 5
        i32.load offset=20
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.set 15
        local.get 14
        local.get 15
        i32.lt_u
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        block  ;; label = @3
          block  ;; label = @4
            local.get 18
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.load offset=12
            local.set 19
            local.get 19
            local.set 20
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=20
          local.set 21
          local.get 21
          local.set 20
        end
        local.get 20
        local.set 22
        i32.const 128
        local.set 23
        local.get 5
        local.get 22
        i32.store offset=12
        local.get 5
        i32.load offset=28
        local.set 24
        i32.const 84
        local.set 25
        local.get 24
        local.get 25
        i32.add
        local.set 26
        local.get 5
        i32.load offset=28
        local.set 27
        local.get 27
        i32.load offset=80
        local.set 28
        local.get 26
        local.get 28
        i32.add
        local.set 29
        local.get 5
        i32.load offset=24
        local.set 30
        local.get 5
        i32.load offset=12
        local.set 31
        local.get 29
        local.get 30
        local.get 31
        call $memcpy
        drop
        local.get 5
        i32.load offset=12
        local.set 32
        local.get 5
        i32.load offset=28
        local.set 33
        local.get 33
        i32.load offset=80
        local.set 34
        local.get 34
        local.get 32
        i32.add
        local.set 35
        local.get 33
        local.get 35
        i32.store offset=80
        local.get 5
        i32.load offset=28
        local.set 36
        local.get 36
        i32.load offset=80
        local.set 37
        local.get 37
        local.set 38
        local.get 23
        local.set 39
        local.get 38
        local.get 39
        i32.lt_u
        local.set 40
        i32.const 1
        local.set 41
        local.get 40
        local.get 41
        i32.and
        local.set 42
        block  ;; label = @3
          local.get 42
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        i32.const 1
        local.set 43
        local.get 5
        i32.load offset=12
        local.set 44
        local.get 5
        i32.load offset=24
        local.set 45
        local.get 45
        local.get 44
        i32.add
        local.set 46
        local.get 5
        local.get 46
        i32.store offset=24
        local.get 5
        i32.load offset=12
        local.set 47
        local.get 5
        i32.load offset=20
        local.set 48
        local.get 48
        local.get 47
        i32.sub
        local.set 49
        local.get 5
        local.get 49
        i32.store offset=20
        local.get 5
        i32.load offset=28
        local.set 50
        local.get 5
        i32.load offset=28
        local.set 51
        i32.const 84
        local.set 52
        local.get 51
        local.get 52
        i32.add
        local.set 53
        local.get 50
        local.get 53
        local.get 43
        call $sha512_blocks
      end
      local.get 5
      i32.load offset=20
      local.set 54
      i32.const -128
      local.set 55
      local.get 54
      local.get 55
      i32.and
      local.set 56
      local.get 5
      local.get 56
      i32.store offset=16
      local.get 5
      i32.load offset=20
      local.set 57
      local.get 5
      i32.load offset=16
      local.set 58
      local.get 57
      local.get 58
      i32.sub
      local.set 59
      local.get 5
      i32.load offset=28
      local.set 60
      local.get 60
      local.get 59
      i32.store offset=80
      local.get 5
      i32.load offset=16
      local.set 61
      block  ;; label = @2
        local.get 61
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=28
        local.set 62
        local.get 5
        i32.load offset=24
        local.set 63
        local.get 5
        i32.load offset=16
        local.set 64
        i32.const 7
        local.set 65
        local.get 64
        local.get 65
        i32.shr_u
        local.set 66
        local.get 62
        local.get 63
        local.get 66
        call $sha512_blocks
        local.get 5
        i32.load offset=16
        local.set 67
        local.get 5
        i32.load offset=24
        local.set 68
        local.get 68
        local.get 67
        i32.add
        local.set 69
        local.get 5
        local.get 69
        i32.store offset=24
      end
      local.get 5
      i32.load offset=28
      local.set 70
      local.get 70
      i32.load offset=80
      local.set 71
      local.get 71
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=28
      local.set 72
      i32.const 84
      local.set 73
      local.get 72
      local.get 73
      i32.add
      local.set 74
      local.get 5
      i32.load offset=24
      local.set 75
      local.get 5
      i32.load offset=28
      local.set 76
      local.get 76
      i32.load offset=80
      local.set 77
      local.get 74
      local.get 75
      local.get 77
      call $memcpy
      drop
    end
    i32.const 32
    local.set 78
    local.get 5
    local.get 78
    i32.add
    local.set 79
    local.get 79
    global.set 0
    return)
  (func $ed25519_hash_final (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 111
    local.set 5
    i32.const 128
    local.set 6
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    i32.load offset=28
    local.set 7
    local.get 7
    i64.load offset=64
    local.set 110
    local.get 4
    i32.load offset=28
    local.set 8
    local.get 8
    i32.load offset=80
    local.set 9
    i32.const 3
    local.set 10
    local.get 9
    local.get 10
    i32.shl
    local.set 11
    local.get 11
    local.set 12
    local.get 12
    i64.extend_i32_u
    local.set 111
    local.get 110
    local.get 111
    i64.add
    local.set 112
    local.get 4
    local.get 112
    i64.store offset=16
    local.get 4
    i32.load offset=28
    local.set 13
    local.get 13
    i64.load offset=72
    local.set 113
    local.get 4
    local.get 113
    i64.store offset=8
    local.get 4
    i32.load offset=28
    local.set 14
    i32.const 84
    local.set 15
    local.get 14
    local.get 15
    i32.add
    local.set 16
    local.get 4
    i32.load offset=28
    local.set 17
    local.get 17
    i32.load offset=80
    local.set 18
    local.get 16
    local.get 18
    i32.add
    local.set 19
    local.get 19
    local.get 6
    i32.store8
    local.get 4
    i32.load offset=28
    local.set 20
    local.get 20
    i32.load offset=80
    local.set 21
    local.get 21
    local.set 22
    local.get 5
    local.set 23
    local.get 22
    local.get 23
    i32.le_u
    local.set 24
    i32.const 1
    local.set 25
    local.get 24
    local.get 25
    i32.and
    local.set 26
    block  ;; label = @1
      block  ;; label = @2
        local.get 26
        i32.eqz
        br_if 0 (;@2;)
        i32.const 111
        local.set 27
        local.get 4
        i32.load offset=28
        local.set 28
        i32.const 84
        local.set 29
        local.get 28
        local.get 29
        i32.add
        local.set 30
        local.get 4
        i32.load offset=28
        local.set 31
        local.get 31
        i32.load offset=80
        local.set 32
        local.get 30
        local.get 32
        i32.add
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.add
        local.set 35
        local.get 4
        i32.load offset=28
        local.set 36
        local.get 36
        i32.load offset=80
        local.set 37
        local.get 27
        local.get 37
        i32.sub
        local.set 38
        i32.const 0
        local.set 39
        local.get 35
        local.get 39
        local.get 38
        call $memset
        drop
        br 1 (;@1;)
      end
      i32.const 1
      local.set 40
      i32.const 127
      local.set 41
      local.get 4
      i32.load offset=28
      local.set 42
      i32.const 84
      local.set 43
      local.get 42
      local.get 43
      i32.add
      local.set 44
      local.get 4
      i32.load offset=28
      local.set 45
      local.get 45
      i32.load offset=80
      local.set 46
      local.get 44
      local.get 46
      i32.add
      local.set 47
      i32.const 1
      local.set 48
      local.get 47
      local.get 48
      i32.add
      local.set 49
      local.get 4
      i32.load offset=28
      local.set 50
      local.get 50
      i32.load offset=80
      local.set 51
      local.get 41
      local.get 51
      i32.sub
      local.set 52
      i32.const 0
      local.set 53
      local.get 49
      local.get 53
      local.get 52
      call $memset
      drop
      local.get 4
      i32.load offset=28
      local.set 54
      local.get 4
      i32.load offset=28
      local.set 55
      i32.const 84
      local.set 56
      local.get 55
      local.get 56
      i32.add
      local.set 57
      local.get 54
      local.get 57
      local.get 40
      call $sha512_blocks
      local.get 4
      i32.load offset=28
      local.set 58
      i32.const 84
      local.set 59
      local.get 58
      local.get 59
      i32.add
      local.set 60
      i32.const 112
      local.set 61
      i32.const 0
      local.set 62
      local.get 60
      local.get 62
      local.get 61
      call $memset
      drop
    end
    i32.const 1
    local.set 63
    local.get 4
    i32.load offset=28
    local.set 64
    i32.const 84
    local.set 65
    local.get 64
    local.get 65
    i32.add
    local.set 66
    i32.const 112
    local.set 67
    local.get 66
    local.get 67
    i32.add
    local.set 68
    local.get 4
    i64.load offset=8
    local.set 114
    local.get 68
    local.get 114
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=28
    local.set 69
    i32.const 84
    local.set 70
    local.get 69
    local.get 70
    i32.add
    local.set 71
    i32.const 120
    local.set 72
    local.get 71
    local.get 72
    i32.add
    local.set 73
    local.get 4
    i64.load offset=16
    local.set 115
    local.get 73
    local.get 115
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=28
    local.set 74
    local.get 4
    i32.load offset=28
    local.set 75
    i32.const 84
    local.set 76
    local.get 75
    local.get 76
    i32.add
    local.set 77
    local.get 74
    local.get 77
    local.get 63
    call $sha512_blocks
    local.get 4
    i32.load offset=24
    local.set 78
    local.get 4
    i32.load offset=28
    local.set 79
    local.get 79
    i64.load
    local.set 116
    local.get 78
    local.get 116
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 80
    i32.const 8
    local.set 81
    local.get 80
    local.get 81
    i32.add
    local.set 82
    local.get 4
    i32.load offset=28
    local.set 83
    local.get 83
    i64.load offset=8
    local.set 117
    local.get 82
    local.get 117
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 84
    i32.const 16
    local.set 85
    local.get 84
    local.get 85
    i32.add
    local.set 86
    local.get 4
    i32.load offset=28
    local.set 87
    local.get 87
    i64.load offset=16
    local.set 118
    local.get 86
    local.get 118
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 88
    i32.const 24
    local.set 89
    local.get 88
    local.get 89
    i32.add
    local.set 90
    local.get 4
    i32.load offset=28
    local.set 91
    local.get 91
    i64.load offset=24
    local.set 119
    local.get 90
    local.get 119
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 92
    i32.const 32
    local.set 93
    local.get 92
    local.get 93
    i32.add
    local.set 94
    local.get 4
    i32.load offset=28
    local.set 95
    local.get 95
    i64.load offset=32
    local.set 120
    local.get 94
    local.get 120
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 96
    i32.const 40
    local.set 97
    local.get 96
    local.get 97
    i32.add
    local.set 98
    local.get 4
    i32.load offset=28
    local.set 99
    local.get 99
    i64.load offset=40
    local.set 121
    local.get 98
    local.get 121
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 100
    i32.const 48
    local.set 101
    local.get 100
    local.get 101
    i32.add
    local.set 102
    local.get 4
    i32.load offset=28
    local.set 103
    local.get 103
    i64.load offset=48
    local.set 122
    local.get 102
    local.get 122
    call $sha512_STORE64_BE
    local.get 4
    i32.load offset=24
    local.set 104
    i32.const 56
    local.set 105
    local.get 104
    local.get 105
    i32.add
    local.set 106
    local.get 4
    i32.load offset=28
    local.set 107
    local.get 107
    i64.load offset=56
    local.set 123
    local.get 106
    local.get 123
    call $sha512_STORE64_BE
    i32.const 32
    local.set 108
    local.get 4
    local.get 108
    i32.add
    local.set 109
    local.get 109
    global.set 0
    return)
  (func $U8TO32_LE (type 4) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load8_u
    local.set 5
    i32.const 255
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    local.get 3
    i32.load offset=12
    local.set 8
    local.get 8
    i32.load8_u offset=1
    local.set 9
    i32.const 255
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    i32.const 8
    local.set 12
    local.get 11
    local.get 12
    i32.shl
    local.set 13
    local.get 7
    local.get 13
    i32.or
    local.set 14
    local.get 3
    i32.load offset=12
    local.set 15
    local.get 15
    i32.load8_u offset=2
    local.set 16
    i32.const 255
    local.set 17
    local.get 16
    local.get 17
    i32.and
    local.set 18
    i32.const 16
    local.set 19
    local.get 18
    local.get 19
    i32.shl
    local.set 20
    local.get 14
    local.get 20
    i32.or
    local.set 21
    local.get 3
    i32.load offset=12
    local.set 22
    local.get 22
    i32.load8_u offset=3
    local.set 23
    i32.const 255
    local.set 24
    local.get 23
    local.get 24
    i32.and
    local.set 25
    i32.const 24
    local.set 26
    local.get 25
    local.get 26
    i32.shl
    local.set 27
    local.get 21
    local.get 27
    i32.or
    local.set 28
    local.get 28
    return)
  (func $barrett_reduce256_modm (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 128
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    i32.const 0
    local.set 6
    local.get 5
    local.get 0
    i32.store offset=124
    local.get 5
    local.get 1
    i32.store offset=120
    local.get 5
    local.get 2
    i32.store offset=116
    i32.const 0
    local.set 7
    local.get 7
    i32.load offset=1840
    local.set 8
    local.get 8
    local.set 9
    local.get 9
    i64.extend_i32_u
    local.set 821
    local.get 5
    i32.load offset=120
    local.set 10
    local.get 10
    i32.load offset=28
    local.set 11
    local.get 11
    local.set 12
    local.get 12
    i64.extend_i32_u
    local.set 822
    local.get 821
    local.get 822
    i64.mul
    local.set 823
    i32.const 0
    local.set 13
    local.get 13
    i32.load offset=1844
    local.set 14
    local.get 14
    local.set 15
    local.get 15
    i64.extend_i32_u
    local.set 824
    local.get 5
    i32.load offset=120
    local.set 16
    local.get 16
    i32.load offset=24
    local.set 17
    local.get 17
    local.set 18
    local.get 18
    i64.extend_i32_u
    local.set 825
    local.get 824
    local.get 825
    i64.mul
    local.set 826
    local.get 823
    local.get 826
    i64.add
    local.set 827
    i32.const 0
    local.set 19
    local.get 19
    i32.load offset=1848
    local.set 20
    local.get 20
    local.set 21
    local.get 21
    i64.extend_i32_u
    local.set 828
    local.get 5
    i32.load offset=120
    local.set 22
    local.get 22
    i32.load offset=20
    local.set 23
    local.get 23
    local.set 24
    local.get 24
    i64.extend_i32_u
    local.set 829
    local.get 828
    local.get 829
    i64.mul
    local.set 830
    local.get 827
    local.get 830
    i64.add
    local.set 831
    i32.const 0
    local.set 25
    local.get 25
    i32.load offset=1852
    local.set 26
    local.get 26
    local.set 27
    local.get 27
    i64.extend_i32_u
    local.set 832
    local.get 5
    i32.load offset=120
    local.set 28
    local.get 28
    i32.load offset=16
    local.set 29
    local.get 29
    local.set 30
    local.get 30
    i64.extend_i32_u
    local.set 833
    local.get 832
    local.get 833
    i64.mul
    local.set 834
    local.get 831
    local.get 834
    i64.add
    local.set 835
    i32.const 0
    local.set 31
    local.get 31
    i32.load offset=1856
    local.set 32
    local.get 32
    local.set 33
    local.get 33
    i64.extend_i32_u
    local.set 836
    local.get 5
    i32.load offset=120
    local.set 34
    local.get 34
    i32.load offset=12
    local.set 35
    local.get 35
    local.set 36
    local.get 36
    i64.extend_i32_u
    local.set 837
    local.get 836
    local.get 837
    i64.mul
    local.set 838
    local.get 835
    local.get 838
    i64.add
    local.set 839
    i32.const 0
    local.set 37
    local.get 37
    i32.load offset=1860
    local.set 38
    local.get 38
    local.set 39
    local.get 39
    i64.extend_i32_u
    local.set 840
    local.get 5
    i32.load offset=120
    local.set 40
    local.get 40
    i32.load offset=8
    local.set 41
    local.get 41
    local.set 42
    local.get 42
    i64.extend_i32_u
    local.set 841
    local.get 840
    local.get 841
    i64.mul
    local.set 842
    local.get 839
    local.get 842
    i64.add
    local.set 843
    i32.const 0
    local.set 43
    local.get 43
    i32.load offset=1864
    local.set 44
    local.get 44
    local.set 45
    local.get 45
    i64.extend_i32_u
    local.set 844
    local.get 5
    i32.load offset=120
    local.set 46
    local.get 46
    i32.load offset=4
    local.set 47
    local.get 47
    local.set 48
    local.get 48
    i64.extend_i32_u
    local.set 845
    local.get 844
    local.get 845
    i64.mul
    local.set 846
    local.get 843
    local.get 846
    i64.add
    local.set 847
    i32.const 0
    local.set 49
    local.get 49
    i32.load offset=1868
    local.set 50
    local.get 50
    local.set 51
    local.get 51
    i64.extend_i32_u
    local.set 848
    local.get 5
    i32.load offset=120
    local.set 52
    local.get 52
    i32.load
    local.set 53
    local.get 53
    local.set 54
    local.get 54
    i64.extend_i32_u
    local.set 849
    local.get 848
    local.get 849
    i64.mul
    local.set 850
    local.get 847
    local.get 850
    i64.add
    local.set 851
    local.get 5
    local.get 851
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 852
    i64.const 30
    local.set 853
    local.get 852
    local.get 853
    i64.shr_u
    local.set 854
    local.get 5
    local.get 854
    i64.store offset=24
    i32.const 0
    local.set 55
    local.get 55
    i32.load offset=1840
    local.set 56
    local.get 56
    local.set 57
    local.get 57
    i64.extend_i32_u
    local.set 855
    local.get 5
    i32.load offset=120
    local.set 58
    local.get 58
    i32.load offset=32
    local.set 59
    local.get 59
    local.set 60
    local.get 60
    i64.extend_i32_u
    local.set 856
    local.get 855
    local.get 856
    i64.mul
    local.set 857
    i32.const 0
    local.set 61
    local.get 61
    i32.load offset=1844
    local.set 62
    local.get 62
    local.set 63
    local.get 63
    i64.extend_i32_u
    local.set 858
    local.get 5
    i32.load offset=120
    local.set 64
    local.get 64
    i32.load offset=28
    local.set 65
    local.get 65
    local.set 66
    local.get 66
    i64.extend_i32_u
    local.set 859
    local.get 858
    local.get 859
    i64.mul
    local.set 860
    local.get 857
    local.get 860
    i64.add
    local.set 861
    i32.const 0
    local.set 67
    local.get 67
    i32.load offset=1848
    local.set 68
    local.get 68
    local.set 69
    local.get 69
    i64.extend_i32_u
    local.set 862
    local.get 5
    i32.load offset=120
    local.set 70
    local.get 70
    i32.load offset=24
    local.set 71
    local.get 71
    local.set 72
    local.get 72
    i64.extend_i32_u
    local.set 863
    local.get 862
    local.get 863
    i64.mul
    local.set 864
    local.get 861
    local.get 864
    i64.add
    local.set 865
    i32.const 0
    local.set 73
    local.get 73
    i32.load offset=1852
    local.set 74
    local.get 74
    local.set 75
    local.get 75
    i64.extend_i32_u
    local.set 866
    local.get 5
    i32.load offset=120
    local.set 76
    local.get 76
    i32.load offset=20
    local.set 77
    local.get 77
    local.set 78
    local.get 78
    i64.extend_i32_u
    local.set 867
    local.get 866
    local.get 867
    i64.mul
    local.set 868
    local.get 865
    local.get 868
    i64.add
    local.set 869
    i32.const 0
    local.set 79
    local.get 79
    i32.load offset=1856
    local.set 80
    local.get 80
    local.set 81
    local.get 81
    i64.extend_i32_u
    local.set 870
    local.get 5
    i32.load offset=120
    local.set 82
    local.get 82
    i32.load offset=16
    local.set 83
    local.get 83
    local.set 84
    local.get 84
    i64.extend_i32_u
    local.set 871
    local.get 870
    local.get 871
    i64.mul
    local.set 872
    local.get 869
    local.get 872
    i64.add
    local.set 873
    i32.const 0
    local.set 85
    local.get 85
    i32.load offset=1860
    local.set 86
    local.get 86
    local.set 87
    local.get 87
    i64.extend_i32_u
    local.set 874
    local.get 5
    i32.load offset=120
    local.set 88
    local.get 88
    i32.load offset=12
    local.set 89
    local.get 89
    local.set 90
    local.get 90
    i64.extend_i32_u
    local.set 875
    local.get 874
    local.get 875
    i64.mul
    local.set 876
    local.get 873
    local.get 876
    i64.add
    local.set 877
    i32.const 0
    local.set 91
    local.get 91
    i32.load offset=1864
    local.set 92
    local.get 92
    local.set 93
    local.get 93
    i64.extend_i32_u
    local.set 878
    local.get 5
    i32.load offset=120
    local.set 94
    local.get 94
    i32.load offset=8
    local.set 95
    local.get 95
    local.set 96
    local.get 96
    i64.extend_i32_u
    local.set 879
    local.get 878
    local.get 879
    i64.mul
    local.set 880
    local.get 877
    local.get 880
    i64.add
    local.set 881
    i32.const 0
    local.set 97
    local.get 97
    i32.load offset=1868
    local.set 98
    local.get 98
    local.set 99
    local.get 99
    i64.extend_i32_u
    local.set 882
    local.get 5
    i32.load offset=120
    local.set 100
    local.get 100
    i32.load offset=4
    local.set 101
    local.get 101
    local.set 102
    local.get 102
    i64.extend_i32_u
    local.set 883
    local.get 882
    local.get 883
    i64.mul
    local.set 884
    local.get 881
    local.get 884
    i64.add
    local.set 885
    i32.const 0
    local.set 103
    local.get 103
    i32.load offset=1872
    local.set 104
    local.get 104
    local.set 105
    local.get 105
    i64.extend_i32_u
    local.set 886
    local.get 5
    i32.load offset=120
    local.set 106
    local.get 106
    i32.load
    local.set 107
    local.get 107
    local.set 108
    local.get 108
    i64.extend_i32_u
    local.set 887
    local.get 886
    local.get 887
    i64.mul
    local.set 888
    local.get 885
    local.get 888
    i64.add
    local.set 889
    local.get 5
    i64.load offset=24
    local.set 890
    local.get 890
    local.get 889
    i64.add
    local.set 891
    local.get 5
    local.get 891
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 892
    local.get 892
    i32.wrap_i64
    local.set 109
    local.get 5
    local.get 109
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 110
    i32.const 24
    local.set 111
    local.get 110
    local.get 111
    i32.shr_u
    local.set 112
    i32.const 63
    local.set 113
    local.get 112
    local.get 113
    i32.and
    local.set 114
    local.get 5
    local.get 114
    i32.store offset=80
    local.get 5
    i64.load offset=24
    local.set 893
    i64.const 30
    local.set 894
    local.get 893
    local.get 894
    i64.shr_u
    local.set 895
    local.get 5
    local.get 895
    i64.store offset=24
    i32.const 0
    local.set 115
    local.get 115
    i32.load offset=1844
    local.set 116
    local.get 116
    local.set 117
    local.get 117
    i64.extend_i32_u
    local.set 896
    local.get 5
    i32.load offset=120
    local.set 118
    local.get 118
    i32.load offset=32
    local.set 119
    local.get 119
    local.set 120
    local.get 120
    i64.extend_i32_u
    local.set 897
    local.get 896
    local.get 897
    i64.mul
    local.set 898
    i32.const 0
    local.set 121
    local.get 121
    i32.load offset=1848
    local.set 122
    local.get 122
    local.set 123
    local.get 123
    i64.extend_i32_u
    local.set 899
    local.get 5
    i32.load offset=120
    local.set 124
    local.get 124
    i32.load offset=28
    local.set 125
    local.get 125
    local.set 126
    local.get 126
    i64.extend_i32_u
    local.set 900
    local.get 899
    local.get 900
    i64.mul
    local.set 901
    local.get 898
    local.get 901
    i64.add
    local.set 902
    i32.const 0
    local.set 127
    local.get 127
    i32.load offset=1852
    local.set 128
    local.get 128
    local.set 129
    local.get 129
    i64.extend_i32_u
    local.set 903
    local.get 5
    i32.load offset=120
    local.set 130
    local.get 130
    i32.load offset=24
    local.set 131
    local.get 131
    local.set 132
    local.get 132
    i64.extend_i32_u
    local.set 904
    local.get 903
    local.get 904
    i64.mul
    local.set 905
    local.get 902
    local.get 905
    i64.add
    local.set 906
    i32.const 0
    local.set 133
    local.get 133
    i32.load offset=1856
    local.set 134
    local.get 134
    local.set 135
    local.get 135
    i64.extend_i32_u
    local.set 907
    local.get 5
    i32.load offset=120
    local.set 136
    local.get 136
    i32.load offset=20
    local.set 137
    local.get 137
    local.set 138
    local.get 138
    i64.extend_i32_u
    local.set 908
    local.get 907
    local.get 908
    i64.mul
    local.set 909
    local.get 906
    local.get 909
    i64.add
    local.set 910
    i32.const 0
    local.set 139
    local.get 139
    i32.load offset=1860
    local.set 140
    local.get 140
    local.set 141
    local.get 141
    i64.extend_i32_u
    local.set 911
    local.get 5
    i32.load offset=120
    local.set 142
    local.get 142
    i32.load offset=16
    local.set 143
    local.get 143
    local.set 144
    local.get 144
    i64.extend_i32_u
    local.set 912
    local.get 911
    local.get 912
    i64.mul
    local.set 913
    local.get 910
    local.get 913
    i64.add
    local.set 914
    i32.const 0
    local.set 145
    local.get 145
    i32.load offset=1864
    local.set 146
    local.get 146
    local.set 147
    local.get 147
    i64.extend_i32_u
    local.set 915
    local.get 5
    i32.load offset=120
    local.set 148
    local.get 148
    i32.load offset=12
    local.set 149
    local.get 149
    local.set 150
    local.get 150
    i64.extend_i32_u
    local.set 916
    local.get 915
    local.get 916
    i64.mul
    local.set 917
    local.get 914
    local.get 917
    i64.add
    local.set 918
    i32.const 0
    local.set 151
    local.get 151
    i32.load offset=1868
    local.set 152
    local.get 152
    local.set 153
    local.get 153
    i64.extend_i32_u
    local.set 919
    local.get 5
    i32.load offset=120
    local.set 154
    local.get 154
    i32.load offset=8
    local.set 155
    local.get 155
    local.set 156
    local.get 156
    i64.extend_i32_u
    local.set 920
    local.get 919
    local.get 920
    i64.mul
    local.set 921
    local.get 918
    local.get 921
    i64.add
    local.set 922
    i32.const 0
    local.set 157
    local.get 157
    i32.load offset=1872
    local.set 158
    local.get 158
    local.set 159
    local.get 159
    i64.extend_i32_u
    local.set 923
    local.get 5
    i32.load offset=120
    local.set 160
    local.get 160
    i32.load offset=4
    local.set 161
    local.get 161
    local.set 162
    local.get 162
    i64.extend_i32_u
    local.set 924
    local.get 923
    local.get 924
    i64.mul
    local.set 925
    local.get 922
    local.get 925
    i64.add
    local.set 926
    local.get 5
    i64.load offset=24
    local.set 927
    local.get 927
    local.get 926
    i64.add
    local.set 928
    local.get 5
    local.get 928
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 929
    local.get 929
    i32.wrap_i64
    local.set 163
    local.get 5
    local.get 163
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 164
    i32.const 6
    local.set 165
    local.get 164
    local.get 165
    i32.shl
    local.set 166
    i32.const 1073741823
    local.set 167
    local.get 166
    local.get 167
    i32.and
    local.set 168
    local.get 5
    i32.load offset=80
    local.set 169
    local.get 169
    local.get 168
    i32.or
    local.set 170
    local.get 5
    local.get 170
    i32.store offset=80
    local.get 5
    i32.load offset=20
    local.set 171
    i32.const 24
    local.set 172
    local.get 171
    local.get 172
    i32.shr_u
    local.set 173
    i32.const 63
    local.set 174
    local.get 173
    local.get 174
    i32.and
    local.set 175
    local.get 5
    local.get 175
    i32.store offset=84
    local.get 5
    i64.load offset=24
    local.set 930
    i64.const 30
    local.set 931
    local.get 930
    local.get 931
    i64.shr_u
    local.set 932
    local.get 5
    local.get 932
    i64.store offset=24
    i32.const 0
    local.set 176
    local.get 176
    i32.load offset=1848
    local.set 177
    local.get 177
    local.set 178
    local.get 178
    i64.extend_i32_u
    local.set 933
    local.get 5
    i32.load offset=120
    local.set 179
    local.get 179
    i32.load offset=32
    local.set 180
    local.get 180
    local.set 181
    local.get 181
    i64.extend_i32_u
    local.set 934
    local.get 933
    local.get 934
    i64.mul
    local.set 935
    i32.const 0
    local.set 182
    local.get 182
    i32.load offset=1852
    local.set 183
    local.get 183
    local.set 184
    local.get 184
    i64.extend_i32_u
    local.set 936
    local.get 5
    i32.load offset=120
    local.set 185
    local.get 185
    i32.load offset=28
    local.set 186
    local.get 186
    local.set 187
    local.get 187
    i64.extend_i32_u
    local.set 937
    local.get 936
    local.get 937
    i64.mul
    local.set 938
    local.get 935
    local.get 938
    i64.add
    local.set 939
    i32.const 0
    local.set 188
    local.get 188
    i32.load offset=1856
    local.set 189
    local.get 189
    local.set 190
    local.get 190
    i64.extend_i32_u
    local.set 940
    local.get 5
    i32.load offset=120
    local.set 191
    local.get 191
    i32.load offset=24
    local.set 192
    local.get 192
    local.set 193
    local.get 193
    i64.extend_i32_u
    local.set 941
    local.get 940
    local.get 941
    i64.mul
    local.set 942
    local.get 939
    local.get 942
    i64.add
    local.set 943
    i32.const 0
    local.set 194
    local.get 194
    i32.load offset=1860
    local.set 195
    local.get 195
    local.set 196
    local.get 196
    i64.extend_i32_u
    local.set 944
    local.get 5
    i32.load offset=120
    local.set 197
    local.get 197
    i32.load offset=20
    local.set 198
    local.get 198
    local.set 199
    local.get 199
    i64.extend_i32_u
    local.set 945
    local.get 944
    local.get 945
    i64.mul
    local.set 946
    local.get 943
    local.get 946
    i64.add
    local.set 947
    i32.const 0
    local.set 200
    local.get 200
    i32.load offset=1864
    local.set 201
    local.get 201
    local.set 202
    local.get 202
    i64.extend_i32_u
    local.set 948
    local.get 5
    i32.load offset=120
    local.set 203
    local.get 203
    i32.load offset=16
    local.set 204
    local.get 204
    local.set 205
    local.get 205
    i64.extend_i32_u
    local.set 949
    local.get 948
    local.get 949
    i64.mul
    local.set 950
    local.get 947
    local.get 950
    i64.add
    local.set 951
    i32.const 0
    local.set 206
    local.get 206
    i32.load offset=1868
    local.set 207
    local.get 207
    local.set 208
    local.get 208
    i64.extend_i32_u
    local.set 952
    local.get 5
    i32.load offset=120
    local.set 209
    local.get 209
    i32.load offset=12
    local.set 210
    local.get 210
    local.set 211
    local.get 211
    i64.extend_i32_u
    local.set 953
    local.get 952
    local.get 953
    i64.mul
    local.set 954
    local.get 951
    local.get 954
    i64.add
    local.set 955
    i32.const 0
    local.set 212
    local.get 212
    i32.load offset=1872
    local.set 213
    local.get 213
    local.set 214
    local.get 214
    i64.extend_i32_u
    local.set 956
    local.get 5
    i32.load offset=120
    local.set 215
    local.get 215
    i32.load offset=8
    local.set 216
    local.get 216
    local.set 217
    local.get 217
    i64.extend_i32_u
    local.set 957
    local.get 956
    local.get 957
    i64.mul
    local.set 958
    local.get 955
    local.get 958
    i64.add
    local.set 959
    local.get 5
    i64.load offset=24
    local.set 960
    local.get 960
    local.get 959
    i64.add
    local.set 961
    local.get 5
    local.get 961
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 962
    local.get 962
    i32.wrap_i64
    local.set 218
    local.get 5
    local.get 218
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 219
    i32.const 6
    local.set 220
    local.get 219
    local.get 220
    i32.shl
    local.set 221
    i32.const 1073741823
    local.set 222
    local.get 221
    local.get 222
    i32.and
    local.set 223
    local.get 5
    i32.load offset=84
    local.set 224
    local.get 224
    local.get 223
    i32.or
    local.set 225
    local.get 5
    local.get 225
    i32.store offset=84
    local.get 5
    i32.load offset=20
    local.set 226
    i32.const 24
    local.set 227
    local.get 226
    local.get 227
    i32.shr_u
    local.set 228
    i32.const 63
    local.set 229
    local.get 228
    local.get 229
    i32.and
    local.set 230
    local.get 5
    local.get 230
    i32.store offset=88
    local.get 5
    i64.load offset=24
    local.set 963
    i64.const 30
    local.set 964
    local.get 963
    local.get 964
    i64.shr_u
    local.set 965
    local.get 5
    local.get 965
    i64.store offset=24
    i32.const 0
    local.set 231
    local.get 231
    i32.load offset=1852
    local.set 232
    local.get 232
    local.set 233
    local.get 233
    i64.extend_i32_u
    local.set 966
    local.get 5
    i32.load offset=120
    local.set 234
    local.get 234
    i32.load offset=32
    local.set 235
    local.get 235
    local.set 236
    local.get 236
    i64.extend_i32_u
    local.set 967
    local.get 966
    local.get 967
    i64.mul
    local.set 968
    i32.const 0
    local.set 237
    local.get 237
    i32.load offset=1856
    local.set 238
    local.get 238
    local.set 239
    local.get 239
    i64.extend_i32_u
    local.set 969
    local.get 5
    i32.load offset=120
    local.set 240
    local.get 240
    i32.load offset=28
    local.set 241
    local.get 241
    local.set 242
    local.get 242
    i64.extend_i32_u
    local.set 970
    local.get 969
    local.get 970
    i64.mul
    local.set 971
    local.get 968
    local.get 971
    i64.add
    local.set 972
    i32.const 0
    local.set 243
    local.get 243
    i32.load offset=1860
    local.set 244
    local.get 244
    local.set 245
    local.get 245
    i64.extend_i32_u
    local.set 973
    local.get 5
    i32.load offset=120
    local.set 246
    local.get 246
    i32.load offset=24
    local.set 247
    local.get 247
    local.set 248
    local.get 248
    i64.extend_i32_u
    local.set 974
    local.get 973
    local.get 974
    i64.mul
    local.set 975
    local.get 972
    local.get 975
    i64.add
    local.set 976
    i32.const 0
    local.set 249
    local.get 249
    i32.load offset=1864
    local.set 250
    local.get 250
    local.set 251
    local.get 251
    i64.extend_i32_u
    local.set 977
    local.get 5
    i32.load offset=120
    local.set 252
    local.get 252
    i32.load offset=20
    local.set 253
    local.get 253
    local.set 254
    local.get 254
    i64.extend_i32_u
    local.set 978
    local.get 977
    local.get 978
    i64.mul
    local.set 979
    local.get 976
    local.get 979
    i64.add
    local.set 980
    i32.const 0
    local.set 255
    local.get 255
    i32.load offset=1868
    local.set 256
    local.get 256
    local.set 257
    local.get 257
    i64.extend_i32_u
    local.set 981
    local.get 5
    i32.load offset=120
    local.set 258
    local.get 258
    i32.load offset=16
    local.set 259
    local.get 259
    local.set 260
    local.get 260
    i64.extend_i32_u
    local.set 982
    local.get 981
    local.get 982
    i64.mul
    local.set 983
    local.get 980
    local.get 983
    i64.add
    local.set 984
    i32.const 0
    local.set 261
    local.get 261
    i32.load offset=1872
    local.set 262
    local.get 262
    local.set 263
    local.get 263
    i64.extend_i32_u
    local.set 985
    local.get 5
    i32.load offset=120
    local.set 264
    local.get 264
    i32.load offset=12
    local.set 265
    local.get 265
    local.set 266
    local.get 266
    i64.extend_i32_u
    local.set 986
    local.get 985
    local.get 986
    i64.mul
    local.set 987
    local.get 984
    local.get 987
    i64.add
    local.set 988
    local.get 5
    i64.load offset=24
    local.set 989
    local.get 989
    local.get 988
    i64.add
    local.set 990
    local.get 5
    local.get 990
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 991
    local.get 991
    i32.wrap_i64
    local.set 267
    local.get 5
    local.get 267
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 268
    i32.const 6
    local.set 269
    local.get 268
    local.get 269
    i32.shl
    local.set 270
    i32.const 1073741823
    local.set 271
    local.get 270
    local.get 271
    i32.and
    local.set 272
    local.get 5
    i32.load offset=88
    local.set 273
    local.get 273
    local.get 272
    i32.or
    local.set 274
    local.get 5
    local.get 274
    i32.store offset=88
    local.get 5
    i32.load offset=20
    local.set 275
    i32.const 24
    local.set 276
    local.get 275
    local.get 276
    i32.shr_u
    local.set 277
    i32.const 63
    local.set 278
    local.get 277
    local.get 278
    i32.and
    local.set 279
    local.get 5
    local.get 279
    i32.store offset=92
    local.get 5
    i64.load offset=24
    local.set 992
    i64.const 30
    local.set 993
    local.get 992
    local.get 993
    i64.shr_u
    local.set 994
    local.get 5
    local.get 994
    i64.store offset=24
    i32.const 0
    local.set 280
    local.get 280
    i32.load offset=1856
    local.set 281
    local.get 281
    local.set 282
    local.get 282
    i64.extend_i32_u
    local.set 995
    local.get 5
    i32.load offset=120
    local.set 283
    local.get 283
    i32.load offset=32
    local.set 284
    local.get 284
    local.set 285
    local.get 285
    i64.extend_i32_u
    local.set 996
    local.get 995
    local.get 996
    i64.mul
    local.set 997
    i32.const 0
    local.set 286
    local.get 286
    i32.load offset=1860
    local.set 287
    local.get 287
    local.set 288
    local.get 288
    i64.extend_i32_u
    local.set 998
    local.get 5
    i32.load offset=120
    local.set 289
    local.get 289
    i32.load offset=28
    local.set 290
    local.get 290
    local.set 291
    local.get 291
    i64.extend_i32_u
    local.set 999
    local.get 998
    local.get 999
    i64.mul
    local.set 1000
    local.get 997
    local.get 1000
    i64.add
    local.set 1001
    i32.const 0
    local.set 292
    local.get 292
    i32.load offset=1864
    local.set 293
    local.get 293
    local.set 294
    local.get 294
    i64.extend_i32_u
    local.set 1002
    local.get 5
    i32.load offset=120
    local.set 295
    local.get 295
    i32.load offset=24
    local.set 296
    local.get 296
    local.set 297
    local.get 297
    i64.extend_i32_u
    local.set 1003
    local.get 1002
    local.get 1003
    i64.mul
    local.set 1004
    local.get 1001
    local.get 1004
    i64.add
    local.set 1005
    i32.const 0
    local.set 298
    local.get 298
    i32.load offset=1868
    local.set 299
    local.get 299
    local.set 300
    local.get 300
    i64.extend_i32_u
    local.set 1006
    local.get 5
    i32.load offset=120
    local.set 301
    local.get 301
    i32.load offset=20
    local.set 302
    local.get 302
    local.set 303
    local.get 303
    i64.extend_i32_u
    local.set 1007
    local.get 1006
    local.get 1007
    i64.mul
    local.set 1008
    local.get 1005
    local.get 1008
    i64.add
    local.set 1009
    i32.const 0
    local.set 304
    local.get 304
    i32.load offset=1872
    local.set 305
    local.get 305
    local.set 306
    local.get 306
    i64.extend_i32_u
    local.set 1010
    local.get 5
    i32.load offset=120
    local.set 307
    local.get 307
    i32.load offset=16
    local.set 308
    local.get 308
    local.set 309
    local.get 309
    i64.extend_i32_u
    local.set 1011
    local.get 1010
    local.get 1011
    i64.mul
    local.set 1012
    local.get 1009
    local.get 1012
    i64.add
    local.set 1013
    local.get 5
    i64.load offset=24
    local.set 1014
    local.get 1014
    local.get 1013
    i64.add
    local.set 1015
    local.get 5
    local.get 1015
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1016
    local.get 1016
    i32.wrap_i64
    local.set 310
    local.get 5
    local.get 310
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 311
    i32.const 6
    local.set 312
    local.get 311
    local.get 312
    i32.shl
    local.set 313
    i32.const 1073741823
    local.set 314
    local.get 313
    local.get 314
    i32.and
    local.set 315
    local.get 5
    i32.load offset=92
    local.set 316
    local.get 316
    local.get 315
    i32.or
    local.set 317
    local.get 5
    local.get 317
    i32.store offset=92
    local.get 5
    i32.load offset=20
    local.set 318
    i32.const 24
    local.set 319
    local.get 318
    local.get 319
    i32.shr_u
    local.set 320
    i32.const 63
    local.set 321
    local.get 320
    local.get 321
    i32.and
    local.set 322
    local.get 5
    local.get 322
    i32.store offset=96
    local.get 5
    i64.load offset=24
    local.set 1017
    i64.const 30
    local.set 1018
    local.get 1017
    local.get 1018
    i64.shr_u
    local.set 1019
    local.get 5
    local.get 1019
    i64.store offset=24
    i32.const 0
    local.set 323
    local.get 323
    i32.load offset=1860
    local.set 324
    local.get 324
    local.set 325
    local.get 325
    i64.extend_i32_u
    local.set 1020
    local.get 5
    i32.load offset=120
    local.set 326
    local.get 326
    i32.load offset=32
    local.set 327
    local.get 327
    local.set 328
    local.get 328
    i64.extend_i32_u
    local.set 1021
    local.get 1020
    local.get 1021
    i64.mul
    local.set 1022
    i32.const 0
    local.set 329
    local.get 329
    i32.load offset=1864
    local.set 330
    local.get 330
    local.set 331
    local.get 331
    i64.extend_i32_u
    local.set 1023
    local.get 5
    i32.load offset=120
    local.set 332
    local.get 332
    i32.load offset=28
    local.set 333
    local.get 333
    local.set 334
    local.get 334
    i64.extend_i32_u
    local.set 1024
    local.get 1023
    local.get 1024
    i64.mul
    local.set 1025
    local.get 1022
    local.get 1025
    i64.add
    local.set 1026
    i32.const 0
    local.set 335
    local.get 335
    i32.load offset=1868
    local.set 336
    local.get 336
    local.set 337
    local.get 337
    i64.extend_i32_u
    local.set 1027
    local.get 5
    i32.load offset=120
    local.set 338
    local.get 338
    i32.load offset=24
    local.set 339
    local.get 339
    local.set 340
    local.get 340
    i64.extend_i32_u
    local.set 1028
    local.get 1027
    local.get 1028
    i64.mul
    local.set 1029
    local.get 1026
    local.get 1029
    i64.add
    local.set 1030
    i32.const 0
    local.set 341
    local.get 341
    i32.load offset=1872
    local.set 342
    local.get 342
    local.set 343
    local.get 343
    i64.extend_i32_u
    local.set 1031
    local.get 5
    i32.load offset=120
    local.set 344
    local.get 344
    i32.load offset=20
    local.set 345
    local.get 345
    local.set 346
    local.get 346
    i64.extend_i32_u
    local.set 1032
    local.get 1031
    local.get 1032
    i64.mul
    local.set 1033
    local.get 1030
    local.get 1033
    i64.add
    local.set 1034
    local.get 5
    i64.load offset=24
    local.set 1035
    local.get 1035
    local.get 1034
    i64.add
    local.set 1036
    local.get 5
    local.get 1036
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1037
    local.get 1037
    i32.wrap_i64
    local.set 347
    local.get 5
    local.get 347
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 348
    i32.const 6
    local.set 349
    local.get 348
    local.get 349
    i32.shl
    local.set 350
    i32.const 1073741823
    local.set 351
    local.get 350
    local.get 351
    i32.and
    local.set 352
    local.get 5
    i32.load offset=96
    local.set 353
    local.get 353
    local.get 352
    i32.or
    local.set 354
    local.get 5
    local.get 354
    i32.store offset=96
    local.get 5
    i32.load offset=20
    local.set 355
    i32.const 24
    local.set 356
    local.get 355
    local.get 356
    i32.shr_u
    local.set 357
    i32.const 63
    local.set 358
    local.get 357
    local.get 358
    i32.and
    local.set 359
    local.get 5
    local.get 359
    i32.store offset=100
    local.get 5
    i64.load offset=24
    local.set 1038
    i64.const 30
    local.set 1039
    local.get 1038
    local.get 1039
    i64.shr_u
    local.set 1040
    local.get 5
    local.get 1040
    i64.store offset=24
    i32.const 0
    local.set 360
    local.get 360
    i32.load offset=1864
    local.set 361
    local.get 361
    local.set 362
    local.get 362
    i64.extend_i32_u
    local.set 1041
    local.get 5
    i32.load offset=120
    local.set 363
    local.get 363
    i32.load offset=32
    local.set 364
    local.get 364
    local.set 365
    local.get 365
    i64.extend_i32_u
    local.set 1042
    local.get 1041
    local.get 1042
    i64.mul
    local.set 1043
    i32.const 0
    local.set 366
    local.get 366
    i32.load offset=1868
    local.set 367
    local.get 367
    local.set 368
    local.get 368
    i64.extend_i32_u
    local.set 1044
    local.get 5
    i32.load offset=120
    local.set 369
    local.get 369
    i32.load offset=28
    local.set 370
    local.get 370
    local.set 371
    local.get 371
    i64.extend_i32_u
    local.set 1045
    local.get 1044
    local.get 1045
    i64.mul
    local.set 1046
    local.get 1043
    local.get 1046
    i64.add
    local.set 1047
    i32.const 0
    local.set 372
    local.get 372
    i32.load offset=1872
    local.set 373
    local.get 373
    local.set 374
    local.get 374
    i64.extend_i32_u
    local.set 1048
    local.get 5
    i32.load offset=120
    local.set 375
    local.get 375
    i32.load offset=24
    local.set 376
    local.get 376
    local.set 377
    local.get 377
    i64.extend_i32_u
    local.set 1049
    local.get 1048
    local.get 1049
    i64.mul
    local.set 1050
    local.get 1047
    local.get 1050
    i64.add
    local.set 1051
    local.get 5
    i64.load offset=24
    local.set 1052
    local.get 1052
    local.get 1051
    i64.add
    local.set 1053
    local.get 5
    local.get 1053
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1054
    local.get 1054
    i32.wrap_i64
    local.set 378
    local.get 5
    local.get 378
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 379
    i32.const 6
    local.set 380
    local.get 379
    local.get 380
    i32.shl
    local.set 381
    i32.const 1073741823
    local.set 382
    local.get 381
    local.get 382
    i32.and
    local.set 383
    local.get 5
    i32.load offset=100
    local.set 384
    local.get 384
    local.get 383
    i32.or
    local.set 385
    local.get 5
    local.get 385
    i32.store offset=100
    local.get 5
    i32.load offset=20
    local.set 386
    i32.const 24
    local.set 387
    local.get 386
    local.get 387
    i32.shr_u
    local.set 388
    i32.const 63
    local.set 389
    local.get 388
    local.get 389
    i32.and
    local.set 390
    local.get 5
    local.get 390
    i32.store offset=104
    local.get 5
    i64.load offset=24
    local.set 1055
    i64.const 30
    local.set 1056
    local.get 1055
    local.get 1056
    i64.shr_u
    local.set 1057
    local.get 5
    local.get 1057
    i64.store offset=24
    i32.const 0
    local.set 391
    local.get 391
    i32.load offset=1868
    local.set 392
    local.get 392
    local.set 393
    local.get 393
    i64.extend_i32_u
    local.set 1058
    local.get 5
    i32.load offset=120
    local.set 394
    local.get 394
    i32.load offset=32
    local.set 395
    local.get 395
    local.set 396
    local.get 396
    i64.extend_i32_u
    local.set 1059
    local.get 1058
    local.get 1059
    i64.mul
    local.set 1060
    i32.const 0
    local.set 397
    local.get 397
    i32.load offset=1872
    local.set 398
    local.get 398
    local.set 399
    local.get 399
    i64.extend_i32_u
    local.set 1061
    local.get 5
    i32.load offset=120
    local.set 400
    local.get 400
    i32.load offset=28
    local.set 401
    local.get 401
    local.set 402
    local.get 402
    i64.extend_i32_u
    local.set 1062
    local.get 1061
    local.get 1062
    i64.mul
    local.set 1063
    local.get 1060
    local.get 1063
    i64.add
    local.set 1064
    local.get 5
    i64.load offset=24
    local.set 1065
    local.get 1065
    local.get 1064
    i64.add
    local.set 1066
    local.get 5
    local.get 1066
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1067
    local.get 1067
    i32.wrap_i64
    local.set 403
    local.get 5
    local.get 403
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 404
    i32.const 6
    local.set 405
    local.get 404
    local.get 405
    i32.shl
    local.set 406
    i32.const 1073741823
    local.set 407
    local.get 406
    local.get 407
    i32.and
    local.set 408
    local.get 5
    i32.load offset=104
    local.set 409
    local.get 409
    local.get 408
    i32.or
    local.set 410
    local.get 5
    local.get 410
    i32.store offset=104
    local.get 5
    i32.load offset=20
    local.set 411
    i32.const 24
    local.set 412
    local.get 411
    local.get 412
    i32.shr_u
    local.set 413
    i32.const 63
    local.set 414
    local.get 413
    local.get 414
    i32.and
    local.set 415
    local.get 5
    local.get 415
    i32.store offset=108
    local.get 5
    i64.load offset=24
    local.set 1068
    i64.const 30
    local.set 1069
    local.get 1068
    local.get 1069
    i64.shr_u
    local.set 1070
    local.get 5
    local.get 1070
    i64.store offset=24
    i32.const 0
    local.set 416
    local.get 416
    i32.load offset=1872
    local.set 417
    local.get 417
    local.set 418
    local.get 418
    i64.extend_i32_u
    local.set 1071
    local.get 5
    i32.load offset=120
    local.set 419
    local.get 419
    i32.load offset=32
    local.set 420
    local.get 420
    local.set 421
    local.get 421
    i64.extend_i32_u
    local.set 1072
    local.get 1071
    local.get 1072
    i64.mul
    local.set 1073
    local.get 5
    i64.load offset=24
    local.set 1074
    local.get 1074
    local.get 1073
    i64.add
    local.set 1075
    local.get 5
    local.get 1075
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1076
    local.get 1076
    i32.wrap_i64
    local.set 422
    local.get 5
    local.get 422
    i32.store offset=20
    local.get 5
    i32.load offset=20
    local.set 423
    i32.const 6
    local.set 424
    local.get 423
    local.get 424
    i32.shl
    local.set 425
    i32.const 1073741823
    local.set 426
    local.get 425
    local.get 426
    i32.and
    local.set 427
    local.get 5
    i32.load offset=108
    local.set 428
    local.get 428
    local.get 427
    i32.or
    local.set 429
    local.get 5
    local.get 429
    i32.store offset=108
    local.get 5
    i64.load offset=24
    local.set 1077
    i64.const 24
    local.set 1078
    local.get 1077
    local.get 1078
    i64.shr_u
    local.set 1079
    local.get 1079
    i32.wrap_i64
    local.set 430
    local.get 5
    local.get 430
    i32.store offset=112
    i32.const 0
    local.set 431
    local.get 431
    i32.load offset=1888
    local.set 432
    local.get 432
    local.set 433
    local.get 433
    i64.extend_i32_u
    local.set 1080
    local.get 5
    i32.load offset=80
    local.set 434
    local.get 434
    local.set 435
    local.get 435
    i64.extend_i32_u
    local.set 1081
    local.get 1080
    local.get 1081
    i64.mul
    local.set 1082
    local.get 5
    local.get 1082
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1083
    i64.const 1073741823
    local.set 1084
    local.get 1083
    local.get 1084
    i64.and
    local.set 1085
    local.get 1085
    i32.wrap_i64
    local.set 436
    local.get 5
    local.get 436
    i32.store offset=32
    local.get 5
    i64.load offset=24
    local.set 1086
    i64.const 30
    local.set 1087
    local.get 1086
    local.get 1087
    i64.shr_u
    local.set 1088
    local.get 5
    local.get 1088
    i64.store offset=24
    i32.const 0
    local.set 437
    local.get 437
    i32.load offset=1888
    local.set 438
    local.get 438
    local.set 439
    local.get 439
    i64.extend_i32_u
    local.set 1089
    local.get 5
    i32.load offset=84
    local.set 440
    local.get 440
    local.set 441
    local.get 441
    i64.extend_i32_u
    local.set 1090
    local.get 1089
    local.get 1090
    i64.mul
    local.set 1091
    i32.const 0
    local.set 442
    local.get 442
    i32.load offset=1892
    local.set 443
    local.get 443
    local.set 444
    local.get 444
    i64.extend_i32_u
    local.set 1092
    local.get 5
    i32.load offset=80
    local.set 445
    local.get 445
    local.set 446
    local.get 446
    i64.extend_i32_u
    local.set 1093
    local.get 1092
    local.get 1093
    i64.mul
    local.set 1094
    local.get 1091
    local.get 1094
    i64.add
    local.set 1095
    local.get 5
    i64.load offset=24
    local.set 1096
    local.get 1096
    local.get 1095
    i64.add
    local.set 1097
    local.get 5
    local.get 1097
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1098
    i64.const 1073741823
    local.set 1099
    local.get 1098
    local.get 1099
    i64.and
    local.set 1100
    local.get 1100
    i32.wrap_i64
    local.set 447
    local.get 5
    local.get 447
    i32.store offset=36
    local.get 5
    i64.load offset=24
    local.set 1101
    i64.const 30
    local.set 1102
    local.get 1101
    local.get 1102
    i64.shr_u
    local.set 1103
    local.get 5
    local.get 1103
    i64.store offset=24
    i32.const 0
    local.set 448
    local.get 448
    i32.load offset=1888
    local.set 449
    local.get 449
    local.set 450
    local.get 450
    i64.extend_i32_u
    local.set 1104
    local.get 5
    i32.load offset=88
    local.set 451
    local.get 451
    local.set 452
    local.get 452
    i64.extend_i32_u
    local.set 1105
    local.get 1104
    local.get 1105
    i64.mul
    local.set 1106
    i32.const 0
    local.set 453
    local.get 453
    i32.load offset=1892
    local.set 454
    local.get 454
    local.set 455
    local.get 455
    i64.extend_i32_u
    local.set 1107
    local.get 5
    i32.load offset=84
    local.set 456
    local.get 456
    local.set 457
    local.get 457
    i64.extend_i32_u
    local.set 1108
    local.get 1107
    local.get 1108
    i64.mul
    local.set 1109
    local.get 1106
    local.get 1109
    i64.add
    local.set 1110
    i32.const 0
    local.set 458
    local.get 458
    i32.load offset=1896
    local.set 459
    local.get 459
    local.set 460
    local.get 460
    i64.extend_i32_u
    local.set 1111
    local.get 5
    i32.load offset=80
    local.set 461
    local.get 461
    local.set 462
    local.get 462
    i64.extend_i32_u
    local.set 1112
    local.get 1111
    local.get 1112
    i64.mul
    local.set 1113
    local.get 1110
    local.get 1113
    i64.add
    local.set 1114
    local.get 5
    i64.load offset=24
    local.set 1115
    local.get 1115
    local.get 1114
    i64.add
    local.set 1116
    local.get 5
    local.get 1116
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1117
    i64.const 1073741823
    local.set 1118
    local.get 1117
    local.get 1118
    i64.and
    local.set 1119
    local.get 1119
    i32.wrap_i64
    local.set 463
    local.get 5
    local.get 463
    i32.store offset=40
    local.get 5
    i64.load offset=24
    local.set 1120
    i64.const 30
    local.set 1121
    local.get 1120
    local.get 1121
    i64.shr_u
    local.set 1122
    local.get 5
    local.get 1122
    i64.store offset=24
    i32.const 0
    local.set 464
    local.get 464
    i32.load offset=1888
    local.set 465
    local.get 465
    local.set 466
    local.get 466
    i64.extend_i32_u
    local.set 1123
    local.get 5
    i32.load offset=92
    local.set 467
    local.get 467
    local.set 468
    local.get 468
    i64.extend_i32_u
    local.set 1124
    local.get 1123
    local.get 1124
    i64.mul
    local.set 1125
    i32.const 0
    local.set 469
    local.get 469
    i32.load offset=1892
    local.set 470
    local.get 470
    local.set 471
    local.get 471
    i64.extend_i32_u
    local.set 1126
    local.get 5
    i32.load offset=88
    local.set 472
    local.get 472
    local.set 473
    local.get 473
    i64.extend_i32_u
    local.set 1127
    local.get 1126
    local.get 1127
    i64.mul
    local.set 1128
    local.get 1125
    local.get 1128
    i64.add
    local.set 1129
    i32.const 0
    local.set 474
    local.get 474
    i32.load offset=1896
    local.set 475
    local.get 475
    local.set 476
    local.get 476
    i64.extend_i32_u
    local.set 1130
    local.get 5
    i32.load offset=84
    local.set 477
    local.get 477
    local.set 478
    local.get 478
    i64.extend_i32_u
    local.set 1131
    local.get 1130
    local.get 1131
    i64.mul
    local.set 1132
    local.get 1129
    local.get 1132
    i64.add
    local.set 1133
    i32.const 0
    local.set 479
    local.get 479
    i32.load offset=1900
    local.set 480
    local.get 480
    local.set 481
    local.get 481
    i64.extend_i32_u
    local.set 1134
    local.get 5
    i32.load offset=80
    local.set 482
    local.get 482
    local.set 483
    local.get 483
    i64.extend_i32_u
    local.set 1135
    local.get 1134
    local.get 1135
    i64.mul
    local.set 1136
    local.get 1133
    local.get 1136
    i64.add
    local.set 1137
    local.get 5
    i64.load offset=24
    local.set 1138
    local.get 1138
    local.get 1137
    i64.add
    local.set 1139
    local.get 5
    local.get 1139
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1140
    i64.const 1073741823
    local.set 1141
    local.get 1140
    local.get 1141
    i64.and
    local.set 1142
    local.get 1142
    i32.wrap_i64
    local.set 484
    local.get 5
    local.get 484
    i32.store offset=44
    local.get 5
    i64.load offset=24
    local.set 1143
    i64.const 30
    local.set 1144
    local.get 1143
    local.get 1144
    i64.shr_u
    local.set 1145
    local.get 5
    local.get 1145
    i64.store offset=24
    i32.const 0
    local.set 485
    local.get 485
    i32.load offset=1888
    local.set 486
    local.get 486
    local.set 487
    local.get 487
    i64.extend_i32_u
    local.set 1146
    local.get 5
    i32.load offset=96
    local.set 488
    local.get 488
    local.set 489
    local.get 489
    i64.extend_i32_u
    local.set 1147
    local.get 1146
    local.get 1147
    i64.mul
    local.set 1148
    i32.const 0
    local.set 490
    local.get 490
    i32.load offset=1892
    local.set 491
    local.get 491
    local.set 492
    local.get 492
    i64.extend_i32_u
    local.set 1149
    local.get 5
    i32.load offset=92
    local.set 493
    local.get 493
    local.set 494
    local.get 494
    i64.extend_i32_u
    local.set 1150
    local.get 1149
    local.get 1150
    i64.mul
    local.set 1151
    local.get 1148
    local.get 1151
    i64.add
    local.set 1152
    i32.const 0
    local.set 495
    local.get 495
    i32.load offset=1896
    local.set 496
    local.get 496
    local.set 497
    local.get 497
    i64.extend_i32_u
    local.set 1153
    local.get 5
    i32.load offset=88
    local.set 498
    local.get 498
    local.set 499
    local.get 499
    i64.extend_i32_u
    local.set 1154
    local.get 1153
    local.get 1154
    i64.mul
    local.set 1155
    local.get 1152
    local.get 1155
    i64.add
    local.set 1156
    i32.const 0
    local.set 500
    local.get 500
    i32.load offset=1900
    local.set 501
    local.get 501
    local.set 502
    local.get 502
    i64.extend_i32_u
    local.set 1157
    local.get 5
    i32.load offset=84
    local.set 503
    local.get 503
    local.set 504
    local.get 504
    i64.extend_i32_u
    local.set 1158
    local.get 1157
    local.get 1158
    i64.mul
    local.set 1159
    local.get 1156
    local.get 1159
    i64.add
    local.set 1160
    i32.const 0
    local.set 505
    local.get 505
    i32.load offset=1904
    local.set 506
    local.get 506
    local.set 507
    local.get 507
    i64.extend_i32_u
    local.set 1161
    local.get 5
    i32.load offset=80
    local.set 508
    local.get 508
    local.set 509
    local.get 509
    i64.extend_i32_u
    local.set 1162
    local.get 1161
    local.get 1162
    i64.mul
    local.set 1163
    local.get 1160
    local.get 1163
    i64.add
    local.set 1164
    local.get 5
    i64.load offset=24
    local.set 1165
    local.get 1165
    local.get 1164
    i64.add
    local.set 1166
    local.get 5
    local.get 1166
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1167
    i64.const 1073741823
    local.set 1168
    local.get 1167
    local.get 1168
    i64.and
    local.set 1169
    local.get 1169
    i32.wrap_i64
    local.set 510
    local.get 5
    local.get 510
    i32.store offset=48
    local.get 5
    i64.load offset=24
    local.set 1170
    i64.const 30
    local.set 1171
    local.get 1170
    local.get 1171
    i64.shr_u
    local.set 1172
    local.get 5
    local.get 1172
    i64.store offset=24
    i32.const 0
    local.set 511
    local.get 511
    i32.load offset=1888
    local.set 512
    local.get 512
    local.set 513
    local.get 513
    i64.extend_i32_u
    local.set 1173
    local.get 5
    i32.load offset=100
    local.set 514
    local.get 514
    local.set 515
    local.get 515
    i64.extend_i32_u
    local.set 1174
    local.get 1173
    local.get 1174
    i64.mul
    local.set 1175
    i32.const 0
    local.set 516
    local.get 516
    i32.load offset=1892
    local.set 517
    local.get 517
    local.set 518
    local.get 518
    i64.extend_i32_u
    local.set 1176
    local.get 5
    i32.load offset=96
    local.set 519
    local.get 519
    local.set 520
    local.get 520
    i64.extend_i32_u
    local.set 1177
    local.get 1176
    local.get 1177
    i64.mul
    local.set 1178
    local.get 1175
    local.get 1178
    i64.add
    local.set 1179
    i32.const 0
    local.set 521
    local.get 521
    i32.load offset=1896
    local.set 522
    local.get 522
    local.set 523
    local.get 523
    i64.extend_i32_u
    local.set 1180
    local.get 5
    i32.load offset=92
    local.set 524
    local.get 524
    local.set 525
    local.get 525
    i64.extend_i32_u
    local.set 1181
    local.get 1180
    local.get 1181
    i64.mul
    local.set 1182
    local.get 1179
    local.get 1182
    i64.add
    local.set 1183
    i32.const 0
    local.set 526
    local.get 526
    i32.load offset=1900
    local.set 527
    local.get 527
    local.set 528
    local.get 528
    i64.extend_i32_u
    local.set 1184
    local.get 5
    i32.load offset=88
    local.set 529
    local.get 529
    local.set 530
    local.get 530
    i64.extend_i32_u
    local.set 1185
    local.get 1184
    local.get 1185
    i64.mul
    local.set 1186
    local.get 1183
    local.get 1186
    i64.add
    local.set 1187
    i32.const 0
    local.set 531
    local.get 531
    i32.load offset=1904
    local.set 532
    local.get 532
    local.set 533
    local.get 533
    i64.extend_i32_u
    local.set 1188
    local.get 5
    i32.load offset=84
    local.set 534
    local.get 534
    local.set 535
    local.get 535
    i64.extend_i32_u
    local.set 1189
    local.get 1188
    local.get 1189
    i64.mul
    local.set 1190
    local.get 1187
    local.get 1190
    i64.add
    local.set 1191
    i32.const 0
    local.set 536
    local.get 536
    i32.load offset=1908
    local.set 537
    local.get 537
    local.set 538
    local.get 538
    i64.extend_i32_u
    local.set 1192
    local.get 5
    i32.load offset=80
    local.set 539
    local.get 539
    local.set 540
    local.get 540
    i64.extend_i32_u
    local.set 1193
    local.get 1192
    local.get 1193
    i64.mul
    local.set 1194
    local.get 1191
    local.get 1194
    i64.add
    local.set 1195
    local.get 5
    i64.load offset=24
    local.set 1196
    local.get 1196
    local.get 1195
    i64.add
    local.set 1197
    local.get 5
    local.get 1197
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1198
    i64.const 1073741823
    local.set 1199
    local.get 1198
    local.get 1199
    i64.and
    local.set 1200
    local.get 1200
    i32.wrap_i64
    local.set 541
    local.get 5
    local.get 541
    i32.store offset=52
    local.get 5
    i64.load offset=24
    local.set 1201
    i64.const 30
    local.set 1202
    local.get 1201
    local.get 1202
    i64.shr_u
    local.set 1203
    local.get 5
    local.get 1203
    i64.store offset=24
    i32.const 0
    local.set 542
    local.get 542
    i32.load offset=1888
    local.set 543
    local.get 543
    local.set 544
    local.get 544
    i64.extend_i32_u
    local.set 1204
    local.get 5
    i32.load offset=104
    local.set 545
    local.get 545
    local.set 546
    local.get 546
    i64.extend_i32_u
    local.set 1205
    local.get 1204
    local.get 1205
    i64.mul
    local.set 1206
    i32.const 0
    local.set 547
    local.get 547
    i32.load offset=1892
    local.set 548
    local.get 548
    local.set 549
    local.get 549
    i64.extend_i32_u
    local.set 1207
    local.get 5
    i32.load offset=100
    local.set 550
    local.get 550
    local.set 551
    local.get 551
    i64.extend_i32_u
    local.set 1208
    local.get 1207
    local.get 1208
    i64.mul
    local.set 1209
    local.get 1206
    local.get 1209
    i64.add
    local.set 1210
    i32.const 0
    local.set 552
    local.get 552
    i32.load offset=1896
    local.set 553
    local.get 553
    local.set 554
    local.get 554
    i64.extend_i32_u
    local.set 1211
    local.get 5
    i32.load offset=96
    local.set 555
    local.get 555
    local.set 556
    local.get 556
    i64.extend_i32_u
    local.set 1212
    local.get 1211
    local.get 1212
    i64.mul
    local.set 1213
    local.get 1210
    local.get 1213
    i64.add
    local.set 1214
    i32.const 0
    local.set 557
    local.get 557
    i32.load offset=1900
    local.set 558
    local.get 558
    local.set 559
    local.get 559
    i64.extend_i32_u
    local.set 1215
    local.get 5
    i32.load offset=92
    local.set 560
    local.get 560
    local.set 561
    local.get 561
    i64.extend_i32_u
    local.set 1216
    local.get 1215
    local.get 1216
    i64.mul
    local.set 1217
    local.get 1214
    local.get 1217
    i64.add
    local.set 1218
    i32.const 0
    local.set 562
    local.get 562
    i32.load offset=1904
    local.set 563
    local.get 563
    local.set 564
    local.get 564
    i64.extend_i32_u
    local.set 1219
    local.get 5
    i32.load offset=88
    local.set 565
    local.get 565
    local.set 566
    local.get 566
    i64.extend_i32_u
    local.set 1220
    local.get 1219
    local.get 1220
    i64.mul
    local.set 1221
    local.get 1218
    local.get 1221
    i64.add
    local.set 1222
    i32.const 0
    local.set 567
    local.get 567
    i32.load offset=1908
    local.set 568
    local.get 568
    local.set 569
    local.get 569
    i64.extend_i32_u
    local.set 1223
    local.get 5
    i32.load offset=84
    local.set 570
    local.get 570
    local.set 571
    local.get 571
    i64.extend_i32_u
    local.set 1224
    local.get 1223
    local.get 1224
    i64.mul
    local.set 1225
    local.get 1222
    local.get 1225
    i64.add
    local.set 1226
    i32.const 0
    local.set 572
    local.get 572
    i32.load offset=1912
    local.set 573
    local.get 573
    local.set 574
    local.get 574
    i64.extend_i32_u
    local.set 1227
    local.get 5
    i32.load offset=80
    local.set 575
    local.get 575
    local.set 576
    local.get 576
    i64.extend_i32_u
    local.set 1228
    local.get 1227
    local.get 1228
    i64.mul
    local.set 1229
    local.get 1226
    local.get 1229
    i64.add
    local.set 1230
    local.get 5
    i64.load offset=24
    local.set 1231
    local.get 1231
    local.get 1230
    i64.add
    local.set 1232
    local.get 5
    local.get 1232
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1233
    i64.const 1073741823
    local.set 1234
    local.get 1233
    local.get 1234
    i64.and
    local.set 1235
    local.get 1235
    i32.wrap_i64
    local.set 577
    local.get 5
    local.get 577
    i32.store offset=56
    local.get 5
    i64.load offset=24
    local.set 1236
    i64.const 30
    local.set 1237
    local.get 1236
    local.get 1237
    i64.shr_u
    local.set 1238
    local.get 5
    local.get 1238
    i64.store offset=24
    i32.const 0
    local.set 578
    local.get 578
    i32.load offset=1888
    local.set 579
    local.get 579
    local.set 580
    local.get 580
    i64.extend_i32_u
    local.set 1239
    local.get 5
    i32.load offset=108
    local.set 581
    local.get 581
    local.set 582
    local.get 582
    i64.extend_i32_u
    local.set 1240
    local.get 1239
    local.get 1240
    i64.mul
    local.set 1241
    i32.const 0
    local.set 583
    local.get 583
    i32.load offset=1892
    local.set 584
    local.get 584
    local.set 585
    local.get 585
    i64.extend_i32_u
    local.set 1242
    local.get 5
    i32.load offset=104
    local.set 586
    local.get 586
    local.set 587
    local.get 587
    i64.extend_i32_u
    local.set 1243
    local.get 1242
    local.get 1243
    i64.mul
    local.set 1244
    local.get 1241
    local.get 1244
    i64.add
    local.set 1245
    i32.const 0
    local.set 588
    local.get 588
    i32.load offset=1896
    local.set 589
    local.get 589
    local.set 590
    local.get 590
    i64.extend_i32_u
    local.set 1246
    local.get 5
    i32.load offset=100
    local.set 591
    local.get 591
    local.set 592
    local.get 592
    i64.extend_i32_u
    local.set 1247
    local.get 1246
    local.get 1247
    i64.mul
    local.set 1248
    local.get 1245
    local.get 1248
    i64.add
    local.set 1249
    i32.const 0
    local.set 593
    local.get 593
    i32.load offset=1900
    local.set 594
    local.get 594
    local.set 595
    local.get 595
    i64.extend_i32_u
    local.set 1250
    local.get 5
    i32.load offset=96
    local.set 596
    local.get 596
    local.set 597
    local.get 597
    i64.extend_i32_u
    local.set 1251
    local.get 1250
    local.get 1251
    i64.mul
    local.set 1252
    local.get 1249
    local.get 1252
    i64.add
    local.set 1253
    i32.const 0
    local.set 598
    local.get 598
    i32.load offset=1904
    local.set 599
    local.get 599
    local.set 600
    local.get 600
    i64.extend_i32_u
    local.set 1254
    local.get 5
    i32.load offset=92
    local.set 601
    local.get 601
    local.set 602
    local.get 602
    i64.extend_i32_u
    local.set 1255
    local.get 1254
    local.get 1255
    i64.mul
    local.set 1256
    local.get 1253
    local.get 1256
    i64.add
    local.set 1257
    i32.const 0
    local.set 603
    local.get 603
    i32.load offset=1908
    local.set 604
    local.get 604
    local.set 605
    local.get 605
    i64.extend_i32_u
    local.set 1258
    local.get 5
    i32.load offset=88
    local.set 606
    local.get 606
    local.set 607
    local.get 607
    i64.extend_i32_u
    local.set 1259
    local.get 1258
    local.get 1259
    i64.mul
    local.set 1260
    local.get 1257
    local.get 1260
    i64.add
    local.set 1261
    i32.const 0
    local.set 608
    local.get 608
    i32.load offset=1912
    local.set 609
    local.get 609
    local.set 610
    local.get 610
    i64.extend_i32_u
    local.set 1262
    local.get 5
    i32.load offset=84
    local.set 611
    local.get 611
    local.set 612
    local.get 612
    i64.extend_i32_u
    local.set 1263
    local.get 1262
    local.get 1263
    i64.mul
    local.set 1264
    local.get 1261
    local.get 1264
    i64.add
    local.set 1265
    i32.const 0
    local.set 613
    local.get 613
    i32.load offset=1916
    local.set 614
    local.get 614
    local.set 615
    local.get 615
    i64.extend_i32_u
    local.set 1266
    local.get 5
    i32.load offset=80
    local.set 616
    local.get 616
    local.set 617
    local.get 617
    i64.extend_i32_u
    local.set 1267
    local.get 1266
    local.get 1267
    i64.mul
    local.set 1268
    local.get 1265
    local.get 1268
    i64.add
    local.set 1269
    local.get 5
    i64.load offset=24
    local.set 1270
    local.get 1270
    local.get 1269
    i64.add
    local.set 1271
    local.get 5
    local.get 1271
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1272
    i64.const 1073741823
    local.set 1273
    local.get 1272
    local.get 1273
    i64.and
    local.set 1274
    local.get 1274
    i32.wrap_i64
    local.set 618
    local.get 5
    local.get 618
    i32.store offset=60
    local.get 5
    i64.load offset=24
    local.set 1275
    i64.const 30
    local.set 1276
    local.get 1275
    local.get 1276
    i64.shr_u
    local.set 1277
    local.get 5
    local.get 1277
    i64.store offset=24
    i32.const 0
    local.set 619
    local.get 619
    i32.load offset=1888
    local.set 620
    local.get 620
    local.set 621
    local.get 621
    i64.extend_i32_u
    local.set 1278
    local.get 5
    i32.load offset=112
    local.set 622
    local.get 622
    local.set 623
    local.get 623
    i64.extend_i32_u
    local.set 1279
    local.get 1278
    local.get 1279
    i64.mul
    local.set 1280
    i32.const 0
    local.set 624
    local.get 624
    i32.load offset=1892
    local.set 625
    local.get 625
    local.set 626
    local.get 626
    i64.extend_i32_u
    local.set 1281
    local.get 5
    i32.load offset=108
    local.set 627
    local.get 627
    local.set 628
    local.get 628
    i64.extend_i32_u
    local.set 1282
    local.get 1281
    local.get 1282
    i64.mul
    local.set 1283
    local.get 1280
    local.get 1283
    i64.add
    local.set 1284
    i32.const 0
    local.set 629
    local.get 629
    i32.load offset=1896
    local.set 630
    local.get 630
    local.set 631
    local.get 631
    i64.extend_i32_u
    local.set 1285
    local.get 5
    i32.load offset=104
    local.set 632
    local.get 632
    local.set 633
    local.get 633
    i64.extend_i32_u
    local.set 1286
    local.get 1285
    local.get 1286
    i64.mul
    local.set 1287
    local.get 1284
    local.get 1287
    i64.add
    local.set 1288
    i32.const 0
    local.set 634
    local.get 634
    i32.load offset=1900
    local.set 635
    local.get 635
    local.set 636
    local.get 636
    i64.extend_i32_u
    local.set 1289
    local.get 5
    i32.load offset=100
    local.set 637
    local.get 637
    local.set 638
    local.get 638
    i64.extend_i32_u
    local.set 1290
    local.get 1289
    local.get 1290
    i64.mul
    local.set 1291
    local.get 1288
    local.get 1291
    i64.add
    local.set 1292
    i32.const 0
    local.set 639
    local.get 639
    i32.load offset=1904
    local.set 640
    local.get 640
    local.set 641
    local.get 641
    i64.extend_i32_u
    local.set 1293
    local.get 5
    i32.load offset=96
    local.set 642
    local.get 642
    local.set 643
    local.get 643
    i64.extend_i32_u
    local.set 1294
    local.get 1293
    local.get 1294
    i64.mul
    local.set 1295
    local.get 1292
    local.get 1295
    i64.add
    local.set 1296
    i32.const 0
    local.set 644
    local.get 644
    i32.load offset=1908
    local.set 645
    local.get 645
    local.set 646
    local.get 646
    i64.extend_i32_u
    local.set 1297
    local.get 5
    i32.load offset=92
    local.set 647
    local.get 647
    local.set 648
    local.get 648
    i64.extend_i32_u
    local.set 1298
    local.get 1297
    local.get 1298
    i64.mul
    local.set 1299
    local.get 1296
    local.get 1299
    i64.add
    local.set 1300
    i32.const 0
    local.set 649
    local.get 649
    i32.load offset=1912
    local.set 650
    local.get 650
    local.set 651
    local.get 651
    i64.extend_i32_u
    local.set 1301
    local.get 5
    i32.load offset=88
    local.set 652
    local.get 652
    local.set 653
    local.get 653
    i64.extend_i32_u
    local.set 1302
    local.get 1301
    local.get 1302
    i64.mul
    local.set 1303
    local.get 1300
    local.get 1303
    i64.add
    local.set 1304
    i32.const 0
    local.set 654
    local.get 654
    i32.load offset=1916
    local.set 655
    local.get 655
    local.set 656
    local.get 656
    i64.extend_i32_u
    local.set 1305
    local.get 5
    i32.load offset=84
    local.set 657
    local.get 657
    local.set 658
    local.get 658
    i64.extend_i32_u
    local.set 1306
    local.get 1305
    local.get 1306
    i64.mul
    local.set 1307
    local.get 1304
    local.get 1307
    i64.add
    local.set 1308
    i32.const 0
    local.set 659
    local.get 659
    i32.load offset=1920
    local.set 660
    local.get 660
    local.set 661
    local.get 661
    i64.extend_i32_u
    local.set 1309
    local.get 5
    i32.load offset=80
    local.set 662
    local.get 662
    local.set 663
    local.get 663
    i64.extend_i32_u
    local.set 1310
    local.get 1309
    local.get 1310
    i64.mul
    local.set 1311
    local.get 1308
    local.get 1311
    i64.add
    local.set 1312
    local.get 5
    i64.load offset=24
    local.set 1313
    local.get 1313
    local.get 1312
    i64.add
    local.set 1314
    local.get 5
    local.get 1314
    i64.store offset=24
    local.get 5
    i64.load offset=24
    local.set 1315
    i64.const 16777215
    local.set 1316
    local.get 1315
    local.get 1316
    i64.and
    local.set 1317
    local.get 1317
    i32.wrap_i64
    local.set 664
    local.get 5
    local.get 664
    i32.store offset=64
    local.get 5
    local.get 6
    i32.store offset=12
    local.get 5
    i32.load offset=32
    local.set 665
    local.get 5
    i32.load offset=12
    local.set 666
    local.get 666
    local.get 665
    i32.add
    local.set 667
    local.get 5
    local.get 667
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 668
    local.get 668
    i32.load
    local.set 669
    local.get 5
    i32.load offset=12
    local.set 670
    local.get 669
    local.get 670
    call $lt_modm
    local.set 671
    local.get 5
    local.get 671
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 672
    local.get 672
    i32.load
    local.set 673
    local.get 5
    i32.load offset=12
    local.set 674
    local.get 673
    local.get 674
    i32.sub
    local.set 675
    local.get 5
    i32.load offset=16
    local.set 676
    i32.const 30
    local.set 677
    local.get 676
    local.get 677
    i32.shl
    local.set 678
    local.get 675
    local.get 678
    i32.add
    local.set 679
    local.get 5
    i32.load offset=124
    local.set 680
    local.get 680
    local.get 679
    i32.store
    local.get 5
    i32.load offset=16
    local.set 681
    local.get 5
    local.get 681
    i32.store offset=12
    local.get 5
    i32.load offset=36
    local.set 682
    local.get 5
    i32.load offset=12
    local.set 683
    local.get 683
    local.get 682
    i32.add
    local.set 684
    local.get 5
    local.get 684
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 685
    local.get 685
    i32.load offset=4
    local.set 686
    local.get 5
    i32.load offset=12
    local.set 687
    local.get 686
    local.get 687
    call $lt_modm
    local.set 688
    local.get 5
    local.get 688
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 689
    local.get 689
    i32.load offset=4
    local.set 690
    local.get 5
    i32.load offset=12
    local.set 691
    local.get 690
    local.get 691
    i32.sub
    local.set 692
    local.get 5
    i32.load offset=16
    local.set 693
    i32.const 30
    local.set 694
    local.get 693
    local.get 694
    i32.shl
    local.set 695
    local.get 692
    local.get 695
    i32.add
    local.set 696
    local.get 5
    i32.load offset=124
    local.set 697
    local.get 697
    local.get 696
    i32.store offset=4
    local.get 5
    i32.load offset=16
    local.set 698
    local.get 5
    local.get 698
    i32.store offset=12
    local.get 5
    i32.load offset=40
    local.set 699
    local.get 5
    i32.load offset=12
    local.set 700
    local.get 700
    local.get 699
    i32.add
    local.set 701
    local.get 5
    local.get 701
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 702
    local.get 702
    i32.load offset=8
    local.set 703
    local.get 5
    i32.load offset=12
    local.set 704
    local.get 703
    local.get 704
    call $lt_modm
    local.set 705
    local.get 5
    local.get 705
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 706
    local.get 706
    i32.load offset=8
    local.set 707
    local.get 5
    i32.load offset=12
    local.set 708
    local.get 707
    local.get 708
    i32.sub
    local.set 709
    local.get 5
    i32.load offset=16
    local.set 710
    i32.const 30
    local.set 711
    local.get 710
    local.get 711
    i32.shl
    local.set 712
    local.get 709
    local.get 712
    i32.add
    local.set 713
    local.get 5
    i32.load offset=124
    local.set 714
    local.get 714
    local.get 713
    i32.store offset=8
    local.get 5
    i32.load offset=16
    local.set 715
    local.get 5
    local.get 715
    i32.store offset=12
    local.get 5
    i32.load offset=44
    local.set 716
    local.get 5
    i32.load offset=12
    local.set 717
    local.get 717
    local.get 716
    i32.add
    local.set 718
    local.get 5
    local.get 718
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 719
    local.get 719
    i32.load offset=12
    local.set 720
    local.get 5
    i32.load offset=12
    local.set 721
    local.get 720
    local.get 721
    call $lt_modm
    local.set 722
    local.get 5
    local.get 722
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 723
    local.get 723
    i32.load offset=12
    local.set 724
    local.get 5
    i32.load offset=12
    local.set 725
    local.get 724
    local.get 725
    i32.sub
    local.set 726
    local.get 5
    i32.load offset=16
    local.set 727
    i32.const 30
    local.set 728
    local.get 727
    local.get 728
    i32.shl
    local.set 729
    local.get 726
    local.get 729
    i32.add
    local.set 730
    local.get 5
    i32.load offset=124
    local.set 731
    local.get 731
    local.get 730
    i32.store offset=12
    local.get 5
    i32.load offset=16
    local.set 732
    local.get 5
    local.get 732
    i32.store offset=12
    local.get 5
    i32.load offset=48
    local.set 733
    local.get 5
    i32.load offset=12
    local.set 734
    local.get 734
    local.get 733
    i32.add
    local.set 735
    local.get 5
    local.get 735
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 736
    local.get 736
    i32.load offset=16
    local.set 737
    local.get 5
    i32.load offset=12
    local.set 738
    local.get 737
    local.get 738
    call $lt_modm
    local.set 739
    local.get 5
    local.get 739
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 740
    local.get 740
    i32.load offset=16
    local.set 741
    local.get 5
    i32.load offset=12
    local.set 742
    local.get 741
    local.get 742
    i32.sub
    local.set 743
    local.get 5
    i32.load offset=16
    local.set 744
    i32.const 30
    local.set 745
    local.get 744
    local.get 745
    i32.shl
    local.set 746
    local.get 743
    local.get 746
    i32.add
    local.set 747
    local.get 5
    i32.load offset=124
    local.set 748
    local.get 748
    local.get 747
    i32.store offset=16
    local.get 5
    i32.load offset=16
    local.set 749
    local.get 5
    local.get 749
    i32.store offset=12
    local.get 5
    i32.load offset=52
    local.set 750
    local.get 5
    i32.load offset=12
    local.set 751
    local.get 751
    local.get 750
    i32.add
    local.set 752
    local.get 5
    local.get 752
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 753
    local.get 753
    i32.load offset=20
    local.set 754
    local.get 5
    i32.load offset=12
    local.set 755
    local.get 754
    local.get 755
    call $lt_modm
    local.set 756
    local.get 5
    local.get 756
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 757
    local.get 757
    i32.load offset=20
    local.set 758
    local.get 5
    i32.load offset=12
    local.set 759
    local.get 758
    local.get 759
    i32.sub
    local.set 760
    local.get 5
    i32.load offset=16
    local.set 761
    i32.const 30
    local.set 762
    local.get 761
    local.get 762
    i32.shl
    local.set 763
    local.get 760
    local.get 763
    i32.add
    local.set 764
    local.get 5
    i32.load offset=124
    local.set 765
    local.get 765
    local.get 764
    i32.store offset=20
    local.get 5
    i32.load offset=16
    local.set 766
    local.get 5
    local.get 766
    i32.store offset=12
    local.get 5
    i32.load offset=56
    local.set 767
    local.get 5
    i32.load offset=12
    local.set 768
    local.get 768
    local.get 767
    i32.add
    local.set 769
    local.get 5
    local.get 769
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 770
    local.get 770
    i32.load offset=24
    local.set 771
    local.get 5
    i32.load offset=12
    local.set 772
    local.get 771
    local.get 772
    call $lt_modm
    local.set 773
    local.get 5
    local.get 773
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 774
    local.get 774
    i32.load offset=24
    local.set 775
    local.get 5
    i32.load offset=12
    local.set 776
    local.get 775
    local.get 776
    i32.sub
    local.set 777
    local.get 5
    i32.load offset=16
    local.set 778
    i32.const 30
    local.set 779
    local.get 778
    local.get 779
    i32.shl
    local.set 780
    local.get 777
    local.get 780
    i32.add
    local.set 781
    local.get 5
    i32.load offset=124
    local.set 782
    local.get 782
    local.get 781
    i32.store offset=24
    local.get 5
    i32.load offset=16
    local.set 783
    local.get 5
    local.get 783
    i32.store offset=12
    local.get 5
    i32.load offset=60
    local.set 784
    local.get 5
    i32.load offset=12
    local.set 785
    local.get 785
    local.get 784
    i32.add
    local.set 786
    local.get 5
    local.get 786
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 787
    local.get 787
    i32.load offset=28
    local.set 788
    local.get 5
    i32.load offset=12
    local.set 789
    local.get 788
    local.get 789
    call $lt_modm
    local.set 790
    local.get 5
    local.get 790
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 791
    local.get 791
    i32.load offset=28
    local.set 792
    local.get 5
    i32.load offset=12
    local.set 793
    local.get 792
    local.get 793
    i32.sub
    local.set 794
    local.get 5
    i32.load offset=16
    local.set 795
    i32.const 30
    local.set 796
    local.get 795
    local.get 796
    i32.shl
    local.set 797
    local.get 794
    local.get 797
    i32.add
    local.set 798
    local.get 5
    i32.load offset=124
    local.set 799
    local.get 799
    local.get 798
    i32.store offset=28
    local.get 5
    i32.load offset=16
    local.set 800
    local.get 5
    local.get 800
    i32.store offset=12
    local.get 5
    i32.load offset=64
    local.set 801
    local.get 5
    i32.load offset=12
    local.set 802
    local.get 802
    local.get 801
    i32.add
    local.set 803
    local.get 5
    local.get 803
    i32.store offset=12
    local.get 5
    i32.load offset=116
    local.set 804
    local.get 804
    i32.load offset=32
    local.set 805
    local.get 5
    i32.load offset=12
    local.set 806
    local.get 805
    local.get 806
    call $lt_modm
    local.set 807
    local.get 5
    local.get 807
    i32.store offset=16
    local.get 5
    i32.load offset=116
    local.set 808
    local.get 808
    i32.load offset=32
    local.set 809
    local.get 5
    i32.load offset=12
    local.set 810
    local.get 809
    local.get 810
    i32.sub
    local.set 811
    local.get 5
    i32.load offset=16
    local.set 812
    i32.const 24
    local.set 813
    local.get 812
    local.get 813
    i32.shl
    local.set 814
    local.get 811
    local.get 814
    i32.add
    local.set 815
    local.get 5
    i32.load offset=124
    local.set 816
    local.get 816
    local.get 815
    i32.store offset=32
    local.get 5
    i32.load offset=124
    local.set 817
    local.get 817
    call $reduce256_modm
    local.get 5
    i32.load offset=124
    local.set 818
    local.get 818
    call $reduce256_modm
    i32.const 128
    local.set 819
    local.get 5
    local.get 819
    i32.add
    local.set 820
    local.get 820
    global.set 0
    return)
  (func $contract256_slidingwindow_modm (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    i32.const 0
    local.set 6
    i32.const 256
    local.set 7
    i32.const 1
    local.set 8
    local.get 5
    local.get 0
    i32.store offset=44
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 5
    local.get 2
    i32.store offset=36
    local.get 5
    i32.load offset=36
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.sub
    local.set 11
    local.get 8
    local.get 11
    i32.shl
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.sub
    local.set 14
    local.get 5
    local.get 14
    i32.store offset=16
    local.get 5
    local.get 7
    i32.store offset=12
    local.get 5
    i32.load offset=44
    local.set 15
    local.get 5
    local.get 15
    i32.store offset=8
    local.get 5
    local.get 6
    i32.store offset=32
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 8
        local.set 16
        local.get 5
        i32.load offset=32
        local.set 17
        local.get 17
        local.set 18
        local.get 16
        local.set 19
        local.get 18
        local.get 19
        i32.lt_s
        local.set 20
        i32.const 1
        local.set 21
        local.get 20
        local.get 21
        i32.and
        local.set 22
        local.get 22
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 23
        local.get 5
        i32.load offset=40
        local.set 24
        local.get 5
        i32.load offset=32
        local.set 25
        i32.const 2
        local.set 26
        local.get 25
        local.get 26
        i32.shl
        local.set 27
        local.get 24
        local.get 27
        i32.add
        local.set 28
        local.get 28
        i32.load
        local.set 29
        local.get 5
        local.get 29
        i32.store offset=4
        local.get 5
        local.get 23
        i32.store offset=28
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 30
            local.set 30
            local.get 5
            i32.load offset=28
            local.set 31
            local.get 31
            local.set 32
            local.get 30
            local.set 33
            local.get 32
            local.get 33
            i32.lt_s
            local.set 34
            i32.const 1
            local.set 35
            local.get 34
            local.get 35
            i32.and
            local.set 36
            local.get 36
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.load offset=4
            local.set 37
            i32.const 1
            local.set 38
            local.get 37
            local.get 38
            i32.and
            local.set 39
            local.get 5
            i32.load offset=8
            local.set 40
            i32.const 1
            local.set 41
            local.get 40
            local.get 41
            i32.add
            local.set 42
            local.get 5
            local.get 42
            i32.store offset=8
            local.get 40
            local.get 39
            i32.store8
            local.get 5
            i32.load offset=28
            local.set 43
            i32.const 1
            local.set 44
            local.get 43
            local.get 44
            i32.add
            local.set 45
            local.get 5
            local.get 45
            i32.store offset=28
            local.get 5
            i32.load offset=4
            local.set 46
            i32.const 1
            local.set 47
            local.get 46
            local.get 47
            i32.shr_u
            local.set 48
            local.get 5
            local.get 48
            i32.store offset=4
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 5
        i32.load offset=32
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.add
        local.set 51
        local.get 5
        local.get 51
        i32.store offset=32
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 52
    local.get 5
    i32.load offset=40
    local.set 53
    local.get 53
    i32.load offset=32
    local.set 54
    local.get 5
    local.get 54
    i32.store offset=4
    local.get 5
    local.get 52
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 55
        local.get 5
        i32.load offset=28
        local.set 56
        local.get 56
        local.set 57
        local.get 55
        local.set 58
        local.get 57
        local.get 58
        i32.lt_s
        local.set 59
        i32.const 1
        local.set 60
        local.get 59
        local.get 60
        i32.and
        local.set 61
        local.get 61
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=4
        local.set 62
        i32.const 1
        local.set 63
        local.get 62
        local.get 63
        i32.and
        local.set 64
        local.get 5
        i32.load offset=8
        local.set 65
        i32.const 1
        local.set 66
        local.get 65
        local.get 66
        i32.add
        local.set 67
        local.get 5
        local.get 67
        i32.store offset=8
        local.get 65
        local.get 64
        i32.store8
        local.get 5
        i32.load offset=28
        local.set 68
        i32.const 1
        local.set 69
        local.get 68
        local.get 69
        i32.add
        local.set 70
        local.get 5
        local.get 70
        i32.store offset=28
        local.get 5
        i32.load offset=4
        local.set 71
        i32.const 1
        local.set 72
        local.get 71
        local.get 72
        i32.shr_u
        local.set 73
        local.get 5
        local.get 73
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 74
    local.get 5
    local.get 74
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=28
        local.set 75
        local.get 5
        i32.load offset=12
        local.set 76
        local.get 75
        local.set 77
        local.get 76
        local.set 78
        local.get 77
        local.get 78
        i32.lt_s
        local.set 79
        i32.const 1
        local.set 80
        local.get 79
        local.get 80
        i32.and
        local.set 81
        local.get 81
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 82
        local.get 5
        i32.load offset=44
        local.set 83
        local.get 5
        i32.load offset=28
        local.set 84
        local.get 83
        local.get 84
        i32.add
        local.set 85
        local.get 85
        i32.load8_u
        local.set 86
        i32.const 255
        local.set 87
        local.get 86
        local.get 87
        i32.and
        local.set 88
        i32.const 255
        local.set 89
        local.get 82
        local.get 89
        i32.and
        local.set 90
        local.get 88
        local.get 90
        i32.ne
        local.set 91
        i32.const 1
        local.set 92
        local.get 91
        local.get 92
        i32.and
        local.set 93
        block  ;; label = @3
          block  ;; label = @4
            local.get 93
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          local.set 94
          local.get 5
          local.get 94
          i32.store offset=20
          loop  ;; label = @4
            i32.const 0
            local.set 95
            local.get 5
            i32.load offset=20
            local.set 96
            local.get 5
            i32.load offset=12
            local.set 97
            local.get 5
            i32.load offset=28
            local.set 98
            local.get 97
            local.get 98
            i32.sub
            local.set 99
            local.get 96
            local.set 100
            local.get 99
            local.set 101
            local.get 100
            local.get 101
            i32.lt_s
            local.set 102
            i32.const 1
            local.set 103
            local.get 102
            local.get 103
            i32.and
            local.set 104
            local.get 95
            local.set 105
            block  ;; label = @5
              local.get 104
              i32.eqz
              br_if 0 (;@5;)
              i32.const 6
              local.set 106
              local.get 5
              i32.load offset=20
              local.set 107
              local.get 107
              local.set 108
              local.get 106
              local.set 109
              local.get 108
              local.get 109
              i32.le_s
              local.set 110
              local.get 110
              local.set 105
            end
            local.get 105
            local.set 111
            i32.const 1
            local.set 112
            local.get 111
            local.get 112
            i32.and
            local.set 113
            block  ;; label = @5
              local.get 113
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=44
              local.set 114
              local.get 5
              i32.load offset=28
              local.set 115
              local.get 114
              local.get 115
              i32.add
              local.set 116
              local.get 116
              i32.load8_u
              local.set 117
              i32.const 24
              local.set 118
              local.get 117
              local.get 118
              i32.shl
              local.set 119
              local.get 119
              local.get 118
              i32.shr_s
              local.set 120
              local.get 5
              i32.load offset=44
              local.set 121
              local.get 5
              i32.load offset=28
              local.set 122
              local.get 5
              i32.load offset=20
              local.set 123
              local.get 122
              local.get 123
              i32.add
              local.set 124
              local.get 121
              local.get 124
              i32.add
              local.set 125
              local.get 125
              i32.load8_u
              local.set 126
              i32.const 24
              local.set 127
              local.get 126
              local.get 127
              i32.shl
              local.set 128
              local.get 128
              local.get 127
              i32.shr_s
              local.set 129
              local.get 5
              i32.load offset=20
              local.set 130
              local.get 129
              local.get 130
              i32.shl
              local.set 131
              local.get 120
              local.get 131
              i32.add
              local.set 132
              local.get 5
              i32.load offset=16
              local.set 133
              local.get 132
              local.set 134
              local.get 133
              local.set 135
              local.get 134
              local.get 135
              i32.le_s
              local.set 136
              i32.const 1
              local.set 137
              local.get 136
              local.get 137
              i32.and
              local.set 138
              block  ;; label = @6
                block  ;; label = @7
                  local.get 138
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 139
                  local.get 5
                  i32.load offset=44
                  local.set 140
                  local.get 5
                  i32.load offset=28
                  local.set 141
                  local.get 5
                  i32.load offset=20
                  local.set 142
                  local.get 141
                  local.get 142
                  i32.add
                  local.set 143
                  local.get 140
                  local.get 143
                  i32.add
                  local.set 144
                  local.get 144
                  i32.load8_u
                  local.set 145
                  i32.const 24
                  local.set 146
                  local.get 145
                  local.get 146
                  i32.shl
                  local.set 147
                  local.get 147
                  local.get 146
                  i32.shr_s
                  local.set 148
                  local.get 5
                  i32.load offset=20
                  local.set 149
                  local.get 148
                  local.get 149
                  i32.shl
                  local.set 150
                  local.get 5
                  i32.load offset=44
                  local.set 151
                  local.get 5
                  i32.load offset=28
                  local.set 152
                  local.get 151
                  local.get 152
                  i32.add
                  local.set 153
                  local.get 153
                  i32.load8_u
                  local.set 154
                  i32.const 24
                  local.set 155
                  local.get 154
                  local.get 155
                  i32.shl
                  local.set 156
                  local.get 156
                  local.get 155
                  i32.shr_s
                  local.set 157
                  local.get 157
                  local.get 150
                  i32.add
                  local.set 158
                  local.get 153
                  local.get 158
                  i32.store8
                  local.get 5
                  i32.load offset=44
                  local.set 159
                  local.get 5
                  i32.load offset=28
                  local.set 160
                  local.get 5
                  i32.load offset=20
                  local.set 161
                  local.get 160
                  local.get 161
                  i32.add
                  local.set 162
                  local.get 159
                  local.get 162
                  i32.add
                  local.set 163
                  local.get 163
                  local.get 139
                  i32.store8
                  br 1 (;@6;)
                end
                i32.const 0
                local.set 164
                local.get 5
                i32.load offset=44
                local.set 165
                local.get 5
                i32.load offset=28
                local.set 166
                local.get 165
                local.get 166
                i32.add
                local.set 167
                local.get 167
                i32.load8_u
                local.set 168
                i32.const 24
                local.set 169
                local.get 168
                local.get 169
                i32.shl
                local.set 170
                local.get 170
                local.get 169
                i32.shr_s
                local.set 171
                local.get 5
                i32.load offset=44
                local.set 172
                local.get 5
                i32.load offset=28
                local.set 173
                local.get 5
                i32.load offset=20
                local.set 174
                local.get 173
                local.get 174
                i32.add
                local.set 175
                local.get 172
                local.get 175
                i32.add
                local.set 176
                local.get 176
                i32.load8_u
                local.set 177
                i32.const 24
                local.set 178
                local.get 177
                local.get 178
                i32.shl
                local.set 179
                local.get 179
                local.get 178
                i32.shr_s
                local.set 180
                local.get 5
                i32.load offset=20
                local.set 181
                local.get 180
                local.get 181
                i32.shl
                local.set 182
                local.get 171
                local.get 182
                i32.sub
                local.set 183
                local.get 5
                i32.load offset=16
                local.set 184
                local.get 164
                local.get 184
                i32.sub
                local.set 185
                local.get 183
                local.set 186
                local.get 185
                local.set 187
                local.get 186
                local.get 187
                i32.ge_s
                local.set 188
                i32.const 1
                local.set 189
                local.get 188
                local.get 189
                i32.and
                local.set 190
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 190
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 5
                    i32.load offset=44
                    local.set 191
                    local.get 5
                    i32.load offset=28
                    local.set 192
                    local.get 5
                    i32.load offset=20
                    local.set 193
                    local.get 192
                    local.get 193
                    i32.add
                    local.set 194
                    local.get 191
                    local.get 194
                    i32.add
                    local.set 195
                    local.get 195
                    i32.load8_u
                    local.set 196
                    i32.const 24
                    local.set 197
                    local.get 196
                    local.get 197
                    i32.shl
                    local.set 198
                    local.get 198
                    local.get 197
                    i32.shr_s
                    local.set 199
                    local.get 5
                    i32.load offset=20
                    local.set 200
                    local.get 199
                    local.get 200
                    i32.shl
                    local.set 201
                    local.get 5
                    i32.load offset=44
                    local.set 202
                    local.get 5
                    i32.load offset=28
                    local.set 203
                    local.get 202
                    local.get 203
                    i32.add
                    local.set 204
                    local.get 204
                    i32.load8_u
                    local.set 205
                    i32.const 24
                    local.set 206
                    local.get 205
                    local.get 206
                    i32.shl
                    local.set 207
                    local.get 207
                    local.get 206
                    i32.shr_s
                    local.set 208
                    local.get 208
                    local.get 201
                    i32.sub
                    local.set 209
                    local.get 204
                    local.get 209
                    i32.store8
                    local.get 5
                    i32.load offset=28
                    local.set 210
                    local.get 5
                    i32.load offset=20
                    local.set 211
                    local.get 210
                    local.get 211
                    i32.add
                    local.set 212
                    local.get 5
                    local.get 212
                    i32.store offset=24
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 5
                        i32.load offset=24
                        local.set 213
                        local.get 5
                        i32.load offset=12
                        local.set 214
                        local.get 213
                        local.set 215
                        local.get 214
                        local.set 216
                        local.get 215
                        local.get 216
                        i32.lt_s
                        local.set 217
                        i32.const 1
                        local.set 218
                        local.get 217
                        local.get 218
                        i32.and
                        local.set 219
                        local.get 219
                        i32.eqz
                        br_if 1 (;@9;)
                        i32.const 0
                        local.set 220
                        local.get 5
                        i32.load offset=44
                        local.set 221
                        local.get 5
                        i32.load offset=24
                        local.set 222
                        local.get 221
                        local.get 222
                        i32.add
                        local.set 223
                        local.get 223
                        i32.load8_u
                        local.set 224
                        i32.const 255
                        local.set 225
                        local.get 224
                        local.get 225
                        i32.and
                        local.set 226
                        i32.const 255
                        local.set 227
                        local.get 220
                        local.get 227
                        i32.and
                        local.set 228
                        local.get 226
                        local.get 228
                        i32.ne
                        local.set 229
                        i32.const 1
                        local.set 230
                        local.get 229
                        local.get 230
                        i32.and
                        local.set 231
                        block  ;; label = @11
                          local.get 231
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 232
                          local.get 5
                          i32.load offset=44
                          local.set 233
                          local.get 5
                          i32.load offset=24
                          local.set 234
                          local.get 233
                          local.get 234
                          i32.add
                          local.set 235
                          local.get 235
                          local.get 232
                          i32.store8
                          br 2 (;@9;)
                        end
                        i32.const 0
                        local.set 236
                        local.get 5
                        i32.load offset=44
                        local.set 237
                        local.get 5
                        i32.load offset=24
                        local.set 238
                        local.get 237
                        local.get 238
                        i32.add
                        local.set 239
                        local.get 239
                        local.get 236
                        i32.store8
                        local.get 5
                        i32.load offset=24
                        local.set 240
                        i32.const 1
                        local.set 241
                        local.get 240
                        local.get 241
                        i32.add
                        local.set 242
                        local.get 5
                        local.get 242
                        i32.store offset=24
                        br 0 (;@10;)
                        unreachable
                      end
                      unreachable
                    end
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 243
                  local.get 5
                  i32.load offset=44
                  local.set 244
                  local.get 5
                  i32.load offset=28
                  local.set 245
                  local.get 5
                  i32.load offset=20
                  local.set 246
                  local.get 245
                  local.get 246
                  i32.add
                  local.set 247
                  local.get 244
                  local.get 247
                  i32.add
                  local.set 248
                  local.get 248
                  i32.load8_u
                  local.set 249
                  i32.const 255
                  local.set 250
                  local.get 249
                  local.get 250
                  i32.and
                  local.set 251
                  i32.const 255
                  local.set 252
                  local.get 243
                  local.get 252
                  i32.and
                  local.set 253
                  local.get 251
                  local.get 253
                  i32.ne
                  local.set 254
                  i32.const 1
                  local.set 255
                  local.get 254
                  local.get 255
                  i32.and
                  local.set 256
                  block  ;; label = @8
                    local.get 256
                    i32.eqz
                    br_if 0 (;@8;)
                    br 3 (;@5;)
                  end
                end
              end
              local.get 5
              i32.load offset=20
              local.set 257
              i32.const 1
              local.set 258
              local.get 257
              local.get 258
              i32.add
              local.set 259
              local.get 5
              local.get 259
              i32.store offset=20
              br 1 (;@4;)
            end
          end
        end
        local.get 5
        i32.load offset=28
        local.set 260
        i32.const 1
        local.set 261
        local.get 260
        local.get 261
        i32.add
        local.set 262
        local.get 5
        local.get 262
        i32.store offset=28
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $ge25519_double (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 176
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=164
    local.get 4
    local.get 1
    i32.store offset=160
    local.get 4
    i32.load offset=160
    local.set 6
    local.get 5
    local.get 6
    call $ge25519_double_p1p1
    local.get 4
    i32.load offset=164
    local.set 7
    local.get 4
    local.get 7
    i32.store offset=172
    local.get 4
    local.get 5
    i32.store offset=168
    local.get 4
    i32.load offset=172
    local.set 8
    local.get 4
    i32.load offset=168
    local.set 9
    local.get 4
    i32.load offset=168
    local.set 10
    i32.const 120
    local.set 11
    local.get 10
    local.get 11
    i32.add
    local.set 12
    local.get 8
    local.get 9
    local.get 12
    call $curve25519_mul
    local.get 4
    i32.load offset=172
    local.set 13
    i32.const 40
    local.set 14
    local.get 13
    local.get 14
    i32.add
    local.set 15
    local.get 4
    i32.load offset=168
    local.set 16
    i32.const 40
    local.set 17
    local.get 16
    local.get 17
    i32.add
    local.set 18
    local.get 4
    i32.load offset=168
    local.set 19
    i32.const 80
    local.set 20
    local.get 19
    local.get 20
    i32.add
    local.set 21
    local.get 15
    local.get 18
    local.get 21
    call $curve25519_mul
    local.get 4
    i32.load offset=172
    local.set 22
    i32.const 80
    local.set 23
    local.get 22
    local.get 23
    i32.add
    local.set 24
    local.get 4
    i32.load offset=168
    local.set 25
    i32.const 80
    local.set 26
    local.get 25
    local.get 26
    i32.add
    local.set 27
    local.get 4
    i32.load offset=168
    local.set 28
    i32.const 120
    local.set 29
    local.get 28
    local.get 29
    i32.add
    local.set 30
    local.get 24
    local.get 27
    local.get 30
    call $curve25519_mul
    local.get 4
    i32.load offset=172
    local.set 31
    i32.const 120
    local.set 32
    local.get 31
    local.get 32
    i32.add
    local.set 33
    local.get 4
    i32.load offset=168
    local.set 34
    local.get 4
    i32.load offset=168
    local.set 35
    i32.const 40
    local.set 36
    local.get 35
    local.get 36
    i32.add
    local.set 37
    local.get 33
    local.get 34
    local.get 37
    call $curve25519_mul
    i32.const 176
    local.set 38
    local.get 4
    local.get 38
    i32.add
    local.set 39
    local.get 39
    global.set 0
    return)
  (func $ge25519_full_to_pniels (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 48
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 5776
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 4
    i32.load offset=4
    local.set 7
    i32.const 40
    local.set 8
    local.get 7
    local.get 8
    i32.add
    local.set 9
    local.get 4
    i32.load offset=4
    local.set 10
    local.get 4
    local.get 6
    i32.store offset=24
    local.get 4
    local.get 9
    i32.store offset=20
    local.get 4
    local.get 10
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 11
    local.get 11
    i32.load
    local.set 12
    i32.const 134217690
    local.set 13
    local.get 12
    local.get 13
    i32.add
    local.set 14
    local.get 4
    i32.load offset=16
    local.set 15
    local.get 15
    i32.load
    local.set 16
    local.get 14
    local.get 16
    i32.sub
    local.set 17
    local.get 4
    i32.load offset=24
    local.set 18
    local.get 18
    local.get 17
    i32.store
    local.get 4
    i32.load offset=24
    local.set 19
    local.get 19
    i32.load
    local.set 20
    i32.const 26
    local.set 21
    local.get 20
    local.get 21
    i32.shr_u
    local.set 22
    local.get 4
    local.get 22
    i32.store offset=12
    local.get 4
    i32.load offset=24
    local.set 23
    local.get 23
    i32.load
    local.set 24
    i32.const 67108863
    local.set 25
    local.get 24
    local.get 25
    i32.and
    local.set 26
    local.get 23
    local.get 26
    i32.store
    local.get 4
    i32.load offset=20
    local.set 27
    local.get 27
    i32.load offset=4
    local.set 28
    i32.const 67108862
    local.set 29
    local.get 28
    local.get 29
    i32.add
    local.set 30
    local.get 4
    i32.load offset=16
    local.set 31
    local.get 31
    i32.load offset=4
    local.set 32
    local.get 30
    local.get 32
    i32.sub
    local.set 33
    local.get 4
    i32.load offset=12
    local.set 34
    local.get 33
    local.get 34
    i32.add
    local.set 35
    local.get 4
    i32.load offset=24
    local.set 36
    local.get 36
    local.get 35
    i32.store offset=4
    local.get 4
    i32.load offset=24
    local.set 37
    local.get 37
    i32.load offset=4
    local.set 38
    i32.const 25
    local.set 39
    local.get 38
    local.get 39
    i32.shr_u
    local.set 40
    local.get 4
    local.get 40
    i32.store offset=12
    local.get 4
    i32.load offset=24
    local.set 41
    local.get 41
    i32.load offset=4
    local.set 42
    i32.const 33554431
    local.set 43
    local.get 42
    local.get 43
    i32.and
    local.set 44
    local.get 41
    local.get 44
    i32.store offset=4
    local.get 4
    i32.load offset=20
    local.set 45
    local.get 45
    i32.load offset=8
    local.set 46
    i32.const 134217726
    local.set 47
    local.get 46
    local.get 47
    i32.add
    local.set 48
    local.get 4
    i32.load offset=16
    local.set 49
    local.get 49
    i32.load offset=8
    local.set 50
    local.get 48
    local.get 50
    i32.sub
    local.set 51
    local.get 4
    i32.load offset=12
    local.set 52
    local.get 51
    local.get 52
    i32.add
    local.set 53
    local.get 4
    i32.load offset=24
    local.set 54
    local.get 54
    local.get 53
    i32.store offset=8
    local.get 4
    i32.load offset=24
    local.set 55
    local.get 55
    i32.load offset=8
    local.set 56
    i32.const 26
    local.set 57
    local.get 56
    local.get 57
    i32.shr_u
    local.set 58
    local.get 4
    local.get 58
    i32.store offset=12
    local.get 4
    i32.load offset=24
    local.set 59
    local.get 59
    i32.load offset=8
    local.set 60
    i32.const 67108863
    local.set 61
    local.get 60
    local.get 61
    i32.and
    local.set 62
    local.get 59
    local.get 62
    i32.store offset=8
    local.get 4
    i32.load offset=20
    local.set 63
    local.get 63
    i32.load offset=12
    local.set 64
    i32.const 67108862
    local.set 65
    local.get 64
    local.get 65
    i32.add
    local.set 66
    local.get 4
    i32.load offset=16
    local.set 67
    local.get 67
    i32.load offset=12
    local.set 68
    local.get 66
    local.get 68
    i32.sub
    local.set 69
    local.get 4
    i32.load offset=12
    local.set 70
    local.get 69
    local.get 70
    i32.add
    local.set 71
    local.get 4
    i32.load offset=24
    local.set 72
    local.get 72
    local.get 71
    i32.store offset=12
    local.get 4
    i32.load offset=24
    local.set 73
    local.get 73
    i32.load offset=12
    local.set 74
    i32.const 25
    local.set 75
    local.get 74
    local.get 75
    i32.shr_u
    local.set 76
    local.get 4
    local.get 76
    i32.store offset=12
    local.get 4
    i32.load offset=24
    local.set 77
    local.get 77
    i32.load offset=12
    local.set 78
    i32.const 33554431
    local.set 79
    local.get 78
    local.get 79
    i32.and
    local.set 80
    local.get 77
    local.get 80
    i32.store offset=12
    local.get 4
    i32.load offset=20
    local.set 81
    local.get 81
    i32.load offset=16
    local.set 82
    i32.const 134217726
    local.set 83
    local.get 82
    local.get 83
    i32.add
    local.set 84
    local.get 4
    i32.load offset=16
    local.set 85
    local.get 85
    i32.load offset=16
    local.set 86
    local.get 84
    local.get 86
    i32.sub
    local.set 87
    local.get 4
    i32.load offset=12
    local.set 88
    local.get 87
    local.get 88
    i32.add
    local.set 89
    local.get 4
    i32.load offset=24
    local.set 90
    local.get 90
    local.get 89
    i32.store offset=16
    local.get 4
    i32.load offset=20
    local.set 91
    local.get 91
    i32.load offset=20
    local.set 92
    i32.const 67108862
    local.set 93
    local.get 92
    local.get 93
    i32.add
    local.set 94
    local.get 4
    i32.load offset=16
    local.set 95
    local.get 95
    i32.load offset=20
    local.set 96
    local.get 94
    local.get 96
    i32.sub
    local.set 97
    local.get 4
    i32.load offset=24
    local.set 98
    local.get 98
    local.get 97
    i32.store offset=20
    local.get 4
    i32.load offset=20
    local.set 99
    local.get 99
    i32.load offset=24
    local.set 100
    i32.const 134217726
    local.set 101
    local.get 100
    local.get 101
    i32.add
    local.set 102
    local.get 4
    i32.load offset=16
    local.set 103
    local.get 103
    i32.load offset=24
    local.set 104
    local.get 102
    local.get 104
    i32.sub
    local.set 105
    local.get 4
    i32.load offset=24
    local.set 106
    local.get 106
    local.get 105
    i32.store offset=24
    local.get 4
    i32.load offset=20
    local.set 107
    local.get 107
    i32.load offset=28
    local.set 108
    i32.const 67108862
    local.set 109
    local.get 108
    local.get 109
    i32.add
    local.set 110
    local.get 4
    i32.load offset=16
    local.set 111
    local.get 111
    i32.load offset=28
    local.set 112
    local.get 110
    local.get 112
    i32.sub
    local.set 113
    local.get 4
    i32.load offset=24
    local.set 114
    local.get 114
    local.get 113
    i32.store offset=28
    local.get 4
    i32.load offset=20
    local.set 115
    local.get 115
    i32.load offset=32
    local.set 116
    i32.const 134217726
    local.set 117
    local.get 116
    local.get 117
    i32.add
    local.set 118
    local.get 4
    i32.load offset=16
    local.set 119
    local.get 119
    i32.load offset=32
    local.set 120
    local.get 118
    local.get 120
    i32.sub
    local.set 121
    local.get 4
    i32.load offset=24
    local.set 122
    local.get 122
    local.get 121
    i32.store offset=32
    local.get 4
    i32.load offset=20
    local.set 123
    local.get 123
    i32.load offset=36
    local.set 124
    i32.const 67108862
    local.set 125
    local.get 124
    local.get 125
    i32.add
    local.set 126
    local.get 4
    i32.load offset=16
    local.set 127
    local.get 127
    i32.load offset=36
    local.set 128
    local.get 126
    local.get 128
    i32.sub
    local.set 129
    local.get 4
    i32.load offset=24
    local.set 130
    local.get 130
    local.get 129
    i32.store offset=36
    local.get 4
    i32.load offset=8
    local.set 131
    i32.const 40
    local.set 132
    local.get 131
    local.get 132
    i32.add
    local.set 133
    local.get 4
    i32.load offset=4
    local.set 134
    i32.const 40
    local.set 135
    local.get 134
    local.get 135
    i32.add
    local.set 136
    local.get 4
    i32.load offset=4
    local.set 137
    local.get 4
    local.get 133
    i32.store offset=36
    local.get 4
    local.get 136
    i32.store offset=32
    local.get 4
    local.get 137
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 138
    local.get 138
    i32.load
    local.set 139
    local.get 4
    i32.load offset=28
    local.set 140
    local.get 140
    i32.load
    local.set 141
    local.get 139
    local.get 141
    i32.add
    local.set 142
    local.get 4
    i32.load offset=36
    local.set 143
    local.get 143
    local.get 142
    i32.store
    local.get 4
    i32.load offset=32
    local.set 144
    local.get 144
    i32.load offset=4
    local.set 145
    local.get 4
    i32.load offset=28
    local.set 146
    local.get 146
    i32.load offset=4
    local.set 147
    local.get 145
    local.get 147
    i32.add
    local.set 148
    local.get 4
    i32.load offset=36
    local.set 149
    local.get 149
    local.get 148
    i32.store offset=4
    local.get 4
    i32.load offset=32
    local.set 150
    local.get 150
    i32.load offset=8
    local.set 151
    local.get 4
    i32.load offset=28
    local.set 152
    local.get 152
    i32.load offset=8
    local.set 153
    local.get 151
    local.get 153
    i32.add
    local.set 154
    local.get 4
    i32.load offset=36
    local.set 155
    local.get 155
    local.get 154
    i32.store offset=8
    local.get 4
    i32.load offset=32
    local.set 156
    local.get 156
    i32.load offset=12
    local.set 157
    local.get 4
    i32.load offset=28
    local.set 158
    local.get 158
    i32.load offset=12
    local.set 159
    local.get 157
    local.get 159
    i32.add
    local.set 160
    local.get 4
    i32.load offset=36
    local.set 161
    local.get 161
    local.get 160
    i32.store offset=12
    local.get 4
    i32.load offset=32
    local.set 162
    local.get 162
    i32.load offset=16
    local.set 163
    local.get 4
    i32.load offset=28
    local.set 164
    local.get 164
    i32.load offset=16
    local.set 165
    local.get 163
    local.get 165
    i32.add
    local.set 166
    local.get 4
    i32.load offset=36
    local.set 167
    local.get 167
    local.get 166
    i32.store offset=16
    local.get 4
    i32.load offset=32
    local.set 168
    local.get 168
    i32.load offset=20
    local.set 169
    local.get 4
    i32.load offset=28
    local.set 170
    local.get 170
    i32.load offset=20
    local.set 171
    local.get 169
    local.get 171
    i32.add
    local.set 172
    local.get 4
    i32.load offset=36
    local.set 173
    local.get 173
    local.get 172
    i32.store offset=20
    local.get 4
    i32.load offset=32
    local.set 174
    local.get 174
    i32.load offset=24
    local.set 175
    local.get 4
    i32.load offset=28
    local.set 176
    local.get 176
    i32.load offset=24
    local.set 177
    local.get 175
    local.get 177
    i32.add
    local.set 178
    local.get 4
    i32.load offset=36
    local.set 179
    local.get 179
    local.get 178
    i32.store offset=24
    local.get 4
    i32.load offset=32
    local.set 180
    local.get 180
    i32.load offset=28
    local.set 181
    local.get 4
    i32.load offset=28
    local.set 182
    local.get 182
    i32.load offset=28
    local.set 183
    local.get 181
    local.get 183
    i32.add
    local.set 184
    local.get 4
    i32.load offset=36
    local.set 185
    local.get 185
    local.get 184
    i32.store offset=28
    local.get 4
    i32.load offset=32
    local.set 186
    local.get 186
    i32.load offset=32
    local.set 187
    local.get 4
    i32.load offset=28
    local.set 188
    local.get 188
    i32.load offset=32
    local.set 189
    local.get 187
    local.get 189
    i32.add
    local.set 190
    local.get 4
    i32.load offset=36
    local.set 191
    local.get 191
    local.get 190
    i32.store offset=32
    local.get 4
    i32.load offset=32
    local.set 192
    local.get 192
    i32.load offset=36
    local.set 193
    local.get 4
    i32.load offset=28
    local.set 194
    local.get 194
    i32.load offset=36
    local.set 195
    local.get 193
    local.get 195
    i32.add
    local.set 196
    local.get 4
    i32.load offset=36
    local.set 197
    local.get 197
    local.get 196
    i32.store offset=36
    local.get 4
    i32.load offset=8
    local.set 198
    i32.const 80
    local.set 199
    local.get 198
    local.get 199
    i32.add
    local.set 200
    local.get 4
    i32.load offset=4
    local.set 201
    i32.const 80
    local.set 202
    local.get 201
    local.get 202
    i32.add
    local.set 203
    local.get 4
    local.get 200
    i32.store offset=44
    local.get 4
    local.get 203
    i32.store offset=40
    local.get 4
    i32.load offset=40
    local.set 204
    local.get 204
    i32.load
    local.set 205
    local.get 4
    i32.load offset=44
    local.set 206
    local.get 206
    local.get 205
    i32.store
    local.get 4
    i32.load offset=40
    local.set 207
    local.get 207
    i32.load offset=4
    local.set 208
    local.get 4
    i32.load offset=44
    local.set 209
    local.get 209
    local.get 208
    i32.store offset=4
    local.get 4
    i32.load offset=40
    local.set 210
    local.get 210
    i32.load offset=8
    local.set 211
    local.get 4
    i32.load offset=44
    local.set 212
    local.get 212
    local.get 211
    i32.store offset=8
    local.get 4
    i32.load offset=40
    local.set 213
    local.get 213
    i32.load offset=12
    local.set 214
    local.get 4
    i32.load offset=44
    local.set 215
    local.get 215
    local.get 214
    i32.store offset=12
    local.get 4
    i32.load offset=40
    local.set 216
    local.get 216
    i32.load offset=16
    local.set 217
    local.get 4
    i32.load offset=44
    local.set 218
    local.get 218
    local.get 217
    i32.store offset=16
    local.get 4
    i32.load offset=40
    local.set 219
    local.get 219
    i32.load offset=20
    local.set 220
    local.get 4
    i32.load offset=44
    local.set 221
    local.get 221
    local.get 220
    i32.store offset=20
    local.get 4
    i32.load offset=40
    local.set 222
    local.get 222
    i32.load offset=24
    local.set 223
    local.get 4
    i32.load offset=44
    local.set 224
    local.get 224
    local.get 223
    i32.store offset=24
    local.get 4
    i32.load offset=40
    local.set 225
    local.get 225
    i32.load offset=28
    local.set 226
    local.get 4
    i32.load offset=44
    local.set 227
    local.get 227
    local.get 226
    i32.store offset=28
    local.get 4
    i32.load offset=40
    local.set 228
    local.get 228
    i32.load offset=32
    local.set 229
    local.get 4
    i32.load offset=44
    local.set 230
    local.get 230
    local.get 229
    i32.store offset=32
    local.get 4
    i32.load offset=40
    local.set 231
    local.get 231
    i32.load offset=36
    local.set 232
    local.get 4
    i32.load offset=44
    local.set 233
    local.get 233
    local.get 232
    i32.store offset=36
    local.get 4
    i32.load offset=8
    local.set 234
    i32.const 120
    local.set 235
    local.get 234
    local.get 235
    i32.add
    local.set 236
    local.get 4
    i32.load offset=4
    local.set 237
    i32.const 120
    local.set 238
    local.get 237
    local.get 238
    i32.add
    local.set 239
    local.get 236
    local.get 239
    local.get 5
    call $curve25519_mul
    i32.const 48
    local.set 240
    local.get 4
    local.get 240
    i32.add
    local.set 241
    local.get 241
    global.set 0
    return)
  (func $ge25519_pnielsadd (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 480
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    i32.const 5776
    local.set 6
    i32.const 96
    local.set 7
    local.get 5
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    i32.const 144
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    local.get 5
    local.set 13
    i32.const 48
    local.set 14
    local.get 5
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.set 16
    i32.const 192
    local.set 17
    local.get 5
    local.get 17
    i32.add
    local.set 18
    local.get 18
    local.set 19
    i32.const 288
    local.set 20
    local.get 5
    local.get 20
    i32.add
    local.set 21
    local.get 21
    local.set 22
    i32.const 240
    local.set 23
    local.get 5
    local.get 23
    i32.add
    local.set 24
    local.get 24
    local.set 25
    local.get 5
    local.get 0
    i32.store offset=340
    local.get 5
    local.get 1
    i32.store offset=336
    local.get 5
    local.get 2
    i32.store offset=332
    local.get 5
    i32.load offset=336
    local.set 26
    i32.const 40
    local.set 27
    local.get 26
    local.get 27
    i32.add
    local.set 28
    local.get 5
    i32.load offset=336
    local.set 29
    local.get 5
    local.get 22
    i32.store offset=356
    local.get 5
    local.get 28
    i32.store offset=352
    local.get 5
    local.get 29
    i32.store offset=348
    local.get 5
    i32.load offset=352
    local.set 30
    local.get 30
    i32.load
    local.set 31
    i32.const 134217690
    local.set 32
    local.get 31
    local.get 32
    i32.add
    local.set 33
    local.get 5
    i32.load offset=348
    local.set 34
    local.get 34
    i32.load
    local.set 35
    local.get 33
    local.get 35
    i32.sub
    local.set 36
    local.get 5
    i32.load offset=356
    local.set 37
    local.get 37
    local.get 36
    i32.store
    local.get 5
    i32.load offset=356
    local.set 38
    local.get 38
    i32.load
    local.set 39
    i32.const 26
    local.set 40
    local.get 39
    local.get 40
    i32.shr_u
    local.set 41
    local.get 5
    local.get 41
    i32.store offset=344
    local.get 5
    i32.load offset=356
    local.set 42
    local.get 42
    i32.load
    local.set 43
    i32.const 67108863
    local.set 44
    local.get 43
    local.get 44
    i32.and
    local.set 45
    local.get 42
    local.get 45
    i32.store
    local.get 5
    i32.load offset=352
    local.set 46
    local.get 46
    i32.load offset=4
    local.set 47
    i32.const 67108862
    local.set 48
    local.get 47
    local.get 48
    i32.add
    local.set 49
    local.get 5
    i32.load offset=348
    local.set 50
    local.get 50
    i32.load offset=4
    local.set 51
    local.get 49
    local.get 51
    i32.sub
    local.set 52
    local.get 5
    i32.load offset=344
    local.set 53
    local.get 52
    local.get 53
    i32.add
    local.set 54
    local.get 5
    i32.load offset=356
    local.set 55
    local.get 55
    local.get 54
    i32.store offset=4
    local.get 5
    i32.load offset=356
    local.set 56
    local.get 56
    i32.load offset=4
    local.set 57
    i32.const 25
    local.set 58
    local.get 57
    local.get 58
    i32.shr_u
    local.set 59
    local.get 5
    local.get 59
    i32.store offset=344
    local.get 5
    i32.load offset=356
    local.set 60
    local.get 60
    i32.load offset=4
    local.set 61
    i32.const 33554431
    local.set 62
    local.get 61
    local.get 62
    i32.and
    local.set 63
    local.get 60
    local.get 63
    i32.store offset=4
    local.get 5
    i32.load offset=352
    local.set 64
    local.get 64
    i32.load offset=8
    local.set 65
    i32.const 134217726
    local.set 66
    local.get 65
    local.get 66
    i32.add
    local.set 67
    local.get 5
    i32.load offset=348
    local.set 68
    local.get 68
    i32.load offset=8
    local.set 69
    local.get 67
    local.get 69
    i32.sub
    local.set 70
    local.get 5
    i32.load offset=344
    local.set 71
    local.get 70
    local.get 71
    i32.add
    local.set 72
    local.get 5
    i32.load offset=356
    local.set 73
    local.get 73
    local.get 72
    i32.store offset=8
    local.get 5
    i32.load offset=356
    local.set 74
    local.get 74
    i32.load offset=8
    local.set 75
    i32.const 26
    local.set 76
    local.get 75
    local.get 76
    i32.shr_u
    local.set 77
    local.get 5
    local.get 77
    i32.store offset=344
    local.get 5
    i32.load offset=356
    local.set 78
    local.get 78
    i32.load offset=8
    local.set 79
    i32.const 67108863
    local.set 80
    local.get 79
    local.get 80
    i32.and
    local.set 81
    local.get 78
    local.get 81
    i32.store offset=8
    local.get 5
    i32.load offset=352
    local.set 82
    local.get 82
    i32.load offset=12
    local.set 83
    i32.const 67108862
    local.set 84
    local.get 83
    local.get 84
    i32.add
    local.set 85
    local.get 5
    i32.load offset=348
    local.set 86
    local.get 86
    i32.load offset=12
    local.set 87
    local.get 85
    local.get 87
    i32.sub
    local.set 88
    local.get 5
    i32.load offset=344
    local.set 89
    local.get 88
    local.get 89
    i32.add
    local.set 90
    local.get 5
    i32.load offset=356
    local.set 91
    local.get 91
    local.get 90
    i32.store offset=12
    local.get 5
    i32.load offset=356
    local.set 92
    local.get 92
    i32.load offset=12
    local.set 93
    i32.const 25
    local.set 94
    local.get 93
    local.get 94
    i32.shr_u
    local.set 95
    local.get 5
    local.get 95
    i32.store offset=344
    local.get 5
    i32.load offset=356
    local.set 96
    local.get 96
    i32.load offset=12
    local.set 97
    i32.const 33554431
    local.set 98
    local.get 97
    local.get 98
    i32.and
    local.set 99
    local.get 96
    local.get 99
    i32.store offset=12
    local.get 5
    i32.load offset=352
    local.set 100
    local.get 100
    i32.load offset=16
    local.set 101
    i32.const 134217726
    local.set 102
    local.get 101
    local.get 102
    i32.add
    local.set 103
    local.get 5
    i32.load offset=348
    local.set 104
    local.get 104
    i32.load offset=16
    local.set 105
    local.get 103
    local.get 105
    i32.sub
    local.set 106
    local.get 5
    i32.load offset=344
    local.set 107
    local.get 106
    local.get 107
    i32.add
    local.set 108
    local.get 5
    i32.load offset=356
    local.set 109
    local.get 109
    local.get 108
    i32.store offset=16
    local.get 5
    i32.load offset=352
    local.set 110
    local.get 110
    i32.load offset=20
    local.set 111
    i32.const 67108862
    local.set 112
    local.get 111
    local.get 112
    i32.add
    local.set 113
    local.get 5
    i32.load offset=348
    local.set 114
    local.get 114
    i32.load offset=20
    local.set 115
    local.get 113
    local.get 115
    i32.sub
    local.set 116
    local.get 5
    i32.load offset=356
    local.set 117
    local.get 117
    local.get 116
    i32.store offset=20
    local.get 5
    i32.load offset=352
    local.set 118
    local.get 118
    i32.load offset=24
    local.set 119
    i32.const 134217726
    local.set 120
    local.get 119
    local.get 120
    i32.add
    local.set 121
    local.get 5
    i32.load offset=348
    local.set 122
    local.get 122
    i32.load offset=24
    local.set 123
    local.get 121
    local.get 123
    i32.sub
    local.set 124
    local.get 5
    i32.load offset=356
    local.set 125
    local.get 125
    local.get 124
    i32.store offset=24
    local.get 5
    i32.load offset=352
    local.set 126
    local.get 126
    i32.load offset=28
    local.set 127
    i32.const 67108862
    local.set 128
    local.get 127
    local.get 128
    i32.add
    local.set 129
    local.get 5
    i32.load offset=348
    local.set 130
    local.get 130
    i32.load offset=28
    local.set 131
    local.get 129
    local.get 131
    i32.sub
    local.set 132
    local.get 5
    i32.load offset=356
    local.set 133
    local.get 133
    local.get 132
    i32.store offset=28
    local.get 5
    i32.load offset=352
    local.set 134
    local.get 134
    i32.load offset=32
    local.set 135
    i32.const 134217726
    local.set 136
    local.get 135
    local.get 136
    i32.add
    local.set 137
    local.get 5
    i32.load offset=348
    local.set 138
    local.get 138
    i32.load offset=32
    local.set 139
    local.get 137
    local.get 139
    i32.sub
    local.set 140
    local.get 5
    i32.load offset=356
    local.set 141
    local.get 141
    local.get 140
    i32.store offset=32
    local.get 5
    i32.load offset=352
    local.set 142
    local.get 142
    i32.load offset=36
    local.set 143
    i32.const 67108862
    local.set 144
    local.get 143
    local.get 144
    i32.add
    local.set 145
    local.get 5
    i32.load offset=348
    local.set 146
    local.get 146
    i32.load offset=36
    local.set 147
    local.get 145
    local.get 147
    i32.sub
    local.set 148
    local.get 5
    i32.load offset=356
    local.set 149
    local.get 149
    local.get 148
    i32.store offset=36
    local.get 5
    i32.load offset=336
    local.set 150
    i32.const 40
    local.set 151
    local.get 150
    local.get 151
    i32.add
    local.set 152
    local.get 5
    i32.load offset=336
    local.set 153
    local.get 5
    local.get 25
    i32.store offset=368
    local.get 5
    local.get 152
    i32.store offset=364
    local.get 5
    local.get 153
    i32.store offset=360
    local.get 5
    i32.load offset=364
    local.set 154
    local.get 154
    i32.load
    local.set 155
    local.get 5
    i32.load offset=360
    local.set 156
    local.get 156
    i32.load
    local.set 157
    local.get 155
    local.get 157
    i32.add
    local.set 158
    local.get 5
    i32.load offset=368
    local.set 159
    local.get 159
    local.get 158
    i32.store
    local.get 5
    i32.load offset=364
    local.set 160
    local.get 160
    i32.load offset=4
    local.set 161
    local.get 5
    i32.load offset=360
    local.set 162
    local.get 162
    i32.load offset=4
    local.set 163
    local.get 161
    local.get 163
    i32.add
    local.set 164
    local.get 5
    i32.load offset=368
    local.set 165
    local.get 165
    local.get 164
    i32.store offset=4
    local.get 5
    i32.load offset=364
    local.set 166
    local.get 166
    i32.load offset=8
    local.set 167
    local.get 5
    i32.load offset=360
    local.set 168
    local.get 168
    i32.load offset=8
    local.set 169
    local.get 167
    local.get 169
    i32.add
    local.set 170
    local.get 5
    i32.load offset=368
    local.set 171
    local.get 171
    local.get 170
    i32.store offset=8
    local.get 5
    i32.load offset=364
    local.set 172
    local.get 172
    i32.load offset=12
    local.set 173
    local.get 5
    i32.load offset=360
    local.set 174
    local.get 174
    i32.load offset=12
    local.set 175
    local.get 173
    local.get 175
    i32.add
    local.set 176
    local.get 5
    i32.load offset=368
    local.set 177
    local.get 177
    local.get 176
    i32.store offset=12
    local.get 5
    i32.load offset=364
    local.set 178
    local.get 178
    i32.load offset=16
    local.set 179
    local.get 5
    i32.load offset=360
    local.set 180
    local.get 180
    i32.load offset=16
    local.set 181
    local.get 179
    local.get 181
    i32.add
    local.set 182
    local.get 5
    i32.load offset=368
    local.set 183
    local.get 183
    local.get 182
    i32.store offset=16
    local.get 5
    i32.load offset=364
    local.set 184
    local.get 184
    i32.load offset=20
    local.set 185
    local.get 5
    i32.load offset=360
    local.set 186
    local.get 186
    i32.load offset=20
    local.set 187
    local.get 185
    local.get 187
    i32.add
    local.set 188
    local.get 5
    i32.load offset=368
    local.set 189
    local.get 189
    local.get 188
    i32.store offset=20
    local.get 5
    i32.load offset=364
    local.set 190
    local.get 190
    i32.load offset=24
    local.set 191
    local.get 5
    i32.load offset=360
    local.set 192
    local.get 192
    i32.load offset=24
    local.set 193
    local.get 191
    local.get 193
    i32.add
    local.set 194
    local.get 5
    i32.load offset=368
    local.set 195
    local.get 195
    local.get 194
    i32.store offset=24
    local.get 5
    i32.load offset=364
    local.set 196
    local.get 196
    i32.load offset=28
    local.set 197
    local.get 5
    i32.load offset=360
    local.set 198
    local.get 198
    i32.load offset=28
    local.set 199
    local.get 197
    local.get 199
    i32.add
    local.set 200
    local.get 5
    i32.load offset=368
    local.set 201
    local.get 201
    local.get 200
    i32.store offset=28
    local.get 5
    i32.load offset=364
    local.set 202
    local.get 202
    i32.load offset=32
    local.set 203
    local.get 5
    i32.load offset=360
    local.set 204
    local.get 204
    i32.load offset=32
    local.set 205
    local.get 203
    local.get 205
    i32.add
    local.set 206
    local.get 5
    i32.load offset=368
    local.set 207
    local.get 207
    local.get 206
    i32.store offset=32
    local.get 5
    i32.load offset=364
    local.set 208
    local.get 208
    i32.load offset=36
    local.set 209
    local.get 5
    i32.load offset=360
    local.set 210
    local.get 210
    i32.load offset=36
    local.set 211
    local.get 209
    local.get 211
    i32.add
    local.set 212
    local.get 5
    i32.load offset=368
    local.set 213
    local.get 213
    local.get 212
    i32.store offset=36
    local.get 5
    i32.load offset=332
    local.set 214
    local.get 22
    local.get 22
    local.get 214
    call $curve25519_mul
    local.get 5
    i32.load offset=332
    local.set 215
    i32.const 40
    local.set 216
    local.get 215
    local.get 216
    i32.add
    local.set 217
    local.get 12
    local.get 25
    local.get 217
    call $curve25519_mul
    local.get 5
    local.get 9
    i32.store offset=416
    local.get 5
    local.get 12
    i32.store offset=412
    local.get 5
    local.get 22
    i32.store offset=408
    local.get 5
    i32.load offset=412
    local.set 218
    local.get 218
    i32.load
    local.set 219
    local.get 5
    i32.load offset=408
    local.set 220
    local.get 220
    i32.load
    local.set 221
    local.get 219
    local.get 221
    i32.add
    local.set 222
    local.get 5
    i32.load offset=416
    local.set 223
    local.get 223
    local.get 222
    i32.store
    local.get 5
    i32.load offset=412
    local.set 224
    local.get 224
    i32.load offset=4
    local.set 225
    local.get 5
    i32.load offset=408
    local.set 226
    local.get 226
    i32.load offset=4
    local.set 227
    local.get 225
    local.get 227
    i32.add
    local.set 228
    local.get 5
    i32.load offset=416
    local.set 229
    local.get 229
    local.get 228
    i32.store offset=4
    local.get 5
    i32.load offset=412
    local.set 230
    local.get 230
    i32.load offset=8
    local.set 231
    local.get 5
    i32.load offset=408
    local.set 232
    local.get 232
    i32.load offset=8
    local.set 233
    local.get 231
    local.get 233
    i32.add
    local.set 234
    local.get 5
    i32.load offset=416
    local.set 235
    local.get 235
    local.get 234
    i32.store offset=8
    local.get 5
    i32.load offset=412
    local.set 236
    local.get 236
    i32.load offset=12
    local.set 237
    local.get 5
    i32.load offset=408
    local.set 238
    local.get 238
    i32.load offset=12
    local.set 239
    local.get 237
    local.get 239
    i32.add
    local.set 240
    local.get 5
    i32.load offset=416
    local.set 241
    local.get 241
    local.get 240
    i32.store offset=12
    local.get 5
    i32.load offset=412
    local.set 242
    local.get 242
    i32.load offset=16
    local.set 243
    local.get 5
    i32.load offset=408
    local.set 244
    local.get 244
    i32.load offset=16
    local.set 245
    local.get 243
    local.get 245
    i32.add
    local.set 246
    local.get 5
    i32.load offset=416
    local.set 247
    local.get 247
    local.get 246
    i32.store offset=16
    local.get 5
    i32.load offset=412
    local.set 248
    local.get 248
    i32.load offset=20
    local.set 249
    local.get 5
    i32.load offset=408
    local.set 250
    local.get 250
    i32.load offset=20
    local.set 251
    local.get 249
    local.get 251
    i32.add
    local.set 252
    local.get 5
    i32.load offset=416
    local.set 253
    local.get 253
    local.get 252
    i32.store offset=20
    local.get 5
    i32.load offset=412
    local.set 254
    local.get 254
    i32.load offset=24
    local.set 255
    local.get 5
    i32.load offset=408
    local.set 256
    local.get 256
    i32.load offset=24
    local.set 257
    local.get 255
    local.get 257
    i32.add
    local.set 258
    local.get 5
    i32.load offset=416
    local.set 259
    local.get 259
    local.get 258
    i32.store offset=24
    local.get 5
    i32.load offset=412
    local.set 260
    local.get 260
    i32.load offset=28
    local.set 261
    local.get 5
    i32.load offset=408
    local.set 262
    local.get 262
    i32.load offset=28
    local.set 263
    local.get 261
    local.get 263
    i32.add
    local.set 264
    local.get 5
    i32.load offset=416
    local.set 265
    local.get 265
    local.get 264
    i32.store offset=28
    local.get 5
    i32.load offset=412
    local.set 266
    local.get 266
    i32.load offset=32
    local.set 267
    local.get 5
    i32.load offset=408
    local.set 268
    local.get 268
    i32.load offset=32
    local.set 269
    local.get 267
    local.get 269
    i32.add
    local.set 270
    local.get 5
    i32.load offset=416
    local.set 271
    local.get 271
    local.get 270
    i32.store offset=32
    local.get 5
    i32.load offset=412
    local.set 272
    local.get 272
    i32.load offset=36
    local.set 273
    local.get 5
    i32.load offset=408
    local.set 274
    local.get 274
    i32.load offset=36
    local.set 275
    local.get 273
    local.get 275
    i32.add
    local.set 276
    local.get 5
    i32.load offset=416
    local.set 277
    local.get 277
    local.get 276
    i32.store offset=36
    local.get 5
    local.get 12
    i32.store offset=432
    local.get 5
    local.get 12
    i32.store offset=428
    local.get 5
    local.get 22
    i32.store offset=424
    local.get 5
    i32.load offset=428
    local.set 278
    local.get 278
    i32.load
    local.set 279
    i32.const 134217690
    local.set 280
    local.get 279
    local.get 280
    i32.add
    local.set 281
    local.get 5
    i32.load offset=424
    local.set 282
    local.get 282
    i32.load
    local.set 283
    local.get 281
    local.get 283
    i32.sub
    local.set 284
    local.get 5
    i32.load offset=432
    local.set 285
    local.get 285
    local.get 284
    i32.store
    local.get 5
    i32.load offset=432
    local.set 286
    local.get 286
    i32.load
    local.set 287
    i32.const 26
    local.set 288
    local.get 287
    local.get 288
    i32.shr_u
    local.set 289
    local.get 5
    local.get 289
    i32.store offset=420
    local.get 5
    i32.load offset=432
    local.set 290
    local.get 290
    i32.load
    local.set 291
    i32.const 67108863
    local.set 292
    local.get 291
    local.get 292
    i32.and
    local.set 293
    local.get 290
    local.get 293
    i32.store
    local.get 5
    i32.load offset=428
    local.set 294
    local.get 294
    i32.load offset=4
    local.set 295
    i32.const 67108862
    local.set 296
    local.get 295
    local.get 296
    i32.add
    local.set 297
    local.get 5
    i32.load offset=424
    local.set 298
    local.get 298
    i32.load offset=4
    local.set 299
    local.get 297
    local.get 299
    i32.sub
    local.set 300
    local.get 5
    i32.load offset=420
    local.set 301
    local.get 300
    local.get 301
    i32.add
    local.set 302
    local.get 5
    i32.load offset=432
    local.set 303
    local.get 303
    local.get 302
    i32.store offset=4
    local.get 5
    i32.load offset=432
    local.set 304
    local.get 304
    i32.load offset=4
    local.set 305
    i32.const 25
    local.set 306
    local.get 305
    local.get 306
    i32.shr_u
    local.set 307
    local.get 5
    local.get 307
    i32.store offset=420
    local.get 5
    i32.load offset=432
    local.set 308
    local.get 308
    i32.load offset=4
    local.set 309
    i32.const 33554431
    local.set 310
    local.get 309
    local.get 310
    i32.and
    local.set 311
    local.get 308
    local.get 311
    i32.store offset=4
    local.get 5
    i32.load offset=428
    local.set 312
    local.get 312
    i32.load offset=8
    local.set 313
    i32.const 134217726
    local.set 314
    local.get 313
    local.get 314
    i32.add
    local.set 315
    local.get 5
    i32.load offset=424
    local.set 316
    local.get 316
    i32.load offset=8
    local.set 317
    local.get 315
    local.get 317
    i32.sub
    local.set 318
    local.get 5
    i32.load offset=420
    local.set 319
    local.get 318
    local.get 319
    i32.add
    local.set 320
    local.get 5
    i32.load offset=432
    local.set 321
    local.get 321
    local.get 320
    i32.store offset=8
    local.get 5
    i32.load offset=432
    local.set 322
    local.get 322
    i32.load offset=8
    local.set 323
    i32.const 26
    local.set 324
    local.get 323
    local.get 324
    i32.shr_u
    local.set 325
    local.get 5
    local.get 325
    i32.store offset=420
    local.get 5
    i32.load offset=432
    local.set 326
    local.get 326
    i32.load offset=8
    local.set 327
    i32.const 67108863
    local.set 328
    local.get 327
    local.get 328
    i32.and
    local.set 329
    local.get 326
    local.get 329
    i32.store offset=8
    local.get 5
    i32.load offset=428
    local.set 330
    local.get 330
    i32.load offset=12
    local.set 331
    i32.const 67108862
    local.set 332
    local.get 331
    local.get 332
    i32.add
    local.set 333
    local.get 5
    i32.load offset=424
    local.set 334
    local.get 334
    i32.load offset=12
    local.set 335
    local.get 333
    local.get 335
    i32.sub
    local.set 336
    local.get 5
    i32.load offset=420
    local.set 337
    local.get 336
    local.get 337
    i32.add
    local.set 338
    local.get 5
    i32.load offset=432
    local.set 339
    local.get 339
    local.get 338
    i32.store offset=12
    local.get 5
    i32.load offset=432
    local.set 340
    local.get 340
    i32.load offset=12
    local.set 341
    i32.const 25
    local.set 342
    local.get 341
    local.get 342
    i32.shr_u
    local.set 343
    local.get 5
    local.get 343
    i32.store offset=420
    local.get 5
    i32.load offset=432
    local.set 344
    local.get 344
    i32.load offset=12
    local.set 345
    i32.const 33554431
    local.set 346
    local.get 345
    local.get 346
    i32.and
    local.set 347
    local.get 344
    local.get 347
    i32.store offset=12
    local.get 5
    i32.load offset=428
    local.set 348
    local.get 348
    i32.load offset=16
    local.set 349
    i32.const 134217726
    local.set 350
    local.get 349
    local.get 350
    i32.add
    local.set 351
    local.get 5
    i32.load offset=424
    local.set 352
    local.get 352
    i32.load offset=16
    local.set 353
    local.get 351
    local.get 353
    i32.sub
    local.set 354
    local.get 5
    i32.load offset=420
    local.set 355
    local.get 354
    local.get 355
    i32.add
    local.set 356
    local.get 5
    i32.load offset=432
    local.set 357
    local.get 357
    local.get 356
    i32.store offset=16
    local.get 5
    i32.load offset=428
    local.set 358
    local.get 358
    i32.load offset=20
    local.set 359
    i32.const 67108862
    local.set 360
    local.get 359
    local.get 360
    i32.add
    local.set 361
    local.get 5
    i32.load offset=424
    local.set 362
    local.get 362
    i32.load offset=20
    local.set 363
    local.get 361
    local.get 363
    i32.sub
    local.set 364
    local.get 5
    i32.load offset=432
    local.set 365
    local.get 365
    local.get 364
    i32.store offset=20
    local.get 5
    i32.load offset=428
    local.set 366
    local.get 366
    i32.load offset=24
    local.set 367
    i32.const 134217726
    local.set 368
    local.get 367
    local.get 368
    i32.add
    local.set 369
    local.get 5
    i32.load offset=424
    local.set 370
    local.get 370
    i32.load offset=24
    local.set 371
    local.get 369
    local.get 371
    i32.sub
    local.set 372
    local.get 5
    i32.load offset=432
    local.set 373
    local.get 373
    local.get 372
    i32.store offset=24
    local.get 5
    i32.load offset=428
    local.set 374
    local.get 374
    i32.load offset=28
    local.set 375
    i32.const 67108862
    local.set 376
    local.get 375
    local.get 376
    i32.add
    local.set 377
    local.get 5
    i32.load offset=424
    local.set 378
    local.get 378
    i32.load offset=28
    local.set 379
    local.get 377
    local.get 379
    i32.sub
    local.set 380
    local.get 5
    i32.load offset=432
    local.set 381
    local.get 381
    local.get 380
    i32.store offset=28
    local.get 5
    i32.load offset=428
    local.set 382
    local.get 382
    i32.load offset=32
    local.set 383
    i32.const 134217726
    local.set 384
    local.get 383
    local.get 384
    i32.add
    local.set 385
    local.get 5
    i32.load offset=424
    local.set 386
    local.get 386
    i32.load offset=32
    local.set 387
    local.get 385
    local.get 387
    i32.sub
    local.set 388
    local.get 5
    i32.load offset=432
    local.set 389
    local.get 389
    local.get 388
    i32.store offset=32
    local.get 5
    i32.load offset=428
    local.set 390
    local.get 390
    i32.load offset=36
    local.set 391
    i32.const 67108862
    local.set 392
    local.get 391
    local.get 392
    i32.add
    local.set 393
    local.get 5
    i32.load offset=424
    local.set 394
    local.get 394
    i32.load offset=36
    local.set 395
    local.get 393
    local.get 395
    i32.sub
    local.set 396
    local.get 5
    i32.load offset=432
    local.set 397
    local.get 397
    local.get 396
    i32.store offset=36
    local.get 5
    i32.load offset=336
    local.set 398
    i32.const 120
    local.set 399
    local.get 398
    local.get 399
    i32.add
    local.set 400
    local.get 5
    i32.load offset=332
    local.set 401
    i32.const 120
    local.set 402
    local.get 401
    local.get 402
    i32.add
    local.set 403
    local.get 19
    local.get 400
    local.get 403
    call $curve25519_mul
    local.get 5
    i32.load offset=336
    local.set 404
    i32.const 80
    local.set 405
    local.get 404
    local.get 405
    i32.add
    local.set 406
    local.get 5
    i32.load offset=332
    local.set 407
    i32.const 80
    local.set 408
    local.get 407
    local.get 408
    i32.add
    local.set 409
    local.get 13
    local.get 406
    local.get 409
    call $curve25519_mul
    local.get 5
    local.get 13
    i32.store offset=444
    local.get 5
    local.get 13
    i32.store offset=440
    local.get 5
    local.get 13
    i32.store offset=436
    local.get 5
    i32.load offset=440
    local.set 410
    local.get 410
    i32.load
    local.set 411
    local.get 5
    i32.load offset=436
    local.set 412
    local.get 412
    i32.load
    local.set 413
    local.get 411
    local.get 413
    i32.add
    local.set 414
    local.get 5
    i32.load offset=444
    local.set 415
    local.get 415
    local.get 414
    i32.store
    local.get 5
    i32.load offset=440
    local.set 416
    local.get 416
    i32.load offset=4
    local.set 417
    local.get 5
    i32.load offset=436
    local.set 418
    local.get 418
    i32.load offset=4
    local.set 419
    local.get 417
    local.get 419
    i32.add
    local.set 420
    local.get 5
    i32.load offset=444
    local.set 421
    local.get 421
    local.get 420
    i32.store offset=4
    local.get 5
    i32.load offset=440
    local.set 422
    local.get 422
    i32.load offset=8
    local.set 423
    local.get 5
    i32.load offset=436
    local.set 424
    local.get 424
    i32.load offset=8
    local.set 425
    local.get 423
    local.get 425
    i32.add
    local.set 426
    local.get 5
    i32.load offset=444
    local.set 427
    local.get 427
    local.get 426
    i32.store offset=8
    local.get 5
    i32.load offset=440
    local.set 428
    local.get 428
    i32.load offset=12
    local.set 429
    local.get 5
    i32.load offset=436
    local.set 430
    local.get 430
    i32.load offset=12
    local.set 431
    local.get 429
    local.get 431
    i32.add
    local.set 432
    local.get 5
    i32.load offset=444
    local.set 433
    local.get 433
    local.get 432
    i32.store offset=12
    local.get 5
    i32.load offset=440
    local.set 434
    local.get 434
    i32.load offset=16
    local.set 435
    local.get 5
    i32.load offset=436
    local.set 436
    local.get 436
    i32.load offset=16
    local.set 437
    local.get 435
    local.get 437
    i32.add
    local.set 438
    local.get 5
    i32.load offset=444
    local.set 439
    local.get 439
    local.get 438
    i32.store offset=16
    local.get 5
    i32.load offset=440
    local.set 440
    local.get 440
    i32.load offset=20
    local.set 441
    local.get 5
    i32.load offset=436
    local.set 442
    local.get 442
    i32.load offset=20
    local.set 443
    local.get 441
    local.get 443
    i32.add
    local.set 444
    local.get 5
    i32.load offset=444
    local.set 445
    local.get 445
    local.get 444
    i32.store offset=20
    local.get 5
    i32.load offset=440
    local.set 446
    local.get 446
    i32.load offset=24
    local.set 447
    local.get 5
    i32.load offset=436
    local.set 448
    local.get 448
    i32.load offset=24
    local.set 449
    local.get 447
    local.get 449
    i32.add
    local.set 450
    local.get 5
    i32.load offset=444
    local.set 451
    local.get 451
    local.get 450
    i32.store offset=24
    local.get 5
    i32.load offset=440
    local.set 452
    local.get 452
    i32.load offset=28
    local.set 453
    local.get 5
    i32.load offset=436
    local.set 454
    local.get 454
    i32.load offset=28
    local.set 455
    local.get 453
    local.get 455
    i32.add
    local.set 456
    local.get 5
    i32.load offset=444
    local.set 457
    local.get 457
    local.get 456
    i32.store offset=28
    local.get 5
    i32.load offset=440
    local.set 458
    local.get 458
    i32.load offset=32
    local.set 459
    local.get 5
    i32.load offset=436
    local.set 460
    local.get 460
    i32.load offset=32
    local.set 461
    local.get 459
    local.get 461
    i32.add
    local.set 462
    local.get 5
    i32.load offset=444
    local.set 463
    local.get 463
    local.get 462
    i32.store offset=32
    local.get 5
    i32.load offset=440
    local.set 464
    local.get 464
    i32.load offset=36
    local.set 465
    local.get 5
    i32.load offset=436
    local.set 466
    local.get 466
    i32.load offset=36
    local.set 467
    local.get 465
    local.get 467
    i32.add
    local.set 468
    local.get 5
    i32.load offset=444
    local.set 469
    local.get 469
    local.get 468
    i32.store offset=36
    local.get 5
    local.get 16
    i32.store offset=460
    local.get 5
    local.get 13
    i32.store offset=456
    local.get 5
    local.get 19
    i32.store offset=452
    local.get 5
    i32.load offset=456
    local.set 470
    local.get 470
    i32.load
    local.set 471
    local.get 5
    i32.load offset=452
    local.set 472
    local.get 472
    i32.load
    local.set 473
    local.get 471
    local.get 473
    i32.add
    local.set 474
    local.get 5
    i32.load offset=460
    local.set 475
    local.get 475
    local.get 474
    i32.store
    local.get 5
    i32.load offset=460
    local.set 476
    local.get 476
    i32.load
    local.set 477
    i32.const 26
    local.set 478
    local.get 477
    local.get 478
    i32.shr_u
    local.set 479
    local.get 5
    local.get 479
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 480
    local.get 480
    i32.load
    local.set 481
    i32.const 67108863
    local.set 482
    local.get 481
    local.get 482
    i32.and
    local.set 483
    local.get 480
    local.get 483
    i32.store
    local.get 5
    i32.load offset=456
    local.set 484
    local.get 484
    i32.load offset=4
    local.set 485
    local.get 5
    i32.load offset=452
    local.set 486
    local.get 486
    i32.load offset=4
    local.set 487
    local.get 485
    local.get 487
    i32.add
    local.set 488
    local.get 5
    i32.load offset=448
    local.set 489
    local.get 488
    local.get 489
    i32.add
    local.set 490
    local.get 5
    i32.load offset=460
    local.set 491
    local.get 491
    local.get 490
    i32.store offset=4
    local.get 5
    i32.load offset=460
    local.set 492
    local.get 492
    i32.load offset=4
    local.set 493
    i32.const 25
    local.set 494
    local.get 493
    local.get 494
    i32.shr_u
    local.set 495
    local.get 5
    local.get 495
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 496
    local.get 496
    i32.load offset=4
    local.set 497
    i32.const 33554431
    local.set 498
    local.get 497
    local.get 498
    i32.and
    local.set 499
    local.get 496
    local.get 499
    i32.store offset=4
    local.get 5
    i32.load offset=456
    local.set 500
    local.get 500
    i32.load offset=8
    local.set 501
    local.get 5
    i32.load offset=452
    local.set 502
    local.get 502
    i32.load offset=8
    local.set 503
    local.get 501
    local.get 503
    i32.add
    local.set 504
    local.get 5
    i32.load offset=448
    local.set 505
    local.get 504
    local.get 505
    i32.add
    local.set 506
    local.get 5
    i32.load offset=460
    local.set 507
    local.get 507
    local.get 506
    i32.store offset=8
    local.get 5
    i32.load offset=460
    local.set 508
    local.get 508
    i32.load offset=8
    local.set 509
    i32.const 26
    local.set 510
    local.get 509
    local.get 510
    i32.shr_u
    local.set 511
    local.get 5
    local.get 511
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 512
    local.get 512
    i32.load offset=8
    local.set 513
    i32.const 67108863
    local.set 514
    local.get 513
    local.get 514
    i32.and
    local.set 515
    local.get 512
    local.get 515
    i32.store offset=8
    local.get 5
    i32.load offset=456
    local.set 516
    local.get 516
    i32.load offset=12
    local.set 517
    local.get 5
    i32.load offset=452
    local.set 518
    local.get 518
    i32.load offset=12
    local.set 519
    local.get 517
    local.get 519
    i32.add
    local.set 520
    local.get 5
    i32.load offset=448
    local.set 521
    local.get 520
    local.get 521
    i32.add
    local.set 522
    local.get 5
    i32.load offset=460
    local.set 523
    local.get 523
    local.get 522
    i32.store offset=12
    local.get 5
    i32.load offset=460
    local.set 524
    local.get 524
    i32.load offset=12
    local.set 525
    i32.const 25
    local.set 526
    local.get 525
    local.get 526
    i32.shr_u
    local.set 527
    local.get 5
    local.get 527
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 528
    local.get 528
    i32.load offset=12
    local.set 529
    i32.const 33554431
    local.set 530
    local.get 529
    local.get 530
    i32.and
    local.set 531
    local.get 528
    local.get 531
    i32.store offset=12
    local.get 5
    i32.load offset=456
    local.set 532
    local.get 532
    i32.load offset=16
    local.set 533
    local.get 5
    i32.load offset=452
    local.set 534
    local.get 534
    i32.load offset=16
    local.set 535
    local.get 533
    local.get 535
    i32.add
    local.set 536
    local.get 5
    i32.load offset=448
    local.set 537
    local.get 536
    local.get 537
    i32.add
    local.set 538
    local.get 5
    i32.load offset=460
    local.set 539
    local.get 539
    local.get 538
    i32.store offset=16
    local.get 5
    i32.load offset=460
    local.set 540
    local.get 540
    i32.load offset=16
    local.set 541
    i32.const 26
    local.set 542
    local.get 541
    local.get 542
    i32.shr_u
    local.set 543
    local.get 5
    local.get 543
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 544
    local.get 544
    i32.load offset=16
    local.set 545
    i32.const 67108863
    local.set 546
    local.get 545
    local.get 546
    i32.and
    local.set 547
    local.get 544
    local.get 547
    i32.store offset=16
    local.get 5
    i32.load offset=456
    local.set 548
    local.get 548
    i32.load offset=20
    local.set 549
    local.get 5
    i32.load offset=452
    local.set 550
    local.get 550
    i32.load offset=20
    local.set 551
    local.get 549
    local.get 551
    i32.add
    local.set 552
    local.get 5
    i32.load offset=448
    local.set 553
    local.get 552
    local.get 553
    i32.add
    local.set 554
    local.get 5
    i32.load offset=460
    local.set 555
    local.get 555
    local.get 554
    i32.store offset=20
    local.get 5
    i32.load offset=460
    local.set 556
    local.get 556
    i32.load offset=20
    local.set 557
    i32.const 25
    local.set 558
    local.get 557
    local.get 558
    i32.shr_u
    local.set 559
    local.get 5
    local.get 559
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 560
    local.get 560
    i32.load offset=20
    local.set 561
    i32.const 33554431
    local.set 562
    local.get 561
    local.get 562
    i32.and
    local.set 563
    local.get 560
    local.get 563
    i32.store offset=20
    local.get 5
    i32.load offset=456
    local.set 564
    local.get 564
    i32.load offset=24
    local.set 565
    local.get 5
    i32.load offset=452
    local.set 566
    local.get 566
    i32.load offset=24
    local.set 567
    local.get 565
    local.get 567
    i32.add
    local.set 568
    local.get 5
    i32.load offset=448
    local.set 569
    local.get 568
    local.get 569
    i32.add
    local.set 570
    local.get 5
    i32.load offset=460
    local.set 571
    local.get 571
    local.get 570
    i32.store offset=24
    local.get 5
    i32.load offset=460
    local.set 572
    local.get 572
    i32.load offset=24
    local.set 573
    i32.const 26
    local.set 574
    local.get 573
    local.get 574
    i32.shr_u
    local.set 575
    local.get 5
    local.get 575
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 576
    local.get 576
    i32.load offset=24
    local.set 577
    i32.const 67108863
    local.set 578
    local.get 577
    local.get 578
    i32.and
    local.set 579
    local.get 576
    local.get 579
    i32.store offset=24
    local.get 5
    i32.load offset=456
    local.set 580
    local.get 580
    i32.load offset=28
    local.set 581
    local.get 5
    i32.load offset=452
    local.set 582
    local.get 582
    i32.load offset=28
    local.set 583
    local.get 581
    local.get 583
    i32.add
    local.set 584
    local.get 5
    i32.load offset=448
    local.set 585
    local.get 584
    local.get 585
    i32.add
    local.set 586
    local.get 5
    i32.load offset=460
    local.set 587
    local.get 587
    local.get 586
    i32.store offset=28
    local.get 5
    i32.load offset=460
    local.set 588
    local.get 588
    i32.load offset=28
    local.set 589
    i32.const 25
    local.set 590
    local.get 589
    local.get 590
    i32.shr_u
    local.set 591
    local.get 5
    local.get 591
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 592
    local.get 592
    i32.load offset=28
    local.set 593
    i32.const 33554431
    local.set 594
    local.get 593
    local.get 594
    i32.and
    local.set 595
    local.get 592
    local.get 595
    i32.store offset=28
    local.get 5
    i32.load offset=456
    local.set 596
    local.get 596
    i32.load offset=32
    local.set 597
    local.get 5
    i32.load offset=452
    local.set 598
    local.get 598
    i32.load offset=32
    local.set 599
    local.get 597
    local.get 599
    i32.add
    local.set 600
    local.get 5
    i32.load offset=448
    local.set 601
    local.get 600
    local.get 601
    i32.add
    local.set 602
    local.get 5
    i32.load offset=460
    local.set 603
    local.get 603
    local.get 602
    i32.store offset=32
    local.get 5
    i32.load offset=460
    local.set 604
    local.get 604
    i32.load offset=32
    local.set 605
    i32.const 26
    local.set 606
    local.get 605
    local.get 606
    i32.shr_u
    local.set 607
    local.get 5
    local.get 607
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 608
    local.get 608
    i32.load offset=32
    local.set 609
    i32.const 67108863
    local.set 610
    local.get 609
    local.get 610
    i32.and
    local.set 611
    local.get 608
    local.get 611
    i32.store offset=32
    local.get 5
    i32.load offset=456
    local.set 612
    local.get 612
    i32.load offset=36
    local.set 613
    local.get 5
    i32.load offset=452
    local.set 614
    local.get 614
    i32.load offset=36
    local.set 615
    local.get 613
    local.get 615
    i32.add
    local.set 616
    local.get 5
    i32.load offset=448
    local.set 617
    local.get 616
    local.get 617
    i32.add
    local.set 618
    local.get 5
    i32.load offset=460
    local.set 619
    local.get 619
    local.get 618
    i32.store offset=36
    local.get 5
    i32.load offset=460
    local.set 620
    local.get 620
    i32.load offset=36
    local.set 621
    i32.const 25
    local.set 622
    local.get 621
    local.get 622
    i32.shr_u
    local.set 623
    local.get 5
    local.get 623
    i32.store offset=448
    local.get 5
    i32.load offset=460
    local.set 624
    local.get 624
    i32.load offset=36
    local.set 625
    i32.const 33554431
    local.set 626
    local.get 625
    local.get 626
    i32.and
    local.set 627
    local.get 624
    local.get 627
    i32.store offset=36
    local.get 5
    i32.load offset=448
    local.set 628
    i32.const 19
    local.set 629
    local.get 628
    local.get 629
    i32.mul
    local.set 630
    local.get 5
    i32.load offset=460
    local.set 631
    local.get 631
    i32.load
    local.set 632
    local.get 632
    local.get 630
    i32.add
    local.set 633
    local.get 631
    local.get 633
    i32.store
    local.get 5
    local.get 13
    i32.store offset=476
    local.get 5
    local.get 13
    i32.store offset=472
    local.get 5
    local.get 19
    i32.store offset=468
    local.get 5
    i32.load offset=472
    local.set 634
    local.get 634
    i32.load
    local.set 635
    i32.const 268435380
    local.set 636
    local.get 635
    local.get 636
    i32.add
    local.set 637
    local.get 5
    i32.load offset=468
    local.set 638
    local.get 638
    i32.load
    local.set 639
    local.get 637
    local.get 639
    i32.sub
    local.set 640
    local.get 5
    i32.load offset=476
    local.set 641
    local.get 641
    local.get 640
    i32.store
    local.get 5
    i32.load offset=476
    local.set 642
    local.get 642
    i32.load
    local.set 643
    i32.const 26
    local.set 644
    local.get 643
    local.get 644
    i32.shr_u
    local.set 645
    local.get 5
    local.get 645
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 646
    local.get 646
    i32.load
    local.set 647
    i32.const 67108863
    local.set 648
    local.get 647
    local.get 648
    i32.and
    local.set 649
    local.get 646
    local.get 649
    i32.store
    local.get 5
    i32.load offset=472
    local.set 650
    local.get 650
    i32.load offset=4
    local.set 651
    i32.const 134217724
    local.set 652
    local.get 651
    local.get 652
    i32.add
    local.set 653
    local.get 5
    i32.load offset=468
    local.set 654
    local.get 654
    i32.load offset=4
    local.set 655
    local.get 653
    local.get 655
    i32.sub
    local.set 656
    local.get 5
    i32.load offset=464
    local.set 657
    local.get 656
    local.get 657
    i32.add
    local.set 658
    local.get 5
    i32.load offset=476
    local.set 659
    local.get 659
    local.get 658
    i32.store offset=4
    local.get 5
    i32.load offset=476
    local.set 660
    local.get 660
    i32.load offset=4
    local.set 661
    i32.const 25
    local.set 662
    local.get 661
    local.get 662
    i32.shr_u
    local.set 663
    local.get 5
    local.get 663
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 664
    local.get 664
    i32.load offset=4
    local.set 665
    i32.const 33554431
    local.set 666
    local.get 665
    local.get 666
    i32.and
    local.set 667
    local.get 664
    local.get 667
    i32.store offset=4
    local.get 5
    i32.load offset=472
    local.set 668
    local.get 668
    i32.load offset=8
    local.set 669
    i32.const 268435452
    local.set 670
    local.get 669
    local.get 670
    i32.add
    local.set 671
    local.get 5
    i32.load offset=468
    local.set 672
    local.get 672
    i32.load offset=8
    local.set 673
    local.get 671
    local.get 673
    i32.sub
    local.set 674
    local.get 5
    i32.load offset=464
    local.set 675
    local.get 674
    local.get 675
    i32.add
    local.set 676
    local.get 5
    i32.load offset=476
    local.set 677
    local.get 677
    local.get 676
    i32.store offset=8
    local.get 5
    i32.load offset=476
    local.set 678
    local.get 678
    i32.load offset=8
    local.set 679
    i32.const 26
    local.set 680
    local.get 679
    local.get 680
    i32.shr_u
    local.set 681
    local.get 5
    local.get 681
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 682
    local.get 682
    i32.load offset=8
    local.set 683
    i32.const 67108863
    local.set 684
    local.get 683
    local.get 684
    i32.and
    local.set 685
    local.get 682
    local.get 685
    i32.store offset=8
    local.get 5
    i32.load offset=472
    local.set 686
    local.get 686
    i32.load offset=12
    local.set 687
    i32.const 134217724
    local.set 688
    local.get 687
    local.get 688
    i32.add
    local.set 689
    local.get 5
    i32.load offset=468
    local.set 690
    local.get 690
    i32.load offset=12
    local.set 691
    local.get 689
    local.get 691
    i32.sub
    local.set 692
    local.get 5
    i32.load offset=464
    local.set 693
    local.get 692
    local.get 693
    i32.add
    local.set 694
    local.get 5
    i32.load offset=476
    local.set 695
    local.get 695
    local.get 694
    i32.store offset=12
    local.get 5
    i32.load offset=476
    local.set 696
    local.get 696
    i32.load offset=12
    local.set 697
    i32.const 25
    local.set 698
    local.get 697
    local.get 698
    i32.shr_u
    local.set 699
    local.get 5
    local.get 699
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 700
    local.get 700
    i32.load offset=12
    local.set 701
    i32.const 33554431
    local.set 702
    local.get 701
    local.get 702
    i32.and
    local.set 703
    local.get 700
    local.get 703
    i32.store offset=12
    local.get 5
    i32.load offset=472
    local.set 704
    local.get 704
    i32.load offset=16
    local.set 705
    i32.const 268435452
    local.set 706
    local.get 705
    local.get 706
    i32.add
    local.set 707
    local.get 5
    i32.load offset=468
    local.set 708
    local.get 708
    i32.load offset=16
    local.set 709
    local.get 707
    local.get 709
    i32.sub
    local.set 710
    local.get 5
    i32.load offset=464
    local.set 711
    local.get 710
    local.get 711
    i32.add
    local.set 712
    local.get 5
    i32.load offset=476
    local.set 713
    local.get 713
    local.get 712
    i32.store offset=16
    local.get 5
    i32.load offset=476
    local.set 714
    local.get 714
    i32.load offset=16
    local.set 715
    i32.const 26
    local.set 716
    local.get 715
    local.get 716
    i32.shr_u
    local.set 717
    local.get 5
    local.get 717
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 718
    local.get 718
    i32.load offset=16
    local.set 719
    i32.const 67108863
    local.set 720
    local.get 719
    local.get 720
    i32.and
    local.set 721
    local.get 718
    local.get 721
    i32.store offset=16
    local.get 5
    i32.load offset=472
    local.set 722
    local.get 722
    i32.load offset=20
    local.set 723
    i32.const 134217724
    local.set 724
    local.get 723
    local.get 724
    i32.add
    local.set 725
    local.get 5
    i32.load offset=468
    local.set 726
    local.get 726
    i32.load offset=20
    local.set 727
    local.get 725
    local.get 727
    i32.sub
    local.set 728
    local.get 5
    i32.load offset=464
    local.set 729
    local.get 728
    local.get 729
    i32.add
    local.set 730
    local.get 5
    i32.load offset=476
    local.set 731
    local.get 731
    local.get 730
    i32.store offset=20
    local.get 5
    i32.load offset=476
    local.set 732
    local.get 732
    i32.load offset=20
    local.set 733
    i32.const 25
    local.set 734
    local.get 733
    local.get 734
    i32.shr_u
    local.set 735
    local.get 5
    local.get 735
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 736
    local.get 736
    i32.load offset=20
    local.set 737
    i32.const 33554431
    local.set 738
    local.get 737
    local.get 738
    i32.and
    local.set 739
    local.get 736
    local.get 739
    i32.store offset=20
    local.get 5
    i32.load offset=472
    local.set 740
    local.get 740
    i32.load offset=24
    local.set 741
    i32.const 268435452
    local.set 742
    local.get 741
    local.get 742
    i32.add
    local.set 743
    local.get 5
    i32.load offset=468
    local.set 744
    local.get 744
    i32.load offset=24
    local.set 745
    local.get 743
    local.get 745
    i32.sub
    local.set 746
    local.get 5
    i32.load offset=464
    local.set 747
    local.get 746
    local.get 747
    i32.add
    local.set 748
    local.get 5
    i32.load offset=476
    local.set 749
    local.get 749
    local.get 748
    i32.store offset=24
    local.get 5
    i32.load offset=476
    local.set 750
    local.get 750
    i32.load offset=24
    local.set 751
    i32.const 26
    local.set 752
    local.get 751
    local.get 752
    i32.shr_u
    local.set 753
    local.get 5
    local.get 753
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 754
    local.get 754
    i32.load offset=24
    local.set 755
    i32.const 67108863
    local.set 756
    local.get 755
    local.get 756
    i32.and
    local.set 757
    local.get 754
    local.get 757
    i32.store offset=24
    local.get 5
    i32.load offset=472
    local.set 758
    local.get 758
    i32.load offset=28
    local.set 759
    i32.const 134217724
    local.set 760
    local.get 759
    local.get 760
    i32.add
    local.set 761
    local.get 5
    i32.load offset=468
    local.set 762
    local.get 762
    i32.load offset=28
    local.set 763
    local.get 761
    local.get 763
    i32.sub
    local.set 764
    local.get 5
    i32.load offset=464
    local.set 765
    local.get 764
    local.get 765
    i32.add
    local.set 766
    local.get 5
    i32.load offset=476
    local.set 767
    local.get 767
    local.get 766
    i32.store offset=28
    local.get 5
    i32.load offset=476
    local.set 768
    local.get 768
    i32.load offset=28
    local.set 769
    i32.const 25
    local.set 770
    local.get 769
    local.get 770
    i32.shr_u
    local.set 771
    local.get 5
    local.get 771
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 772
    local.get 772
    i32.load offset=28
    local.set 773
    i32.const 33554431
    local.set 774
    local.get 773
    local.get 774
    i32.and
    local.set 775
    local.get 772
    local.get 775
    i32.store offset=28
    local.get 5
    i32.load offset=472
    local.set 776
    local.get 776
    i32.load offset=32
    local.set 777
    i32.const 268435452
    local.set 778
    local.get 777
    local.get 778
    i32.add
    local.set 779
    local.get 5
    i32.load offset=468
    local.set 780
    local.get 780
    i32.load offset=32
    local.set 781
    local.get 779
    local.get 781
    i32.sub
    local.set 782
    local.get 5
    i32.load offset=464
    local.set 783
    local.get 782
    local.get 783
    i32.add
    local.set 784
    local.get 5
    i32.load offset=476
    local.set 785
    local.get 785
    local.get 784
    i32.store offset=32
    local.get 5
    i32.load offset=476
    local.set 786
    local.get 786
    i32.load offset=32
    local.set 787
    i32.const 26
    local.set 788
    local.get 787
    local.get 788
    i32.shr_u
    local.set 789
    local.get 5
    local.get 789
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 790
    local.get 790
    i32.load offset=32
    local.set 791
    i32.const 67108863
    local.set 792
    local.get 791
    local.get 792
    i32.and
    local.set 793
    local.get 790
    local.get 793
    i32.store offset=32
    local.get 5
    i32.load offset=472
    local.set 794
    local.get 794
    i32.load offset=36
    local.set 795
    i32.const 134217724
    local.set 796
    local.get 795
    local.get 796
    i32.add
    local.set 797
    local.get 5
    i32.load offset=468
    local.set 798
    local.get 798
    i32.load offset=36
    local.set 799
    local.get 797
    local.get 799
    i32.sub
    local.set 800
    local.get 5
    i32.load offset=464
    local.set 801
    local.get 800
    local.get 801
    i32.add
    local.set 802
    local.get 5
    i32.load offset=476
    local.set 803
    local.get 803
    local.get 802
    i32.store offset=36
    local.get 5
    i32.load offset=476
    local.set 804
    local.get 804
    i32.load offset=36
    local.set 805
    i32.const 25
    local.set 806
    local.get 805
    local.get 806
    i32.shr_u
    local.set 807
    local.get 5
    local.get 807
    i32.store offset=464
    local.get 5
    i32.load offset=476
    local.set 808
    local.get 808
    i32.load offset=36
    local.set 809
    i32.const 33554431
    local.set 810
    local.get 809
    local.get 810
    i32.and
    local.set 811
    local.get 808
    local.get 811
    i32.store offset=36
    local.get 5
    i32.load offset=464
    local.set 812
    i32.const 19
    local.set 813
    local.get 812
    local.get 813
    i32.mul
    local.set 814
    local.get 5
    i32.load offset=476
    local.set 815
    local.get 815
    i32.load
    local.set 816
    local.get 816
    local.get 814
    i32.add
    local.set 817
    local.get 815
    local.get 817
    i32.store
    local.get 5
    i32.load offset=340
    local.set 818
    i32.const 40
    local.set 819
    local.get 818
    local.get 819
    i32.add
    local.set 820
    local.get 820
    local.get 12
    local.get 13
    call $curve25519_mul
    local.get 5
    i32.load offset=340
    local.set 821
    local.get 821
    local.get 9
    local.get 16
    call $curve25519_mul
    local.get 5
    i32.load offset=340
    local.set 822
    i32.const 80
    local.set 823
    local.get 822
    local.get 823
    i32.add
    local.set 824
    local.get 824
    local.get 16
    local.get 13
    call $curve25519_mul
    local.get 5
    i32.load offset=340
    local.set 825
    i32.const 120
    local.set 826
    local.get 825
    local.get 826
    i32.add
    local.set 827
    local.get 827
    local.get 12
    local.get 9
    call $curve25519_mul
    local.get 5
    i32.load offset=340
    local.set 828
    local.get 5
    local.get 9
    i32.store offset=404
    local.get 5
    local.get 828
    i32.store offset=400
    local.get 5
    i32.load offset=400
    local.set 829
    local.get 829
    i32.load
    local.set 830
    local.get 5
    i32.load offset=404
    local.set 831
    local.get 831
    local.get 830
    i32.store
    local.get 5
    i32.load offset=400
    local.set 832
    local.get 832
    i32.load offset=4
    local.set 833
    local.get 5
    i32.load offset=404
    local.set 834
    local.get 834
    local.get 833
    i32.store offset=4
    local.get 5
    i32.load offset=400
    local.set 835
    local.get 835
    i32.load offset=8
    local.set 836
    local.get 5
    i32.load offset=404
    local.set 837
    local.get 837
    local.get 836
    i32.store offset=8
    local.get 5
    i32.load offset=400
    local.set 838
    local.get 838
    i32.load offset=12
    local.set 839
    local.get 5
    i32.load offset=404
    local.set 840
    local.get 840
    local.get 839
    i32.store offset=12
    local.get 5
    i32.load offset=400
    local.set 841
    local.get 841
    i32.load offset=16
    local.set 842
    local.get 5
    i32.load offset=404
    local.set 843
    local.get 843
    local.get 842
    i32.store offset=16
    local.get 5
    i32.load offset=400
    local.set 844
    local.get 844
    i32.load offset=20
    local.set 845
    local.get 5
    i32.load offset=404
    local.set 846
    local.get 846
    local.get 845
    i32.store offset=20
    local.get 5
    i32.load offset=400
    local.set 847
    local.get 847
    i32.load offset=24
    local.set 848
    local.get 5
    i32.load offset=404
    local.set 849
    local.get 849
    local.get 848
    i32.store offset=24
    local.get 5
    i32.load offset=400
    local.set 850
    local.get 850
    i32.load offset=28
    local.set 851
    local.get 5
    i32.load offset=404
    local.set 852
    local.get 852
    local.get 851
    i32.store offset=28
    local.get 5
    i32.load offset=400
    local.set 853
    local.get 853
    i32.load offset=32
    local.set 854
    local.get 5
    i32.load offset=404
    local.set 855
    local.get 855
    local.get 854
    i32.store offset=32
    local.get 5
    i32.load offset=400
    local.set 856
    local.get 856
    i32.load offset=36
    local.set 857
    local.get 5
    i32.load offset=404
    local.set 858
    local.get 858
    local.get 857
    i32.store offset=36
    local.get 5
    i32.load offset=340
    local.set 859
    local.get 5
    i32.load offset=340
    local.set 860
    local.get 5
    i32.load offset=340
    local.set 861
    i32.const 40
    local.set 862
    local.get 861
    local.get 862
    i32.add
    local.set 863
    local.get 5
    local.get 859
    i32.store offset=396
    local.get 5
    local.get 860
    i32.store offset=392
    local.get 5
    local.get 863
    i32.store offset=388
    local.get 5
    i32.load offset=392
    local.set 864
    local.get 864
    i32.load
    local.set 865
    i32.const 134217690
    local.set 866
    local.get 865
    local.get 866
    i32.add
    local.set 867
    local.get 5
    i32.load offset=388
    local.set 868
    local.get 868
    i32.load
    local.set 869
    local.get 867
    local.get 869
    i32.sub
    local.set 870
    local.get 5
    i32.load offset=396
    local.set 871
    local.get 871
    local.get 870
    i32.store
    local.get 5
    i32.load offset=396
    local.set 872
    local.get 872
    i32.load
    local.set 873
    i32.const 26
    local.set 874
    local.get 873
    local.get 874
    i32.shr_u
    local.set 875
    local.get 5
    local.get 875
    i32.store offset=384
    local.get 5
    i32.load offset=396
    local.set 876
    local.get 876
    i32.load
    local.set 877
    i32.const 67108863
    local.set 878
    local.get 877
    local.get 878
    i32.and
    local.set 879
    local.get 876
    local.get 879
    i32.store
    local.get 5
    i32.load offset=392
    local.set 880
    local.get 880
    i32.load offset=4
    local.set 881
    i32.const 67108862
    local.set 882
    local.get 881
    local.get 882
    i32.add
    local.set 883
    local.get 5
    i32.load offset=388
    local.set 884
    local.get 884
    i32.load offset=4
    local.set 885
    local.get 883
    local.get 885
    i32.sub
    local.set 886
    local.get 5
    i32.load offset=384
    local.set 887
    local.get 886
    local.get 887
    i32.add
    local.set 888
    local.get 5
    i32.load offset=396
    local.set 889
    local.get 889
    local.get 888
    i32.store offset=4
    local.get 5
    i32.load offset=396
    local.set 890
    local.get 890
    i32.load offset=4
    local.set 891
    i32.const 25
    local.set 892
    local.get 891
    local.get 892
    i32.shr_u
    local.set 893
    local.get 5
    local.get 893
    i32.store offset=384
    local.get 5
    i32.load offset=396
    local.set 894
    local.get 894
    i32.load offset=4
    local.set 895
    i32.const 33554431
    local.set 896
    local.get 895
    local.get 896
    i32.and
    local.set 897
    local.get 894
    local.get 897
    i32.store offset=4
    local.get 5
    i32.load offset=392
    local.set 898
    local.get 898
    i32.load offset=8
    local.set 899
    i32.const 134217726
    local.set 900
    local.get 899
    local.get 900
    i32.add
    local.set 901
    local.get 5
    i32.load offset=388
    local.set 902
    local.get 902
    i32.load offset=8
    local.set 903
    local.get 901
    local.get 903
    i32.sub
    local.set 904
    local.get 5
    i32.load offset=384
    local.set 905
    local.get 904
    local.get 905
    i32.add
    local.set 906
    local.get 5
    i32.load offset=396
    local.set 907
    local.get 907
    local.get 906
    i32.store offset=8
    local.get 5
    i32.load offset=396
    local.set 908
    local.get 908
    i32.load offset=8
    local.set 909
    i32.const 26
    local.set 910
    local.get 909
    local.get 910
    i32.shr_u
    local.set 911
    local.get 5
    local.get 911
    i32.store offset=384
    local.get 5
    i32.load offset=396
    local.set 912
    local.get 912
    i32.load offset=8
    local.set 913
    i32.const 67108863
    local.set 914
    local.get 913
    local.get 914
    i32.and
    local.set 915
    local.get 912
    local.get 915
    i32.store offset=8
    local.get 5
    i32.load offset=392
    local.set 916
    local.get 916
    i32.load offset=12
    local.set 917
    i32.const 67108862
    local.set 918
    local.get 917
    local.get 918
    i32.add
    local.set 919
    local.get 5
    i32.load offset=388
    local.set 920
    local.get 920
    i32.load offset=12
    local.set 921
    local.get 919
    local.get 921
    i32.sub
    local.set 922
    local.get 5
    i32.load offset=384
    local.set 923
    local.get 922
    local.get 923
    i32.add
    local.set 924
    local.get 5
    i32.load offset=396
    local.set 925
    local.get 925
    local.get 924
    i32.store offset=12
    local.get 5
    i32.load offset=396
    local.set 926
    local.get 926
    i32.load offset=12
    local.set 927
    i32.const 25
    local.set 928
    local.get 927
    local.get 928
    i32.shr_u
    local.set 929
    local.get 5
    local.get 929
    i32.store offset=384
    local.get 5
    i32.load offset=396
    local.set 930
    local.get 930
    i32.load offset=12
    local.set 931
    i32.const 33554431
    local.set 932
    local.get 931
    local.get 932
    i32.and
    local.set 933
    local.get 930
    local.get 933
    i32.store offset=12
    local.get 5
    i32.load offset=392
    local.set 934
    local.get 934
    i32.load offset=16
    local.set 935
    i32.const 134217726
    local.set 936
    local.get 935
    local.get 936
    i32.add
    local.set 937
    local.get 5
    i32.load offset=388
    local.set 938
    local.get 938
    i32.load offset=16
    local.set 939
    local.get 937
    local.get 939
    i32.sub
    local.set 940
    local.get 5
    i32.load offset=384
    local.set 941
    local.get 940
    local.get 941
    i32.add
    local.set 942
    local.get 5
    i32.load offset=396
    local.set 943
    local.get 943
    local.get 942
    i32.store offset=16
    local.get 5
    i32.load offset=392
    local.set 944
    local.get 944
    i32.load offset=20
    local.set 945
    i32.const 67108862
    local.set 946
    local.get 945
    local.get 946
    i32.add
    local.set 947
    local.get 5
    i32.load offset=388
    local.set 948
    local.get 948
    i32.load offset=20
    local.set 949
    local.get 947
    local.get 949
    i32.sub
    local.set 950
    local.get 5
    i32.load offset=396
    local.set 951
    local.get 951
    local.get 950
    i32.store offset=20
    local.get 5
    i32.load offset=392
    local.set 952
    local.get 952
    i32.load offset=24
    local.set 953
    i32.const 134217726
    local.set 954
    local.get 953
    local.get 954
    i32.add
    local.set 955
    local.get 5
    i32.load offset=388
    local.set 956
    local.get 956
    i32.load offset=24
    local.set 957
    local.get 955
    local.get 957
    i32.sub
    local.set 958
    local.get 5
    i32.load offset=396
    local.set 959
    local.get 959
    local.get 958
    i32.store offset=24
    local.get 5
    i32.load offset=392
    local.set 960
    local.get 960
    i32.load offset=28
    local.set 961
    i32.const 67108862
    local.set 962
    local.get 961
    local.get 962
    i32.add
    local.set 963
    local.get 5
    i32.load offset=388
    local.set 964
    local.get 964
    i32.load offset=28
    local.set 965
    local.get 963
    local.get 965
    i32.sub
    local.set 966
    local.get 5
    i32.load offset=396
    local.set 967
    local.get 967
    local.get 966
    i32.store offset=28
    local.get 5
    i32.load offset=392
    local.set 968
    local.get 968
    i32.load offset=32
    local.set 969
    i32.const 134217726
    local.set 970
    local.get 969
    local.get 970
    i32.add
    local.set 971
    local.get 5
    i32.load offset=388
    local.set 972
    local.get 972
    i32.load offset=32
    local.set 973
    local.get 971
    local.get 973
    i32.sub
    local.set 974
    local.get 5
    i32.load offset=396
    local.set 975
    local.get 975
    local.get 974
    i32.store offset=32
    local.get 5
    i32.load offset=392
    local.set 976
    local.get 976
    i32.load offset=36
    local.set 977
    i32.const 67108862
    local.set 978
    local.get 977
    local.get 978
    i32.add
    local.set 979
    local.get 5
    i32.load offset=388
    local.set 980
    local.get 980
    i32.load offset=36
    local.set 981
    local.get 979
    local.get 981
    i32.sub
    local.set 982
    local.get 5
    i32.load offset=396
    local.set 983
    local.get 983
    local.get 982
    i32.store offset=36
    local.get 5
    i32.load offset=340
    local.set 984
    i32.const 40
    local.set 985
    local.get 984
    local.get 985
    i32.add
    local.set 986
    local.get 5
    i32.load offset=340
    local.set 987
    i32.const 40
    local.set 988
    local.get 987
    local.get 988
    i32.add
    local.set 989
    local.get 5
    local.get 986
    i32.store offset=380
    local.get 5
    local.get 989
    i32.store offset=376
    local.get 5
    local.get 9
    i32.store offset=372
    local.get 5
    i32.load offset=376
    local.set 990
    local.get 990
    i32.load
    local.set 991
    local.get 5
    i32.load offset=372
    local.set 992
    local.get 992
    i32.load
    local.set 993
    local.get 991
    local.get 993
    i32.add
    local.set 994
    local.get 5
    i32.load offset=380
    local.set 995
    local.get 995
    local.get 994
    i32.store
    local.get 5
    i32.load offset=376
    local.set 996
    local.get 996
    i32.load offset=4
    local.set 997
    local.get 5
    i32.load offset=372
    local.set 998
    local.get 998
    i32.load offset=4
    local.set 999
    local.get 997
    local.get 999
    i32.add
    local.set 1000
    local.get 5
    i32.load offset=380
    local.set 1001
    local.get 1001
    local.get 1000
    i32.store offset=4
    local.get 5
    i32.load offset=376
    local.set 1002
    local.get 1002
    i32.load offset=8
    local.set 1003
    local.get 5
    i32.load offset=372
    local.set 1004
    local.get 1004
    i32.load offset=8
    local.set 1005
    local.get 1003
    local.get 1005
    i32.add
    local.set 1006
    local.get 5
    i32.load offset=380
    local.set 1007
    local.get 1007
    local.get 1006
    i32.store offset=8
    local.get 5
    i32.load offset=376
    local.set 1008
    local.get 1008
    i32.load offset=12
    local.set 1009
    local.get 5
    i32.load offset=372
    local.set 1010
    local.get 1010
    i32.load offset=12
    local.set 1011
    local.get 1009
    local.get 1011
    i32.add
    local.set 1012
    local.get 5
    i32.load offset=380
    local.set 1013
    local.get 1013
    local.get 1012
    i32.store offset=12
    local.get 5
    i32.load offset=376
    local.set 1014
    local.get 1014
    i32.load offset=16
    local.set 1015
    local.get 5
    i32.load offset=372
    local.set 1016
    local.get 1016
    i32.load offset=16
    local.set 1017
    local.get 1015
    local.get 1017
    i32.add
    local.set 1018
    local.get 5
    i32.load offset=380
    local.set 1019
    local.get 1019
    local.get 1018
    i32.store offset=16
    local.get 5
    i32.load offset=376
    local.set 1020
    local.get 1020
    i32.load offset=20
    local.set 1021
    local.get 5
    i32.load offset=372
    local.set 1022
    local.get 1022
    i32.load offset=20
    local.set 1023
    local.get 1021
    local.get 1023
    i32.add
    local.set 1024
    local.get 5
    i32.load offset=380
    local.set 1025
    local.get 1025
    local.get 1024
    i32.store offset=20
    local.get 5
    i32.load offset=376
    local.set 1026
    local.get 1026
    i32.load offset=24
    local.set 1027
    local.get 5
    i32.load offset=372
    local.set 1028
    local.get 1028
    i32.load offset=24
    local.set 1029
    local.get 1027
    local.get 1029
    i32.add
    local.set 1030
    local.get 5
    i32.load offset=380
    local.set 1031
    local.get 1031
    local.get 1030
    i32.store offset=24
    local.get 5
    i32.load offset=376
    local.set 1032
    local.get 1032
    i32.load offset=28
    local.set 1033
    local.get 5
    i32.load offset=372
    local.set 1034
    local.get 1034
    i32.load offset=28
    local.set 1035
    local.get 1033
    local.get 1035
    i32.add
    local.set 1036
    local.get 5
    i32.load offset=380
    local.set 1037
    local.get 1037
    local.get 1036
    i32.store offset=28
    local.get 5
    i32.load offset=376
    local.set 1038
    local.get 1038
    i32.load offset=32
    local.set 1039
    local.get 5
    i32.load offset=372
    local.set 1040
    local.get 1040
    i32.load offset=32
    local.set 1041
    local.get 1039
    local.get 1041
    i32.add
    local.set 1042
    local.get 5
    i32.load offset=380
    local.set 1043
    local.get 1043
    local.get 1042
    i32.store offset=32
    local.get 5
    i32.load offset=376
    local.set 1044
    local.get 1044
    i32.load offset=36
    local.set 1045
    local.get 5
    i32.load offset=372
    local.set 1046
    local.get 1046
    i32.load offset=36
    local.set 1047
    local.get 1045
    local.get 1047
    i32.add
    local.set 1048
    local.get 5
    i32.load offset=380
    local.set 1049
    local.get 1049
    local.get 1048
    i32.store offset=36
    local.get 5
    i32.load offset=340
    local.set 1050
    i32.const 120
    local.set 1051
    local.get 1050
    local.get 1051
    i32.add
    local.set 1052
    local.get 5
    i32.load offset=340
    local.set 1053
    i32.const 120
    local.set 1054
    local.get 1053
    local.get 1054
    i32.add
    local.set 1055
    local.get 1052
    local.get 1055
    local.get 6
    call $curve25519_mul
    i32.const 480
    local.set 1056
    local.get 5
    local.get 1056
    i32.add
    local.set 1057
    local.get 1057
    global.set 0
    return)
  (func $ge25519_double_p1p1 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 240
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.set 5
    i32.const 96
    local.set 6
    local.get 4
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 48
    local.set 9
    local.get 4
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    local.get 4
    local.get 0
    i32.store offset=148
    local.get 4
    local.get 1
    i32.store offset=144
    local.get 4
    i32.load offset=144
    local.set 12
    local.get 8
    local.get 12
    call $curve25519_square
    local.get 4
    i32.load offset=144
    local.set 13
    i32.const 40
    local.set 14
    local.get 13
    local.get 14
    i32.add
    local.set 15
    local.get 11
    local.get 15
    call $curve25519_square
    local.get 4
    i32.load offset=144
    local.set 16
    i32.const 80
    local.set 17
    local.get 16
    local.get 17
    i32.add
    local.set 18
    local.get 5
    local.get 18
    call $curve25519_square
    local.get 4
    local.get 5
    i32.store offset=164
    local.get 4
    local.get 5
    i32.store offset=160
    local.get 4
    local.get 5
    i32.store offset=156
    local.get 4
    i32.load offset=160
    local.set 19
    local.get 19
    i32.load
    local.set 20
    local.get 4
    i32.load offset=156
    local.set 21
    local.get 21
    i32.load
    local.set 22
    local.get 20
    local.get 22
    i32.add
    local.set 23
    local.get 4
    i32.load offset=164
    local.set 24
    local.get 24
    local.get 23
    i32.store
    local.get 4
    i32.load offset=164
    local.set 25
    local.get 25
    i32.load
    local.set 26
    i32.const 26
    local.set 27
    local.get 26
    local.get 27
    i32.shr_u
    local.set 28
    local.get 4
    local.get 28
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 29
    local.get 29
    i32.load
    local.set 30
    i32.const 67108863
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    local.get 29
    local.get 32
    i32.store
    local.get 4
    i32.load offset=160
    local.set 33
    local.get 33
    i32.load offset=4
    local.set 34
    local.get 4
    i32.load offset=156
    local.set 35
    local.get 35
    i32.load offset=4
    local.set 36
    local.get 34
    local.get 36
    i32.add
    local.set 37
    local.get 4
    i32.load offset=152
    local.set 38
    local.get 37
    local.get 38
    i32.add
    local.set 39
    local.get 4
    i32.load offset=164
    local.set 40
    local.get 40
    local.get 39
    i32.store offset=4
    local.get 4
    i32.load offset=164
    local.set 41
    local.get 41
    i32.load offset=4
    local.set 42
    i32.const 25
    local.set 43
    local.get 42
    local.get 43
    i32.shr_u
    local.set 44
    local.get 4
    local.get 44
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 45
    local.get 45
    i32.load offset=4
    local.set 46
    i32.const 33554431
    local.set 47
    local.get 46
    local.get 47
    i32.and
    local.set 48
    local.get 45
    local.get 48
    i32.store offset=4
    local.get 4
    i32.load offset=160
    local.set 49
    local.get 49
    i32.load offset=8
    local.set 50
    local.get 4
    i32.load offset=156
    local.set 51
    local.get 51
    i32.load offset=8
    local.set 52
    local.get 50
    local.get 52
    i32.add
    local.set 53
    local.get 4
    i32.load offset=152
    local.set 54
    local.get 53
    local.get 54
    i32.add
    local.set 55
    local.get 4
    i32.load offset=164
    local.set 56
    local.get 56
    local.get 55
    i32.store offset=8
    local.get 4
    i32.load offset=164
    local.set 57
    local.get 57
    i32.load offset=8
    local.set 58
    i32.const 26
    local.set 59
    local.get 58
    local.get 59
    i32.shr_u
    local.set 60
    local.get 4
    local.get 60
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 61
    local.get 61
    i32.load offset=8
    local.set 62
    i32.const 67108863
    local.set 63
    local.get 62
    local.get 63
    i32.and
    local.set 64
    local.get 61
    local.get 64
    i32.store offset=8
    local.get 4
    i32.load offset=160
    local.set 65
    local.get 65
    i32.load offset=12
    local.set 66
    local.get 4
    i32.load offset=156
    local.set 67
    local.get 67
    i32.load offset=12
    local.set 68
    local.get 66
    local.get 68
    i32.add
    local.set 69
    local.get 4
    i32.load offset=152
    local.set 70
    local.get 69
    local.get 70
    i32.add
    local.set 71
    local.get 4
    i32.load offset=164
    local.set 72
    local.get 72
    local.get 71
    i32.store offset=12
    local.get 4
    i32.load offset=164
    local.set 73
    local.get 73
    i32.load offset=12
    local.set 74
    i32.const 25
    local.set 75
    local.get 74
    local.get 75
    i32.shr_u
    local.set 76
    local.get 4
    local.get 76
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 77
    local.get 77
    i32.load offset=12
    local.set 78
    i32.const 33554431
    local.set 79
    local.get 78
    local.get 79
    i32.and
    local.set 80
    local.get 77
    local.get 80
    i32.store offset=12
    local.get 4
    i32.load offset=160
    local.set 81
    local.get 81
    i32.load offset=16
    local.set 82
    local.get 4
    i32.load offset=156
    local.set 83
    local.get 83
    i32.load offset=16
    local.set 84
    local.get 82
    local.get 84
    i32.add
    local.set 85
    local.get 4
    i32.load offset=152
    local.set 86
    local.get 85
    local.get 86
    i32.add
    local.set 87
    local.get 4
    i32.load offset=164
    local.set 88
    local.get 88
    local.get 87
    i32.store offset=16
    local.get 4
    i32.load offset=164
    local.set 89
    local.get 89
    i32.load offset=16
    local.set 90
    i32.const 26
    local.set 91
    local.get 90
    local.get 91
    i32.shr_u
    local.set 92
    local.get 4
    local.get 92
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 93
    local.get 93
    i32.load offset=16
    local.set 94
    i32.const 67108863
    local.set 95
    local.get 94
    local.get 95
    i32.and
    local.set 96
    local.get 93
    local.get 96
    i32.store offset=16
    local.get 4
    i32.load offset=160
    local.set 97
    local.get 97
    i32.load offset=20
    local.set 98
    local.get 4
    i32.load offset=156
    local.set 99
    local.get 99
    i32.load offset=20
    local.set 100
    local.get 98
    local.get 100
    i32.add
    local.set 101
    local.get 4
    i32.load offset=152
    local.set 102
    local.get 101
    local.get 102
    i32.add
    local.set 103
    local.get 4
    i32.load offset=164
    local.set 104
    local.get 104
    local.get 103
    i32.store offset=20
    local.get 4
    i32.load offset=164
    local.set 105
    local.get 105
    i32.load offset=20
    local.set 106
    i32.const 25
    local.set 107
    local.get 106
    local.get 107
    i32.shr_u
    local.set 108
    local.get 4
    local.get 108
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 109
    local.get 109
    i32.load offset=20
    local.set 110
    i32.const 33554431
    local.set 111
    local.get 110
    local.get 111
    i32.and
    local.set 112
    local.get 109
    local.get 112
    i32.store offset=20
    local.get 4
    i32.load offset=160
    local.set 113
    local.get 113
    i32.load offset=24
    local.set 114
    local.get 4
    i32.load offset=156
    local.set 115
    local.get 115
    i32.load offset=24
    local.set 116
    local.get 114
    local.get 116
    i32.add
    local.set 117
    local.get 4
    i32.load offset=152
    local.set 118
    local.get 117
    local.get 118
    i32.add
    local.set 119
    local.get 4
    i32.load offset=164
    local.set 120
    local.get 120
    local.get 119
    i32.store offset=24
    local.get 4
    i32.load offset=164
    local.set 121
    local.get 121
    i32.load offset=24
    local.set 122
    i32.const 26
    local.set 123
    local.get 122
    local.get 123
    i32.shr_u
    local.set 124
    local.get 4
    local.get 124
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 125
    local.get 125
    i32.load offset=24
    local.set 126
    i32.const 67108863
    local.set 127
    local.get 126
    local.get 127
    i32.and
    local.set 128
    local.get 125
    local.get 128
    i32.store offset=24
    local.get 4
    i32.load offset=160
    local.set 129
    local.get 129
    i32.load offset=28
    local.set 130
    local.get 4
    i32.load offset=156
    local.set 131
    local.get 131
    i32.load offset=28
    local.set 132
    local.get 130
    local.get 132
    i32.add
    local.set 133
    local.get 4
    i32.load offset=152
    local.set 134
    local.get 133
    local.get 134
    i32.add
    local.set 135
    local.get 4
    i32.load offset=164
    local.set 136
    local.get 136
    local.get 135
    i32.store offset=28
    local.get 4
    i32.load offset=164
    local.set 137
    local.get 137
    i32.load offset=28
    local.set 138
    i32.const 25
    local.set 139
    local.get 138
    local.get 139
    i32.shr_u
    local.set 140
    local.get 4
    local.get 140
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 141
    local.get 141
    i32.load offset=28
    local.set 142
    i32.const 33554431
    local.set 143
    local.get 142
    local.get 143
    i32.and
    local.set 144
    local.get 141
    local.get 144
    i32.store offset=28
    local.get 4
    i32.load offset=160
    local.set 145
    local.get 145
    i32.load offset=32
    local.set 146
    local.get 4
    i32.load offset=156
    local.set 147
    local.get 147
    i32.load offset=32
    local.set 148
    local.get 146
    local.get 148
    i32.add
    local.set 149
    local.get 4
    i32.load offset=152
    local.set 150
    local.get 149
    local.get 150
    i32.add
    local.set 151
    local.get 4
    i32.load offset=164
    local.set 152
    local.get 152
    local.get 151
    i32.store offset=32
    local.get 4
    i32.load offset=164
    local.set 153
    local.get 153
    i32.load offset=32
    local.set 154
    i32.const 26
    local.set 155
    local.get 154
    local.get 155
    i32.shr_u
    local.set 156
    local.get 4
    local.get 156
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 157
    local.get 157
    i32.load offset=32
    local.set 158
    i32.const 67108863
    local.set 159
    local.get 158
    local.get 159
    i32.and
    local.set 160
    local.get 157
    local.get 160
    i32.store offset=32
    local.get 4
    i32.load offset=160
    local.set 161
    local.get 161
    i32.load offset=36
    local.set 162
    local.get 4
    i32.load offset=156
    local.set 163
    local.get 163
    i32.load offset=36
    local.set 164
    local.get 162
    local.get 164
    i32.add
    local.set 165
    local.get 4
    i32.load offset=152
    local.set 166
    local.get 165
    local.get 166
    i32.add
    local.set 167
    local.get 4
    i32.load offset=164
    local.set 168
    local.get 168
    local.get 167
    i32.store offset=36
    local.get 4
    i32.load offset=164
    local.set 169
    local.get 169
    i32.load offset=36
    local.set 170
    i32.const 25
    local.set 171
    local.get 170
    local.get 171
    i32.shr_u
    local.set 172
    local.get 4
    local.get 172
    i32.store offset=152
    local.get 4
    i32.load offset=164
    local.set 173
    local.get 173
    i32.load offset=36
    local.set 174
    i32.const 33554431
    local.set 175
    local.get 174
    local.get 175
    i32.and
    local.set 176
    local.get 173
    local.get 176
    i32.store offset=36
    local.get 4
    i32.load offset=152
    local.set 177
    i32.const 19
    local.set 178
    local.get 177
    local.get 178
    i32.mul
    local.set 179
    local.get 4
    i32.load offset=164
    local.set 180
    local.get 180
    i32.load
    local.set 181
    local.get 181
    local.get 179
    i32.add
    local.set 182
    local.get 180
    local.get 182
    i32.store
    local.get 4
    i32.load offset=148
    local.set 183
    local.get 4
    i32.load offset=144
    local.set 184
    local.get 4
    i32.load offset=144
    local.set 185
    i32.const 40
    local.set 186
    local.get 185
    local.get 186
    i32.add
    local.set 187
    local.get 4
    local.get 183
    i32.store offset=236
    local.get 4
    local.get 184
    i32.store offset=232
    local.get 4
    local.get 187
    i32.store offset=228
    local.get 4
    i32.load offset=232
    local.set 188
    local.get 188
    i32.load
    local.set 189
    local.get 4
    i32.load offset=228
    local.set 190
    local.get 190
    i32.load
    local.set 191
    local.get 189
    local.get 191
    i32.add
    local.set 192
    local.get 4
    i32.load offset=236
    local.set 193
    local.get 193
    local.get 192
    i32.store
    local.get 4
    i32.load offset=232
    local.set 194
    local.get 194
    i32.load offset=4
    local.set 195
    local.get 4
    i32.load offset=228
    local.set 196
    local.get 196
    i32.load offset=4
    local.set 197
    local.get 195
    local.get 197
    i32.add
    local.set 198
    local.get 4
    i32.load offset=236
    local.set 199
    local.get 199
    local.get 198
    i32.store offset=4
    local.get 4
    i32.load offset=232
    local.set 200
    local.get 200
    i32.load offset=8
    local.set 201
    local.get 4
    i32.load offset=228
    local.set 202
    local.get 202
    i32.load offset=8
    local.set 203
    local.get 201
    local.get 203
    i32.add
    local.set 204
    local.get 4
    i32.load offset=236
    local.set 205
    local.get 205
    local.get 204
    i32.store offset=8
    local.get 4
    i32.load offset=232
    local.set 206
    local.get 206
    i32.load offset=12
    local.set 207
    local.get 4
    i32.load offset=228
    local.set 208
    local.get 208
    i32.load offset=12
    local.set 209
    local.get 207
    local.get 209
    i32.add
    local.set 210
    local.get 4
    i32.load offset=236
    local.set 211
    local.get 211
    local.get 210
    i32.store offset=12
    local.get 4
    i32.load offset=232
    local.set 212
    local.get 212
    i32.load offset=16
    local.set 213
    local.get 4
    i32.load offset=228
    local.set 214
    local.get 214
    i32.load offset=16
    local.set 215
    local.get 213
    local.get 215
    i32.add
    local.set 216
    local.get 4
    i32.load offset=236
    local.set 217
    local.get 217
    local.get 216
    i32.store offset=16
    local.get 4
    i32.load offset=232
    local.set 218
    local.get 218
    i32.load offset=20
    local.set 219
    local.get 4
    i32.load offset=228
    local.set 220
    local.get 220
    i32.load offset=20
    local.set 221
    local.get 219
    local.get 221
    i32.add
    local.set 222
    local.get 4
    i32.load offset=236
    local.set 223
    local.get 223
    local.get 222
    i32.store offset=20
    local.get 4
    i32.load offset=232
    local.set 224
    local.get 224
    i32.load offset=24
    local.set 225
    local.get 4
    i32.load offset=228
    local.set 226
    local.get 226
    i32.load offset=24
    local.set 227
    local.get 225
    local.get 227
    i32.add
    local.set 228
    local.get 4
    i32.load offset=236
    local.set 229
    local.get 229
    local.get 228
    i32.store offset=24
    local.get 4
    i32.load offset=232
    local.set 230
    local.get 230
    i32.load offset=28
    local.set 231
    local.get 4
    i32.load offset=228
    local.set 232
    local.get 232
    i32.load offset=28
    local.set 233
    local.get 231
    local.get 233
    i32.add
    local.set 234
    local.get 4
    i32.load offset=236
    local.set 235
    local.get 235
    local.get 234
    i32.store offset=28
    local.get 4
    i32.load offset=232
    local.set 236
    local.get 236
    i32.load offset=32
    local.set 237
    local.get 4
    i32.load offset=228
    local.set 238
    local.get 238
    i32.load offset=32
    local.set 239
    local.get 237
    local.get 239
    i32.add
    local.set 240
    local.get 4
    i32.load offset=236
    local.set 241
    local.get 241
    local.get 240
    i32.store offset=32
    local.get 4
    i32.load offset=232
    local.set 242
    local.get 242
    i32.load offset=36
    local.set 243
    local.get 4
    i32.load offset=228
    local.set 244
    local.get 244
    i32.load offset=36
    local.set 245
    local.get 243
    local.get 245
    i32.add
    local.set 246
    local.get 4
    i32.load offset=236
    local.set 247
    local.get 247
    local.get 246
    i32.store offset=36
    local.get 4
    i32.load offset=148
    local.set 248
    local.get 4
    i32.load offset=148
    local.set 249
    local.get 248
    local.get 249
    call $curve25519_square
    local.get 4
    i32.load offset=148
    local.set 250
    i32.const 40
    local.set 251
    local.get 250
    local.get 251
    i32.add
    local.set 252
    local.get 4
    local.get 252
    i32.store offset=224
    local.get 4
    local.get 11
    i32.store offset=220
    local.get 4
    local.get 8
    i32.store offset=216
    local.get 4
    i32.load offset=220
    local.set 253
    local.get 253
    i32.load
    local.set 254
    local.get 4
    i32.load offset=216
    local.set 255
    local.get 255
    i32.load
    local.set 256
    local.get 254
    local.get 256
    i32.add
    local.set 257
    local.get 4
    i32.load offset=224
    local.set 258
    local.get 258
    local.get 257
    i32.store
    local.get 4
    i32.load offset=220
    local.set 259
    local.get 259
    i32.load offset=4
    local.set 260
    local.get 4
    i32.load offset=216
    local.set 261
    local.get 261
    i32.load offset=4
    local.set 262
    local.get 260
    local.get 262
    i32.add
    local.set 263
    local.get 4
    i32.load offset=224
    local.set 264
    local.get 264
    local.get 263
    i32.store offset=4
    local.get 4
    i32.load offset=220
    local.set 265
    local.get 265
    i32.load offset=8
    local.set 266
    local.get 4
    i32.load offset=216
    local.set 267
    local.get 267
    i32.load offset=8
    local.set 268
    local.get 266
    local.get 268
    i32.add
    local.set 269
    local.get 4
    i32.load offset=224
    local.set 270
    local.get 270
    local.get 269
    i32.store offset=8
    local.get 4
    i32.load offset=220
    local.set 271
    local.get 271
    i32.load offset=12
    local.set 272
    local.get 4
    i32.load offset=216
    local.set 273
    local.get 273
    i32.load offset=12
    local.set 274
    local.get 272
    local.get 274
    i32.add
    local.set 275
    local.get 4
    i32.load offset=224
    local.set 276
    local.get 276
    local.get 275
    i32.store offset=12
    local.get 4
    i32.load offset=220
    local.set 277
    local.get 277
    i32.load offset=16
    local.set 278
    local.get 4
    i32.load offset=216
    local.set 279
    local.get 279
    i32.load offset=16
    local.set 280
    local.get 278
    local.get 280
    i32.add
    local.set 281
    local.get 4
    i32.load offset=224
    local.set 282
    local.get 282
    local.get 281
    i32.store offset=16
    local.get 4
    i32.load offset=220
    local.set 283
    local.get 283
    i32.load offset=20
    local.set 284
    local.get 4
    i32.load offset=216
    local.set 285
    local.get 285
    i32.load offset=20
    local.set 286
    local.get 284
    local.get 286
    i32.add
    local.set 287
    local.get 4
    i32.load offset=224
    local.set 288
    local.get 288
    local.get 287
    i32.store offset=20
    local.get 4
    i32.load offset=220
    local.set 289
    local.get 289
    i32.load offset=24
    local.set 290
    local.get 4
    i32.load offset=216
    local.set 291
    local.get 291
    i32.load offset=24
    local.set 292
    local.get 290
    local.get 292
    i32.add
    local.set 293
    local.get 4
    i32.load offset=224
    local.set 294
    local.get 294
    local.get 293
    i32.store offset=24
    local.get 4
    i32.load offset=220
    local.set 295
    local.get 295
    i32.load offset=28
    local.set 296
    local.get 4
    i32.load offset=216
    local.set 297
    local.get 297
    i32.load offset=28
    local.set 298
    local.get 296
    local.get 298
    i32.add
    local.set 299
    local.get 4
    i32.load offset=224
    local.set 300
    local.get 300
    local.get 299
    i32.store offset=28
    local.get 4
    i32.load offset=220
    local.set 301
    local.get 301
    i32.load offset=32
    local.set 302
    local.get 4
    i32.load offset=216
    local.set 303
    local.get 303
    i32.load offset=32
    local.set 304
    local.get 302
    local.get 304
    i32.add
    local.set 305
    local.get 4
    i32.load offset=224
    local.set 306
    local.get 306
    local.get 305
    i32.store offset=32
    local.get 4
    i32.load offset=220
    local.set 307
    local.get 307
    i32.load offset=36
    local.set 308
    local.get 4
    i32.load offset=216
    local.set 309
    local.get 309
    i32.load offset=36
    local.set 310
    local.get 308
    local.get 310
    i32.add
    local.set 311
    local.get 4
    i32.load offset=224
    local.set 312
    local.get 312
    local.get 311
    i32.store offset=36
    local.get 4
    i32.load offset=148
    local.set 313
    i32.const 80
    local.set 314
    local.get 313
    local.get 314
    i32.add
    local.set 315
    local.get 4
    local.get 315
    i32.store offset=212
    local.get 4
    local.get 11
    i32.store offset=208
    local.get 4
    local.get 8
    i32.store offset=204
    local.get 4
    i32.load offset=208
    local.set 316
    local.get 316
    i32.load
    local.set 317
    i32.const 134217690
    local.set 318
    local.get 317
    local.get 318
    i32.add
    local.set 319
    local.get 4
    i32.load offset=204
    local.set 320
    local.get 320
    i32.load
    local.set 321
    local.get 319
    local.get 321
    i32.sub
    local.set 322
    local.get 4
    i32.load offset=212
    local.set 323
    local.get 323
    local.get 322
    i32.store
    local.get 4
    i32.load offset=212
    local.set 324
    local.get 324
    i32.load
    local.set 325
    i32.const 26
    local.set 326
    local.get 325
    local.get 326
    i32.shr_u
    local.set 327
    local.get 4
    local.get 327
    i32.store offset=200
    local.get 4
    i32.load offset=212
    local.set 328
    local.get 328
    i32.load
    local.set 329
    i32.const 67108863
    local.set 330
    local.get 329
    local.get 330
    i32.and
    local.set 331
    local.get 328
    local.get 331
    i32.store
    local.get 4
    i32.load offset=208
    local.set 332
    local.get 332
    i32.load offset=4
    local.set 333
    i32.const 67108862
    local.set 334
    local.get 333
    local.get 334
    i32.add
    local.set 335
    local.get 4
    i32.load offset=204
    local.set 336
    local.get 336
    i32.load offset=4
    local.set 337
    local.get 335
    local.get 337
    i32.sub
    local.set 338
    local.get 4
    i32.load offset=200
    local.set 339
    local.get 338
    local.get 339
    i32.add
    local.set 340
    local.get 4
    i32.load offset=212
    local.set 341
    local.get 341
    local.get 340
    i32.store offset=4
    local.get 4
    i32.load offset=212
    local.set 342
    local.get 342
    i32.load offset=4
    local.set 343
    i32.const 25
    local.set 344
    local.get 343
    local.get 344
    i32.shr_u
    local.set 345
    local.get 4
    local.get 345
    i32.store offset=200
    local.get 4
    i32.load offset=212
    local.set 346
    local.get 346
    i32.load offset=4
    local.set 347
    i32.const 33554431
    local.set 348
    local.get 347
    local.get 348
    i32.and
    local.set 349
    local.get 346
    local.get 349
    i32.store offset=4
    local.get 4
    i32.load offset=208
    local.set 350
    local.get 350
    i32.load offset=8
    local.set 351
    i32.const 134217726
    local.set 352
    local.get 351
    local.get 352
    i32.add
    local.set 353
    local.get 4
    i32.load offset=204
    local.set 354
    local.get 354
    i32.load offset=8
    local.set 355
    local.get 353
    local.get 355
    i32.sub
    local.set 356
    local.get 4
    i32.load offset=200
    local.set 357
    local.get 356
    local.get 357
    i32.add
    local.set 358
    local.get 4
    i32.load offset=212
    local.set 359
    local.get 359
    local.get 358
    i32.store offset=8
    local.get 4
    i32.load offset=212
    local.set 360
    local.get 360
    i32.load offset=8
    local.set 361
    i32.const 26
    local.set 362
    local.get 361
    local.get 362
    i32.shr_u
    local.set 363
    local.get 4
    local.get 363
    i32.store offset=200
    local.get 4
    i32.load offset=212
    local.set 364
    local.get 364
    i32.load offset=8
    local.set 365
    i32.const 67108863
    local.set 366
    local.get 365
    local.get 366
    i32.and
    local.set 367
    local.get 364
    local.get 367
    i32.store offset=8
    local.get 4
    i32.load offset=208
    local.set 368
    local.get 368
    i32.load offset=12
    local.set 369
    i32.const 67108862
    local.set 370
    local.get 369
    local.get 370
    i32.add
    local.set 371
    local.get 4
    i32.load offset=204
    local.set 372
    local.get 372
    i32.load offset=12
    local.set 373
    local.get 371
    local.get 373
    i32.sub
    local.set 374
    local.get 4
    i32.load offset=200
    local.set 375
    local.get 374
    local.get 375
    i32.add
    local.set 376
    local.get 4
    i32.load offset=212
    local.set 377
    local.get 377
    local.get 376
    i32.store offset=12
    local.get 4
    i32.load offset=212
    local.set 378
    local.get 378
    i32.load offset=12
    local.set 379
    i32.const 25
    local.set 380
    local.get 379
    local.get 380
    i32.shr_u
    local.set 381
    local.get 4
    local.get 381
    i32.store offset=200
    local.get 4
    i32.load offset=212
    local.set 382
    local.get 382
    i32.load offset=12
    local.set 383
    i32.const 33554431
    local.set 384
    local.get 383
    local.get 384
    i32.and
    local.set 385
    local.get 382
    local.get 385
    i32.store offset=12
    local.get 4
    i32.load offset=208
    local.set 386
    local.get 386
    i32.load offset=16
    local.set 387
    i32.const 134217726
    local.set 388
    local.get 387
    local.get 388
    i32.add
    local.set 389
    local.get 4
    i32.load offset=204
    local.set 390
    local.get 390
    i32.load offset=16
    local.set 391
    local.get 389
    local.get 391
    i32.sub
    local.set 392
    local.get 4
    i32.load offset=200
    local.set 393
    local.get 392
    local.get 393
    i32.add
    local.set 394
    local.get 4
    i32.load offset=212
    local.set 395
    local.get 395
    local.get 394
    i32.store offset=16
    local.get 4
    i32.load offset=208
    local.set 396
    local.get 396
    i32.load offset=20
    local.set 397
    i32.const 67108862
    local.set 398
    local.get 397
    local.get 398
    i32.add
    local.set 399
    local.get 4
    i32.load offset=204
    local.set 400
    local.get 400
    i32.load offset=20
    local.set 401
    local.get 399
    local.get 401
    i32.sub
    local.set 402
    local.get 4
    i32.load offset=212
    local.set 403
    local.get 403
    local.get 402
    i32.store offset=20
    local.get 4
    i32.load offset=208
    local.set 404
    local.get 404
    i32.load offset=24
    local.set 405
    i32.const 134217726
    local.set 406
    local.get 405
    local.get 406
    i32.add
    local.set 407
    local.get 4
    i32.load offset=204
    local.set 408
    local.get 408
    i32.load offset=24
    local.set 409
    local.get 407
    local.get 409
    i32.sub
    local.set 410
    local.get 4
    i32.load offset=212
    local.set 411
    local.get 411
    local.get 410
    i32.store offset=24
    local.get 4
    i32.load offset=208
    local.set 412
    local.get 412
    i32.load offset=28
    local.set 413
    i32.const 67108862
    local.set 414
    local.get 413
    local.get 414
    i32.add
    local.set 415
    local.get 4
    i32.load offset=204
    local.set 416
    local.get 416
    i32.load offset=28
    local.set 417
    local.get 415
    local.get 417
    i32.sub
    local.set 418
    local.get 4
    i32.load offset=212
    local.set 419
    local.get 419
    local.get 418
    i32.store offset=28
    local.get 4
    i32.load offset=208
    local.set 420
    local.get 420
    i32.load offset=32
    local.set 421
    i32.const 134217726
    local.set 422
    local.get 421
    local.get 422
    i32.add
    local.set 423
    local.get 4
    i32.load offset=204
    local.set 424
    local.get 424
    i32.load offset=32
    local.set 425
    local.get 423
    local.get 425
    i32.sub
    local.set 426
    local.get 4
    i32.load offset=212
    local.set 427
    local.get 427
    local.get 426
    i32.store offset=32
    local.get 4
    i32.load offset=208
    local.set 428
    local.get 428
    i32.load offset=36
    local.set 429
    i32.const 67108862
    local.set 430
    local.get 429
    local.get 430
    i32.add
    local.set 431
    local.get 4
    i32.load offset=204
    local.set 432
    local.get 432
    i32.load offset=36
    local.set 433
    local.get 431
    local.get 433
    i32.sub
    local.set 434
    local.get 4
    i32.load offset=212
    local.set 435
    local.get 435
    local.get 434
    i32.store offset=36
    local.get 4
    i32.load offset=148
    local.set 436
    local.get 4
    i32.load offset=148
    local.set 437
    local.get 4
    i32.load offset=148
    local.set 438
    i32.const 40
    local.set 439
    local.get 438
    local.get 439
    i32.add
    local.set 440
    local.get 4
    local.get 436
    i32.store offset=196
    local.get 4
    local.get 437
    i32.store offset=192
    local.get 4
    local.get 440
    i32.store offset=188
    local.get 4
    i32.load offset=192
    local.set 441
    local.get 441
    i32.load
    local.set 442
    i32.const 268435380
    local.set 443
    local.get 442
    local.get 443
    i32.add
    local.set 444
    local.get 4
    i32.load offset=188
    local.set 445
    local.get 445
    i32.load
    local.set 446
    local.get 444
    local.get 446
    i32.sub
    local.set 447
    local.get 4
    i32.load offset=196
    local.set 448
    local.get 448
    local.get 447
    i32.store
    local.get 4
    i32.load offset=196
    local.set 449
    local.get 449
    i32.load
    local.set 450
    i32.const 26
    local.set 451
    local.get 450
    local.get 451
    i32.shr_u
    local.set 452
    local.get 4
    local.get 452
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 453
    local.get 453
    i32.load
    local.set 454
    i32.const 67108863
    local.set 455
    local.get 454
    local.get 455
    i32.and
    local.set 456
    local.get 453
    local.get 456
    i32.store
    local.get 4
    i32.load offset=192
    local.set 457
    local.get 457
    i32.load offset=4
    local.set 458
    i32.const 134217724
    local.set 459
    local.get 458
    local.get 459
    i32.add
    local.set 460
    local.get 4
    i32.load offset=188
    local.set 461
    local.get 461
    i32.load offset=4
    local.set 462
    local.get 460
    local.get 462
    i32.sub
    local.set 463
    local.get 4
    i32.load offset=184
    local.set 464
    local.get 463
    local.get 464
    i32.add
    local.set 465
    local.get 4
    i32.load offset=196
    local.set 466
    local.get 466
    local.get 465
    i32.store offset=4
    local.get 4
    i32.load offset=196
    local.set 467
    local.get 467
    i32.load offset=4
    local.set 468
    i32.const 25
    local.set 469
    local.get 468
    local.get 469
    i32.shr_u
    local.set 470
    local.get 4
    local.get 470
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 471
    local.get 471
    i32.load offset=4
    local.set 472
    i32.const 33554431
    local.set 473
    local.get 472
    local.get 473
    i32.and
    local.set 474
    local.get 471
    local.get 474
    i32.store offset=4
    local.get 4
    i32.load offset=192
    local.set 475
    local.get 475
    i32.load offset=8
    local.set 476
    i32.const 268435452
    local.set 477
    local.get 476
    local.get 477
    i32.add
    local.set 478
    local.get 4
    i32.load offset=188
    local.set 479
    local.get 479
    i32.load offset=8
    local.set 480
    local.get 478
    local.get 480
    i32.sub
    local.set 481
    local.get 4
    i32.load offset=184
    local.set 482
    local.get 481
    local.get 482
    i32.add
    local.set 483
    local.get 4
    i32.load offset=196
    local.set 484
    local.get 484
    local.get 483
    i32.store offset=8
    local.get 4
    i32.load offset=196
    local.set 485
    local.get 485
    i32.load offset=8
    local.set 486
    i32.const 26
    local.set 487
    local.get 486
    local.get 487
    i32.shr_u
    local.set 488
    local.get 4
    local.get 488
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 489
    local.get 489
    i32.load offset=8
    local.set 490
    i32.const 67108863
    local.set 491
    local.get 490
    local.get 491
    i32.and
    local.set 492
    local.get 489
    local.get 492
    i32.store offset=8
    local.get 4
    i32.load offset=192
    local.set 493
    local.get 493
    i32.load offset=12
    local.set 494
    i32.const 134217724
    local.set 495
    local.get 494
    local.get 495
    i32.add
    local.set 496
    local.get 4
    i32.load offset=188
    local.set 497
    local.get 497
    i32.load offset=12
    local.set 498
    local.get 496
    local.get 498
    i32.sub
    local.set 499
    local.get 4
    i32.load offset=184
    local.set 500
    local.get 499
    local.get 500
    i32.add
    local.set 501
    local.get 4
    i32.load offset=196
    local.set 502
    local.get 502
    local.get 501
    i32.store offset=12
    local.get 4
    i32.load offset=196
    local.set 503
    local.get 503
    i32.load offset=12
    local.set 504
    i32.const 25
    local.set 505
    local.get 504
    local.get 505
    i32.shr_u
    local.set 506
    local.get 4
    local.get 506
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 507
    local.get 507
    i32.load offset=12
    local.set 508
    i32.const 33554431
    local.set 509
    local.get 508
    local.get 509
    i32.and
    local.set 510
    local.get 507
    local.get 510
    i32.store offset=12
    local.get 4
    i32.load offset=192
    local.set 511
    local.get 511
    i32.load offset=16
    local.set 512
    i32.const 268435452
    local.set 513
    local.get 512
    local.get 513
    i32.add
    local.set 514
    local.get 4
    i32.load offset=188
    local.set 515
    local.get 515
    i32.load offset=16
    local.set 516
    local.get 514
    local.get 516
    i32.sub
    local.set 517
    local.get 4
    i32.load offset=184
    local.set 518
    local.get 517
    local.get 518
    i32.add
    local.set 519
    local.get 4
    i32.load offset=196
    local.set 520
    local.get 520
    local.get 519
    i32.store offset=16
    local.get 4
    i32.load offset=196
    local.set 521
    local.get 521
    i32.load offset=16
    local.set 522
    i32.const 26
    local.set 523
    local.get 522
    local.get 523
    i32.shr_u
    local.set 524
    local.get 4
    local.get 524
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 525
    local.get 525
    i32.load offset=16
    local.set 526
    i32.const 67108863
    local.set 527
    local.get 526
    local.get 527
    i32.and
    local.set 528
    local.get 525
    local.get 528
    i32.store offset=16
    local.get 4
    i32.load offset=192
    local.set 529
    local.get 529
    i32.load offset=20
    local.set 530
    i32.const 134217724
    local.set 531
    local.get 530
    local.get 531
    i32.add
    local.set 532
    local.get 4
    i32.load offset=188
    local.set 533
    local.get 533
    i32.load offset=20
    local.set 534
    local.get 532
    local.get 534
    i32.sub
    local.set 535
    local.get 4
    i32.load offset=184
    local.set 536
    local.get 535
    local.get 536
    i32.add
    local.set 537
    local.get 4
    i32.load offset=196
    local.set 538
    local.get 538
    local.get 537
    i32.store offset=20
    local.get 4
    i32.load offset=196
    local.set 539
    local.get 539
    i32.load offset=20
    local.set 540
    i32.const 25
    local.set 541
    local.get 540
    local.get 541
    i32.shr_u
    local.set 542
    local.get 4
    local.get 542
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 543
    local.get 543
    i32.load offset=20
    local.set 544
    i32.const 33554431
    local.set 545
    local.get 544
    local.get 545
    i32.and
    local.set 546
    local.get 543
    local.get 546
    i32.store offset=20
    local.get 4
    i32.load offset=192
    local.set 547
    local.get 547
    i32.load offset=24
    local.set 548
    i32.const 268435452
    local.set 549
    local.get 548
    local.get 549
    i32.add
    local.set 550
    local.get 4
    i32.load offset=188
    local.set 551
    local.get 551
    i32.load offset=24
    local.set 552
    local.get 550
    local.get 552
    i32.sub
    local.set 553
    local.get 4
    i32.load offset=184
    local.set 554
    local.get 553
    local.get 554
    i32.add
    local.set 555
    local.get 4
    i32.load offset=196
    local.set 556
    local.get 556
    local.get 555
    i32.store offset=24
    local.get 4
    i32.load offset=196
    local.set 557
    local.get 557
    i32.load offset=24
    local.set 558
    i32.const 26
    local.set 559
    local.get 558
    local.get 559
    i32.shr_u
    local.set 560
    local.get 4
    local.get 560
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 561
    local.get 561
    i32.load offset=24
    local.set 562
    i32.const 67108863
    local.set 563
    local.get 562
    local.get 563
    i32.and
    local.set 564
    local.get 561
    local.get 564
    i32.store offset=24
    local.get 4
    i32.load offset=192
    local.set 565
    local.get 565
    i32.load offset=28
    local.set 566
    i32.const 134217724
    local.set 567
    local.get 566
    local.get 567
    i32.add
    local.set 568
    local.get 4
    i32.load offset=188
    local.set 569
    local.get 569
    i32.load offset=28
    local.set 570
    local.get 568
    local.get 570
    i32.sub
    local.set 571
    local.get 4
    i32.load offset=184
    local.set 572
    local.get 571
    local.get 572
    i32.add
    local.set 573
    local.get 4
    i32.load offset=196
    local.set 574
    local.get 574
    local.get 573
    i32.store offset=28
    local.get 4
    i32.load offset=196
    local.set 575
    local.get 575
    i32.load offset=28
    local.set 576
    i32.const 25
    local.set 577
    local.get 576
    local.get 577
    i32.shr_u
    local.set 578
    local.get 4
    local.get 578
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 579
    local.get 579
    i32.load offset=28
    local.set 580
    i32.const 33554431
    local.set 581
    local.get 580
    local.get 581
    i32.and
    local.set 582
    local.get 579
    local.get 582
    i32.store offset=28
    local.get 4
    i32.load offset=192
    local.set 583
    local.get 583
    i32.load offset=32
    local.set 584
    i32.const 268435452
    local.set 585
    local.get 584
    local.get 585
    i32.add
    local.set 586
    local.get 4
    i32.load offset=188
    local.set 587
    local.get 587
    i32.load offset=32
    local.set 588
    local.get 586
    local.get 588
    i32.sub
    local.set 589
    local.get 4
    i32.load offset=184
    local.set 590
    local.get 589
    local.get 590
    i32.add
    local.set 591
    local.get 4
    i32.load offset=196
    local.set 592
    local.get 592
    local.get 591
    i32.store offset=32
    local.get 4
    i32.load offset=196
    local.set 593
    local.get 593
    i32.load offset=32
    local.set 594
    i32.const 26
    local.set 595
    local.get 594
    local.get 595
    i32.shr_u
    local.set 596
    local.get 4
    local.get 596
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 597
    local.get 597
    i32.load offset=32
    local.set 598
    i32.const 67108863
    local.set 599
    local.get 598
    local.get 599
    i32.and
    local.set 600
    local.get 597
    local.get 600
    i32.store offset=32
    local.get 4
    i32.load offset=192
    local.set 601
    local.get 601
    i32.load offset=36
    local.set 602
    i32.const 134217724
    local.set 603
    local.get 602
    local.get 603
    i32.add
    local.set 604
    local.get 4
    i32.load offset=188
    local.set 605
    local.get 605
    i32.load offset=36
    local.set 606
    local.get 604
    local.get 606
    i32.sub
    local.set 607
    local.get 4
    i32.load offset=184
    local.set 608
    local.get 607
    local.get 608
    i32.add
    local.set 609
    local.get 4
    i32.load offset=196
    local.set 610
    local.get 610
    local.get 609
    i32.store offset=36
    local.get 4
    i32.load offset=196
    local.set 611
    local.get 611
    i32.load offset=36
    local.set 612
    i32.const 25
    local.set 613
    local.get 612
    local.get 613
    i32.shr_u
    local.set 614
    local.get 4
    local.get 614
    i32.store offset=184
    local.get 4
    i32.load offset=196
    local.set 615
    local.get 615
    i32.load offset=36
    local.set 616
    i32.const 33554431
    local.set 617
    local.get 616
    local.get 617
    i32.and
    local.set 618
    local.get 615
    local.get 618
    i32.store offset=36
    local.get 4
    i32.load offset=184
    local.set 619
    i32.const 19
    local.set 620
    local.get 619
    local.get 620
    i32.mul
    local.set 621
    local.get 4
    i32.load offset=196
    local.set 622
    local.get 622
    i32.load
    local.set 623
    local.get 623
    local.get 621
    i32.add
    local.set 624
    local.get 622
    local.get 624
    i32.store
    local.get 4
    i32.load offset=148
    local.set 625
    i32.const 120
    local.set 626
    local.get 625
    local.get 626
    i32.add
    local.set 627
    local.get 4
    i32.load offset=148
    local.set 628
    i32.const 80
    local.set 629
    local.get 628
    local.get 629
    i32.add
    local.set 630
    local.get 4
    local.get 627
    i32.store offset=180
    local.get 4
    local.get 5
    i32.store offset=176
    local.get 4
    local.get 630
    i32.store offset=172
    local.get 4
    i32.load offset=176
    local.set 631
    local.get 631
    i32.load
    local.set 632
    i32.const 268435380
    local.set 633
    local.get 632
    local.get 633
    i32.add
    local.set 634
    local.get 4
    i32.load offset=172
    local.set 635
    local.get 635
    i32.load
    local.set 636
    local.get 634
    local.get 636
    i32.sub
    local.set 637
    local.get 4
    i32.load offset=180
    local.set 638
    local.get 638
    local.get 637
    i32.store
    local.get 4
    i32.load offset=180
    local.set 639
    local.get 639
    i32.load
    local.set 640
    i32.const 26
    local.set 641
    local.get 640
    local.get 641
    i32.shr_u
    local.set 642
    local.get 4
    local.get 642
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 643
    local.get 643
    i32.load
    local.set 644
    i32.const 67108863
    local.set 645
    local.get 644
    local.get 645
    i32.and
    local.set 646
    local.get 643
    local.get 646
    i32.store
    local.get 4
    i32.load offset=176
    local.set 647
    local.get 647
    i32.load offset=4
    local.set 648
    i32.const 134217724
    local.set 649
    local.get 648
    local.get 649
    i32.add
    local.set 650
    local.get 4
    i32.load offset=172
    local.set 651
    local.get 651
    i32.load offset=4
    local.set 652
    local.get 650
    local.get 652
    i32.sub
    local.set 653
    local.get 4
    i32.load offset=168
    local.set 654
    local.get 653
    local.get 654
    i32.add
    local.set 655
    local.get 4
    i32.load offset=180
    local.set 656
    local.get 656
    local.get 655
    i32.store offset=4
    local.get 4
    i32.load offset=180
    local.set 657
    local.get 657
    i32.load offset=4
    local.set 658
    i32.const 25
    local.set 659
    local.get 658
    local.get 659
    i32.shr_u
    local.set 660
    local.get 4
    local.get 660
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 661
    local.get 661
    i32.load offset=4
    local.set 662
    i32.const 33554431
    local.set 663
    local.get 662
    local.get 663
    i32.and
    local.set 664
    local.get 661
    local.get 664
    i32.store offset=4
    local.get 4
    i32.load offset=176
    local.set 665
    local.get 665
    i32.load offset=8
    local.set 666
    i32.const 268435452
    local.set 667
    local.get 666
    local.get 667
    i32.add
    local.set 668
    local.get 4
    i32.load offset=172
    local.set 669
    local.get 669
    i32.load offset=8
    local.set 670
    local.get 668
    local.get 670
    i32.sub
    local.set 671
    local.get 4
    i32.load offset=168
    local.set 672
    local.get 671
    local.get 672
    i32.add
    local.set 673
    local.get 4
    i32.load offset=180
    local.set 674
    local.get 674
    local.get 673
    i32.store offset=8
    local.get 4
    i32.load offset=180
    local.set 675
    local.get 675
    i32.load offset=8
    local.set 676
    i32.const 26
    local.set 677
    local.get 676
    local.get 677
    i32.shr_u
    local.set 678
    local.get 4
    local.get 678
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 679
    local.get 679
    i32.load offset=8
    local.set 680
    i32.const 67108863
    local.set 681
    local.get 680
    local.get 681
    i32.and
    local.set 682
    local.get 679
    local.get 682
    i32.store offset=8
    local.get 4
    i32.load offset=176
    local.set 683
    local.get 683
    i32.load offset=12
    local.set 684
    i32.const 134217724
    local.set 685
    local.get 684
    local.get 685
    i32.add
    local.set 686
    local.get 4
    i32.load offset=172
    local.set 687
    local.get 687
    i32.load offset=12
    local.set 688
    local.get 686
    local.get 688
    i32.sub
    local.set 689
    local.get 4
    i32.load offset=168
    local.set 690
    local.get 689
    local.get 690
    i32.add
    local.set 691
    local.get 4
    i32.load offset=180
    local.set 692
    local.get 692
    local.get 691
    i32.store offset=12
    local.get 4
    i32.load offset=180
    local.set 693
    local.get 693
    i32.load offset=12
    local.set 694
    i32.const 25
    local.set 695
    local.get 694
    local.get 695
    i32.shr_u
    local.set 696
    local.get 4
    local.get 696
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 697
    local.get 697
    i32.load offset=12
    local.set 698
    i32.const 33554431
    local.set 699
    local.get 698
    local.get 699
    i32.and
    local.set 700
    local.get 697
    local.get 700
    i32.store offset=12
    local.get 4
    i32.load offset=176
    local.set 701
    local.get 701
    i32.load offset=16
    local.set 702
    i32.const 268435452
    local.set 703
    local.get 702
    local.get 703
    i32.add
    local.set 704
    local.get 4
    i32.load offset=172
    local.set 705
    local.get 705
    i32.load offset=16
    local.set 706
    local.get 704
    local.get 706
    i32.sub
    local.set 707
    local.get 4
    i32.load offset=168
    local.set 708
    local.get 707
    local.get 708
    i32.add
    local.set 709
    local.get 4
    i32.load offset=180
    local.set 710
    local.get 710
    local.get 709
    i32.store offset=16
    local.get 4
    i32.load offset=180
    local.set 711
    local.get 711
    i32.load offset=16
    local.set 712
    i32.const 26
    local.set 713
    local.get 712
    local.get 713
    i32.shr_u
    local.set 714
    local.get 4
    local.get 714
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 715
    local.get 715
    i32.load offset=16
    local.set 716
    i32.const 67108863
    local.set 717
    local.get 716
    local.get 717
    i32.and
    local.set 718
    local.get 715
    local.get 718
    i32.store offset=16
    local.get 4
    i32.load offset=176
    local.set 719
    local.get 719
    i32.load offset=20
    local.set 720
    i32.const 134217724
    local.set 721
    local.get 720
    local.get 721
    i32.add
    local.set 722
    local.get 4
    i32.load offset=172
    local.set 723
    local.get 723
    i32.load offset=20
    local.set 724
    local.get 722
    local.get 724
    i32.sub
    local.set 725
    local.get 4
    i32.load offset=168
    local.set 726
    local.get 725
    local.get 726
    i32.add
    local.set 727
    local.get 4
    i32.load offset=180
    local.set 728
    local.get 728
    local.get 727
    i32.store offset=20
    local.get 4
    i32.load offset=180
    local.set 729
    local.get 729
    i32.load offset=20
    local.set 730
    i32.const 25
    local.set 731
    local.get 730
    local.get 731
    i32.shr_u
    local.set 732
    local.get 4
    local.get 732
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 733
    local.get 733
    i32.load offset=20
    local.set 734
    i32.const 33554431
    local.set 735
    local.get 734
    local.get 735
    i32.and
    local.set 736
    local.get 733
    local.get 736
    i32.store offset=20
    local.get 4
    i32.load offset=176
    local.set 737
    local.get 737
    i32.load offset=24
    local.set 738
    i32.const 268435452
    local.set 739
    local.get 738
    local.get 739
    i32.add
    local.set 740
    local.get 4
    i32.load offset=172
    local.set 741
    local.get 741
    i32.load offset=24
    local.set 742
    local.get 740
    local.get 742
    i32.sub
    local.set 743
    local.get 4
    i32.load offset=168
    local.set 744
    local.get 743
    local.get 744
    i32.add
    local.set 745
    local.get 4
    i32.load offset=180
    local.set 746
    local.get 746
    local.get 745
    i32.store offset=24
    local.get 4
    i32.load offset=180
    local.set 747
    local.get 747
    i32.load offset=24
    local.set 748
    i32.const 26
    local.set 749
    local.get 748
    local.get 749
    i32.shr_u
    local.set 750
    local.get 4
    local.get 750
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 751
    local.get 751
    i32.load offset=24
    local.set 752
    i32.const 67108863
    local.set 753
    local.get 752
    local.get 753
    i32.and
    local.set 754
    local.get 751
    local.get 754
    i32.store offset=24
    local.get 4
    i32.load offset=176
    local.set 755
    local.get 755
    i32.load offset=28
    local.set 756
    i32.const 134217724
    local.set 757
    local.get 756
    local.get 757
    i32.add
    local.set 758
    local.get 4
    i32.load offset=172
    local.set 759
    local.get 759
    i32.load offset=28
    local.set 760
    local.get 758
    local.get 760
    i32.sub
    local.set 761
    local.get 4
    i32.load offset=168
    local.set 762
    local.get 761
    local.get 762
    i32.add
    local.set 763
    local.get 4
    i32.load offset=180
    local.set 764
    local.get 764
    local.get 763
    i32.store offset=28
    local.get 4
    i32.load offset=180
    local.set 765
    local.get 765
    i32.load offset=28
    local.set 766
    i32.const 25
    local.set 767
    local.get 766
    local.get 767
    i32.shr_u
    local.set 768
    local.get 4
    local.get 768
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 769
    local.get 769
    i32.load offset=28
    local.set 770
    i32.const 33554431
    local.set 771
    local.get 770
    local.get 771
    i32.and
    local.set 772
    local.get 769
    local.get 772
    i32.store offset=28
    local.get 4
    i32.load offset=176
    local.set 773
    local.get 773
    i32.load offset=32
    local.set 774
    i32.const 268435452
    local.set 775
    local.get 774
    local.get 775
    i32.add
    local.set 776
    local.get 4
    i32.load offset=172
    local.set 777
    local.get 777
    i32.load offset=32
    local.set 778
    local.get 776
    local.get 778
    i32.sub
    local.set 779
    local.get 4
    i32.load offset=168
    local.set 780
    local.get 779
    local.get 780
    i32.add
    local.set 781
    local.get 4
    i32.load offset=180
    local.set 782
    local.get 782
    local.get 781
    i32.store offset=32
    local.get 4
    i32.load offset=180
    local.set 783
    local.get 783
    i32.load offset=32
    local.set 784
    i32.const 26
    local.set 785
    local.get 784
    local.get 785
    i32.shr_u
    local.set 786
    local.get 4
    local.get 786
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 787
    local.get 787
    i32.load offset=32
    local.set 788
    i32.const 67108863
    local.set 789
    local.get 788
    local.get 789
    i32.and
    local.set 790
    local.get 787
    local.get 790
    i32.store offset=32
    local.get 4
    i32.load offset=176
    local.set 791
    local.get 791
    i32.load offset=36
    local.set 792
    i32.const 134217724
    local.set 793
    local.get 792
    local.get 793
    i32.add
    local.set 794
    local.get 4
    i32.load offset=172
    local.set 795
    local.get 795
    i32.load offset=36
    local.set 796
    local.get 794
    local.get 796
    i32.sub
    local.set 797
    local.get 4
    i32.load offset=168
    local.set 798
    local.get 797
    local.get 798
    i32.add
    local.set 799
    local.get 4
    i32.load offset=180
    local.set 800
    local.get 800
    local.get 799
    i32.store offset=36
    local.get 4
    i32.load offset=180
    local.set 801
    local.get 801
    i32.load offset=36
    local.set 802
    i32.const 25
    local.set 803
    local.get 802
    local.get 803
    i32.shr_u
    local.set 804
    local.get 4
    local.get 804
    i32.store offset=168
    local.get 4
    i32.load offset=180
    local.set 805
    local.get 805
    i32.load offset=36
    local.set 806
    i32.const 33554431
    local.set 807
    local.get 806
    local.get 807
    i32.and
    local.set 808
    local.get 805
    local.get 808
    i32.store offset=36
    local.get 4
    i32.load offset=168
    local.set 809
    i32.const 19
    local.set 810
    local.get 809
    local.get 810
    i32.mul
    local.set 811
    local.get 4
    i32.load offset=180
    local.set 812
    local.get 812
    i32.load
    local.set 813
    local.get 813
    local.get 811
    i32.add
    local.set 814
    local.get 812
    local.get 814
    i32.store
    i32.const 240
    local.set 815
    local.get 4
    local.get 815
    i32.add
    local.set 816
    local.get 816
    global.set 0
    return)
  (func $ge25519_pnielsadd_p1p1 (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 4
    i32.const 272
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set 0
    local.get 6
    local.set 7
    i32.const 96
    local.set 8
    local.get 6
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    i32.const 48
    local.set 11
    local.get 6
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    local.get 6
    local.get 0
    i32.store offset=160
    local.get 6
    local.get 1
    i32.store offset=156
    local.get 6
    local.get 2
    i32.store offset=152
    local.get 6
    local.get 3
    i32.store8 offset=151
    local.get 6
    i32.load offset=152
    local.set 14
    local.get 6
    local.get 14
    i32.store offset=144
    local.get 6
    i32.load offset=160
    local.set 15
    local.get 6
    local.get 15
    i32.store offset=140
    local.get 6
    i32.load offset=156
    local.set 16
    i32.const 40
    local.set 17
    local.get 16
    local.get 17
    i32.add
    local.set 18
    local.get 6
    i32.load offset=156
    local.set 19
    local.get 6
    local.get 10
    i32.store offset=176
    local.get 6
    local.get 18
    i32.store offset=172
    local.get 6
    local.get 19
    i32.store offset=168
    local.get 6
    i32.load offset=172
    local.set 20
    local.get 20
    i32.load
    local.set 21
    i32.const 134217690
    local.set 22
    local.get 21
    local.get 22
    i32.add
    local.set 23
    local.get 6
    i32.load offset=168
    local.set 24
    local.get 24
    i32.load
    local.set 25
    local.get 23
    local.get 25
    i32.sub
    local.set 26
    local.get 6
    i32.load offset=176
    local.set 27
    local.get 27
    local.get 26
    i32.store
    local.get 6
    i32.load offset=176
    local.set 28
    local.get 28
    i32.load
    local.set 29
    i32.const 26
    local.set 30
    local.get 29
    local.get 30
    i32.shr_u
    local.set 31
    local.get 6
    local.get 31
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 32
    local.get 32
    i32.load
    local.set 33
    i32.const 67108863
    local.set 34
    local.get 33
    local.get 34
    i32.and
    local.set 35
    local.get 32
    local.get 35
    i32.store
    local.get 6
    i32.load offset=172
    local.set 36
    local.get 36
    i32.load offset=4
    local.set 37
    i32.const 67108862
    local.set 38
    local.get 37
    local.get 38
    i32.add
    local.set 39
    local.get 6
    i32.load offset=168
    local.set 40
    local.get 40
    i32.load offset=4
    local.set 41
    local.get 39
    local.get 41
    i32.sub
    local.set 42
    local.get 6
    i32.load offset=164
    local.set 43
    local.get 42
    local.get 43
    i32.add
    local.set 44
    local.get 6
    i32.load offset=176
    local.set 45
    local.get 45
    local.get 44
    i32.store offset=4
    local.get 6
    i32.load offset=176
    local.set 46
    local.get 46
    i32.load offset=4
    local.set 47
    i32.const 25
    local.set 48
    local.get 47
    local.get 48
    i32.shr_u
    local.set 49
    local.get 6
    local.get 49
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 50
    local.get 50
    i32.load offset=4
    local.set 51
    i32.const 33554431
    local.set 52
    local.get 51
    local.get 52
    i32.and
    local.set 53
    local.get 50
    local.get 53
    i32.store offset=4
    local.get 6
    i32.load offset=172
    local.set 54
    local.get 54
    i32.load offset=8
    local.set 55
    i32.const 134217726
    local.set 56
    local.get 55
    local.get 56
    i32.add
    local.set 57
    local.get 6
    i32.load offset=168
    local.set 58
    local.get 58
    i32.load offset=8
    local.set 59
    local.get 57
    local.get 59
    i32.sub
    local.set 60
    local.get 6
    i32.load offset=164
    local.set 61
    local.get 60
    local.get 61
    i32.add
    local.set 62
    local.get 6
    i32.load offset=176
    local.set 63
    local.get 63
    local.get 62
    i32.store offset=8
    local.get 6
    i32.load offset=176
    local.set 64
    local.get 64
    i32.load offset=8
    local.set 65
    i32.const 26
    local.set 66
    local.get 65
    local.get 66
    i32.shr_u
    local.set 67
    local.get 6
    local.get 67
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 68
    local.get 68
    i32.load offset=8
    local.set 69
    i32.const 67108863
    local.set 70
    local.get 69
    local.get 70
    i32.and
    local.set 71
    local.get 68
    local.get 71
    i32.store offset=8
    local.get 6
    i32.load offset=172
    local.set 72
    local.get 72
    i32.load offset=12
    local.set 73
    i32.const 67108862
    local.set 74
    local.get 73
    local.get 74
    i32.add
    local.set 75
    local.get 6
    i32.load offset=168
    local.set 76
    local.get 76
    i32.load offset=12
    local.set 77
    local.get 75
    local.get 77
    i32.sub
    local.set 78
    local.get 6
    i32.load offset=164
    local.set 79
    local.get 78
    local.get 79
    i32.add
    local.set 80
    local.get 6
    i32.load offset=176
    local.set 81
    local.get 81
    local.get 80
    i32.store offset=12
    local.get 6
    i32.load offset=176
    local.set 82
    local.get 82
    i32.load offset=12
    local.set 83
    i32.const 25
    local.set 84
    local.get 83
    local.get 84
    i32.shr_u
    local.set 85
    local.get 6
    local.get 85
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 86
    local.get 86
    i32.load offset=12
    local.set 87
    i32.const 33554431
    local.set 88
    local.get 87
    local.get 88
    i32.and
    local.set 89
    local.get 86
    local.get 89
    i32.store offset=12
    local.get 6
    i32.load offset=172
    local.set 90
    local.get 90
    i32.load offset=16
    local.set 91
    i32.const 134217726
    local.set 92
    local.get 91
    local.get 92
    i32.add
    local.set 93
    local.get 6
    i32.load offset=168
    local.set 94
    local.get 94
    i32.load offset=16
    local.set 95
    local.get 93
    local.get 95
    i32.sub
    local.set 96
    local.get 6
    i32.load offset=164
    local.set 97
    local.get 96
    local.get 97
    i32.add
    local.set 98
    local.get 6
    i32.load offset=176
    local.set 99
    local.get 99
    local.get 98
    i32.store offset=16
    local.get 6
    i32.load offset=172
    local.set 100
    local.get 100
    i32.load offset=20
    local.set 101
    i32.const 67108862
    local.set 102
    local.get 101
    local.get 102
    i32.add
    local.set 103
    local.get 6
    i32.load offset=168
    local.set 104
    local.get 104
    i32.load offset=20
    local.set 105
    local.get 103
    local.get 105
    i32.sub
    local.set 106
    local.get 6
    i32.load offset=176
    local.set 107
    local.get 107
    local.get 106
    i32.store offset=20
    local.get 6
    i32.load offset=172
    local.set 108
    local.get 108
    i32.load offset=24
    local.set 109
    i32.const 134217726
    local.set 110
    local.get 109
    local.get 110
    i32.add
    local.set 111
    local.get 6
    i32.load offset=168
    local.set 112
    local.get 112
    i32.load offset=24
    local.set 113
    local.get 111
    local.get 113
    i32.sub
    local.set 114
    local.get 6
    i32.load offset=176
    local.set 115
    local.get 115
    local.get 114
    i32.store offset=24
    local.get 6
    i32.load offset=172
    local.set 116
    local.get 116
    i32.load offset=28
    local.set 117
    i32.const 67108862
    local.set 118
    local.get 117
    local.get 118
    i32.add
    local.set 119
    local.get 6
    i32.load offset=168
    local.set 120
    local.get 120
    i32.load offset=28
    local.set 121
    local.get 119
    local.get 121
    i32.sub
    local.set 122
    local.get 6
    i32.load offset=176
    local.set 123
    local.get 123
    local.get 122
    i32.store offset=28
    local.get 6
    i32.load offset=172
    local.set 124
    local.get 124
    i32.load offset=32
    local.set 125
    i32.const 134217726
    local.set 126
    local.get 125
    local.get 126
    i32.add
    local.set 127
    local.get 6
    i32.load offset=168
    local.set 128
    local.get 128
    i32.load offset=32
    local.set 129
    local.get 127
    local.get 129
    i32.sub
    local.set 130
    local.get 6
    i32.load offset=176
    local.set 131
    local.get 131
    local.get 130
    i32.store offset=32
    local.get 6
    i32.load offset=172
    local.set 132
    local.get 132
    i32.load offset=36
    local.set 133
    i32.const 67108862
    local.set 134
    local.get 133
    local.get 134
    i32.add
    local.set 135
    local.get 6
    i32.load offset=168
    local.set 136
    local.get 136
    i32.load offset=36
    local.set 137
    local.get 135
    local.get 137
    i32.sub
    local.set 138
    local.get 6
    i32.load offset=176
    local.set 139
    local.get 139
    local.get 138
    i32.store offset=36
    local.get 6
    i32.load offset=156
    local.set 140
    i32.const 40
    local.set 141
    local.get 140
    local.get 141
    i32.add
    local.set 142
    local.get 6
    i32.load offset=156
    local.set 143
    local.get 6
    local.get 13
    i32.store offset=240
    local.get 6
    local.get 142
    i32.store offset=236
    local.get 6
    local.get 143
    i32.store offset=232
    local.get 6
    i32.load offset=236
    local.set 144
    local.get 144
    i32.load
    local.set 145
    local.get 6
    i32.load offset=232
    local.set 146
    local.get 146
    i32.load
    local.set 147
    local.get 145
    local.get 147
    i32.add
    local.set 148
    local.get 6
    i32.load offset=240
    local.set 149
    local.get 149
    local.get 148
    i32.store
    local.get 6
    i32.load offset=236
    local.set 150
    local.get 150
    i32.load offset=4
    local.set 151
    local.get 6
    i32.load offset=232
    local.set 152
    local.get 152
    i32.load offset=4
    local.set 153
    local.get 151
    local.get 153
    i32.add
    local.set 154
    local.get 6
    i32.load offset=240
    local.set 155
    local.get 155
    local.get 154
    i32.store offset=4
    local.get 6
    i32.load offset=236
    local.set 156
    local.get 156
    i32.load offset=8
    local.set 157
    local.get 6
    i32.load offset=232
    local.set 158
    local.get 158
    i32.load offset=8
    local.set 159
    local.get 157
    local.get 159
    i32.add
    local.set 160
    local.get 6
    i32.load offset=240
    local.set 161
    local.get 161
    local.get 160
    i32.store offset=8
    local.get 6
    i32.load offset=236
    local.set 162
    local.get 162
    i32.load offset=12
    local.set 163
    local.get 6
    i32.load offset=232
    local.set 164
    local.get 164
    i32.load offset=12
    local.set 165
    local.get 163
    local.get 165
    i32.add
    local.set 166
    local.get 6
    i32.load offset=240
    local.set 167
    local.get 167
    local.get 166
    i32.store offset=12
    local.get 6
    i32.load offset=236
    local.set 168
    local.get 168
    i32.load offset=16
    local.set 169
    local.get 6
    i32.load offset=232
    local.set 170
    local.get 170
    i32.load offset=16
    local.set 171
    local.get 169
    local.get 171
    i32.add
    local.set 172
    local.get 6
    i32.load offset=240
    local.set 173
    local.get 173
    local.get 172
    i32.store offset=16
    local.get 6
    i32.load offset=236
    local.set 174
    local.get 174
    i32.load offset=20
    local.set 175
    local.get 6
    i32.load offset=232
    local.set 176
    local.get 176
    i32.load offset=20
    local.set 177
    local.get 175
    local.get 177
    i32.add
    local.set 178
    local.get 6
    i32.load offset=240
    local.set 179
    local.get 179
    local.get 178
    i32.store offset=20
    local.get 6
    i32.load offset=236
    local.set 180
    local.get 180
    i32.load offset=24
    local.set 181
    local.get 6
    i32.load offset=232
    local.set 182
    local.get 182
    i32.load offset=24
    local.set 183
    local.get 181
    local.get 183
    i32.add
    local.set 184
    local.get 6
    i32.load offset=240
    local.set 185
    local.get 185
    local.get 184
    i32.store offset=24
    local.get 6
    i32.load offset=236
    local.set 186
    local.get 186
    i32.load offset=28
    local.set 187
    local.get 6
    i32.load offset=232
    local.set 188
    local.get 188
    i32.load offset=28
    local.set 189
    local.get 187
    local.get 189
    i32.add
    local.set 190
    local.get 6
    i32.load offset=240
    local.set 191
    local.get 191
    local.get 190
    i32.store offset=28
    local.get 6
    i32.load offset=236
    local.set 192
    local.get 192
    i32.load offset=32
    local.set 193
    local.get 6
    i32.load offset=232
    local.set 194
    local.get 194
    i32.load offset=32
    local.set 195
    local.get 193
    local.get 195
    i32.add
    local.set 196
    local.get 6
    i32.load offset=240
    local.set 197
    local.get 197
    local.get 196
    i32.store offset=32
    local.get 6
    i32.load offset=236
    local.set 198
    local.get 198
    i32.load offset=36
    local.set 199
    local.get 6
    i32.load offset=232
    local.set 200
    local.get 200
    i32.load offset=36
    local.set 201
    local.get 199
    local.get 201
    i32.add
    local.set 202
    local.get 6
    i32.load offset=240
    local.set 203
    local.get 203
    local.get 202
    i32.store offset=36
    local.get 6
    i32.load offset=144
    local.set 204
    local.get 6
    i32.load8_u offset=151
    local.set 205
    i32.const 255
    local.set 206
    local.get 205
    local.get 206
    i32.and
    local.set 207
    i32.const 40
    local.set 208
    local.get 207
    local.get 208
    i32.mul
    local.set 209
    local.get 204
    local.get 209
    i32.add
    local.set 210
    local.get 10
    local.get 10
    local.get 210
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 211
    local.get 6
    i32.load offset=144
    local.set 212
    local.get 6
    i32.load8_u offset=151
    local.set 213
    i32.const 255
    local.set 214
    local.get 213
    local.get 214
    i32.and
    local.set 215
    i32.const 1
    local.set 216
    local.get 215
    local.get 216
    i32.xor
    local.set 217
    i32.const 40
    local.set 218
    local.get 217
    local.get 218
    i32.mul
    local.set 219
    local.get 212
    local.get 219
    i32.add
    local.set 220
    local.get 211
    local.get 13
    local.get 220
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 221
    i32.const 40
    local.set 222
    local.get 221
    local.get 222
    i32.add
    local.set 223
    local.get 6
    i32.load offset=160
    local.set 224
    local.get 6
    local.get 223
    i32.store offset=252
    local.get 6
    local.get 224
    i32.store offset=248
    local.get 6
    local.get 10
    i32.store offset=244
    local.get 6
    i32.load offset=248
    local.set 225
    local.get 225
    i32.load
    local.set 226
    local.get 6
    i32.load offset=244
    local.set 227
    local.get 227
    i32.load
    local.set 228
    local.get 226
    local.get 228
    i32.add
    local.set 229
    local.get 6
    i32.load offset=252
    local.set 230
    local.get 230
    local.get 229
    i32.store
    local.get 6
    i32.load offset=248
    local.set 231
    local.get 231
    i32.load offset=4
    local.set 232
    local.get 6
    i32.load offset=244
    local.set 233
    local.get 233
    i32.load offset=4
    local.set 234
    local.get 232
    local.get 234
    i32.add
    local.set 235
    local.get 6
    i32.load offset=252
    local.set 236
    local.get 236
    local.get 235
    i32.store offset=4
    local.get 6
    i32.load offset=248
    local.set 237
    local.get 237
    i32.load offset=8
    local.set 238
    local.get 6
    i32.load offset=244
    local.set 239
    local.get 239
    i32.load offset=8
    local.set 240
    local.get 238
    local.get 240
    i32.add
    local.set 241
    local.get 6
    i32.load offset=252
    local.set 242
    local.get 242
    local.get 241
    i32.store offset=8
    local.get 6
    i32.load offset=248
    local.set 243
    local.get 243
    i32.load offset=12
    local.set 244
    local.get 6
    i32.load offset=244
    local.set 245
    local.get 245
    i32.load offset=12
    local.set 246
    local.get 244
    local.get 246
    i32.add
    local.set 247
    local.get 6
    i32.load offset=252
    local.set 248
    local.get 248
    local.get 247
    i32.store offset=12
    local.get 6
    i32.load offset=248
    local.set 249
    local.get 249
    i32.load offset=16
    local.set 250
    local.get 6
    i32.load offset=244
    local.set 251
    local.get 251
    i32.load offset=16
    local.set 252
    local.get 250
    local.get 252
    i32.add
    local.set 253
    local.get 6
    i32.load offset=252
    local.set 254
    local.get 254
    local.get 253
    i32.store offset=16
    local.get 6
    i32.load offset=248
    local.set 255
    local.get 255
    i32.load offset=20
    local.set 256
    local.get 6
    i32.load offset=244
    local.set 257
    local.get 257
    i32.load offset=20
    local.set 258
    local.get 256
    local.get 258
    i32.add
    local.set 259
    local.get 6
    i32.load offset=252
    local.set 260
    local.get 260
    local.get 259
    i32.store offset=20
    local.get 6
    i32.load offset=248
    local.set 261
    local.get 261
    i32.load offset=24
    local.set 262
    local.get 6
    i32.load offset=244
    local.set 263
    local.get 263
    i32.load offset=24
    local.set 264
    local.get 262
    local.get 264
    i32.add
    local.set 265
    local.get 6
    i32.load offset=252
    local.set 266
    local.get 266
    local.get 265
    i32.store offset=24
    local.get 6
    i32.load offset=248
    local.set 267
    local.get 267
    i32.load offset=28
    local.set 268
    local.get 6
    i32.load offset=244
    local.set 269
    local.get 269
    i32.load offset=28
    local.set 270
    local.get 268
    local.get 270
    i32.add
    local.set 271
    local.get 6
    i32.load offset=252
    local.set 272
    local.get 272
    local.get 271
    i32.store offset=28
    local.get 6
    i32.load offset=248
    local.set 273
    local.get 273
    i32.load offset=32
    local.set 274
    local.get 6
    i32.load offset=244
    local.set 275
    local.get 275
    i32.load offset=32
    local.set 276
    local.get 274
    local.get 276
    i32.add
    local.set 277
    local.get 6
    i32.load offset=252
    local.set 278
    local.get 278
    local.get 277
    i32.store offset=32
    local.get 6
    i32.load offset=248
    local.set 279
    local.get 279
    i32.load offset=36
    local.set 280
    local.get 6
    i32.load offset=244
    local.set 281
    local.get 281
    i32.load offset=36
    local.set 282
    local.get 280
    local.get 282
    i32.add
    local.set 283
    local.get 6
    i32.load offset=252
    local.set 284
    local.get 284
    local.get 283
    i32.store offset=36
    local.get 6
    i32.load offset=160
    local.set 285
    local.get 6
    i32.load offset=160
    local.set 286
    local.get 6
    local.get 285
    i32.store offset=268
    local.get 6
    local.get 286
    i32.store offset=264
    local.get 6
    local.get 10
    i32.store offset=260
    local.get 6
    i32.load offset=264
    local.set 287
    local.get 287
    i32.load
    local.set 288
    i32.const 134217690
    local.set 289
    local.get 288
    local.get 289
    i32.add
    local.set 290
    local.get 6
    i32.load offset=260
    local.set 291
    local.get 291
    i32.load
    local.set 292
    local.get 290
    local.get 292
    i32.sub
    local.set 293
    local.get 6
    i32.load offset=268
    local.set 294
    local.get 294
    local.get 293
    i32.store
    local.get 6
    i32.load offset=268
    local.set 295
    local.get 295
    i32.load
    local.set 296
    i32.const 26
    local.set 297
    local.get 296
    local.get 297
    i32.shr_u
    local.set 298
    local.get 6
    local.get 298
    i32.store offset=256
    local.get 6
    i32.load offset=268
    local.set 299
    local.get 299
    i32.load
    local.set 300
    i32.const 67108863
    local.set 301
    local.get 300
    local.get 301
    i32.and
    local.set 302
    local.get 299
    local.get 302
    i32.store
    local.get 6
    i32.load offset=264
    local.set 303
    local.get 303
    i32.load offset=4
    local.set 304
    i32.const 67108862
    local.set 305
    local.get 304
    local.get 305
    i32.add
    local.set 306
    local.get 6
    i32.load offset=260
    local.set 307
    local.get 307
    i32.load offset=4
    local.set 308
    local.get 306
    local.get 308
    i32.sub
    local.set 309
    local.get 6
    i32.load offset=256
    local.set 310
    local.get 309
    local.get 310
    i32.add
    local.set 311
    local.get 6
    i32.load offset=268
    local.set 312
    local.get 312
    local.get 311
    i32.store offset=4
    local.get 6
    i32.load offset=268
    local.set 313
    local.get 313
    i32.load offset=4
    local.set 314
    i32.const 25
    local.set 315
    local.get 314
    local.get 315
    i32.shr_u
    local.set 316
    local.get 6
    local.get 316
    i32.store offset=256
    local.get 6
    i32.load offset=268
    local.set 317
    local.get 317
    i32.load offset=4
    local.set 318
    i32.const 33554431
    local.set 319
    local.get 318
    local.get 319
    i32.and
    local.set 320
    local.get 317
    local.get 320
    i32.store offset=4
    local.get 6
    i32.load offset=264
    local.set 321
    local.get 321
    i32.load offset=8
    local.set 322
    i32.const 134217726
    local.set 323
    local.get 322
    local.get 323
    i32.add
    local.set 324
    local.get 6
    i32.load offset=260
    local.set 325
    local.get 325
    i32.load offset=8
    local.set 326
    local.get 324
    local.get 326
    i32.sub
    local.set 327
    local.get 6
    i32.load offset=256
    local.set 328
    local.get 327
    local.get 328
    i32.add
    local.set 329
    local.get 6
    i32.load offset=268
    local.set 330
    local.get 330
    local.get 329
    i32.store offset=8
    local.get 6
    i32.load offset=268
    local.set 331
    local.get 331
    i32.load offset=8
    local.set 332
    i32.const 26
    local.set 333
    local.get 332
    local.get 333
    i32.shr_u
    local.set 334
    local.get 6
    local.get 334
    i32.store offset=256
    local.get 6
    i32.load offset=268
    local.set 335
    local.get 335
    i32.load offset=8
    local.set 336
    i32.const 67108863
    local.set 337
    local.get 336
    local.get 337
    i32.and
    local.set 338
    local.get 335
    local.get 338
    i32.store offset=8
    local.get 6
    i32.load offset=264
    local.set 339
    local.get 339
    i32.load offset=12
    local.set 340
    i32.const 67108862
    local.set 341
    local.get 340
    local.get 341
    i32.add
    local.set 342
    local.get 6
    i32.load offset=260
    local.set 343
    local.get 343
    i32.load offset=12
    local.set 344
    local.get 342
    local.get 344
    i32.sub
    local.set 345
    local.get 6
    i32.load offset=256
    local.set 346
    local.get 345
    local.get 346
    i32.add
    local.set 347
    local.get 6
    i32.load offset=268
    local.set 348
    local.get 348
    local.get 347
    i32.store offset=12
    local.get 6
    i32.load offset=268
    local.set 349
    local.get 349
    i32.load offset=12
    local.set 350
    i32.const 25
    local.set 351
    local.get 350
    local.get 351
    i32.shr_u
    local.set 352
    local.get 6
    local.get 352
    i32.store offset=256
    local.get 6
    i32.load offset=268
    local.set 353
    local.get 353
    i32.load offset=12
    local.set 354
    i32.const 33554431
    local.set 355
    local.get 354
    local.get 355
    i32.and
    local.set 356
    local.get 353
    local.get 356
    i32.store offset=12
    local.get 6
    i32.load offset=264
    local.set 357
    local.get 357
    i32.load offset=16
    local.set 358
    i32.const 134217726
    local.set 359
    local.get 358
    local.get 359
    i32.add
    local.set 360
    local.get 6
    i32.load offset=260
    local.set 361
    local.get 361
    i32.load offset=16
    local.set 362
    local.get 360
    local.get 362
    i32.sub
    local.set 363
    local.get 6
    i32.load offset=256
    local.set 364
    local.get 363
    local.get 364
    i32.add
    local.set 365
    local.get 6
    i32.load offset=268
    local.set 366
    local.get 366
    local.get 365
    i32.store offset=16
    local.get 6
    i32.load offset=264
    local.set 367
    local.get 367
    i32.load offset=20
    local.set 368
    i32.const 67108862
    local.set 369
    local.get 368
    local.get 369
    i32.add
    local.set 370
    local.get 6
    i32.load offset=260
    local.set 371
    local.get 371
    i32.load offset=20
    local.set 372
    local.get 370
    local.get 372
    i32.sub
    local.set 373
    local.get 6
    i32.load offset=268
    local.set 374
    local.get 374
    local.get 373
    i32.store offset=20
    local.get 6
    i32.load offset=264
    local.set 375
    local.get 375
    i32.load offset=24
    local.set 376
    i32.const 134217726
    local.set 377
    local.get 376
    local.get 377
    i32.add
    local.set 378
    local.get 6
    i32.load offset=260
    local.set 379
    local.get 379
    i32.load offset=24
    local.set 380
    local.get 378
    local.get 380
    i32.sub
    local.set 381
    local.get 6
    i32.load offset=268
    local.set 382
    local.get 382
    local.get 381
    i32.store offset=24
    local.get 6
    i32.load offset=264
    local.set 383
    local.get 383
    i32.load offset=28
    local.set 384
    i32.const 67108862
    local.set 385
    local.get 384
    local.get 385
    i32.add
    local.set 386
    local.get 6
    i32.load offset=260
    local.set 387
    local.get 387
    i32.load offset=28
    local.set 388
    local.get 386
    local.get 388
    i32.sub
    local.set 389
    local.get 6
    i32.load offset=268
    local.set 390
    local.get 390
    local.get 389
    i32.store offset=28
    local.get 6
    i32.load offset=264
    local.set 391
    local.get 391
    i32.load offset=32
    local.set 392
    i32.const 134217726
    local.set 393
    local.get 392
    local.get 393
    i32.add
    local.set 394
    local.get 6
    i32.load offset=260
    local.set 395
    local.get 395
    i32.load offset=32
    local.set 396
    local.get 394
    local.get 396
    i32.sub
    local.set 397
    local.get 6
    i32.load offset=268
    local.set 398
    local.get 398
    local.get 397
    i32.store offset=32
    local.get 6
    i32.load offset=264
    local.set 399
    local.get 399
    i32.load offset=36
    local.set 400
    i32.const 67108862
    local.set 401
    local.get 400
    local.get 401
    i32.add
    local.set 402
    local.get 6
    i32.load offset=260
    local.set 403
    local.get 403
    i32.load offset=36
    local.set 404
    local.get 402
    local.get 404
    i32.sub
    local.set 405
    local.get 6
    i32.load offset=268
    local.set 406
    local.get 406
    local.get 405
    i32.store offset=36
    local.get 6
    i32.load offset=156
    local.set 407
    i32.const 120
    local.set 408
    local.get 407
    local.get 408
    i32.add
    local.set 409
    local.get 6
    i32.load offset=152
    local.set 410
    i32.const 120
    local.set 411
    local.get 410
    local.get 411
    i32.add
    local.set 412
    local.get 7
    local.get 409
    local.get 412
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 413
    i32.const 120
    local.set 414
    local.get 413
    local.get 414
    i32.add
    local.set 415
    local.get 6
    i32.load offset=156
    local.set 416
    i32.const 80
    local.set 417
    local.get 416
    local.get 417
    i32.add
    local.set 418
    local.get 6
    i32.load offset=152
    local.set 419
    i32.const 80
    local.set 420
    local.get 419
    local.get 420
    i32.add
    local.set 421
    local.get 415
    local.get 418
    local.get 421
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 422
    i32.const 120
    local.set 423
    local.get 422
    local.get 423
    i32.add
    local.set 424
    local.get 6
    i32.load offset=160
    local.set 425
    i32.const 120
    local.set 426
    local.get 425
    local.get 426
    i32.add
    local.set 427
    local.get 6
    i32.load offset=160
    local.set 428
    i32.const 120
    local.set 429
    local.get 428
    local.get 429
    i32.add
    local.set 430
    local.get 6
    local.get 424
    i32.store offset=228
    local.get 6
    local.get 427
    i32.store offset=224
    local.get 6
    local.get 430
    i32.store offset=220
    local.get 6
    i32.load offset=224
    local.set 431
    local.get 431
    i32.load
    local.set 432
    local.get 6
    i32.load offset=220
    local.set 433
    local.get 433
    i32.load
    local.set 434
    local.get 432
    local.get 434
    i32.add
    local.set 435
    local.get 6
    i32.load offset=228
    local.set 436
    local.get 436
    local.get 435
    i32.store
    local.get 6
    i32.load offset=228
    local.set 437
    local.get 437
    i32.load
    local.set 438
    i32.const 26
    local.set 439
    local.get 438
    local.get 439
    i32.shr_u
    local.set 440
    local.get 6
    local.get 440
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 441
    local.get 441
    i32.load
    local.set 442
    i32.const 67108863
    local.set 443
    local.get 442
    local.get 443
    i32.and
    local.set 444
    local.get 441
    local.get 444
    i32.store
    local.get 6
    i32.load offset=224
    local.set 445
    local.get 445
    i32.load offset=4
    local.set 446
    local.get 6
    i32.load offset=220
    local.set 447
    local.get 447
    i32.load offset=4
    local.set 448
    local.get 446
    local.get 448
    i32.add
    local.set 449
    local.get 6
    i32.load offset=216
    local.set 450
    local.get 449
    local.get 450
    i32.add
    local.set 451
    local.get 6
    i32.load offset=228
    local.set 452
    local.get 452
    local.get 451
    i32.store offset=4
    local.get 6
    i32.load offset=228
    local.set 453
    local.get 453
    i32.load offset=4
    local.set 454
    i32.const 25
    local.set 455
    local.get 454
    local.get 455
    i32.shr_u
    local.set 456
    local.get 6
    local.get 456
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 457
    local.get 457
    i32.load offset=4
    local.set 458
    i32.const 33554431
    local.set 459
    local.get 458
    local.get 459
    i32.and
    local.set 460
    local.get 457
    local.get 460
    i32.store offset=4
    local.get 6
    i32.load offset=224
    local.set 461
    local.get 461
    i32.load offset=8
    local.set 462
    local.get 6
    i32.load offset=220
    local.set 463
    local.get 463
    i32.load offset=8
    local.set 464
    local.get 462
    local.get 464
    i32.add
    local.set 465
    local.get 6
    i32.load offset=216
    local.set 466
    local.get 465
    local.get 466
    i32.add
    local.set 467
    local.get 6
    i32.load offset=228
    local.set 468
    local.get 468
    local.get 467
    i32.store offset=8
    local.get 6
    i32.load offset=228
    local.set 469
    local.get 469
    i32.load offset=8
    local.set 470
    i32.const 26
    local.set 471
    local.get 470
    local.get 471
    i32.shr_u
    local.set 472
    local.get 6
    local.get 472
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 473
    local.get 473
    i32.load offset=8
    local.set 474
    i32.const 67108863
    local.set 475
    local.get 474
    local.get 475
    i32.and
    local.set 476
    local.get 473
    local.get 476
    i32.store offset=8
    local.get 6
    i32.load offset=224
    local.set 477
    local.get 477
    i32.load offset=12
    local.set 478
    local.get 6
    i32.load offset=220
    local.set 479
    local.get 479
    i32.load offset=12
    local.set 480
    local.get 478
    local.get 480
    i32.add
    local.set 481
    local.get 6
    i32.load offset=216
    local.set 482
    local.get 481
    local.get 482
    i32.add
    local.set 483
    local.get 6
    i32.load offset=228
    local.set 484
    local.get 484
    local.get 483
    i32.store offset=12
    local.get 6
    i32.load offset=228
    local.set 485
    local.get 485
    i32.load offset=12
    local.set 486
    i32.const 25
    local.set 487
    local.get 486
    local.get 487
    i32.shr_u
    local.set 488
    local.get 6
    local.get 488
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 489
    local.get 489
    i32.load offset=12
    local.set 490
    i32.const 33554431
    local.set 491
    local.get 490
    local.get 491
    i32.and
    local.set 492
    local.get 489
    local.get 492
    i32.store offset=12
    local.get 6
    i32.load offset=224
    local.set 493
    local.get 493
    i32.load offset=16
    local.set 494
    local.get 6
    i32.load offset=220
    local.set 495
    local.get 495
    i32.load offset=16
    local.set 496
    local.get 494
    local.get 496
    i32.add
    local.set 497
    local.get 6
    i32.load offset=216
    local.set 498
    local.get 497
    local.get 498
    i32.add
    local.set 499
    local.get 6
    i32.load offset=228
    local.set 500
    local.get 500
    local.get 499
    i32.store offset=16
    local.get 6
    i32.load offset=228
    local.set 501
    local.get 501
    i32.load offset=16
    local.set 502
    i32.const 26
    local.set 503
    local.get 502
    local.get 503
    i32.shr_u
    local.set 504
    local.get 6
    local.get 504
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 505
    local.get 505
    i32.load offset=16
    local.set 506
    i32.const 67108863
    local.set 507
    local.get 506
    local.get 507
    i32.and
    local.set 508
    local.get 505
    local.get 508
    i32.store offset=16
    local.get 6
    i32.load offset=224
    local.set 509
    local.get 509
    i32.load offset=20
    local.set 510
    local.get 6
    i32.load offset=220
    local.set 511
    local.get 511
    i32.load offset=20
    local.set 512
    local.get 510
    local.get 512
    i32.add
    local.set 513
    local.get 6
    i32.load offset=216
    local.set 514
    local.get 513
    local.get 514
    i32.add
    local.set 515
    local.get 6
    i32.load offset=228
    local.set 516
    local.get 516
    local.get 515
    i32.store offset=20
    local.get 6
    i32.load offset=228
    local.set 517
    local.get 517
    i32.load offset=20
    local.set 518
    i32.const 25
    local.set 519
    local.get 518
    local.get 519
    i32.shr_u
    local.set 520
    local.get 6
    local.get 520
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 521
    local.get 521
    i32.load offset=20
    local.set 522
    i32.const 33554431
    local.set 523
    local.get 522
    local.get 523
    i32.and
    local.set 524
    local.get 521
    local.get 524
    i32.store offset=20
    local.get 6
    i32.load offset=224
    local.set 525
    local.get 525
    i32.load offset=24
    local.set 526
    local.get 6
    i32.load offset=220
    local.set 527
    local.get 527
    i32.load offset=24
    local.set 528
    local.get 526
    local.get 528
    i32.add
    local.set 529
    local.get 6
    i32.load offset=216
    local.set 530
    local.get 529
    local.get 530
    i32.add
    local.set 531
    local.get 6
    i32.load offset=228
    local.set 532
    local.get 532
    local.get 531
    i32.store offset=24
    local.get 6
    i32.load offset=228
    local.set 533
    local.get 533
    i32.load offset=24
    local.set 534
    i32.const 26
    local.set 535
    local.get 534
    local.get 535
    i32.shr_u
    local.set 536
    local.get 6
    local.get 536
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 537
    local.get 537
    i32.load offset=24
    local.set 538
    i32.const 67108863
    local.set 539
    local.get 538
    local.get 539
    i32.and
    local.set 540
    local.get 537
    local.get 540
    i32.store offset=24
    local.get 6
    i32.load offset=224
    local.set 541
    local.get 541
    i32.load offset=28
    local.set 542
    local.get 6
    i32.load offset=220
    local.set 543
    local.get 543
    i32.load offset=28
    local.set 544
    local.get 542
    local.get 544
    i32.add
    local.set 545
    local.get 6
    i32.load offset=216
    local.set 546
    local.get 545
    local.get 546
    i32.add
    local.set 547
    local.get 6
    i32.load offset=228
    local.set 548
    local.get 548
    local.get 547
    i32.store offset=28
    local.get 6
    i32.load offset=228
    local.set 549
    local.get 549
    i32.load offset=28
    local.set 550
    i32.const 25
    local.set 551
    local.get 550
    local.get 551
    i32.shr_u
    local.set 552
    local.get 6
    local.get 552
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 553
    local.get 553
    i32.load offset=28
    local.set 554
    i32.const 33554431
    local.set 555
    local.get 554
    local.get 555
    i32.and
    local.set 556
    local.get 553
    local.get 556
    i32.store offset=28
    local.get 6
    i32.load offset=224
    local.set 557
    local.get 557
    i32.load offset=32
    local.set 558
    local.get 6
    i32.load offset=220
    local.set 559
    local.get 559
    i32.load offset=32
    local.set 560
    local.get 558
    local.get 560
    i32.add
    local.set 561
    local.get 6
    i32.load offset=216
    local.set 562
    local.get 561
    local.get 562
    i32.add
    local.set 563
    local.get 6
    i32.load offset=228
    local.set 564
    local.get 564
    local.get 563
    i32.store offset=32
    local.get 6
    i32.load offset=228
    local.set 565
    local.get 565
    i32.load offset=32
    local.set 566
    i32.const 26
    local.set 567
    local.get 566
    local.get 567
    i32.shr_u
    local.set 568
    local.get 6
    local.get 568
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 569
    local.get 569
    i32.load offset=32
    local.set 570
    i32.const 67108863
    local.set 571
    local.get 570
    local.get 571
    i32.and
    local.set 572
    local.get 569
    local.get 572
    i32.store offset=32
    local.get 6
    i32.load offset=224
    local.set 573
    local.get 573
    i32.load offset=36
    local.set 574
    local.get 6
    i32.load offset=220
    local.set 575
    local.get 575
    i32.load offset=36
    local.set 576
    local.get 574
    local.get 576
    i32.add
    local.set 577
    local.get 6
    i32.load offset=216
    local.set 578
    local.get 577
    local.get 578
    i32.add
    local.set 579
    local.get 6
    i32.load offset=228
    local.set 580
    local.get 580
    local.get 579
    i32.store offset=36
    local.get 6
    i32.load offset=228
    local.set 581
    local.get 581
    i32.load offset=36
    local.set 582
    i32.const 25
    local.set 583
    local.get 582
    local.get 583
    i32.shr_u
    local.set 584
    local.get 6
    local.get 584
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 585
    local.get 585
    i32.load offset=36
    local.set 586
    i32.const 33554431
    local.set 587
    local.get 586
    local.get 587
    i32.and
    local.set 588
    local.get 585
    local.get 588
    i32.store offset=36
    local.get 6
    i32.load offset=216
    local.set 589
    i32.const 19
    local.set 590
    local.get 589
    local.get 590
    i32.mul
    local.set 591
    local.get 6
    i32.load offset=228
    local.set 592
    local.get 592
    i32.load
    local.set 593
    local.get 593
    local.get 591
    i32.add
    local.set 594
    local.get 592
    local.get 594
    i32.store
    local.get 6
    i32.load offset=160
    local.set 595
    i32.const 80
    local.set 596
    local.get 595
    local.get 596
    i32.add
    local.set 597
    local.get 6
    i32.load offset=160
    local.set 598
    i32.const 120
    local.set 599
    local.get 598
    local.get 599
    i32.add
    local.set 600
    local.get 6
    local.get 597
    i32.store offset=212
    local.get 6
    local.get 600
    i32.store offset=208
    local.get 6
    i32.load offset=208
    local.set 601
    local.get 601
    i32.load
    local.set 602
    local.get 6
    i32.load offset=212
    local.set 603
    local.get 603
    local.get 602
    i32.store
    local.get 6
    i32.load offset=208
    local.set 604
    local.get 604
    i32.load offset=4
    local.set 605
    local.get 6
    i32.load offset=212
    local.set 606
    local.get 606
    local.get 605
    i32.store offset=4
    local.get 6
    i32.load offset=208
    local.set 607
    local.get 607
    i32.load offset=8
    local.set 608
    local.get 6
    i32.load offset=212
    local.set 609
    local.get 609
    local.get 608
    i32.store offset=8
    local.get 6
    i32.load offset=208
    local.set 610
    local.get 610
    i32.load offset=12
    local.set 611
    local.get 6
    i32.load offset=212
    local.set 612
    local.get 612
    local.get 611
    i32.store offset=12
    local.get 6
    i32.load offset=208
    local.set 613
    local.get 613
    i32.load offset=16
    local.set 614
    local.get 6
    i32.load offset=212
    local.set 615
    local.get 615
    local.get 614
    i32.store offset=16
    local.get 6
    i32.load offset=208
    local.set 616
    local.get 616
    i32.load offset=20
    local.set 617
    local.get 6
    i32.load offset=212
    local.set 618
    local.get 618
    local.get 617
    i32.store offset=20
    local.get 6
    i32.load offset=208
    local.set 619
    local.get 619
    i32.load offset=24
    local.set 620
    local.get 6
    i32.load offset=212
    local.set 621
    local.get 621
    local.get 620
    i32.store offset=24
    local.get 6
    i32.load offset=208
    local.set 622
    local.get 622
    i32.load offset=28
    local.set 623
    local.get 6
    i32.load offset=212
    local.set 624
    local.get 624
    local.get 623
    i32.store offset=28
    local.get 6
    i32.load offset=208
    local.set 625
    local.get 625
    i32.load offset=32
    local.set 626
    local.get 6
    i32.load offset=212
    local.set 627
    local.get 627
    local.get 626
    i32.store offset=32
    local.get 6
    i32.load offset=208
    local.set 628
    local.get 628
    i32.load offset=36
    local.set 629
    local.get 6
    i32.load offset=212
    local.set 630
    local.get 630
    local.get 629
    i32.store offset=36
    local.get 6
    i32.load offset=140
    local.set 631
    local.get 6
    i32.load8_u offset=151
    local.set 632
    i32.const 255
    local.set 633
    local.get 632
    local.get 633
    i32.and
    local.set 634
    i32.const 2
    local.set 635
    local.get 634
    local.get 635
    i32.add
    local.set 636
    i32.const 40
    local.set 637
    local.get 636
    local.get 637
    i32.mul
    local.set 638
    local.get 631
    local.get 638
    i32.add
    local.set 639
    local.get 6
    i32.load offset=140
    local.set 640
    local.get 6
    i32.load8_u offset=151
    local.set 641
    i32.const 255
    local.set 642
    local.get 641
    local.get 642
    i32.and
    local.set 643
    i32.const 2
    local.set 644
    local.get 643
    local.get 644
    i32.add
    local.set 645
    i32.const 40
    local.set 646
    local.get 645
    local.get 646
    i32.mul
    local.set 647
    local.get 640
    local.get 647
    i32.add
    local.set 648
    local.get 6
    local.get 639
    i32.store offset=204
    local.get 6
    local.get 648
    i32.store offset=200
    local.get 6
    local.get 7
    i32.store offset=196
    local.get 6
    i32.load offset=200
    local.set 649
    local.get 649
    i32.load
    local.set 650
    local.get 6
    i32.load offset=196
    local.set 651
    local.get 651
    i32.load
    local.set 652
    local.get 650
    local.get 652
    i32.add
    local.set 653
    local.get 6
    i32.load offset=204
    local.set 654
    local.get 654
    local.get 653
    i32.store
    local.get 6
    i32.load offset=200
    local.set 655
    local.get 655
    i32.load offset=4
    local.set 656
    local.get 6
    i32.load offset=196
    local.set 657
    local.get 657
    i32.load offset=4
    local.set 658
    local.get 656
    local.get 658
    i32.add
    local.set 659
    local.get 6
    i32.load offset=204
    local.set 660
    local.get 660
    local.get 659
    i32.store offset=4
    local.get 6
    i32.load offset=200
    local.set 661
    local.get 661
    i32.load offset=8
    local.set 662
    local.get 6
    i32.load offset=196
    local.set 663
    local.get 663
    i32.load offset=8
    local.set 664
    local.get 662
    local.get 664
    i32.add
    local.set 665
    local.get 6
    i32.load offset=204
    local.set 666
    local.get 666
    local.get 665
    i32.store offset=8
    local.get 6
    i32.load offset=200
    local.set 667
    local.get 667
    i32.load offset=12
    local.set 668
    local.get 6
    i32.load offset=196
    local.set 669
    local.get 669
    i32.load offset=12
    local.set 670
    local.get 668
    local.get 670
    i32.add
    local.set 671
    local.get 6
    i32.load offset=204
    local.set 672
    local.get 672
    local.get 671
    i32.store offset=12
    local.get 6
    i32.load offset=200
    local.set 673
    local.get 673
    i32.load offset=16
    local.set 674
    local.get 6
    i32.load offset=196
    local.set 675
    local.get 675
    i32.load offset=16
    local.set 676
    local.get 674
    local.get 676
    i32.add
    local.set 677
    local.get 6
    i32.load offset=204
    local.set 678
    local.get 678
    local.get 677
    i32.store offset=16
    local.get 6
    i32.load offset=200
    local.set 679
    local.get 679
    i32.load offset=20
    local.set 680
    local.get 6
    i32.load offset=196
    local.set 681
    local.get 681
    i32.load offset=20
    local.set 682
    local.get 680
    local.get 682
    i32.add
    local.set 683
    local.get 6
    i32.load offset=204
    local.set 684
    local.get 684
    local.get 683
    i32.store offset=20
    local.get 6
    i32.load offset=200
    local.set 685
    local.get 685
    i32.load offset=24
    local.set 686
    local.get 6
    i32.load offset=196
    local.set 687
    local.get 687
    i32.load offset=24
    local.set 688
    local.get 686
    local.get 688
    i32.add
    local.set 689
    local.get 6
    i32.load offset=204
    local.set 690
    local.get 690
    local.get 689
    i32.store offset=24
    local.get 6
    i32.load offset=200
    local.set 691
    local.get 691
    i32.load offset=28
    local.set 692
    local.get 6
    i32.load offset=196
    local.set 693
    local.get 693
    i32.load offset=28
    local.set 694
    local.get 692
    local.get 694
    i32.add
    local.set 695
    local.get 6
    i32.load offset=204
    local.set 696
    local.get 696
    local.get 695
    i32.store offset=28
    local.get 6
    i32.load offset=200
    local.set 697
    local.get 697
    i32.load offset=32
    local.set 698
    local.get 6
    i32.load offset=196
    local.set 699
    local.get 699
    i32.load offset=32
    local.set 700
    local.get 698
    local.get 700
    i32.add
    local.set 701
    local.get 6
    i32.load offset=204
    local.set 702
    local.get 702
    local.get 701
    i32.store offset=32
    local.get 6
    i32.load offset=200
    local.set 703
    local.get 703
    i32.load offset=36
    local.set 704
    local.get 6
    i32.load offset=196
    local.set 705
    local.get 705
    i32.load offset=36
    local.set 706
    local.get 704
    local.get 706
    i32.add
    local.set 707
    local.get 6
    i32.load offset=204
    local.set 708
    local.get 708
    local.get 707
    i32.store offset=36
    local.get 6
    i32.load offset=140
    local.set 709
    local.get 6
    i32.load8_u offset=151
    local.set 710
    i32.const 255
    local.set 711
    local.get 710
    local.get 711
    i32.and
    local.set 712
    i32.const 1
    local.set 713
    local.get 712
    local.get 713
    i32.xor
    local.set 714
    i32.const 2
    local.set 715
    local.get 714
    local.get 715
    i32.add
    local.set 716
    i32.const 40
    local.set 717
    local.get 716
    local.get 717
    i32.mul
    local.set 718
    local.get 709
    local.get 718
    i32.add
    local.set 719
    local.get 6
    i32.load offset=140
    local.set 720
    local.get 6
    i32.load8_u offset=151
    local.set 721
    i32.const 255
    local.set 722
    local.get 721
    local.get 722
    i32.and
    local.set 723
    i32.const 1
    local.set 724
    local.get 723
    local.get 724
    i32.xor
    local.set 725
    i32.const 2
    local.set 726
    local.get 725
    local.get 726
    i32.add
    local.set 727
    i32.const 40
    local.set 728
    local.get 727
    local.get 728
    i32.mul
    local.set 729
    local.get 720
    local.get 729
    i32.add
    local.set 730
    local.get 6
    local.get 719
    i32.store offset=192
    local.get 6
    local.get 730
    i32.store offset=188
    local.get 6
    local.get 7
    i32.store offset=184
    local.get 6
    i32.load offset=188
    local.set 731
    local.get 731
    i32.load
    local.set 732
    i32.const 134217690
    local.set 733
    local.get 732
    local.get 733
    i32.add
    local.set 734
    local.get 6
    i32.load offset=184
    local.set 735
    local.get 735
    i32.load
    local.set 736
    local.get 734
    local.get 736
    i32.sub
    local.set 737
    local.get 6
    i32.load offset=192
    local.set 738
    local.get 738
    local.get 737
    i32.store
    local.get 6
    i32.load offset=192
    local.set 739
    local.get 739
    i32.load
    local.set 740
    i32.const 26
    local.set 741
    local.get 740
    local.get 741
    i32.shr_u
    local.set 742
    local.get 6
    local.get 742
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 743
    local.get 743
    i32.load
    local.set 744
    i32.const 67108863
    local.set 745
    local.get 744
    local.get 745
    i32.and
    local.set 746
    local.get 743
    local.get 746
    i32.store
    local.get 6
    i32.load offset=188
    local.set 747
    local.get 747
    i32.load offset=4
    local.set 748
    i32.const 67108862
    local.set 749
    local.get 748
    local.get 749
    i32.add
    local.set 750
    local.get 6
    i32.load offset=184
    local.set 751
    local.get 751
    i32.load offset=4
    local.set 752
    local.get 750
    local.get 752
    i32.sub
    local.set 753
    local.get 6
    i32.load offset=180
    local.set 754
    local.get 753
    local.get 754
    i32.add
    local.set 755
    local.get 6
    i32.load offset=192
    local.set 756
    local.get 756
    local.get 755
    i32.store offset=4
    local.get 6
    i32.load offset=192
    local.set 757
    local.get 757
    i32.load offset=4
    local.set 758
    i32.const 25
    local.set 759
    local.get 758
    local.get 759
    i32.shr_u
    local.set 760
    local.get 6
    local.get 760
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 761
    local.get 761
    i32.load offset=4
    local.set 762
    i32.const 33554431
    local.set 763
    local.get 762
    local.get 763
    i32.and
    local.set 764
    local.get 761
    local.get 764
    i32.store offset=4
    local.get 6
    i32.load offset=188
    local.set 765
    local.get 765
    i32.load offset=8
    local.set 766
    i32.const 134217726
    local.set 767
    local.get 766
    local.get 767
    i32.add
    local.set 768
    local.get 6
    i32.load offset=184
    local.set 769
    local.get 769
    i32.load offset=8
    local.set 770
    local.get 768
    local.get 770
    i32.sub
    local.set 771
    local.get 6
    i32.load offset=180
    local.set 772
    local.get 771
    local.get 772
    i32.add
    local.set 773
    local.get 6
    i32.load offset=192
    local.set 774
    local.get 774
    local.get 773
    i32.store offset=8
    local.get 6
    i32.load offset=192
    local.set 775
    local.get 775
    i32.load offset=8
    local.set 776
    i32.const 26
    local.set 777
    local.get 776
    local.get 777
    i32.shr_u
    local.set 778
    local.get 6
    local.get 778
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 779
    local.get 779
    i32.load offset=8
    local.set 780
    i32.const 67108863
    local.set 781
    local.get 780
    local.get 781
    i32.and
    local.set 782
    local.get 779
    local.get 782
    i32.store offset=8
    local.get 6
    i32.load offset=188
    local.set 783
    local.get 783
    i32.load offset=12
    local.set 784
    i32.const 67108862
    local.set 785
    local.get 784
    local.get 785
    i32.add
    local.set 786
    local.get 6
    i32.load offset=184
    local.set 787
    local.get 787
    i32.load offset=12
    local.set 788
    local.get 786
    local.get 788
    i32.sub
    local.set 789
    local.get 6
    i32.load offset=180
    local.set 790
    local.get 789
    local.get 790
    i32.add
    local.set 791
    local.get 6
    i32.load offset=192
    local.set 792
    local.get 792
    local.get 791
    i32.store offset=12
    local.get 6
    i32.load offset=192
    local.set 793
    local.get 793
    i32.load offset=12
    local.set 794
    i32.const 25
    local.set 795
    local.get 794
    local.get 795
    i32.shr_u
    local.set 796
    local.get 6
    local.get 796
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 797
    local.get 797
    i32.load offset=12
    local.set 798
    i32.const 33554431
    local.set 799
    local.get 798
    local.get 799
    i32.and
    local.set 800
    local.get 797
    local.get 800
    i32.store offset=12
    local.get 6
    i32.load offset=188
    local.set 801
    local.get 801
    i32.load offset=16
    local.set 802
    i32.const 134217726
    local.set 803
    local.get 802
    local.get 803
    i32.add
    local.set 804
    local.get 6
    i32.load offset=184
    local.set 805
    local.get 805
    i32.load offset=16
    local.set 806
    local.get 804
    local.get 806
    i32.sub
    local.set 807
    local.get 6
    i32.load offset=180
    local.set 808
    local.get 807
    local.get 808
    i32.add
    local.set 809
    local.get 6
    i32.load offset=192
    local.set 810
    local.get 810
    local.get 809
    i32.store offset=16
    local.get 6
    i32.load offset=188
    local.set 811
    local.get 811
    i32.load offset=20
    local.set 812
    i32.const 67108862
    local.set 813
    local.get 812
    local.get 813
    i32.add
    local.set 814
    local.get 6
    i32.load offset=184
    local.set 815
    local.get 815
    i32.load offset=20
    local.set 816
    local.get 814
    local.get 816
    i32.sub
    local.set 817
    local.get 6
    i32.load offset=192
    local.set 818
    local.get 818
    local.get 817
    i32.store offset=20
    local.get 6
    i32.load offset=188
    local.set 819
    local.get 819
    i32.load offset=24
    local.set 820
    i32.const 134217726
    local.set 821
    local.get 820
    local.get 821
    i32.add
    local.set 822
    local.get 6
    i32.load offset=184
    local.set 823
    local.get 823
    i32.load offset=24
    local.set 824
    local.get 822
    local.get 824
    i32.sub
    local.set 825
    local.get 6
    i32.load offset=192
    local.set 826
    local.get 826
    local.get 825
    i32.store offset=24
    local.get 6
    i32.load offset=188
    local.set 827
    local.get 827
    i32.load offset=28
    local.set 828
    i32.const 67108862
    local.set 829
    local.get 828
    local.get 829
    i32.add
    local.set 830
    local.get 6
    i32.load offset=184
    local.set 831
    local.get 831
    i32.load offset=28
    local.set 832
    local.get 830
    local.get 832
    i32.sub
    local.set 833
    local.get 6
    i32.load offset=192
    local.set 834
    local.get 834
    local.get 833
    i32.store offset=28
    local.get 6
    i32.load offset=188
    local.set 835
    local.get 835
    i32.load offset=32
    local.set 836
    i32.const 134217726
    local.set 837
    local.get 836
    local.get 837
    i32.add
    local.set 838
    local.get 6
    i32.load offset=184
    local.set 839
    local.get 839
    i32.load offset=32
    local.set 840
    local.get 838
    local.get 840
    i32.sub
    local.set 841
    local.get 6
    i32.load offset=192
    local.set 842
    local.get 842
    local.get 841
    i32.store offset=32
    local.get 6
    i32.load offset=188
    local.set 843
    local.get 843
    i32.load offset=36
    local.set 844
    i32.const 67108862
    local.set 845
    local.get 844
    local.get 845
    i32.add
    local.set 846
    local.get 6
    i32.load offset=184
    local.set 847
    local.get 847
    i32.load offset=36
    local.set 848
    local.get 846
    local.get 848
    i32.sub
    local.set 849
    local.get 6
    i32.load offset=192
    local.set 850
    local.get 850
    local.get 849
    i32.store offset=36
    i32.const 272
    local.set 851
    local.get 6
    local.get 851
    i32.add
    local.set 852
    local.get 852
    global.set 0
    return)
  (func $ge25519_nielsadd2_p1p1 (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 4
    i32.const 272
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set 0
    local.get 6
    local.set 7
    i32.const 96
    local.set 8
    local.get 6
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    i32.const 48
    local.set 11
    local.get 6
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    local.get 6
    local.get 0
    i32.store offset=160
    local.get 6
    local.get 1
    i32.store offset=156
    local.get 6
    local.get 2
    i32.store offset=152
    local.get 6
    local.get 3
    i32.store8 offset=151
    local.get 6
    i32.load offset=152
    local.set 14
    local.get 6
    local.get 14
    i32.store offset=144
    local.get 6
    i32.load offset=160
    local.set 15
    local.get 6
    local.get 15
    i32.store offset=140
    local.get 6
    i32.load offset=156
    local.set 16
    i32.const 40
    local.set 17
    local.get 16
    local.get 17
    i32.add
    local.set 18
    local.get 6
    i32.load offset=156
    local.set 19
    local.get 6
    local.get 10
    i32.store offset=176
    local.get 6
    local.get 18
    i32.store offset=172
    local.get 6
    local.get 19
    i32.store offset=168
    local.get 6
    i32.load offset=172
    local.set 20
    local.get 20
    i32.load
    local.set 21
    i32.const 134217690
    local.set 22
    local.get 21
    local.get 22
    i32.add
    local.set 23
    local.get 6
    i32.load offset=168
    local.set 24
    local.get 24
    i32.load
    local.set 25
    local.get 23
    local.get 25
    i32.sub
    local.set 26
    local.get 6
    i32.load offset=176
    local.set 27
    local.get 27
    local.get 26
    i32.store
    local.get 6
    i32.load offset=176
    local.set 28
    local.get 28
    i32.load
    local.set 29
    i32.const 26
    local.set 30
    local.get 29
    local.get 30
    i32.shr_u
    local.set 31
    local.get 6
    local.get 31
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 32
    local.get 32
    i32.load
    local.set 33
    i32.const 67108863
    local.set 34
    local.get 33
    local.get 34
    i32.and
    local.set 35
    local.get 32
    local.get 35
    i32.store
    local.get 6
    i32.load offset=172
    local.set 36
    local.get 36
    i32.load offset=4
    local.set 37
    i32.const 67108862
    local.set 38
    local.get 37
    local.get 38
    i32.add
    local.set 39
    local.get 6
    i32.load offset=168
    local.set 40
    local.get 40
    i32.load offset=4
    local.set 41
    local.get 39
    local.get 41
    i32.sub
    local.set 42
    local.get 6
    i32.load offset=164
    local.set 43
    local.get 42
    local.get 43
    i32.add
    local.set 44
    local.get 6
    i32.load offset=176
    local.set 45
    local.get 45
    local.get 44
    i32.store offset=4
    local.get 6
    i32.load offset=176
    local.set 46
    local.get 46
    i32.load offset=4
    local.set 47
    i32.const 25
    local.set 48
    local.get 47
    local.get 48
    i32.shr_u
    local.set 49
    local.get 6
    local.get 49
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 50
    local.get 50
    i32.load offset=4
    local.set 51
    i32.const 33554431
    local.set 52
    local.get 51
    local.get 52
    i32.and
    local.set 53
    local.get 50
    local.get 53
    i32.store offset=4
    local.get 6
    i32.load offset=172
    local.set 54
    local.get 54
    i32.load offset=8
    local.set 55
    i32.const 134217726
    local.set 56
    local.get 55
    local.get 56
    i32.add
    local.set 57
    local.get 6
    i32.load offset=168
    local.set 58
    local.get 58
    i32.load offset=8
    local.set 59
    local.get 57
    local.get 59
    i32.sub
    local.set 60
    local.get 6
    i32.load offset=164
    local.set 61
    local.get 60
    local.get 61
    i32.add
    local.set 62
    local.get 6
    i32.load offset=176
    local.set 63
    local.get 63
    local.get 62
    i32.store offset=8
    local.get 6
    i32.load offset=176
    local.set 64
    local.get 64
    i32.load offset=8
    local.set 65
    i32.const 26
    local.set 66
    local.get 65
    local.get 66
    i32.shr_u
    local.set 67
    local.get 6
    local.get 67
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 68
    local.get 68
    i32.load offset=8
    local.set 69
    i32.const 67108863
    local.set 70
    local.get 69
    local.get 70
    i32.and
    local.set 71
    local.get 68
    local.get 71
    i32.store offset=8
    local.get 6
    i32.load offset=172
    local.set 72
    local.get 72
    i32.load offset=12
    local.set 73
    i32.const 67108862
    local.set 74
    local.get 73
    local.get 74
    i32.add
    local.set 75
    local.get 6
    i32.load offset=168
    local.set 76
    local.get 76
    i32.load offset=12
    local.set 77
    local.get 75
    local.get 77
    i32.sub
    local.set 78
    local.get 6
    i32.load offset=164
    local.set 79
    local.get 78
    local.get 79
    i32.add
    local.set 80
    local.get 6
    i32.load offset=176
    local.set 81
    local.get 81
    local.get 80
    i32.store offset=12
    local.get 6
    i32.load offset=176
    local.set 82
    local.get 82
    i32.load offset=12
    local.set 83
    i32.const 25
    local.set 84
    local.get 83
    local.get 84
    i32.shr_u
    local.set 85
    local.get 6
    local.get 85
    i32.store offset=164
    local.get 6
    i32.load offset=176
    local.set 86
    local.get 86
    i32.load offset=12
    local.set 87
    i32.const 33554431
    local.set 88
    local.get 87
    local.get 88
    i32.and
    local.set 89
    local.get 86
    local.get 89
    i32.store offset=12
    local.get 6
    i32.load offset=172
    local.set 90
    local.get 90
    i32.load offset=16
    local.set 91
    i32.const 134217726
    local.set 92
    local.get 91
    local.get 92
    i32.add
    local.set 93
    local.get 6
    i32.load offset=168
    local.set 94
    local.get 94
    i32.load offset=16
    local.set 95
    local.get 93
    local.get 95
    i32.sub
    local.set 96
    local.get 6
    i32.load offset=164
    local.set 97
    local.get 96
    local.get 97
    i32.add
    local.set 98
    local.get 6
    i32.load offset=176
    local.set 99
    local.get 99
    local.get 98
    i32.store offset=16
    local.get 6
    i32.load offset=172
    local.set 100
    local.get 100
    i32.load offset=20
    local.set 101
    i32.const 67108862
    local.set 102
    local.get 101
    local.get 102
    i32.add
    local.set 103
    local.get 6
    i32.load offset=168
    local.set 104
    local.get 104
    i32.load offset=20
    local.set 105
    local.get 103
    local.get 105
    i32.sub
    local.set 106
    local.get 6
    i32.load offset=176
    local.set 107
    local.get 107
    local.get 106
    i32.store offset=20
    local.get 6
    i32.load offset=172
    local.set 108
    local.get 108
    i32.load offset=24
    local.set 109
    i32.const 134217726
    local.set 110
    local.get 109
    local.get 110
    i32.add
    local.set 111
    local.get 6
    i32.load offset=168
    local.set 112
    local.get 112
    i32.load offset=24
    local.set 113
    local.get 111
    local.get 113
    i32.sub
    local.set 114
    local.get 6
    i32.load offset=176
    local.set 115
    local.get 115
    local.get 114
    i32.store offset=24
    local.get 6
    i32.load offset=172
    local.set 116
    local.get 116
    i32.load offset=28
    local.set 117
    i32.const 67108862
    local.set 118
    local.get 117
    local.get 118
    i32.add
    local.set 119
    local.get 6
    i32.load offset=168
    local.set 120
    local.get 120
    i32.load offset=28
    local.set 121
    local.get 119
    local.get 121
    i32.sub
    local.set 122
    local.get 6
    i32.load offset=176
    local.set 123
    local.get 123
    local.get 122
    i32.store offset=28
    local.get 6
    i32.load offset=172
    local.set 124
    local.get 124
    i32.load offset=32
    local.set 125
    i32.const 134217726
    local.set 126
    local.get 125
    local.get 126
    i32.add
    local.set 127
    local.get 6
    i32.load offset=168
    local.set 128
    local.get 128
    i32.load offset=32
    local.set 129
    local.get 127
    local.get 129
    i32.sub
    local.set 130
    local.get 6
    i32.load offset=176
    local.set 131
    local.get 131
    local.get 130
    i32.store offset=32
    local.get 6
    i32.load offset=172
    local.set 132
    local.get 132
    i32.load offset=36
    local.set 133
    i32.const 67108862
    local.set 134
    local.get 133
    local.get 134
    i32.add
    local.set 135
    local.get 6
    i32.load offset=168
    local.set 136
    local.get 136
    i32.load offset=36
    local.set 137
    local.get 135
    local.get 137
    i32.sub
    local.set 138
    local.get 6
    i32.load offset=176
    local.set 139
    local.get 139
    local.get 138
    i32.store offset=36
    local.get 6
    i32.load offset=156
    local.set 140
    i32.const 40
    local.set 141
    local.get 140
    local.get 141
    i32.add
    local.set 142
    local.get 6
    i32.load offset=156
    local.set 143
    local.get 6
    local.get 13
    i32.store offset=240
    local.get 6
    local.get 142
    i32.store offset=236
    local.get 6
    local.get 143
    i32.store offset=232
    local.get 6
    i32.load offset=236
    local.set 144
    local.get 144
    i32.load
    local.set 145
    local.get 6
    i32.load offset=232
    local.set 146
    local.get 146
    i32.load
    local.set 147
    local.get 145
    local.get 147
    i32.add
    local.set 148
    local.get 6
    i32.load offset=240
    local.set 149
    local.get 149
    local.get 148
    i32.store
    local.get 6
    i32.load offset=236
    local.set 150
    local.get 150
    i32.load offset=4
    local.set 151
    local.get 6
    i32.load offset=232
    local.set 152
    local.get 152
    i32.load offset=4
    local.set 153
    local.get 151
    local.get 153
    i32.add
    local.set 154
    local.get 6
    i32.load offset=240
    local.set 155
    local.get 155
    local.get 154
    i32.store offset=4
    local.get 6
    i32.load offset=236
    local.set 156
    local.get 156
    i32.load offset=8
    local.set 157
    local.get 6
    i32.load offset=232
    local.set 158
    local.get 158
    i32.load offset=8
    local.set 159
    local.get 157
    local.get 159
    i32.add
    local.set 160
    local.get 6
    i32.load offset=240
    local.set 161
    local.get 161
    local.get 160
    i32.store offset=8
    local.get 6
    i32.load offset=236
    local.set 162
    local.get 162
    i32.load offset=12
    local.set 163
    local.get 6
    i32.load offset=232
    local.set 164
    local.get 164
    i32.load offset=12
    local.set 165
    local.get 163
    local.get 165
    i32.add
    local.set 166
    local.get 6
    i32.load offset=240
    local.set 167
    local.get 167
    local.get 166
    i32.store offset=12
    local.get 6
    i32.load offset=236
    local.set 168
    local.get 168
    i32.load offset=16
    local.set 169
    local.get 6
    i32.load offset=232
    local.set 170
    local.get 170
    i32.load offset=16
    local.set 171
    local.get 169
    local.get 171
    i32.add
    local.set 172
    local.get 6
    i32.load offset=240
    local.set 173
    local.get 173
    local.get 172
    i32.store offset=16
    local.get 6
    i32.load offset=236
    local.set 174
    local.get 174
    i32.load offset=20
    local.set 175
    local.get 6
    i32.load offset=232
    local.set 176
    local.get 176
    i32.load offset=20
    local.set 177
    local.get 175
    local.get 177
    i32.add
    local.set 178
    local.get 6
    i32.load offset=240
    local.set 179
    local.get 179
    local.get 178
    i32.store offset=20
    local.get 6
    i32.load offset=236
    local.set 180
    local.get 180
    i32.load offset=24
    local.set 181
    local.get 6
    i32.load offset=232
    local.set 182
    local.get 182
    i32.load offset=24
    local.set 183
    local.get 181
    local.get 183
    i32.add
    local.set 184
    local.get 6
    i32.load offset=240
    local.set 185
    local.get 185
    local.get 184
    i32.store offset=24
    local.get 6
    i32.load offset=236
    local.set 186
    local.get 186
    i32.load offset=28
    local.set 187
    local.get 6
    i32.load offset=232
    local.set 188
    local.get 188
    i32.load offset=28
    local.set 189
    local.get 187
    local.get 189
    i32.add
    local.set 190
    local.get 6
    i32.load offset=240
    local.set 191
    local.get 191
    local.get 190
    i32.store offset=28
    local.get 6
    i32.load offset=236
    local.set 192
    local.get 192
    i32.load offset=32
    local.set 193
    local.get 6
    i32.load offset=232
    local.set 194
    local.get 194
    i32.load offset=32
    local.set 195
    local.get 193
    local.get 195
    i32.add
    local.set 196
    local.get 6
    i32.load offset=240
    local.set 197
    local.get 197
    local.get 196
    i32.store offset=32
    local.get 6
    i32.load offset=236
    local.set 198
    local.get 198
    i32.load offset=36
    local.set 199
    local.get 6
    i32.load offset=232
    local.set 200
    local.get 200
    i32.load offset=36
    local.set 201
    local.get 199
    local.get 201
    i32.add
    local.set 202
    local.get 6
    i32.load offset=240
    local.set 203
    local.get 203
    local.get 202
    i32.store offset=36
    local.get 6
    i32.load offset=144
    local.set 204
    local.get 6
    i32.load8_u offset=151
    local.set 205
    i32.const 255
    local.set 206
    local.get 205
    local.get 206
    i32.and
    local.set 207
    i32.const 40
    local.set 208
    local.get 207
    local.get 208
    i32.mul
    local.set 209
    local.get 204
    local.get 209
    i32.add
    local.set 210
    local.get 10
    local.get 10
    local.get 210
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 211
    local.get 6
    i32.load offset=144
    local.set 212
    local.get 6
    i32.load8_u offset=151
    local.set 213
    i32.const 255
    local.set 214
    local.get 213
    local.get 214
    i32.and
    local.set 215
    i32.const 1
    local.set 216
    local.get 215
    local.get 216
    i32.xor
    local.set 217
    i32.const 40
    local.set 218
    local.get 217
    local.get 218
    i32.mul
    local.set 219
    local.get 212
    local.get 219
    i32.add
    local.set 220
    local.get 211
    local.get 13
    local.get 220
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 221
    i32.const 40
    local.set 222
    local.get 221
    local.get 222
    i32.add
    local.set 223
    local.get 6
    i32.load offset=160
    local.set 224
    local.get 6
    local.get 223
    i32.store offset=268
    local.get 6
    local.get 224
    i32.store offset=264
    local.get 6
    local.get 10
    i32.store offset=260
    local.get 6
    i32.load offset=264
    local.set 225
    local.get 225
    i32.load
    local.set 226
    local.get 6
    i32.load offset=260
    local.set 227
    local.get 227
    i32.load
    local.set 228
    local.get 226
    local.get 228
    i32.add
    local.set 229
    local.get 6
    i32.load offset=268
    local.set 230
    local.get 230
    local.get 229
    i32.store
    local.get 6
    i32.load offset=264
    local.set 231
    local.get 231
    i32.load offset=4
    local.set 232
    local.get 6
    i32.load offset=260
    local.set 233
    local.get 233
    i32.load offset=4
    local.set 234
    local.get 232
    local.get 234
    i32.add
    local.set 235
    local.get 6
    i32.load offset=268
    local.set 236
    local.get 236
    local.get 235
    i32.store offset=4
    local.get 6
    i32.load offset=264
    local.set 237
    local.get 237
    i32.load offset=8
    local.set 238
    local.get 6
    i32.load offset=260
    local.set 239
    local.get 239
    i32.load offset=8
    local.set 240
    local.get 238
    local.get 240
    i32.add
    local.set 241
    local.get 6
    i32.load offset=268
    local.set 242
    local.get 242
    local.get 241
    i32.store offset=8
    local.get 6
    i32.load offset=264
    local.set 243
    local.get 243
    i32.load offset=12
    local.set 244
    local.get 6
    i32.load offset=260
    local.set 245
    local.get 245
    i32.load offset=12
    local.set 246
    local.get 244
    local.get 246
    i32.add
    local.set 247
    local.get 6
    i32.load offset=268
    local.set 248
    local.get 248
    local.get 247
    i32.store offset=12
    local.get 6
    i32.load offset=264
    local.set 249
    local.get 249
    i32.load offset=16
    local.set 250
    local.get 6
    i32.load offset=260
    local.set 251
    local.get 251
    i32.load offset=16
    local.set 252
    local.get 250
    local.get 252
    i32.add
    local.set 253
    local.get 6
    i32.load offset=268
    local.set 254
    local.get 254
    local.get 253
    i32.store offset=16
    local.get 6
    i32.load offset=264
    local.set 255
    local.get 255
    i32.load offset=20
    local.set 256
    local.get 6
    i32.load offset=260
    local.set 257
    local.get 257
    i32.load offset=20
    local.set 258
    local.get 256
    local.get 258
    i32.add
    local.set 259
    local.get 6
    i32.load offset=268
    local.set 260
    local.get 260
    local.get 259
    i32.store offset=20
    local.get 6
    i32.load offset=264
    local.set 261
    local.get 261
    i32.load offset=24
    local.set 262
    local.get 6
    i32.load offset=260
    local.set 263
    local.get 263
    i32.load offset=24
    local.set 264
    local.get 262
    local.get 264
    i32.add
    local.set 265
    local.get 6
    i32.load offset=268
    local.set 266
    local.get 266
    local.get 265
    i32.store offset=24
    local.get 6
    i32.load offset=264
    local.set 267
    local.get 267
    i32.load offset=28
    local.set 268
    local.get 6
    i32.load offset=260
    local.set 269
    local.get 269
    i32.load offset=28
    local.set 270
    local.get 268
    local.get 270
    i32.add
    local.set 271
    local.get 6
    i32.load offset=268
    local.set 272
    local.get 272
    local.get 271
    i32.store offset=28
    local.get 6
    i32.load offset=264
    local.set 273
    local.get 273
    i32.load offset=32
    local.set 274
    local.get 6
    i32.load offset=260
    local.set 275
    local.get 275
    i32.load offset=32
    local.set 276
    local.get 274
    local.get 276
    i32.add
    local.set 277
    local.get 6
    i32.load offset=268
    local.set 278
    local.get 278
    local.get 277
    i32.store offset=32
    local.get 6
    i32.load offset=264
    local.set 279
    local.get 279
    i32.load offset=36
    local.set 280
    local.get 6
    i32.load offset=260
    local.set 281
    local.get 281
    i32.load offset=36
    local.set 282
    local.get 280
    local.get 282
    i32.add
    local.set 283
    local.get 6
    i32.load offset=268
    local.set 284
    local.get 284
    local.get 283
    i32.store offset=36
    local.get 6
    i32.load offset=160
    local.set 285
    local.get 6
    i32.load offset=160
    local.set 286
    local.get 6
    local.get 285
    i32.store offset=256
    local.get 6
    local.get 286
    i32.store offset=252
    local.get 6
    local.get 10
    i32.store offset=248
    local.get 6
    i32.load offset=252
    local.set 287
    local.get 287
    i32.load
    local.set 288
    i32.const 134217690
    local.set 289
    local.get 288
    local.get 289
    i32.add
    local.set 290
    local.get 6
    i32.load offset=248
    local.set 291
    local.get 291
    i32.load
    local.set 292
    local.get 290
    local.get 292
    i32.sub
    local.set 293
    local.get 6
    i32.load offset=256
    local.set 294
    local.get 294
    local.get 293
    i32.store
    local.get 6
    i32.load offset=256
    local.set 295
    local.get 295
    i32.load
    local.set 296
    i32.const 26
    local.set 297
    local.get 296
    local.get 297
    i32.shr_u
    local.set 298
    local.get 6
    local.get 298
    i32.store offset=244
    local.get 6
    i32.load offset=256
    local.set 299
    local.get 299
    i32.load
    local.set 300
    i32.const 67108863
    local.set 301
    local.get 300
    local.get 301
    i32.and
    local.set 302
    local.get 299
    local.get 302
    i32.store
    local.get 6
    i32.load offset=252
    local.set 303
    local.get 303
    i32.load offset=4
    local.set 304
    i32.const 67108862
    local.set 305
    local.get 304
    local.get 305
    i32.add
    local.set 306
    local.get 6
    i32.load offset=248
    local.set 307
    local.get 307
    i32.load offset=4
    local.set 308
    local.get 306
    local.get 308
    i32.sub
    local.set 309
    local.get 6
    i32.load offset=244
    local.set 310
    local.get 309
    local.get 310
    i32.add
    local.set 311
    local.get 6
    i32.load offset=256
    local.set 312
    local.get 312
    local.get 311
    i32.store offset=4
    local.get 6
    i32.load offset=256
    local.set 313
    local.get 313
    i32.load offset=4
    local.set 314
    i32.const 25
    local.set 315
    local.get 314
    local.get 315
    i32.shr_u
    local.set 316
    local.get 6
    local.get 316
    i32.store offset=244
    local.get 6
    i32.load offset=256
    local.set 317
    local.get 317
    i32.load offset=4
    local.set 318
    i32.const 33554431
    local.set 319
    local.get 318
    local.get 319
    i32.and
    local.set 320
    local.get 317
    local.get 320
    i32.store offset=4
    local.get 6
    i32.load offset=252
    local.set 321
    local.get 321
    i32.load offset=8
    local.set 322
    i32.const 134217726
    local.set 323
    local.get 322
    local.get 323
    i32.add
    local.set 324
    local.get 6
    i32.load offset=248
    local.set 325
    local.get 325
    i32.load offset=8
    local.set 326
    local.get 324
    local.get 326
    i32.sub
    local.set 327
    local.get 6
    i32.load offset=244
    local.set 328
    local.get 327
    local.get 328
    i32.add
    local.set 329
    local.get 6
    i32.load offset=256
    local.set 330
    local.get 330
    local.get 329
    i32.store offset=8
    local.get 6
    i32.load offset=256
    local.set 331
    local.get 331
    i32.load offset=8
    local.set 332
    i32.const 26
    local.set 333
    local.get 332
    local.get 333
    i32.shr_u
    local.set 334
    local.get 6
    local.get 334
    i32.store offset=244
    local.get 6
    i32.load offset=256
    local.set 335
    local.get 335
    i32.load offset=8
    local.set 336
    i32.const 67108863
    local.set 337
    local.get 336
    local.get 337
    i32.and
    local.set 338
    local.get 335
    local.get 338
    i32.store offset=8
    local.get 6
    i32.load offset=252
    local.set 339
    local.get 339
    i32.load offset=12
    local.set 340
    i32.const 67108862
    local.set 341
    local.get 340
    local.get 341
    i32.add
    local.set 342
    local.get 6
    i32.load offset=248
    local.set 343
    local.get 343
    i32.load offset=12
    local.set 344
    local.get 342
    local.get 344
    i32.sub
    local.set 345
    local.get 6
    i32.load offset=244
    local.set 346
    local.get 345
    local.get 346
    i32.add
    local.set 347
    local.get 6
    i32.load offset=256
    local.set 348
    local.get 348
    local.get 347
    i32.store offset=12
    local.get 6
    i32.load offset=256
    local.set 349
    local.get 349
    i32.load offset=12
    local.set 350
    i32.const 25
    local.set 351
    local.get 350
    local.get 351
    i32.shr_u
    local.set 352
    local.get 6
    local.get 352
    i32.store offset=244
    local.get 6
    i32.load offset=256
    local.set 353
    local.get 353
    i32.load offset=12
    local.set 354
    i32.const 33554431
    local.set 355
    local.get 354
    local.get 355
    i32.and
    local.set 356
    local.get 353
    local.get 356
    i32.store offset=12
    local.get 6
    i32.load offset=252
    local.set 357
    local.get 357
    i32.load offset=16
    local.set 358
    i32.const 134217726
    local.set 359
    local.get 358
    local.get 359
    i32.add
    local.set 360
    local.get 6
    i32.load offset=248
    local.set 361
    local.get 361
    i32.load offset=16
    local.set 362
    local.get 360
    local.get 362
    i32.sub
    local.set 363
    local.get 6
    i32.load offset=244
    local.set 364
    local.get 363
    local.get 364
    i32.add
    local.set 365
    local.get 6
    i32.load offset=256
    local.set 366
    local.get 366
    local.get 365
    i32.store offset=16
    local.get 6
    i32.load offset=252
    local.set 367
    local.get 367
    i32.load offset=20
    local.set 368
    i32.const 67108862
    local.set 369
    local.get 368
    local.get 369
    i32.add
    local.set 370
    local.get 6
    i32.load offset=248
    local.set 371
    local.get 371
    i32.load offset=20
    local.set 372
    local.get 370
    local.get 372
    i32.sub
    local.set 373
    local.get 6
    i32.load offset=256
    local.set 374
    local.get 374
    local.get 373
    i32.store offset=20
    local.get 6
    i32.load offset=252
    local.set 375
    local.get 375
    i32.load offset=24
    local.set 376
    i32.const 134217726
    local.set 377
    local.get 376
    local.get 377
    i32.add
    local.set 378
    local.get 6
    i32.load offset=248
    local.set 379
    local.get 379
    i32.load offset=24
    local.set 380
    local.get 378
    local.get 380
    i32.sub
    local.set 381
    local.get 6
    i32.load offset=256
    local.set 382
    local.get 382
    local.get 381
    i32.store offset=24
    local.get 6
    i32.load offset=252
    local.set 383
    local.get 383
    i32.load offset=28
    local.set 384
    i32.const 67108862
    local.set 385
    local.get 384
    local.get 385
    i32.add
    local.set 386
    local.get 6
    i32.load offset=248
    local.set 387
    local.get 387
    i32.load offset=28
    local.set 388
    local.get 386
    local.get 388
    i32.sub
    local.set 389
    local.get 6
    i32.load offset=256
    local.set 390
    local.get 390
    local.get 389
    i32.store offset=28
    local.get 6
    i32.load offset=252
    local.set 391
    local.get 391
    i32.load offset=32
    local.set 392
    i32.const 134217726
    local.set 393
    local.get 392
    local.get 393
    i32.add
    local.set 394
    local.get 6
    i32.load offset=248
    local.set 395
    local.get 395
    i32.load offset=32
    local.set 396
    local.get 394
    local.get 396
    i32.sub
    local.set 397
    local.get 6
    i32.load offset=256
    local.set 398
    local.get 398
    local.get 397
    i32.store offset=32
    local.get 6
    i32.load offset=252
    local.set 399
    local.get 399
    i32.load offset=36
    local.set 400
    i32.const 67108862
    local.set 401
    local.get 400
    local.get 401
    i32.add
    local.set 402
    local.get 6
    i32.load offset=248
    local.set 403
    local.get 403
    i32.load offset=36
    local.set 404
    local.get 402
    local.get 404
    i32.sub
    local.set 405
    local.get 6
    i32.load offset=256
    local.set 406
    local.get 406
    local.get 405
    i32.store offset=36
    local.get 6
    i32.load offset=156
    local.set 407
    i32.const 120
    local.set 408
    local.get 407
    local.get 408
    i32.add
    local.set 409
    local.get 6
    i32.load offset=152
    local.set 410
    i32.const 80
    local.set 411
    local.get 410
    local.get 411
    i32.add
    local.set 412
    local.get 7
    local.get 409
    local.get 412
    call $curve25519_mul
    local.get 6
    i32.load offset=160
    local.set 413
    i32.const 120
    local.set 414
    local.get 413
    local.get 414
    i32.add
    local.set 415
    local.get 6
    i32.load offset=156
    local.set 416
    i32.const 80
    local.set 417
    local.get 416
    local.get 417
    i32.add
    local.set 418
    local.get 6
    i32.load offset=156
    local.set 419
    i32.const 80
    local.set 420
    local.get 419
    local.get 420
    i32.add
    local.set 421
    local.get 6
    local.get 415
    i32.store offset=228
    local.get 6
    local.get 418
    i32.store offset=224
    local.get 6
    local.get 421
    i32.store offset=220
    local.get 6
    i32.load offset=224
    local.set 422
    local.get 422
    i32.load
    local.set 423
    local.get 6
    i32.load offset=220
    local.set 424
    local.get 424
    i32.load
    local.set 425
    local.get 423
    local.get 425
    i32.add
    local.set 426
    local.get 6
    i32.load offset=228
    local.set 427
    local.get 427
    local.get 426
    i32.store
    local.get 6
    i32.load offset=228
    local.set 428
    local.get 428
    i32.load
    local.set 429
    i32.const 26
    local.set 430
    local.get 429
    local.get 430
    i32.shr_u
    local.set 431
    local.get 6
    local.get 431
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 432
    local.get 432
    i32.load
    local.set 433
    i32.const 67108863
    local.set 434
    local.get 433
    local.get 434
    i32.and
    local.set 435
    local.get 432
    local.get 435
    i32.store
    local.get 6
    i32.load offset=224
    local.set 436
    local.get 436
    i32.load offset=4
    local.set 437
    local.get 6
    i32.load offset=220
    local.set 438
    local.get 438
    i32.load offset=4
    local.set 439
    local.get 437
    local.get 439
    i32.add
    local.set 440
    local.get 6
    i32.load offset=216
    local.set 441
    local.get 440
    local.get 441
    i32.add
    local.set 442
    local.get 6
    i32.load offset=228
    local.set 443
    local.get 443
    local.get 442
    i32.store offset=4
    local.get 6
    i32.load offset=228
    local.set 444
    local.get 444
    i32.load offset=4
    local.set 445
    i32.const 25
    local.set 446
    local.get 445
    local.get 446
    i32.shr_u
    local.set 447
    local.get 6
    local.get 447
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 448
    local.get 448
    i32.load offset=4
    local.set 449
    i32.const 33554431
    local.set 450
    local.get 449
    local.get 450
    i32.and
    local.set 451
    local.get 448
    local.get 451
    i32.store offset=4
    local.get 6
    i32.load offset=224
    local.set 452
    local.get 452
    i32.load offset=8
    local.set 453
    local.get 6
    i32.load offset=220
    local.set 454
    local.get 454
    i32.load offset=8
    local.set 455
    local.get 453
    local.get 455
    i32.add
    local.set 456
    local.get 6
    i32.load offset=216
    local.set 457
    local.get 456
    local.get 457
    i32.add
    local.set 458
    local.get 6
    i32.load offset=228
    local.set 459
    local.get 459
    local.get 458
    i32.store offset=8
    local.get 6
    i32.load offset=228
    local.set 460
    local.get 460
    i32.load offset=8
    local.set 461
    i32.const 26
    local.set 462
    local.get 461
    local.get 462
    i32.shr_u
    local.set 463
    local.get 6
    local.get 463
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 464
    local.get 464
    i32.load offset=8
    local.set 465
    i32.const 67108863
    local.set 466
    local.get 465
    local.get 466
    i32.and
    local.set 467
    local.get 464
    local.get 467
    i32.store offset=8
    local.get 6
    i32.load offset=224
    local.set 468
    local.get 468
    i32.load offset=12
    local.set 469
    local.get 6
    i32.load offset=220
    local.set 470
    local.get 470
    i32.load offset=12
    local.set 471
    local.get 469
    local.get 471
    i32.add
    local.set 472
    local.get 6
    i32.load offset=216
    local.set 473
    local.get 472
    local.get 473
    i32.add
    local.set 474
    local.get 6
    i32.load offset=228
    local.set 475
    local.get 475
    local.get 474
    i32.store offset=12
    local.get 6
    i32.load offset=228
    local.set 476
    local.get 476
    i32.load offset=12
    local.set 477
    i32.const 25
    local.set 478
    local.get 477
    local.get 478
    i32.shr_u
    local.set 479
    local.get 6
    local.get 479
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 480
    local.get 480
    i32.load offset=12
    local.set 481
    i32.const 33554431
    local.set 482
    local.get 481
    local.get 482
    i32.and
    local.set 483
    local.get 480
    local.get 483
    i32.store offset=12
    local.get 6
    i32.load offset=224
    local.set 484
    local.get 484
    i32.load offset=16
    local.set 485
    local.get 6
    i32.load offset=220
    local.set 486
    local.get 486
    i32.load offset=16
    local.set 487
    local.get 485
    local.get 487
    i32.add
    local.set 488
    local.get 6
    i32.load offset=216
    local.set 489
    local.get 488
    local.get 489
    i32.add
    local.set 490
    local.get 6
    i32.load offset=228
    local.set 491
    local.get 491
    local.get 490
    i32.store offset=16
    local.get 6
    i32.load offset=228
    local.set 492
    local.get 492
    i32.load offset=16
    local.set 493
    i32.const 26
    local.set 494
    local.get 493
    local.get 494
    i32.shr_u
    local.set 495
    local.get 6
    local.get 495
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 496
    local.get 496
    i32.load offset=16
    local.set 497
    i32.const 67108863
    local.set 498
    local.get 497
    local.get 498
    i32.and
    local.set 499
    local.get 496
    local.get 499
    i32.store offset=16
    local.get 6
    i32.load offset=224
    local.set 500
    local.get 500
    i32.load offset=20
    local.set 501
    local.get 6
    i32.load offset=220
    local.set 502
    local.get 502
    i32.load offset=20
    local.set 503
    local.get 501
    local.get 503
    i32.add
    local.set 504
    local.get 6
    i32.load offset=216
    local.set 505
    local.get 504
    local.get 505
    i32.add
    local.set 506
    local.get 6
    i32.load offset=228
    local.set 507
    local.get 507
    local.get 506
    i32.store offset=20
    local.get 6
    i32.load offset=228
    local.set 508
    local.get 508
    i32.load offset=20
    local.set 509
    i32.const 25
    local.set 510
    local.get 509
    local.get 510
    i32.shr_u
    local.set 511
    local.get 6
    local.get 511
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 512
    local.get 512
    i32.load offset=20
    local.set 513
    i32.const 33554431
    local.set 514
    local.get 513
    local.get 514
    i32.and
    local.set 515
    local.get 512
    local.get 515
    i32.store offset=20
    local.get 6
    i32.load offset=224
    local.set 516
    local.get 516
    i32.load offset=24
    local.set 517
    local.get 6
    i32.load offset=220
    local.set 518
    local.get 518
    i32.load offset=24
    local.set 519
    local.get 517
    local.get 519
    i32.add
    local.set 520
    local.get 6
    i32.load offset=216
    local.set 521
    local.get 520
    local.get 521
    i32.add
    local.set 522
    local.get 6
    i32.load offset=228
    local.set 523
    local.get 523
    local.get 522
    i32.store offset=24
    local.get 6
    i32.load offset=228
    local.set 524
    local.get 524
    i32.load offset=24
    local.set 525
    i32.const 26
    local.set 526
    local.get 525
    local.get 526
    i32.shr_u
    local.set 527
    local.get 6
    local.get 527
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 528
    local.get 528
    i32.load offset=24
    local.set 529
    i32.const 67108863
    local.set 530
    local.get 529
    local.get 530
    i32.and
    local.set 531
    local.get 528
    local.get 531
    i32.store offset=24
    local.get 6
    i32.load offset=224
    local.set 532
    local.get 532
    i32.load offset=28
    local.set 533
    local.get 6
    i32.load offset=220
    local.set 534
    local.get 534
    i32.load offset=28
    local.set 535
    local.get 533
    local.get 535
    i32.add
    local.set 536
    local.get 6
    i32.load offset=216
    local.set 537
    local.get 536
    local.get 537
    i32.add
    local.set 538
    local.get 6
    i32.load offset=228
    local.set 539
    local.get 539
    local.get 538
    i32.store offset=28
    local.get 6
    i32.load offset=228
    local.set 540
    local.get 540
    i32.load offset=28
    local.set 541
    i32.const 25
    local.set 542
    local.get 541
    local.get 542
    i32.shr_u
    local.set 543
    local.get 6
    local.get 543
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 544
    local.get 544
    i32.load offset=28
    local.set 545
    i32.const 33554431
    local.set 546
    local.get 545
    local.get 546
    i32.and
    local.set 547
    local.get 544
    local.get 547
    i32.store offset=28
    local.get 6
    i32.load offset=224
    local.set 548
    local.get 548
    i32.load offset=32
    local.set 549
    local.get 6
    i32.load offset=220
    local.set 550
    local.get 550
    i32.load offset=32
    local.set 551
    local.get 549
    local.get 551
    i32.add
    local.set 552
    local.get 6
    i32.load offset=216
    local.set 553
    local.get 552
    local.get 553
    i32.add
    local.set 554
    local.get 6
    i32.load offset=228
    local.set 555
    local.get 555
    local.get 554
    i32.store offset=32
    local.get 6
    i32.load offset=228
    local.set 556
    local.get 556
    i32.load offset=32
    local.set 557
    i32.const 26
    local.set 558
    local.get 557
    local.get 558
    i32.shr_u
    local.set 559
    local.get 6
    local.get 559
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 560
    local.get 560
    i32.load offset=32
    local.set 561
    i32.const 67108863
    local.set 562
    local.get 561
    local.get 562
    i32.and
    local.set 563
    local.get 560
    local.get 563
    i32.store offset=32
    local.get 6
    i32.load offset=224
    local.set 564
    local.get 564
    i32.load offset=36
    local.set 565
    local.get 6
    i32.load offset=220
    local.set 566
    local.get 566
    i32.load offset=36
    local.set 567
    local.get 565
    local.get 567
    i32.add
    local.set 568
    local.get 6
    i32.load offset=216
    local.set 569
    local.get 568
    local.get 569
    i32.add
    local.set 570
    local.get 6
    i32.load offset=228
    local.set 571
    local.get 571
    local.get 570
    i32.store offset=36
    local.get 6
    i32.load offset=228
    local.set 572
    local.get 572
    i32.load offset=36
    local.set 573
    i32.const 25
    local.set 574
    local.get 573
    local.get 574
    i32.shr_u
    local.set 575
    local.get 6
    local.get 575
    i32.store offset=216
    local.get 6
    i32.load offset=228
    local.set 576
    local.get 576
    i32.load offset=36
    local.set 577
    i32.const 33554431
    local.set 578
    local.get 577
    local.get 578
    i32.and
    local.set 579
    local.get 576
    local.get 579
    i32.store offset=36
    local.get 6
    i32.load offset=216
    local.set 580
    i32.const 19
    local.set 581
    local.get 580
    local.get 581
    i32.mul
    local.set 582
    local.get 6
    i32.load offset=228
    local.set 583
    local.get 583
    i32.load
    local.set 584
    local.get 584
    local.get 582
    i32.add
    local.set 585
    local.get 583
    local.get 585
    i32.store
    local.get 6
    i32.load offset=160
    local.set 586
    i32.const 80
    local.set 587
    local.get 586
    local.get 587
    i32.add
    local.set 588
    local.get 6
    i32.load offset=160
    local.set 589
    i32.const 120
    local.set 590
    local.get 589
    local.get 590
    i32.add
    local.set 591
    local.get 6
    local.get 588
    i32.store offset=212
    local.get 6
    local.get 591
    i32.store offset=208
    local.get 6
    i32.load offset=208
    local.set 592
    local.get 592
    i32.load
    local.set 593
    local.get 6
    i32.load offset=212
    local.set 594
    local.get 594
    local.get 593
    i32.store
    local.get 6
    i32.load offset=208
    local.set 595
    local.get 595
    i32.load offset=4
    local.set 596
    local.get 6
    i32.load offset=212
    local.set 597
    local.get 597
    local.get 596
    i32.store offset=4
    local.get 6
    i32.load offset=208
    local.set 598
    local.get 598
    i32.load offset=8
    local.set 599
    local.get 6
    i32.load offset=212
    local.set 600
    local.get 600
    local.get 599
    i32.store offset=8
    local.get 6
    i32.load offset=208
    local.set 601
    local.get 601
    i32.load offset=12
    local.set 602
    local.get 6
    i32.load offset=212
    local.set 603
    local.get 603
    local.get 602
    i32.store offset=12
    local.get 6
    i32.load offset=208
    local.set 604
    local.get 604
    i32.load offset=16
    local.set 605
    local.get 6
    i32.load offset=212
    local.set 606
    local.get 606
    local.get 605
    i32.store offset=16
    local.get 6
    i32.load offset=208
    local.set 607
    local.get 607
    i32.load offset=20
    local.set 608
    local.get 6
    i32.load offset=212
    local.set 609
    local.get 609
    local.get 608
    i32.store offset=20
    local.get 6
    i32.load offset=208
    local.set 610
    local.get 610
    i32.load offset=24
    local.set 611
    local.get 6
    i32.load offset=212
    local.set 612
    local.get 612
    local.get 611
    i32.store offset=24
    local.get 6
    i32.load offset=208
    local.set 613
    local.get 613
    i32.load offset=28
    local.set 614
    local.get 6
    i32.load offset=212
    local.set 615
    local.get 615
    local.get 614
    i32.store offset=28
    local.get 6
    i32.load offset=208
    local.set 616
    local.get 616
    i32.load offset=32
    local.set 617
    local.get 6
    i32.load offset=212
    local.set 618
    local.get 618
    local.get 617
    i32.store offset=32
    local.get 6
    i32.load offset=208
    local.set 619
    local.get 619
    i32.load offset=36
    local.set 620
    local.get 6
    i32.load offset=212
    local.set 621
    local.get 621
    local.get 620
    i32.store offset=36
    local.get 6
    i32.load offset=140
    local.set 622
    local.get 6
    i32.load8_u offset=151
    local.set 623
    i32.const 255
    local.set 624
    local.get 623
    local.get 624
    i32.and
    local.set 625
    i32.const 2
    local.set 626
    local.get 625
    local.get 626
    i32.add
    local.set 627
    i32.const 40
    local.set 628
    local.get 627
    local.get 628
    i32.mul
    local.set 629
    local.get 622
    local.get 629
    i32.add
    local.set 630
    local.get 6
    i32.load offset=140
    local.set 631
    local.get 6
    i32.load8_u offset=151
    local.set 632
    i32.const 255
    local.set 633
    local.get 632
    local.get 633
    i32.and
    local.set 634
    i32.const 2
    local.set 635
    local.get 634
    local.get 635
    i32.add
    local.set 636
    i32.const 40
    local.set 637
    local.get 636
    local.get 637
    i32.mul
    local.set 638
    local.get 631
    local.get 638
    i32.add
    local.set 639
    local.get 6
    local.get 630
    i32.store offset=204
    local.get 6
    local.get 639
    i32.store offset=200
    local.get 6
    local.get 7
    i32.store offset=196
    local.get 6
    i32.load offset=200
    local.set 640
    local.get 640
    i32.load
    local.set 641
    local.get 6
    i32.load offset=196
    local.set 642
    local.get 642
    i32.load
    local.set 643
    local.get 641
    local.get 643
    i32.add
    local.set 644
    local.get 6
    i32.load offset=204
    local.set 645
    local.get 645
    local.get 644
    i32.store
    local.get 6
    i32.load offset=200
    local.set 646
    local.get 646
    i32.load offset=4
    local.set 647
    local.get 6
    i32.load offset=196
    local.set 648
    local.get 648
    i32.load offset=4
    local.set 649
    local.get 647
    local.get 649
    i32.add
    local.set 650
    local.get 6
    i32.load offset=204
    local.set 651
    local.get 651
    local.get 650
    i32.store offset=4
    local.get 6
    i32.load offset=200
    local.set 652
    local.get 652
    i32.load offset=8
    local.set 653
    local.get 6
    i32.load offset=196
    local.set 654
    local.get 654
    i32.load offset=8
    local.set 655
    local.get 653
    local.get 655
    i32.add
    local.set 656
    local.get 6
    i32.load offset=204
    local.set 657
    local.get 657
    local.get 656
    i32.store offset=8
    local.get 6
    i32.load offset=200
    local.set 658
    local.get 658
    i32.load offset=12
    local.set 659
    local.get 6
    i32.load offset=196
    local.set 660
    local.get 660
    i32.load offset=12
    local.set 661
    local.get 659
    local.get 661
    i32.add
    local.set 662
    local.get 6
    i32.load offset=204
    local.set 663
    local.get 663
    local.get 662
    i32.store offset=12
    local.get 6
    i32.load offset=200
    local.set 664
    local.get 664
    i32.load offset=16
    local.set 665
    local.get 6
    i32.load offset=196
    local.set 666
    local.get 666
    i32.load offset=16
    local.set 667
    local.get 665
    local.get 667
    i32.add
    local.set 668
    local.get 6
    i32.load offset=204
    local.set 669
    local.get 669
    local.get 668
    i32.store offset=16
    local.get 6
    i32.load offset=200
    local.set 670
    local.get 670
    i32.load offset=20
    local.set 671
    local.get 6
    i32.load offset=196
    local.set 672
    local.get 672
    i32.load offset=20
    local.set 673
    local.get 671
    local.get 673
    i32.add
    local.set 674
    local.get 6
    i32.load offset=204
    local.set 675
    local.get 675
    local.get 674
    i32.store offset=20
    local.get 6
    i32.load offset=200
    local.set 676
    local.get 676
    i32.load offset=24
    local.set 677
    local.get 6
    i32.load offset=196
    local.set 678
    local.get 678
    i32.load offset=24
    local.set 679
    local.get 677
    local.get 679
    i32.add
    local.set 680
    local.get 6
    i32.load offset=204
    local.set 681
    local.get 681
    local.get 680
    i32.store offset=24
    local.get 6
    i32.load offset=200
    local.set 682
    local.get 682
    i32.load offset=28
    local.set 683
    local.get 6
    i32.load offset=196
    local.set 684
    local.get 684
    i32.load offset=28
    local.set 685
    local.get 683
    local.get 685
    i32.add
    local.set 686
    local.get 6
    i32.load offset=204
    local.set 687
    local.get 687
    local.get 686
    i32.store offset=28
    local.get 6
    i32.load offset=200
    local.set 688
    local.get 688
    i32.load offset=32
    local.set 689
    local.get 6
    i32.load offset=196
    local.set 690
    local.get 690
    i32.load offset=32
    local.set 691
    local.get 689
    local.get 691
    i32.add
    local.set 692
    local.get 6
    i32.load offset=204
    local.set 693
    local.get 693
    local.get 692
    i32.store offset=32
    local.get 6
    i32.load offset=200
    local.set 694
    local.get 694
    i32.load offset=36
    local.set 695
    local.get 6
    i32.load offset=196
    local.set 696
    local.get 696
    i32.load offset=36
    local.set 697
    local.get 695
    local.get 697
    i32.add
    local.set 698
    local.get 6
    i32.load offset=204
    local.set 699
    local.get 699
    local.get 698
    i32.store offset=36
    local.get 6
    i32.load offset=140
    local.set 700
    local.get 6
    i32.load8_u offset=151
    local.set 701
    i32.const 255
    local.set 702
    local.get 701
    local.get 702
    i32.and
    local.set 703
    i32.const 1
    local.set 704
    local.get 703
    local.get 704
    i32.xor
    local.set 705
    i32.const 2
    local.set 706
    local.get 705
    local.get 706
    i32.add
    local.set 707
    i32.const 40
    local.set 708
    local.get 707
    local.get 708
    i32.mul
    local.set 709
    local.get 700
    local.get 709
    i32.add
    local.set 710
    local.get 6
    i32.load offset=140
    local.set 711
    local.get 6
    i32.load8_u offset=151
    local.set 712
    i32.const 255
    local.set 713
    local.get 712
    local.get 713
    i32.and
    local.set 714
    i32.const 1
    local.set 715
    local.get 714
    local.get 715
    i32.xor
    local.set 716
    i32.const 2
    local.set 717
    local.get 716
    local.get 717
    i32.add
    local.set 718
    i32.const 40
    local.set 719
    local.get 718
    local.get 719
    i32.mul
    local.set 720
    local.get 711
    local.get 720
    i32.add
    local.set 721
    local.get 6
    local.get 710
    i32.store offset=192
    local.get 6
    local.get 721
    i32.store offset=188
    local.get 6
    local.get 7
    i32.store offset=184
    local.get 6
    i32.load offset=188
    local.set 722
    local.get 722
    i32.load
    local.set 723
    i32.const 134217690
    local.set 724
    local.get 723
    local.get 724
    i32.add
    local.set 725
    local.get 6
    i32.load offset=184
    local.set 726
    local.get 726
    i32.load
    local.set 727
    local.get 725
    local.get 727
    i32.sub
    local.set 728
    local.get 6
    i32.load offset=192
    local.set 729
    local.get 729
    local.get 728
    i32.store
    local.get 6
    i32.load offset=192
    local.set 730
    local.get 730
    i32.load
    local.set 731
    i32.const 26
    local.set 732
    local.get 731
    local.get 732
    i32.shr_u
    local.set 733
    local.get 6
    local.get 733
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 734
    local.get 734
    i32.load
    local.set 735
    i32.const 67108863
    local.set 736
    local.get 735
    local.get 736
    i32.and
    local.set 737
    local.get 734
    local.get 737
    i32.store
    local.get 6
    i32.load offset=188
    local.set 738
    local.get 738
    i32.load offset=4
    local.set 739
    i32.const 67108862
    local.set 740
    local.get 739
    local.get 740
    i32.add
    local.set 741
    local.get 6
    i32.load offset=184
    local.set 742
    local.get 742
    i32.load offset=4
    local.set 743
    local.get 741
    local.get 743
    i32.sub
    local.set 744
    local.get 6
    i32.load offset=180
    local.set 745
    local.get 744
    local.get 745
    i32.add
    local.set 746
    local.get 6
    i32.load offset=192
    local.set 747
    local.get 747
    local.get 746
    i32.store offset=4
    local.get 6
    i32.load offset=192
    local.set 748
    local.get 748
    i32.load offset=4
    local.set 749
    i32.const 25
    local.set 750
    local.get 749
    local.get 750
    i32.shr_u
    local.set 751
    local.get 6
    local.get 751
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 752
    local.get 752
    i32.load offset=4
    local.set 753
    i32.const 33554431
    local.set 754
    local.get 753
    local.get 754
    i32.and
    local.set 755
    local.get 752
    local.get 755
    i32.store offset=4
    local.get 6
    i32.load offset=188
    local.set 756
    local.get 756
    i32.load offset=8
    local.set 757
    i32.const 134217726
    local.set 758
    local.get 757
    local.get 758
    i32.add
    local.set 759
    local.get 6
    i32.load offset=184
    local.set 760
    local.get 760
    i32.load offset=8
    local.set 761
    local.get 759
    local.get 761
    i32.sub
    local.set 762
    local.get 6
    i32.load offset=180
    local.set 763
    local.get 762
    local.get 763
    i32.add
    local.set 764
    local.get 6
    i32.load offset=192
    local.set 765
    local.get 765
    local.get 764
    i32.store offset=8
    local.get 6
    i32.load offset=192
    local.set 766
    local.get 766
    i32.load offset=8
    local.set 767
    i32.const 26
    local.set 768
    local.get 767
    local.get 768
    i32.shr_u
    local.set 769
    local.get 6
    local.get 769
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 770
    local.get 770
    i32.load offset=8
    local.set 771
    i32.const 67108863
    local.set 772
    local.get 771
    local.get 772
    i32.and
    local.set 773
    local.get 770
    local.get 773
    i32.store offset=8
    local.get 6
    i32.load offset=188
    local.set 774
    local.get 774
    i32.load offset=12
    local.set 775
    i32.const 67108862
    local.set 776
    local.get 775
    local.get 776
    i32.add
    local.set 777
    local.get 6
    i32.load offset=184
    local.set 778
    local.get 778
    i32.load offset=12
    local.set 779
    local.get 777
    local.get 779
    i32.sub
    local.set 780
    local.get 6
    i32.load offset=180
    local.set 781
    local.get 780
    local.get 781
    i32.add
    local.set 782
    local.get 6
    i32.load offset=192
    local.set 783
    local.get 783
    local.get 782
    i32.store offset=12
    local.get 6
    i32.load offset=192
    local.set 784
    local.get 784
    i32.load offset=12
    local.set 785
    i32.const 25
    local.set 786
    local.get 785
    local.get 786
    i32.shr_u
    local.set 787
    local.get 6
    local.get 787
    i32.store offset=180
    local.get 6
    i32.load offset=192
    local.set 788
    local.get 788
    i32.load offset=12
    local.set 789
    i32.const 33554431
    local.set 790
    local.get 789
    local.get 790
    i32.and
    local.set 791
    local.get 788
    local.get 791
    i32.store offset=12
    local.get 6
    i32.load offset=188
    local.set 792
    local.get 792
    i32.load offset=16
    local.set 793
    i32.const 134217726
    local.set 794
    local.get 793
    local.get 794
    i32.add
    local.set 795
    local.get 6
    i32.load offset=184
    local.set 796
    local.get 796
    i32.load offset=16
    local.set 797
    local.get 795
    local.get 797
    i32.sub
    local.set 798
    local.get 6
    i32.load offset=180
    local.set 799
    local.get 798
    local.get 799
    i32.add
    local.set 800
    local.get 6
    i32.load offset=192
    local.set 801
    local.get 801
    local.get 800
    i32.store offset=16
    local.get 6
    i32.load offset=188
    local.set 802
    local.get 802
    i32.load offset=20
    local.set 803
    i32.const 67108862
    local.set 804
    local.get 803
    local.get 804
    i32.add
    local.set 805
    local.get 6
    i32.load offset=184
    local.set 806
    local.get 806
    i32.load offset=20
    local.set 807
    local.get 805
    local.get 807
    i32.sub
    local.set 808
    local.get 6
    i32.load offset=192
    local.set 809
    local.get 809
    local.get 808
    i32.store offset=20
    local.get 6
    i32.load offset=188
    local.set 810
    local.get 810
    i32.load offset=24
    local.set 811
    i32.const 134217726
    local.set 812
    local.get 811
    local.get 812
    i32.add
    local.set 813
    local.get 6
    i32.load offset=184
    local.set 814
    local.get 814
    i32.load offset=24
    local.set 815
    local.get 813
    local.get 815
    i32.sub
    local.set 816
    local.get 6
    i32.load offset=192
    local.set 817
    local.get 817
    local.get 816
    i32.store offset=24
    local.get 6
    i32.load offset=188
    local.set 818
    local.get 818
    i32.load offset=28
    local.set 819
    i32.const 67108862
    local.set 820
    local.get 819
    local.get 820
    i32.add
    local.set 821
    local.get 6
    i32.load offset=184
    local.set 822
    local.get 822
    i32.load offset=28
    local.set 823
    local.get 821
    local.get 823
    i32.sub
    local.set 824
    local.get 6
    i32.load offset=192
    local.set 825
    local.get 825
    local.get 824
    i32.store offset=28
    local.get 6
    i32.load offset=188
    local.set 826
    local.get 826
    i32.load offset=32
    local.set 827
    i32.const 134217726
    local.set 828
    local.get 827
    local.get 828
    i32.add
    local.set 829
    local.get 6
    i32.load offset=184
    local.set 830
    local.get 830
    i32.load offset=32
    local.set 831
    local.get 829
    local.get 831
    i32.sub
    local.set 832
    local.get 6
    i32.load offset=192
    local.set 833
    local.get 833
    local.get 832
    i32.store offset=32
    local.get 6
    i32.load offset=188
    local.set 834
    local.get 834
    i32.load offset=36
    local.set 835
    i32.const 67108862
    local.set 836
    local.get 835
    local.get 836
    i32.add
    local.set 837
    local.get 6
    i32.load offset=184
    local.set 838
    local.get 838
    i32.load offset=36
    local.set 839
    local.get 837
    local.get 839
    i32.sub
    local.set 840
    local.get 6
    i32.load offset=192
    local.set 841
    local.get 841
    local.get 840
    i32.store offset=36
    i32.const 272
    local.set 842
    local.get 6
    local.get 842
    i32.add
    local.set 843
    local.get 843
    global.set 0
    return)
  (func $curve25519_recip (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 144
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 96
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    local.get 4
    local.set 8
    i32.const 5
    local.set 9
    i32.const 48
    local.set 10
    local.get 4
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.set 12
    i32.const 1
    local.set 13
    i32.const 2
    local.set 14
    local.get 4
    local.get 0
    i32.store offset=140
    local.get 4
    local.get 1
    i32.store offset=136
    local.get 4
    i32.load offset=136
    local.set 15
    local.get 7
    local.get 15
    local.get 13
    call $curve25519_square_times
    local.get 12
    local.get 7
    local.get 14
    call $curve25519_square_times
    local.get 4
    i32.load offset=136
    local.set 16
    local.get 8
    local.get 12
    local.get 16
    call $curve25519_mul
    local.get 7
    local.get 8
    local.get 7
    call $curve25519_mul
    local.get 12
    local.get 7
    local.get 13
    call $curve25519_square_times
    local.get 8
    local.get 12
    local.get 8
    call $curve25519_mul
    local.get 8
    call $curve25519_pow_two5mtwo0_two250mtwo0
    local.get 8
    local.get 8
    local.get 9
    call $curve25519_square_times
    local.get 4
    i32.load offset=140
    local.set 17
    local.get 17
    local.get 8
    local.get 7
    call $curve25519_mul
    i32.const 144
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set 0
    return)
  (func $_main (type 7)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 0
    i32.const 64
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    call $eth2_blockDataSize
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=60
    local.get 2
    i32.load offset=60
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      i32.const 5824
      local.set 5
      local.get 5
      local.set 6
      i32.const 20000
      local.set 7
      i64.const 64
      local.set 34
      i64.const 32
      local.set 35
      i32.const 0
      local.set 8
      local.get 2
      i32.load offset=60
      local.set 9
      local.get 9
      call $malloc
      local.set 10
      local.get 2
      local.get 10
      i32.store offset=56
      local.get 2
      i32.load offset=56
      local.set 11
      local.get 2
      i32.load offset=60
      local.set 12
      local.get 11
      local.get 8
      local.get 12
      call $eth2_blockDataCopy
      local.get 2
      local.get 35
      i64.store offset=48
      local.get 2
      local.get 34
      i64.store offset=40
      local.get 2
      i32.load offset=60
      local.set 13
      local.get 13
      local.set 14
      local.get 14
      i64.extend_i32_u
      local.set 36
      local.get 2
      i64.load offset=48
      local.set 37
      local.get 36
      local.get 37
      i64.sub
      local.set 38
      local.get 2
      i64.load offset=40
      local.set 39
      local.get 38
      local.get 39
      i64.sub
      local.set 40
      local.get 2
      local.get 40
      i64.store offset=32
      local.get 2
      i32.load offset=56
      local.set 15
      local.get 2
      local.get 15
      i32.store offset=28
      local.get 2
      i32.load offset=56
      local.set 16
      local.get 2
      i64.load offset=48
      local.set 41
      local.get 41
      i32.wrap_i64
      local.set 17
      local.get 16
      local.get 17
      i32.add
      local.set 18
      local.get 2
      local.get 18
      i32.store offset=24
      local.get 2
      i32.load offset=56
      local.set 19
      local.get 2
      i64.load offset=48
      local.set 42
      local.get 42
      i32.wrap_i64
      local.set 20
      local.get 19
      local.get 20
      i32.add
      local.set 21
      local.get 2
      i64.load offset=40
      local.set 43
      local.get 43
      i32.wrap_i64
      local.set 22
      local.get 21
      local.get 22
      i32.add
      local.set 23
      local.get 2
      local.get 23
      i32.store offset=20
      local.get 7
      call $malloc
      local.set 24
      local.get 2
      local.get 24
      i32.store offset=16
      local.get 2
      i32.load offset=20
      local.set 25
      local.get 2
      i64.load offset=32
      local.set 44
      local.get 44
      i32.wrap_i64
      local.set 26
      local.get 2
      i32.load offset=28
      local.set 27
      local.get 2
      i32.load offset=24
      local.set 28
      local.get 25
      local.get 26
      local.get 27
      local.get 28
      call $ed25519_sign_open
      local.set 29
      local.get 2
      local.get 29
      i32.store offset=4
      local.get 2
      i32.load offset=4
      local.set 30
      i32.const 0
      local.set 31
      local.get 31
      local.get 30
      i32.store offset=5824
      local.get 6
      call $eth2_savePostStateRoot
    end
    i32.const 64
    local.set 32
    local.get 2
    local.get 32
    i32.add
    local.set 33
    local.get 33
    global.set 0
    return)
  (func $curve25519_square_times (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 176
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    local.get 5
    local.get 0
    i32.store offset=172
    local.get 5
    local.get 1
    i32.store offset=168
    local.get 5
    local.get 2
    i32.store offset=164
    local.get 5
    i32.load offset=168
    local.set 6
    local.get 6
    i32.load
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=160
    local.get 5
    i32.load offset=168
    local.set 8
    local.get 8
    i32.load offset=4
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=156
    local.get 5
    i32.load offset=168
    local.set 10
    local.get 10
    i32.load offset=8
    local.set 11
    local.get 5
    local.get 11
    i32.store offset=152
    local.get 5
    i32.load offset=168
    local.set 12
    local.get 12
    i32.load offset=12
    local.set 13
    local.get 5
    local.get 13
    i32.store offset=148
    local.get 5
    i32.load offset=168
    local.set 14
    local.get 14
    i32.load offset=16
    local.set 15
    local.get 5
    local.get 15
    i32.store offset=144
    local.get 5
    i32.load offset=168
    local.set 16
    local.get 16
    i32.load offset=20
    local.set 17
    local.get 5
    local.get 17
    i32.store offset=140
    local.get 5
    i32.load offset=168
    local.set 18
    local.get 18
    i32.load offset=24
    local.set 19
    local.get 5
    local.get 19
    i32.store offset=136
    local.get 5
    i32.load offset=168
    local.set 20
    local.get 20
    i32.load offset=28
    local.set 21
    local.get 5
    local.get 21
    i32.store offset=132
    local.get 5
    i32.load offset=168
    local.set 22
    local.get 22
    i32.load offset=32
    local.set 23
    local.get 5
    local.get 23
    i32.store offset=128
    local.get 5
    i32.load offset=168
    local.set 24
    local.get 24
    i32.load offset=36
    local.set 25
    local.get 5
    local.get 25
    i32.store offset=124
    loop  ;; label = @1
      local.get 5
      i32.load offset=160
      local.set 26
      local.get 26
      local.set 27
      local.get 27
      i64.extend_i32_u
      local.set 379
      local.get 5
      i32.load offset=160
      local.set 28
      local.get 28
      local.set 29
      local.get 29
      i64.extend_i32_u
      local.set 380
      local.get 379
      local.get 380
      i64.mul
      local.set 381
      local.get 5
      local.get 381
      i64.store offset=96
      local.get 5
      i32.load offset=160
      local.set 30
      i32.const 1
      local.set 31
      local.get 30
      local.get 31
      i32.shl
      local.set 32
      local.get 5
      local.get 32
      i32.store offset=160
      local.get 5
      i32.load offset=160
      local.set 33
      local.get 33
      local.set 34
      local.get 34
      i64.extend_i32_u
      local.set 382
      local.get 5
      i32.load offset=156
      local.set 35
      local.get 35
      local.set 36
      local.get 36
      i64.extend_i32_u
      local.set 383
      local.get 382
      local.get 383
      i64.mul
      local.set 384
      local.get 5
      local.get 384
      i64.store offset=88
      local.get 5
      i32.load offset=160
      local.set 37
      local.get 37
      local.set 38
      local.get 38
      i64.extend_i32_u
      local.set 385
      local.get 5
      i32.load offset=152
      local.set 39
      local.get 39
      local.set 40
      local.get 40
      i64.extend_i32_u
      local.set 386
      local.get 385
      local.get 386
      i64.mul
      local.set 387
      local.get 5
      i32.load offset=156
      local.set 41
      local.get 41
      local.set 42
      local.get 42
      i64.extend_i32_u
      local.set 388
      local.get 5
      i32.load offset=156
      local.set 43
      i32.const 1
      local.set 44
      local.get 43
      local.get 44
      i32.shl
      local.set 45
      local.get 45
      local.set 46
      local.get 46
      i64.extend_i32_u
      local.set 389
      local.get 388
      local.get 389
      i64.mul
      local.set 390
      local.get 387
      local.get 390
      i64.add
      local.set 391
      local.get 5
      local.get 391
      i64.store offset=80
      local.get 5
      i32.load offset=156
      local.set 47
      i32.const 1
      local.set 48
      local.get 47
      local.get 48
      i32.shl
      local.set 49
      local.get 5
      local.get 49
      i32.store offset=156
      local.get 5
      i32.load offset=160
      local.set 50
      local.get 50
      local.set 51
      local.get 51
      i64.extend_i32_u
      local.set 392
      local.get 5
      i32.load offset=148
      local.set 52
      local.get 52
      local.set 53
      local.get 53
      i64.extend_i32_u
      local.set 393
      local.get 392
      local.get 393
      i64.mul
      local.set 394
      local.get 5
      i32.load offset=156
      local.set 54
      local.get 54
      local.set 55
      local.get 55
      i64.extend_i32_u
      local.set 395
      local.get 5
      i32.load offset=152
      local.set 56
      local.get 56
      local.set 57
      local.get 57
      i64.extend_i32_u
      local.set 396
      local.get 395
      local.get 396
      i64.mul
      local.set 397
      local.get 394
      local.get 397
      i64.add
      local.set 398
      local.get 5
      local.get 398
      i64.store offset=72
      local.get 5
      i32.load offset=160
      local.set 58
      local.get 58
      local.set 59
      local.get 59
      i64.extend_i32_u
      local.set 399
      local.get 5
      i32.load offset=144
      local.set 60
      local.get 60
      local.set 61
      local.get 61
      i64.extend_i32_u
      local.set 400
      local.get 399
      local.get 400
      i64.mul
      local.set 401
      local.get 5
      i32.load offset=156
      local.set 62
      local.get 62
      local.set 63
      local.get 63
      i64.extend_i32_u
      local.set 402
      local.get 5
      i32.load offset=148
      local.set 64
      i32.const 1
      local.set 65
      local.get 64
      local.get 65
      i32.shl
      local.set 66
      local.get 66
      local.set 67
      local.get 67
      i64.extend_i32_u
      local.set 403
      local.get 402
      local.get 403
      i64.mul
      local.set 404
      local.get 401
      local.get 404
      i64.add
      local.set 405
      local.get 5
      i32.load offset=152
      local.set 68
      local.get 68
      local.set 69
      local.get 69
      i64.extend_i32_u
      local.set 406
      local.get 5
      i32.load offset=152
      local.set 70
      local.get 70
      local.set 71
      local.get 71
      i64.extend_i32_u
      local.set 407
      local.get 406
      local.get 407
      i64.mul
      local.set 408
      local.get 405
      local.get 408
      i64.add
      local.set 409
      local.get 5
      local.get 409
      i64.store offset=64
      local.get 5
      i32.load offset=152
      local.set 72
      i32.const 1
      local.set 73
      local.get 72
      local.get 73
      i32.shl
      local.set 74
      local.get 5
      local.get 74
      i32.store offset=152
      local.get 5
      i32.load offset=160
      local.set 75
      local.get 75
      local.set 76
      local.get 76
      i64.extend_i32_u
      local.set 410
      local.get 5
      i32.load offset=140
      local.set 77
      local.get 77
      local.set 78
      local.get 78
      i64.extend_i32_u
      local.set 411
      local.get 410
      local.get 411
      i64.mul
      local.set 412
      local.get 5
      i32.load offset=156
      local.set 79
      local.get 79
      local.set 80
      local.get 80
      i64.extend_i32_u
      local.set 413
      local.get 5
      i32.load offset=144
      local.set 81
      local.get 81
      local.set 82
      local.get 82
      i64.extend_i32_u
      local.set 414
      local.get 413
      local.get 414
      i64.mul
      local.set 415
      local.get 412
      local.get 415
      i64.add
      local.set 416
      local.get 5
      i32.load offset=152
      local.set 83
      local.get 83
      local.set 84
      local.get 84
      i64.extend_i32_u
      local.set 417
      local.get 5
      i32.load offset=148
      local.set 85
      local.get 85
      local.set 86
      local.get 86
      i64.extend_i32_u
      local.set 418
      local.get 417
      local.get 418
      i64.mul
      local.set 419
      local.get 416
      local.get 419
      i64.add
      local.set 420
      local.get 5
      local.get 420
      i64.store offset=56
      local.get 5
      i32.load offset=160
      local.set 87
      local.get 87
      local.set 88
      local.get 88
      i64.extend_i32_u
      local.set 421
      local.get 5
      i32.load offset=136
      local.set 89
      local.get 89
      local.set 90
      local.get 90
      i64.extend_i32_u
      local.set 422
      local.get 421
      local.get 422
      i64.mul
      local.set 423
      local.get 5
      i32.load offset=156
      local.set 91
      local.get 91
      local.set 92
      local.get 92
      i64.extend_i32_u
      local.set 424
      local.get 5
      i32.load offset=140
      local.set 93
      i32.const 1
      local.set 94
      local.get 93
      local.get 94
      i32.shl
      local.set 95
      local.get 95
      local.set 96
      local.get 96
      i64.extend_i32_u
      local.set 425
      local.get 424
      local.get 425
      i64.mul
      local.set 426
      local.get 423
      local.get 426
      i64.add
      local.set 427
      local.get 5
      i32.load offset=152
      local.set 97
      local.get 97
      local.set 98
      local.get 98
      i64.extend_i32_u
      local.set 428
      local.get 5
      i32.load offset=144
      local.set 99
      local.get 99
      local.set 100
      local.get 100
      i64.extend_i32_u
      local.set 429
      local.get 428
      local.get 429
      i64.mul
      local.set 430
      local.get 427
      local.get 430
      i64.add
      local.set 431
      local.get 5
      i32.load offset=148
      local.set 101
      local.get 101
      local.set 102
      local.get 102
      i64.extend_i32_u
      local.set 432
      local.get 5
      i32.load offset=148
      local.set 103
      i32.const 1
      local.set 104
      local.get 103
      local.get 104
      i32.shl
      local.set 105
      local.get 105
      local.set 106
      local.get 106
      i64.extend_i32_u
      local.set 433
      local.get 432
      local.get 433
      i64.mul
      local.set 434
      local.get 431
      local.get 434
      i64.add
      local.set 435
      local.get 5
      local.get 435
      i64.store offset=48
      local.get 5
      i32.load offset=148
      local.set 107
      i32.const 1
      local.set 108
      local.get 107
      local.get 108
      i32.shl
      local.set 109
      local.get 5
      local.get 109
      i32.store offset=148
      local.get 5
      i32.load offset=160
      local.set 110
      local.get 110
      local.set 111
      local.get 111
      i64.extend_i32_u
      local.set 436
      local.get 5
      i32.load offset=132
      local.set 112
      local.get 112
      local.set 113
      local.get 113
      i64.extend_i32_u
      local.set 437
      local.get 436
      local.get 437
      i64.mul
      local.set 438
      local.get 5
      i32.load offset=156
      local.set 114
      local.get 114
      local.set 115
      local.get 115
      i64.extend_i32_u
      local.set 439
      local.get 5
      i32.load offset=136
      local.set 116
      local.get 116
      local.set 117
      local.get 117
      i64.extend_i32_u
      local.set 440
      local.get 439
      local.get 440
      i64.mul
      local.set 441
      local.get 438
      local.get 441
      i64.add
      local.set 442
      local.get 5
      i32.load offset=152
      local.set 118
      local.get 118
      local.set 119
      local.get 119
      i64.extend_i32_u
      local.set 443
      local.get 5
      i32.load offset=140
      local.set 120
      local.get 120
      local.set 121
      local.get 121
      i64.extend_i32_u
      local.set 444
      local.get 443
      local.get 444
      i64.mul
      local.set 445
      local.get 442
      local.get 445
      i64.add
      local.set 446
      local.get 5
      i32.load offset=148
      local.set 122
      local.get 122
      local.set 123
      local.get 123
      i64.extend_i32_u
      local.set 447
      local.get 5
      i32.load offset=144
      local.set 124
      local.get 124
      local.set 125
      local.get 125
      i64.extend_i32_u
      local.set 448
      local.get 447
      local.get 448
      i64.mul
      local.set 449
      local.get 446
      local.get 449
      i64.add
      local.set 450
      local.get 5
      local.get 450
      i64.store offset=40
      local.get 5
      i32.load offset=160
      local.set 126
      local.get 126
      local.set 127
      local.get 127
      i64.extend_i32_u
      local.set 451
      local.get 5
      i32.load offset=128
      local.set 128
      local.get 128
      local.set 129
      local.get 129
      i64.extend_i32_u
      local.set 452
      local.get 451
      local.get 452
      i64.mul
      local.set 453
      local.get 5
      i32.load offset=156
      local.set 130
      local.get 130
      local.set 131
      local.get 131
      i64.extend_i32_u
      local.set 454
      local.get 5
      i32.load offset=132
      local.set 132
      i32.const 1
      local.set 133
      local.get 132
      local.get 133
      i32.shl
      local.set 134
      local.get 134
      local.set 135
      local.get 135
      i64.extend_i32_u
      local.set 455
      local.get 454
      local.get 455
      i64.mul
      local.set 456
      local.get 453
      local.get 456
      i64.add
      local.set 457
      local.get 5
      i32.load offset=152
      local.set 136
      local.get 136
      local.set 137
      local.get 137
      i64.extend_i32_u
      local.set 458
      local.get 5
      i32.load offset=136
      local.set 138
      local.get 138
      local.set 139
      local.get 139
      i64.extend_i32_u
      local.set 459
      local.get 458
      local.get 459
      i64.mul
      local.set 460
      local.get 457
      local.get 460
      i64.add
      local.set 461
      local.get 5
      i32.load offset=148
      local.set 140
      local.get 140
      local.set 141
      local.get 141
      i64.extend_i32_u
      local.set 462
      local.get 5
      i32.load offset=140
      local.set 142
      i32.const 1
      local.set 143
      local.get 142
      local.get 143
      i32.shl
      local.set 144
      local.get 144
      local.set 145
      local.get 145
      i64.extend_i32_u
      local.set 463
      local.get 462
      local.get 463
      i64.mul
      local.set 464
      local.get 461
      local.get 464
      i64.add
      local.set 465
      local.get 5
      i32.load offset=144
      local.set 146
      local.get 146
      local.set 147
      local.get 147
      i64.extend_i32_u
      local.set 466
      local.get 5
      i32.load offset=144
      local.set 148
      local.get 148
      local.set 149
      local.get 149
      i64.extend_i32_u
      local.set 467
      local.get 466
      local.get 467
      i64.mul
      local.set 468
      local.get 465
      local.get 468
      i64.add
      local.set 469
      local.get 5
      local.get 469
      i64.store offset=32
      local.get 5
      i32.load offset=160
      local.set 150
      local.get 150
      local.set 151
      local.get 151
      i64.extend_i32_u
      local.set 470
      local.get 5
      i32.load offset=124
      local.set 152
      local.get 152
      local.set 153
      local.get 153
      i64.extend_i32_u
      local.set 471
      local.get 470
      local.get 471
      i64.mul
      local.set 472
      local.get 5
      i32.load offset=156
      local.set 154
      local.get 154
      local.set 155
      local.get 155
      i64.extend_i32_u
      local.set 473
      local.get 5
      i32.load offset=128
      local.set 156
      local.get 156
      local.set 157
      local.get 157
      i64.extend_i32_u
      local.set 474
      local.get 473
      local.get 474
      i64.mul
      local.set 475
      local.get 472
      local.get 475
      i64.add
      local.set 476
      local.get 5
      i32.load offset=152
      local.set 158
      local.get 158
      local.set 159
      local.get 159
      i64.extend_i32_u
      local.set 477
      local.get 5
      i32.load offset=132
      local.set 160
      local.get 160
      local.set 161
      local.get 161
      i64.extend_i32_u
      local.set 478
      local.get 477
      local.get 478
      i64.mul
      local.set 479
      local.get 476
      local.get 479
      i64.add
      local.set 480
      local.get 5
      i32.load offset=148
      local.set 162
      local.get 162
      local.set 163
      local.get 163
      i64.extend_i32_u
      local.set 481
      local.get 5
      i32.load offset=136
      local.set 164
      local.get 164
      local.set 165
      local.get 165
      i64.extend_i32_u
      local.set 482
      local.get 481
      local.get 482
      i64.mul
      local.set 483
      local.get 480
      local.get 483
      i64.add
      local.set 484
      local.get 5
      i32.load offset=144
      local.set 166
      local.get 166
      local.set 167
      local.get 167
      i64.extend_i32_u
      local.set 485
      local.get 5
      i32.load offset=140
      local.set 168
      i32.const 1
      local.set 169
      local.get 168
      local.get 169
      i32.shl
      local.set 170
      local.get 170
      local.set 171
      local.get 171
      i64.extend_i32_u
      local.set 486
      local.get 485
      local.get 486
      i64.mul
      local.set 487
      local.get 484
      local.get 487
      i64.add
      local.set 488
      local.get 5
      local.get 488
      i64.store offset=24
      local.get 5
      i32.load offset=136
      local.set 172
      i32.const 19
      local.set 173
      local.get 172
      local.get 173
      i32.mul
      local.set 174
      local.get 5
      local.get 174
      i32.store offset=120
      local.get 5
      i32.load offset=132
      local.set 175
      i32.const 1
      local.set 176
      local.get 175
      local.get 176
      i32.shl
      local.set 177
      i32.const 19
      local.set 178
      local.get 177
      local.get 178
      i32.mul
      local.set 179
      local.get 5
      local.get 179
      i32.store offset=116
      local.get 5
      i32.load offset=128
      local.set 180
      i32.const 19
      local.set 181
      local.get 180
      local.get 181
      i32.mul
      local.set 182
      local.get 5
      local.get 182
      i32.store offset=112
      local.get 5
      i32.load offset=124
      local.set 183
      i32.const 1
      local.set 184
      local.get 183
      local.get 184
      i32.shl
      local.set 185
      i32.const 19
      local.set 186
      local.get 185
      local.get 186
      i32.mul
      local.set 187
      local.get 5
      local.get 187
      i32.store offset=108
      local.get 5
      i32.load offset=108
      local.set 188
      local.get 188
      local.set 189
      local.get 189
      i64.extend_i32_u
      local.set 489
      local.get 5
      i32.load offset=156
      local.set 190
      local.get 190
      local.set 191
      local.get 191
      i64.extend_i32_u
      local.set 490
      local.get 489
      local.get 490
      i64.mul
      local.set 491
      local.get 5
      i32.load offset=112
      local.set 192
      local.get 192
      local.set 193
      local.get 193
      i64.extend_i32_u
      local.set 492
      local.get 5
      i32.load offset=152
      local.set 194
      local.get 194
      local.set 195
      local.get 195
      i64.extend_i32_u
      local.set 493
      local.get 492
      local.get 493
      i64.mul
      local.set 494
      local.get 491
      local.get 494
      i64.add
      local.set 495
      local.get 5
      i32.load offset=116
      local.set 196
      local.get 196
      local.set 197
      local.get 197
      i64.extend_i32_u
      local.set 496
      local.get 5
      i32.load offset=148
      local.set 198
      local.get 198
      local.set 199
      local.get 199
      i64.extend_i32_u
      local.set 497
      local.get 496
      local.get 497
      i64.mul
      local.set 498
      local.get 495
      local.get 498
      i64.add
      local.set 499
      local.get 5
      i32.load offset=120
      local.set 200
      local.get 200
      local.set 201
      local.get 201
      i64.extend_i32_u
      local.set 500
      local.get 5
      i32.load offset=144
      local.set 202
      i32.const 1
      local.set 203
      local.get 202
      local.get 203
      i32.shl
      local.set 204
      local.get 204
      local.set 205
      local.get 205
      i64.extend_i32_u
      local.set 501
      local.get 500
      local.get 501
      i64.mul
      local.set 502
      local.get 499
      local.get 502
      i64.add
      local.set 503
      local.get 5
      i32.load offset=140
      local.set 206
      local.get 206
      local.set 207
      local.get 207
      i64.extend_i32_u
      local.set 504
      local.get 5
      i32.load offset=140
      local.set 208
      i32.const 1
      local.set 209
      local.get 208
      local.get 209
      i32.shl
      local.set 210
      i32.const 19
      local.set 211
      local.get 210
      local.get 211
      i32.mul
      local.set 212
      local.get 212
      local.set 213
      local.get 213
      i64.extend_i32_u
      local.set 505
      local.get 504
      local.get 505
      i64.mul
      local.set 506
      local.get 503
      local.get 506
      i64.add
      local.set 507
      local.get 5
      i64.load offset=96
      local.set 508
      local.get 508
      local.get 507
      i64.add
      local.set 509
      local.get 5
      local.get 509
      i64.store offset=96
      local.get 5
      i32.load offset=108
      local.set 214
      local.get 214
      local.set 215
      local.get 215
      i64.extend_i32_u
      local.set 510
      local.get 5
      i32.load offset=152
      local.set 216
      i32.const 1
      local.set 217
      local.get 216
      local.get 217
      i32.shr_u
      local.set 218
      local.get 218
      local.set 219
      local.get 219
      i64.extend_i32_u
      local.set 511
      local.get 510
      local.get 511
      i64.mul
      local.set 512
      local.get 5
      i32.load offset=112
      local.set 220
      local.get 220
      local.set 221
      local.get 221
      i64.extend_i32_u
      local.set 513
      local.get 5
      i32.load offset=148
      local.set 222
      local.get 222
      local.set 223
      local.get 223
      i64.extend_i32_u
      local.set 514
      local.get 513
      local.get 514
      i64.mul
      local.set 515
      local.get 512
      local.get 515
      i64.add
      local.set 516
      local.get 5
      i32.load offset=116
      local.set 224
      local.get 224
      local.set 225
      local.get 225
      i64.extend_i32_u
      local.set 517
      local.get 5
      i32.load offset=144
      local.set 226
      local.get 226
      local.set 227
      local.get 227
      i64.extend_i32_u
      local.set 518
      local.get 517
      local.get 518
      i64.mul
      local.set 519
      local.get 516
      local.get 519
      i64.add
      local.set 520
      local.get 5
      i32.load offset=120
      local.set 228
      local.get 228
      local.set 229
      local.get 229
      i64.extend_i32_u
      local.set 521
      local.get 5
      i32.load offset=140
      local.set 230
      i32.const 1
      local.set 231
      local.get 230
      local.get 231
      i32.shl
      local.set 232
      local.get 232
      local.set 233
      local.get 233
      i64.extend_i32_u
      local.set 522
      local.get 521
      local.get 522
      i64.mul
      local.set 523
      local.get 520
      local.get 523
      i64.add
      local.set 524
      local.get 5
      i64.load offset=88
      local.set 525
      local.get 525
      local.get 524
      i64.add
      local.set 526
      local.get 5
      local.get 526
      i64.store offset=88
      local.get 5
      i32.load offset=108
      local.set 234
      local.get 234
      local.set 235
      local.get 235
      i64.extend_i32_u
      local.set 527
      local.get 5
      i32.load offset=148
      local.set 236
      local.get 236
      local.set 237
      local.get 237
      i64.extend_i32_u
      local.set 528
      local.get 527
      local.get 528
      i64.mul
      local.set 529
      local.get 5
      i32.load offset=112
      local.set 238
      local.get 238
      local.set 239
      local.get 239
      i64.extend_i32_u
      local.set 530
      local.get 5
      i32.load offset=144
      local.set 240
      i32.const 1
      local.set 241
      local.get 240
      local.get 241
      i32.shl
      local.set 242
      local.get 242
      local.set 243
      local.get 243
      i64.extend_i32_u
      local.set 531
      local.get 530
      local.get 531
      i64.mul
      local.set 532
      local.get 529
      local.get 532
      i64.add
      local.set 533
      local.get 5
      i32.load offset=116
      local.set 244
      local.get 244
      local.set 245
      local.get 245
      i64.extend_i32_u
      local.set 534
      local.get 5
      i32.load offset=140
      local.set 246
      i32.const 1
      local.set 247
      local.get 246
      local.get 247
      i32.shl
      local.set 248
      local.get 248
      local.set 249
      local.get 249
      i64.extend_i32_u
      local.set 535
      local.get 534
      local.get 535
      i64.mul
      local.set 536
      local.get 533
      local.get 536
      i64.add
      local.set 537
      local.get 5
      i32.load offset=120
      local.set 250
      local.get 250
      local.set 251
      local.get 251
      i64.extend_i32_u
      local.set 538
      local.get 5
      i32.load offset=136
      local.set 252
      local.get 252
      local.set 253
      local.get 253
      i64.extend_i32_u
      local.set 539
      local.get 538
      local.get 539
      i64.mul
      local.set 540
      local.get 537
      local.get 540
      i64.add
      local.set 541
      local.get 5
      i64.load offset=80
      local.set 542
      local.get 542
      local.get 541
      i64.add
      local.set 543
      local.get 5
      local.get 543
      i64.store offset=80
      local.get 5
      i32.load offset=108
      local.set 254
      local.get 254
      local.set 255
      local.get 255
      i64.extend_i32_u
      local.set 544
      local.get 5
      i32.load offset=144
      local.set 256
      local.get 256
      local.set 257
      local.get 257
      i64.extend_i32_u
      local.set 545
      local.get 544
      local.get 545
      i64.mul
      local.set 546
      local.get 5
      i32.load offset=112
      local.set 258
      local.get 258
      local.set 259
      local.get 259
      i64.extend_i32_u
      local.set 547
      local.get 5
      i32.load offset=140
      local.set 260
      i32.const 1
      local.set 261
      local.get 260
      local.get 261
      i32.shl
      local.set 262
      local.get 262
      local.set 263
      local.get 263
      i64.extend_i32_u
      local.set 548
      local.get 547
      local.get 548
      i64.mul
      local.set 549
      local.get 546
      local.get 549
      i64.add
      local.set 550
      local.get 5
      i32.load offset=116
      local.set 264
      local.get 264
      local.set 265
      local.get 265
      i64.extend_i32_u
      local.set 551
      local.get 5
      i32.load offset=136
      local.set 266
      local.get 266
      local.set 267
      local.get 267
      i64.extend_i32_u
      local.set 552
      local.get 551
      local.get 552
      i64.mul
      local.set 553
      local.get 550
      local.get 553
      i64.add
      local.set 554
      local.get 5
      i64.load offset=72
      local.set 555
      local.get 555
      local.get 554
      i64.add
      local.set 556
      local.get 5
      local.get 556
      i64.store offset=72
      local.get 5
      i32.load offset=108
      local.set 268
      local.get 268
      local.set 269
      local.get 269
      i64.extend_i32_u
      local.set 557
      local.get 5
      i32.load offset=140
      local.set 270
      i32.const 1
      local.set 271
      local.get 270
      local.get 271
      i32.shl
      local.set 272
      local.get 272
      local.set 273
      local.get 273
      i64.extend_i32_u
      local.set 558
      local.get 557
      local.get 558
      i64.mul
      local.set 559
      local.get 5
      i32.load offset=112
      local.set 274
      local.get 274
      local.set 275
      local.get 275
      i64.extend_i32_u
      local.set 560
      local.get 5
      i32.load offset=136
      local.set 276
      i32.const 1
      local.set 277
      local.get 276
      local.get 277
      i32.shl
      local.set 278
      local.get 278
      local.set 279
      local.get 279
      i64.extend_i32_u
      local.set 561
      local.get 560
      local.get 561
      i64.mul
      local.set 562
      local.get 559
      local.get 562
      i64.add
      local.set 563
      local.get 5
      i32.load offset=116
      local.set 280
      local.get 280
      local.set 281
      local.get 281
      i64.extend_i32_u
      local.set 564
      local.get 5
      i32.load offset=132
      local.set 282
      local.get 282
      local.set 283
      local.get 283
      i64.extend_i32_u
      local.set 565
      local.get 564
      local.get 565
      i64.mul
      local.set 566
      local.get 563
      local.get 566
      i64.add
      local.set 567
      local.get 5
      i64.load offset=64
      local.set 568
      local.get 568
      local.get 567
      i64.add
      local.set 569
      local.get 5
      local.get 569
      i64.store offset=64
      local.get 5
      i32.load offset=108
      local.set 284
      local.get 284
      local.set 285
      local.get 285
      i64.extend_i32_u
      local.set 570
      local.get 5
      i32.load offset=136
      local.set 286
      local.get 286
      local.set 287
      local.get 287
      i64.extend_i32_u
      local.set 571
      local.get 570
      local.get 571
      i64.mul
      local.set 572
      local.get 5
      i32.load offset=112
      local.set 288
      local.get 288
      local.set 289
      local.get 289
      i64.extend_i32_u
      local.set 573
      local.get 5
      i32.load offset=132
      local.set 290
      i32.const 1
      local.set 291
      local.get 290
      local.get 291
      i32.shl
      local.set 292
      local.get 292
      local.set 293
      local.get 293
      i64.extend_i32_u
      local.set 574
      local.get 573
      local.get 574
      i64.mul
      local.set 575
      local.get 572
      local.get 575
      i64.add
      local.set 576
      local.get 5
      i64.load offset=56
      local.set 577
      local.get 577
      local.get 576
      i64.add
      local.set 578
      local.get 5
      local.get 578
      i64.store offset=56
      local.get 5
      i32.load offset=108
      local.set 294
      local.get 294
      local.set 295
      local.get 295
      i64.extend_i32_u
      local.set 579
      local.get 5
      i32.load offset=132
      local.set 296
      i32.const 1
      local.set 297
      local.get 296
      local.get 297
      i32.shl
      local.set 298
      local.get 298
      local.set 299
      local.get 299
      i64.extend_i32_u
      local.set 580
      local.get 579
      local.get 580
      i64.mul
      local.set 581
      local.get 5
      i32.load offset=112
      local.set 300
      local.get 300
      local.set 301
      local.get 301
      i64.extend_i32_u
      local.set 582
      local.get 5
      i32.load offset=128
      local.set 302
      local.get 302
      local.set 303
      local.get 303
      i64.extend_i32_u
      local.set 583
      local.get 582
      local.get 583
      i64.mul
      local.set 584
      local.get 581
      local.get 584
      i64.add
      local.set 585
      local.get 5
      i64.load offset=48
      local.set 586
      local.get 586
      local.get 585
      i64.add
      local.set 587
      local.get 5
      local.get 587
      i64.store offset=48
      local.get 5
      i32.load offset=108
      local.set 304
      local.get 304
      local.set 305
      local.get 305
      i64.extend_i32_u
      local.set 588
      local.get 5
      i32.load offset=128
      local.set 306
      local.get 306
      local.set 307
      local.get 307
      i64.extend_i32_u
      local.set 589
      local.get 588
      local.get 589
      i64.mul
      local.set 590
      local.get 5
      i64.load offset=40
      local.set 591
      local.get 591
      local.get 590
      i64.add
      local.set 592
      local.get 5
      local.get 592
      i64.store offset=40
      local.get 5
      i32.load offset=108
      local.set 308
      local.get 308
      local.set 309
      local.get 309
      i64.extend_i32_u
      local.set 593
      local.get 5
      i32.load offset=124
      local.set 310
      local.get 310
      local.set 311
      local.get 311
      i64.extend_i32_u
      local.set 594
      local.get 593
      local.get 594
      i64.mul
      local.set 595
      local.get 5
      i64.load offset=32
      local.set 596
      local.get 596
      local.get 595
      i64.add
      local.set 597
      local.get 5
      local.get 597
      i64.store offset=32
      local.get 5
      i64.load offset=96
      local.set 598
      local.get 598
      i32.wrap_i64
      local.set 312
      i32.const 67108863
      local.set 313
      local.get 312
      local.get 313
      i32.and
      local.set 314
      local.get 5
      local.get 314
      i32.store offset=160
      local.get 5
      i64.load offset=96
      local.set 599
      i64.const 26
      local.set 600
      local.get 599
      local.get 600
      i64.shr_u
      local.set 601
      local.get 5
      local.get 601
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 602
      local.get 5
      i64.load offset=88
      local.set 603
      local.get 603
      local.get 602
      i64.add
      local.set 604
      local.get 5
      local.get 604
      i64.store offset=88
      local.get 5
      i64.load offset=88
      local.set 605
      local.get 605
      i32.wrap_i64
      local.set 315
      i32.const 33554431
      local.set 316
      local.get 315
      local.get 316
      i32.and
      local.set 317
      local.get 5
      local.get 317
      i32.store offset=156
      local.get 5
      i64.load offset=88
      local.set 606
      i64.const 25
      local.set 607
      local.get 606
      local.get 607
      i64.shr_u
      local.set 608
      local.get 5
      local.get 608
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 609
      local.get 5
      i64.load offset=80
      local.set 610
      local.get 610
      local.get 609
      i64.add
      local.set 611
      local.get 5
      local.get 611
      i64.store offset=80
      local.get 5
      i64.load offset=80
      local.set 612
      local.get 612
      i32.wrap_i64
      local.set 318
      i32.const 67108863
      local.set 319
      local.get 318
      local.get 319
      i32.and
      local.set 320
      local.get 5
      local.get 320
      i32.store offset=152
      local.get 5
      i64.load offset=80
      local.set 613
      i64.const 26
      local.set 614
      local.get 613
      local.get 614
      i64.shr_u
      local.set 615
      local.get 5
      local.get 615
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 616
      local.get 5
      i64.load offset=72
      local.set 617
      local.get 617
      local.get 616
      i64.add
      local.set 618
      local.get 5
      local.get 618
      i64.store offset=72
      local.get 5
      i64.load offset=72
      local.set 619
      local.get 619
      i32.wrap_i64
      local.set 321
      i32.const 33554431
      local.set 322
      local.get 321
      local.get 322
      i32.and
      local.set 323
      local.get 5
      local.get 323
      i32.store offset=148
      local.get 5
      i64.load offset=72
      local.set 620
      i64.const 25
      local.set 621
      local.get 620
      local.get 621
      i64.shr_u
      local.set 622
      local.get 5
      local.get 622
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 623
      local.get 5
      i64.load offset=64
      local.set 624
      local.get 624
      local.get 623
      i64.add
      local.set 625
      local.get 5
      local.get 625
      i64.store offset=64
      local.get 5
      i64.load offset=64
      local.set 626
      local.get 626
      i32.wrap_i64
      local.set 324
      i32.const 67108863
      local.set 325
      local.get 324
      local.get 325
      i32.and
      local.set 326
      local.get 5
      local.get 326
      i32.store offset=144
      local.get 5
      i64.load offset=64
      local.set 627
      i64.const 26
      local.set 628
      local.get 627
      local.get 628
      i64.shr_u
      local.set 629
      local.get 5
      local.get 629
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 630
      local.get 5
      i64.load offset=56
      local.set 631
      local.get 631
      local.get 630
      i64.add
      local.set 632
      local.get 5
      local.get 632
      i64.store offset=56
      local.get 5
      i64.load offset=56
      local.set 633
      local.get 633
      i32.wrap_i64
      local.set 327
      i32.const 33554431
      local.set 328
      local.get 327
      local.get 328
      i32.and
      local.set 329
      local.get 5
      local.get 329
      i32.store offset=140
      local.get 5
      i64.load offset=56
      local.set 634
      i64.const 25
      local.set 635
      local.get 634
      local.get 635
      i64.shr_u
      local.set 636
      local.get 5
      local.get 636
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 637
      local.get 5
      i64.load offset=48
      local.set 638
      local.get 638
      local.get 637
      i64.add
      local.set 639
      local.get 5
      local.get 639
      i64.store offset=48
      local.get 5
      i64.load offset=48
      local.set 640
      local.get 640
      i32.wrap_i64
      local.set 330
      i32.const 67108863
      local.set 331
      local.get 330
      local.get 331
      i32.and
      local.set 332
      local.get 5
      local.get 332
      i32.store offset=136
      local.get 5
      i64.load offset=48
      local.set 641
      i64.const 26
      local.set 642
      local.get 641
      local.get 642
      i64.shr_u
      local.set 643
      local.get 5
      local.get 643
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 644
      local.get 5
      i64.load offset=40
      local.set 645
      local.get 645
      local.get 644
      i64.add
      local.set 646
      local.get 5
      local.get 646
      i64.store offset=40
      local.get 5
      i64.load offset=40
      local.set 647
      local.get 647
      i32.wrap_i64
      local.set 333
      i32.const 33554431
      local.set 334
      local.get 333
      local.get 334
      i32.and
      local.set 335
      local.get 5
      local.get 335
      i32.store offset=132
      local.get 5
      i64.load offset=40
      local.set 648
      i64.const 25
      local.set 649
      local.get 648
      local.get 649
      i64.shr_u
      local.set 650
      local.get 5
      local.get 650
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 651
      local.get 5
      i64.load offset=32
      local.set 652
      local.get 652
      local.get 651
      i64.add
      local.set 653
      local.get 5
      local.get 653
      i64.store offset=32
      local.get 5
      i64.load offset=32
      local.set 654
      local.get 654
      i32.wrap_i64
      local.set 336
      i32.const 67108863
      local.set 337
      local.get 336
      local.get 337
      i32.and
      local.set 338
      local.get 5
      local.get 338
      i32.store offset=128
      local.get 5
      i64.load offset=32
      local.set 655
      i64.const 26
      local.set 656
      local.get 655
      local.get 656
      i64.shr_u
      local.set 657
      local.get 5
      local.get 657
      i64.store offset=16
      local.get 5
      i64.load offset=16
      local.set 658
      local.get 5
      i64.load offset=24
      local.set 659
      local.get 659
      local.get 658
      i64.add
      local.set 660
      local.get 5
      local.get 660
      i64.store offset=24
      local.get 5
      i64.load offset=24
      local.set 661
      local.get 661
      i32.wrap_i64
      local.set 339
      i32.const 33554431
      local.set 340
      local.get 339
      local.get 340
      i32.and
      local.set 341
      local.get 5
      local.get 341
      i32.store offset=124
      local.get 5
      i64.load offset=24
      local.set 662
      i64.const 25
      local.set 663
      local.get 662
      local.get 663
      i64.shr_u
      local.set 664
      local.get 664
      i32.wrap_i64
      local.set 342
      local.get 5
      local.get 342
      i32.store offset=12
      local.get 5
      i32.load offset=160
      local.set 343
      local.get 343
      local.set 344
      local.get 344
      i64.extend_i32_u
      local.set 665
      local.get 5
      i32.load offset=12
      local.set 345
      local.get 345
      local.set 346
      local.get 346
      i64.extend_i32_u
      local.set 666
      i64.const 19
      local.set 667
      local.get 666
      local.get 667
      i64.mul
      local.set 668
      local.get 665
      local.get 668
      i64.add
      local.set 669
      local.get 5
      local.get 669
      i64.store offset=96
      local.get 5
      i64.load offset=96
      local.set 670
      local.get 670
      i32.wrap_i64
      local.set 347
      i32.const 67108863
      local.set 348
      local.get 347
      local.get 348
      i32.and
      local.set 349
      local.get 5
      local.get 349
      i32.store offset=160
      local.get 5
      i64.load offset=96
      local.set 671
      i64.const 26
      local.set 672
      local.get 671
      local.get 672
      i64.shr_u
      local.set 673
      local.get 673
      i32.wrap_i64
      local.set 350
      local.get 5
      local.get 350
      i32.store offset=12
      local.get 5
      i32.load offset=12
      local.set 351
      local.get 5
      i32.load offset=156
      local.set 352
      local.get 352
      local.get 351
      i32.add
      local.set 353
      local.get 5
      local.get 353
      i32.store offset=156
      local.get 5
      i32.load offset=164
      local.set 354
      i32.const -1
      local.set 355
      local.get 354
      local.get 355
      i32.add
      local.set 356
      local.get 5
      local.get 356
      i32.store offset=164
      local.get 356
      br_if 0 (;@1;)
    end
    local.get 5
    i32.load offset=160
    local.set 357
    local.get 5
    i32.load offset=172
    local.set 358
    local.get 358
    local.get 357
    i32.store
    local.get 5
    i32.load offset=156
    local.set 359
    local.get 5
    i32.load offset=172
    local.set 360
    local.get 360
    local.get 359
    i32.store offset=4
    local.get 5
    i32.load offset=152
    local.set 361
    local.get 5
    i32.load offset=172
    local.set 362
    local.get 362
    local.get 361
    i32.store offset=8
    local.get 5
    i32.load offset=148
    local.set 363
    local.get 5
    i32.load offset=172
    local.set 364
    local.get 364
    local.get 363
    i32.store offset=12
    local.get 5
    i32.load offset=144
    local.set 365
    local.get 5
    i32.load offset=172
    local.set 366
    local.get 366
    local.get 365
    i32.store offset=16
    local.get 5
    i32.load offset=140
    local.set 367
    local.get 5
    i32.load offset=172
    local.set 368
    local.get 368
    local.get 367
    i32.store offset=20
    local.get 5
    i32.load offset=136
    local.set 369
    local.get 5
    i32.load offset=172
    local.set 370
    local.get 370
    local.get 369
    i32.store offset=24
    local.get 5
    i32.load offset=132
    local.set 371
    local.get 5
    i32.load offset=172
    local.set 372
    local.get 372
    local.get 371
    i32.store offset=28
    local.get 5
    i32.load offset=128
    local.set 373
    local.get 5
    i32.load offset=172
    local.set 374
    local.get 374
    local.get 373
    i32.store offset=32
    local.get 5
    i32.load offset=124
    local.set 375
    local.get 5
    i32.load offset=172
    local.set 376
    local.get 376
    local.get 375
    i32.store offset=36
    i32.const 176
    local.set 377
    local.get 5
    local.get 377
    i32.add
    local.set 378
    local.get 378
    global.set 0
    return)
  (func $curve25519_pow_two5mtwo0_two250mtwo0 (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 96
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    local.set 6
    i32.const 50
    local.set 7
    local.get 3
    local.set 8
    i32.const 100
    local.set 9
    i32.const 10
    local.set 10
    i32.const 20
    local.set 11
    i32.const 5
    local.set 12
    local.get 3
    local.get 0
    i32.store offset=92
    local.get 3
    i32.load offset=92
    local.set 13
    local.get 6
    local.get 13
    local.get 12
    call $curve25519_square_times
    local.get 3
    i32.load offset=92
    local.set 14
    local.get 3
    i32.load offset=92
    local.set 15
    local.get 14
    local.get 6
    local.get 15
    call $curve25519_mul
    local.get 3
    i32.load offset=92
    local.set 16
    local.get 6
    local.get 16
    local.get 10
    call $curve25519_square_times
    local.get 3
    i32.load offset=92
    local.set 17
    local.get 8
    local.get 6
    local.get 17
    call $curve25519_mul
    local.get 6
    local.get 8
    local.get 11
    call $curve25519_square_times
    local.get 6
    local.get 6
    local.get 8
    call $curve25519_mul
    local.get 6
    local.get 6
    local.get 10
    call $curve25519_square_times
    local.get 3
    i32.load offset=92
    local.set 18
    local.get 3
    i32.load offset=92
    local.set 19
    local.get 18
    local.get 6
    local.get 19
    call $curve25519_mul
    local.get 3
    i32.load offset=92
    local.set 20
    local.get 6
    local.get 20
    local.get 7
    call $curve25519_square_times
    local.get 3
    i32.load offset=92
    local.set 21
    local.get 8
    local.get 6
    local.get 21
    call $curve25519_mul
    local.get 6
    local.get 8
    local.get 9
    call $curve25519_square_times
    local.get 6
    local.get 6
    local.get 8
    call $curve25519_mul
    local.get 6
    local.get 6
    local.get 7
    call $curve25519_square_times
    local.get 3
    i32.load offset=92
    local.set 22
    local.get 3
    i32.load offset=92
    local.set 23
    local.get 22
    local.get 6
    local.get 23
    call $curve25519_mul
    i32.const 96
    local.set 24
    local.get 3
    local.get 24
    i32.add
    local.set 25
    local.get 25
    global.set 0
    return)
  (func $sha512_blocks (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 752
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    i32.const 0
    local.set 6
    local.get 5
    local.get 0
    i32.store offset=748
    local.get 5
    local.get 1
    i32.store offset=744
    local.get 5
    local.get 2
    i32.store offset=740
    local.get 5
    local.get 6
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 8
        local.set 7
        local.get 5
        i32.load offset=12
        local.set 8
        local.get 8
        local.set 9
        local.get 7
        local.set 10
        local.get 9
        local.get 10
        i32.lt_u
        local.set 11
        i32.const 1
        local.set 12
        local.get 11
        local.get 12
        i32.and
        local.set 13
        local.get 13
        i32.eqz
        br_if 1 (;@1;)
        i32.const 672
        local.set 14
        local.get 5
        local.get 14
        i32.add
        local.set 15
        local.get 15
        local.set 16
        local.get 5
        i32.load offset=748
        local.set 17
        local.get 5
        i32.load offset=12
        local.set 18
        i32.const 3
        local.set 19
        local.get 18
        local.get 19
        i32.shl
        local.set 20
        local.get 17
        local.get 20
        i32.add
        local.set 21
        local.get 21
        i64.load
        local.set 203
        local.get 5
        i32.load offset=12
        local.set 22
        i32.const 3
        local.set 23
        local.get 22
        local.get 23
        i32.shl
        local.set 24
        local.get 16
        local.get 24
        i32.add
        local.set 25
        local.get 25
        local.get 203
        i64.store
        local.get 5
        i32.load offset=12
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.add
        local.set 28
        local.get 5
        local.get 28
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=740
        local.set 29
        i32.const -1
        local.set 30
        local.get 29
        local.get 30
        i32.add
        local.set 31
        local.get 5
        local.get 31
        i32.store offset=740
        local.get 29
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 32
        local.get 5
        local.get 32
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 16
            local.set 33
            local.get 5
            i32.load offset=12
            local.set 34
            local.get 34
            local.set 35
            local.get 33
            local.set 36
            local.get 35
            local.get 36
            i32.lt_u
            local.set 37
            i32.const 1
            local.set 38
            local.get 37
            local.get 38
            i32.and
            local.set 39
            local.get 39
            i32.eqz
            br_if 1 (;@3;)
            i32.const 32
            local.set 40
            local.get 5
            local.get 40
            i32.add
            local.set 41
            local.get 41
            local.set 42
            local.get 5
            i32.load offset=744
            local.set 43
            local.get 5
            i32.load offset=12
            local.set 44
            i32.const 3
            local.set 45
            local.get 44
            local.get 45
            i32.shl
            local.set 46
            local.get 43
            local.get 46
            i32.add
            local.set 47
            local.get 47
            call $sha512_LOAD64_BE
            local.set 204
            local.get 5
            i32.load offset=12
            local.set 48
            i32.const 3
            local.set 49
            local.get 48
            local.get 49
            i32.shl
            local.set 50
            local.get 42
            local.get 50
            i32.add
            local.set 51
            local.get 51
            local.get 204
            i64.store
            local.get 5
            i32.load offset=12
            local.set 52
            i32.const 1
            local.set 53
            local.get 52
            local.get 53
            i32.add
            local.set 54
            local.get 5
            local.get 54
            i32.store offset=12
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 16
        local.set 55
        local.get 5
        local.get 55
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 80
            local.set 56
            local.get 5
            i32.load offset=12
            local.set 57
            local.get 57
            local.set 58
            local.get 56
            local.set 59
            local.get 58
            local.get 59
            i32.lt_u
            local.set 60
            i32.const 1
            local.set 61
            local.get 60
            local.get 61
            i32.and
            local.set 62
            local.get 62
            i32.eqz
            br_if 1 (;@3;)
            i32.const 32
            local.set 63
            local.get 5
            local.get 63
            i32.add
            local.set 64
            local.get 64
            local.set 65
            i32.const 8
            local.set 66
            i32.const 1
            local.set 67
            i32.const 61
            local.set 68
            i32.const 19
            local.set 69
            local.get 5
            i32.load offset=12
            local.set 70
            i32.const 2
            local.set 71
            local.get 70
            local.get 71
            i32.sub
            local.set 72
            i32.const 3
            local.set 73
            local.get 72
            local.get 73
            i32.shl
            local.set 74
            local.get 65
            local.get 74
            i32.add
            local.set 75
            local.get 75
            i64.load
            local.set 205
            local.get 205
            local.get 69
            call $sha512_ROTR64
            local.set 206
            local.get 5
            i32.load offset=12
            local.set 76
            i32.const 2
            local.set 77
            local.get 76
            local.get 77
            i32.sub
            local.set 78
            i32.const 3
            local.set 79
            local.get 78
            local.get 79
            i32.shl
            local.set 80
            local.get 65
            local.get 80
            i32.add
            local.set 81
            local.get 81
            i64.load
            local.set 207
            local.get 207
            local.get 68
            call $sha512_ROTR64
            local.set 208
            local.get 206
            local.get 208
            i64.xor
            local.set 209
            local.get 5
            i32.load offset=12
            local.set 82
            i32.const 2
            local.set 83
            local.get 82
            local.get 83
            i32.sub
            local.set 84
            i32.const 3
            local.set 85
            local.get 84
            local.get 85
            i32.shl
            local.set 86
            local.get 65
            local.get 86
            i32.add
            local.set 87
            local.get 87
            i64.load
            local.set 210
            i64.const 6
            local.set 211
            local.get 210
            local.get 211
            i64.shr_u
            local.set 212
            local.get 209
            local.get 212
            i64.xor
            local.set 213
            local.get 5
            i32.load offset=12
            local.set 88
            i32.const 7
            local.set 89
            local.get 88
            local.get 89
            i32.sub
            local.set 90
            i32.const 3
            local.set 91
            local.get 90
            local.get 91
            i32.shl
            local.set 92
            local.get 65
            local.get 92
            i32.add
            local.set 93
            local.get 93
            i64.load
            local.set 214
            local.get 213
            local.get 214
            i64.add
            local.set 215
            local.get 5
            i32.load offset=12
            local.set 94
            i32.const 15
            local.set 95
            local.get 94
            local.get 95
            i32.sub
            local.set 96
            i32.const 3
            local.set 97
            local.get 96
            local.get 97
            i32.shl
            local.set 98
            local.get 65
            local.get 98
            i32.add
            local.set 99
            local.get 99
            i64.load
            local.set 216
            local.get 216
            local.get 67
            call $sha512_ROTR64
            local.set 217
            local.get 5
            i32.load offset=12
            local.set 100
            i32.const 15
            local.set 101
            local.get 100
            local.get 101
            i32.sub
            local.set 102
            i32.const 3
            local.set 103
            local.get 102
            local.get 103
            i32.shl
            local.set 104
            local.get 65
            local.get 104
            i32.add
            local.set 105
            local.get 105
            i64.load
            local.set 218
            local.get 218
            local.get 66
            call $sha512_ROTR64
            local.set 219
            local.get 217
            local.get 219
            i64.xor
            local.set 220
            local.get 5
            i32.load offset=12
            local.set 106
            i32.const 15
            local.set 107
            local.get 106
            local.get 107
            i32.sub
            local.set 108
            i32.const 3
            local.set 109
            local.get 108
            local.get 109
            i32.shl
            local.set 110
            local.get 65
            local.get 110
            i32.add
            local.set 111
            local.get 111
            i64.load
            local.set 221
            i64.const 7
            local.set 222
            local.get 221
            local.get 222
            i64.shr_u
            local.set 223
            local.get 220
            local.get 223
            i64.xor
            local.set 224
            local.get 215
            local.get 224
            i64.add
            local.set 225
            local.get 5
            i32.load offset=12
            local.set 112
            i32.const 16
            local.set 113
            local.get 112
            local.get 113
            i32.sub
            local.set 114
            i32.const 3
            local.set 115
            local.get 114
            local.get 115
            i32.shl
            local.set 116
            local.get 65
            local.get 116
            i32.add
            local.set 117
            local.get 117
            i64.load
            local.set 226
            local.get 225
            local.get 226
            i64.add
            local.set 227
            local.get 5
            i32.load offset=12
            local.set 118
            i32.const 3
            local.set 119
            local.get 118
            local.get 119
            i32.shl
            local.set 120
            local.get 65
            local.get 120
            i32.add
            local.set 121
            local.get 121
            local.get 227
            i64.store
            local.get 5
            i32.load offset=12
            local.set 122
            i32.const 1
            local.set 123
            local.get 122
            local.get 123
            i32.add
            local.set 124
            local.get 5
            local.get 124
            i32.store offset=12
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 0
        local.set 125
        local.get 5
        local.get 125
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 80
            local.set 126
            local.get 5
            i32.load offset=12
            local.set 127
            local.get 127
            local.set 128
            local.get 126
            local.set 129
            local.get 128
            local.get 129
            i32.lt_u
            local.set 130
            i32.const 1
            local.set 131
            local.get 130
            local.get 131
            i32.and
            local.set 132
            local.get 132
            i32.eqz
            br_if 1 (;@3;)
            i32.const 32
            local.set 133
            local.get 5
            local.get 133
            i32.add
            local.set 134
            local.get 134
            local.set 135
            i32.const 1200
            local.set 136
            i32.const 41
            local.set 137
            i32.const 18
            local.set 138
            i32.const 14
            local.set 139
            i32.const 39
            local.set 140
            i32.const 34
            local.set 141
            i32.const 28
            local.set 142
            local.get 5
            i64.load offset=672
            local.set 228
            local.get 228
            local.get 142
            call $sha512_ROTR64
            local.set 229
            local.get 5
            i64.load offset=672
            local.set 230
            local.get 230
            local.get 141
            call $sha512_ROTR64
            local.set 231
            local.get 229
            local.get 231
            i64.xor
            local.set 232
            local.get 5
            i64.load offset=672
            local.set 233
            local.get 233
            local.get 140
            call $sha512_ROTR64
            local.set 234
            local.get 232
            local.get 234
            i64.xor
            local.set 235
            local.get 5
            i64.load offset=672
            local.set 236
            local.get 5
            i64.load offset=680
            local.set 237
            local.get 236
            local.get 237
            i64.or
            local.set 238
            local.get 5
            i64.load offset=688
            local.set 239
            local.get 238
            local.get 239
            i64.and
            local.set 240
            local.get 5
            i64.load offset=672
            local.set 241
            local.get 5
            i64.load offset=680
            local.set 242
            local.get 241
            local.get 242
            i64.and
            local.set 243
            local.get 240
            local.get 243
            i64.or
            local.set 244
            local.get 235
            local.get 244
            i64.add
            local.set 245
            local.get 5
            local.get 245
            i64.store offset=16
            local.get 5
            i64.load offset=728
            local.set 246
            local.get 5
            i64.load offset=704
            local.set 247
            local.get 247
            local.get 139
            call $sha512_ROTR64
            local.set 248
            local.get 5
            i64.load offset=704
            local.set 249
            local.get 249
            local.get 138
            call $sha512_ROTR64
            local.set 250
            local.get 248
            local.get 250
            i64.xor
            local.set 251
            local.get 5
            i64.load offset=704
            local.set 252
            local.get 252
            local.get 137
            call $sha512_ROTR64
            local.set 253
            local.get 251
            local.get 253
            i64.xor
            local.set 254
            local.get 246
            local.get 254
            i64.add
            local.set 255
            local.get 5
            i64.load offset=720
            local.set 256
            local.get 5
            i64.load offset=704
            local.set 257
            local.get 5
            i64.load offset=712
            local.set 258
            local.get 5
            i64.load offset=720
            local.set 259
            local.get 258
            local.get 259
            i64.xor
            local.set 260
            local.get 257
            local.get 260
            i64.and
            local.set 261
            local.get 256
            local.get 261
            i64.xor
            local.set 262
            local.get 255
            local.get 262
            i64.add
            local.set 263
            local.get 5
            i32.load offset=12
            local.set 143
            i32.const 3
            local.set 144
            local.get 143
            local.get 144
            i32.shl
            local.set 145
            local.get 136
            local.get 145
            i32.add
            local.set 146
            local.get 146
            i64.load
            local.set 264
            local.get 263
            local.get 264
            i64.add
            local.set 265
            local.get 5
            i32.load offset=12
            local.set 147
            i32.const 3
            local.set 148
            local.get 147
            local.get 148
            i32.shl
            local.set 149
            local.get 135
            local.get 149
            i32.add
            local.set 150
            local.get 150
            i64.load
            local.set 266
            local.get 265
            local.get 266
            i64.add
            local.set 267
            local.get 5
            local.get 267
            i64.store offset=24
            local.get 5
            i64.load offset=720
            local.set 268
            local.get 5
            local.get 268
            i64.store offset=728
            local.get 5
            i64.load offset=712
            local.set 269
            local.get 5
            local.get 269
            i64.store offset=720
            local.get 5
            i64.load offset=704
            local.set 270
            local.get 5
            local.get 270
            i64.store offset=712
            local.get 5
            i64.load offset=696
            local.set 271
            local.get 5
            i64.load offset=24
            local.set 272
            local.get 271
            local.get 272
            i64.add
            local.set 273
            local.get 5
            local.get 273
            i64.store offset=704
            local.get 5
            i64.load offset=688
            local.set 274
            local.get 5
            local.get 274
            i64.store offset=696
            local.get 5
            i64.load offset=680
            local.set 275
            local.get 5
            local.get 275
            i64.store offset=688
            local.get 5
            i64.load offset=672
            local.set 276
            local.get 5
            local.get 276
            i64.store offset=680
            local.get 5
            i64.load offset=24
            local.set 277
            local.get 5
            i64.load offset=16
            local.set 278
            local.get 277
            local.get 278
            i64.add
            local.set 279
            local.get 5
            local.get 279
            i64.store offset=672
            local.get 5
            i32.load offset=12
            local.set 151
            i32.const 1
            local.set 152
            local.get 151
            local.get 152
            i32.add
            local.set 153
            local.get 5
            local.get 153
            i32.store offset=12
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 0
        local.set 154
        local.get 5
        local.get 154
        i32.store offset=12
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 8
            local.set 155
            local.get 5
            i32.load offset=12
            local.set 156
            local.get 156
            local.set 157
            local.get 155
            local.set 158
            local.get 157
            local.get 158
            i32.lt_u
            local.set 159
            i32.const 1
            local.set 160
            local.get 159
            local.get 160
            i32.and
            local.set 161
            local.get 161
            i32.eqz
            br_if 1 (;@3;)
            i32.const 672
            local.set 162
            local.get 5
            local.get 162
            i32.add
            local.set 163
            local.get 163
            local.set 164
            local.get 5
            i32.load offset=748
            local.set 165
            local.get 5
            i32.load offset=12
            local.set 166
            i32.const 3
            local.set 167
            local.get 166
            local.get 167
            i32.shl
            local.set 168
            local.get 165
            local.get 168
            i32.add
            local.set 169
            local.get 169
            i64.load
            local.set 280
            local.get 5
            i32.load offset=12
            local.set 170
            i32.const 3
            local.set 171
            local.get 170
            local.get 171
            i32.shl
            local.set 172
            local.get 164
            local.get 172
            i32.add
            local.set 173
            local.get 173
            i64.load
            local.set 281
            local.get 281
            local.get 280
            i64.add
            local.set 282
            local.get 173
            local.get 282
            i64.store
            local.get 5
            i32.load offset=12
            local.set 174
            i32.const 3
            local.set 175
            local.get 174
            local.get 175
            i32.shl
            local.set 176
            local.get 164
            local.get 176
            i32.add
            local.set 177
            local.get 177
            i64.load
            local.set 283
            local.get 5
            i32.load offset=748
            local.set 178
            local.get 5
            i32.load offset=12
            local.set 179
            i32.const 3
            local.set 180
            local.get 179
            local.get 180
            i32.shl
            local.set 181
            local.get 178
            local.get 181
            i32.add
            local.set 182
            local.get 182
            local.get 283
            i64.store
            local.get 5
            i32.load offset=12
            local.set 183
            i32.const 1
            local.set 184
            local.get 183
            local.get 184
            i32.add
            local.set 185
            local.get 5
            local.get 185
            i32.store offset=12
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 1
        local.set 186
        i32.const 0
        local.set 187
        i64.const 0
        local.set 284
        local.get 5
        i32.load offset=748
        local.set 188
        local.get 188
        i64.load offset=64
        local.set 285
        i64.const 1024
        local.set 286
        local.get 285
        local.get 286
        i64.add
        local.set 287
        local.get 188
        local.get 287
        i64.store offset=64
        local.get 5
        i32.load offset=748
        local.set 189
        local.get 189
        i64.load offset=64
        local.set 288
        local.get 288
        local.set 289
        local.get 284
        local.set 290
        local.get 289
        local.get 290
        i64.ne
        local.set 190
        i32.const -1
        local.set 191
        local.get 190
        local.get 191
        i32.xor
        local.set 192
        i32.const 1
        local.set 193
        local.get 192
        local.get 193
        i32.and
        local.set 194
        local.get 186
        local.get 187
        local.get 194
        select
        local.set 195
        local.get 195
        local.set 196
        local.get 196
        i64.extend_i32_s
        local.set 291
        local.get 5
        i32.load offset=748
        local.set 197
        local.get 197
        i64.load offset=72
        local.set 292
        local.get 292
        local.get 291
        i64.add
        local.set 293
        local.get 197
        local.get 293
        i64.store offset=72
        local.get 5
        i32.load offset=744
        local.set 198
        i32.const 128
        local.set 199
        local.get 198
        local.get 199
        i32.add
        local.set 200
        local.get 5
        local.get 200
        i32.store offset=744
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 752
    local.set 201
    local.get 5
    local.get 201
    i32.add
    local.set 202
    local.get 202
    global.set 0
    return)
  (func $sha512_STORE64_BE (type 9) (param i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i64.store
    local.get 4
    i64.load
    local.set 21
    i64.const 56
    local.set 22
    local.get 21
    local.get 22
    i64.shr_u
    local.set 23
    local.get 23
    i32.wrap_i64
    local.set 5
    local.get 4
    i32.load offset=12
    local.set 6
    local.get 6
    local.get 5
    i32.store8
    local.get 4
    i64.load
    local.set 24
    i64.const 48
    local.set 25
    local.get 24
    local.get 25
    i64.shr_u
    local.set 26
    local.get 26
    i32.wrap_i64
    local.set 7
    local.get 4
    i32.load offset=12
    local.set 8
    local.get 8
    local.get 7
    i32.store8 offset=1
    local.get 4
    i64.load
    local.set 27
    i64.const 40
    local.set 28
    local.get 27
    local.get 28
    i64.shr_u
    local.set 29
    local.get 29
    i32.wrap_i64
    local.set 9
    local.get 4
    i32.load offset=12
    local.set 10
    local.get 10
    local.get 9
    i32.store8 offset=2
    local.get 4
    i64.load
    local.set 30
    i64.const 32
    local.set 31
    local.get 30
    local.get 31
    i64.shr_u
    local.set 32
    local.get 32
    i32.wrap_i64
    local.set 11
    local.get 4
    i32.load offset=12
    local.set 12
    local.get 12
    local.get 11
    i32.store8 offset=3
    local.get 4
    i64.load
    local.set 33
    i64.const 24
    local.set 34
    local.get 33
    local.get 34
    i64.shr_u
    local.set 35
    local.get 35
    i32.wrap_i64
    local.set 13
    local.get 4
    i32.load offset=12
    local.set 14
    local.get 14
    local.get 13
    i32.store8 offset=4
    local.get 4
    i64.load
    local.set 36
    i64.const 16
    local.set 37
    local.get 36
    local.get 37
    i64.shr_u
    local.set 38
    local.get 38
    i32.wrap_i64
    local.set 15
    local.get 4
    i32.load offset=12
    local.set 16
    local.get 16
    local.get 15
    i32.store8 offset=5
    local.get 4
    i64.load
    local.set 39
    i64.const 8
    local.set 40
    local.get 39
    local.get 40
    i64.shr_u
    local.set 41
    local.get 41
    i32.wrap_i64
    local.set 17
    local.get 4
    i32.load offset=12
    local.set 18
    local.get 18
    local.get 17
    i32.store8 offset=6
    local.get 4
    i64.load
    local.set 42
    local.get 42
    i32.wrap_i64
    local.set 19
    local.get 4
    i32.load offset=12
    local.set 20
    local.get 20
    local.get 19
    i32.store8 offset=7
    return)
  (func $sha512_LOAD64_BE (type 12) (param i32) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 4
    i32.load8_u
    local.set 5
    i32.const 255
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    local.get 7
    i64.extend_i32_u
    local.set 36
    i64.const 56
    local.set 37
    local.get 36
    local.get 37
    i64.shl
    local.set 38
    local.get 3
    i32.load offset=12
    local.set 8
    local.get 8
    i32.load8_u offset=1
    local.set 9
    i32.const 255
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    local.get 11
    i64.extend_i32_u
    local.set 39
    i64.const 48
    local.set 40
    local.get 39
    local.get 40
    i64.shl
    local.set 41
    local.get 38
    local.get 41
    i64.or
    local.set 42
    local.get 3
    i32.load offset=12
    local.set 12
    local.get 12
    i32.load8_u offset=2
    local.set 13
    i32.const 255
    local.set 14
    local.get 13
    local.get 14
    i32.and
    local.set 15
    local.get 15
    i64.extend_i32_u
    local.set 43
    i64.const 40
    local.set 44
    local.get 43
    local.get 44
    i64.shl
    local.set 45
    local.get 42
    local.get 45
    i64.or
    local.set 46
    local.get 3
    i32.load offset=12
    local.set 16
    local.get 16
    i32.load8_u offset=3
    local.set 17
    i32.const 255
    local.set 18
    local.get 17
    local.get 18
    i32.and
    local.set 19
    local.get 19
    i64.extend_i32_u
    local.set 47
    i64.const 32
    local.set 48
    local.get 47
    local.get 48
    i64.shl
    local.set 49
    local.get 46
    local.get 49
    i64.or
    local.set 50
    local.get 3
    i32.load offset=12
    local.set 20
    local.get 20
    i32.load8_u offset=4
    local.set 21
    i32.const 255
    local.set 22
    local.get 21
    local.get 22
    i32.and
    local.set 23
    local.get 23
    i64.extend_i32_u
    local.set 51
    i64.const 24
    local.set 52
    local.get 51
    local.get 52
    i64.shl
    local.set 53
    local.get 50
    local.get 53
    i64.or
    local.set 54
    local.get 3
    i32.load offset=12
    local.set 24
    local.get 24
    i32.load8_u offset=5
    local.set 25
    i32.const 255
    local.set 26
    local.get 25
    local.get 26
    i32.and
    local.set 27
    local.get 27
    i64.extend_i32_u
    local.set 55
    i64.const 16
    local.set 56
    local.get 55
    local.get 56
    i64.shl
    local.set 57
    local.get 54
    local.get 57
    i64.or
    local.set 58
    local.get 3
    i32.load offset=12
    local.set 28
    local.get 28
    i32.load8_u offset=6
    local.set 29
    i32.const 255
    local.set 30
    local.get 29
    local.get 30
    i32.and
    local.set 31
    local.get 31
    i64.extend_i32_u
    local.set 59
    i64.const 8
    local.set 60
    local.get 59
    local.get 60
    i64.shl
    local.set 61
    local.get 58
    local.get 61
    i64.or
    local.set 62
    local.get 3
    i32.load offset=12
    local.set 32
    local.get 32
    i32.load8_u offset=7
    local.set 33
    i32.const 255
    local.set 34
    local.get 33
    local.get 34
    i32.and
    local.set 35
    local.get 35
    i64.extend_i32_u
    local.set 63
    local.get 62
    local.get 63
    i64.or
    local.set 64
    local.get 64
    return)
  (func $sha512_ROTR64 (type 13) (param i64 i32) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i32.const 64
    local.set 5
    local.get 4
    local.get 0
    i64.store offset=8
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 4
    i64.load offset=8
    local.set 11
    local.get 4
    i32.load offset=4
    local.set 6
    local.get 6
    local.set 7
    local.get 7
    i64.extend_i32_u
    local.set 12
    local.get 11
    local.get 12
    i64.shr_u
    local.set 13
    local.get 4
    i64.load offset=8
    local.set 14
    local.get 4
    i32.load offset=4
    local.set 8
    local.get 5
    local.get 8
    i32.sub
    local.set 9
    local.get 9
    local.set 10
    local.get 10
    i64.extend_i32_u
    local.set 15
    local.get 14
    local.get 15
    i64.shl
    local.set 16
    local.get 13
    local.get 16
    i64.or
    local.set 17
    local.get 17
    return)
  (func $lt_modm (type 6) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 5
    local.get 4
    i32.load offset=8
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    i32.const 31
    local.set 8
    local.get 7
    local.get 8
    i32.shr_u
    local.set 9
    local.get 9
    return)
  (func $reduce256_modm (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 64
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 0
    local.set 4
    local.get 3
    local.get 0
    i32.store offset=60
    local.get 3
    local.get 4
    i32.store offset=12
    local.get 3
    local.get 4
    i32.store offset=8
    i32.const 0
    local.set 5
    local.get 5
    i32.load offset=1888
    local.set 6
    local.get 3
    i32.load offset=8
    local.set 7
    local.get 7
    local.get 6
    i32.add
    local.set 8
    local.get 3
    local.get 8
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 9
    local.get 9
    i32.load
    local.set 10
    local.get 3
    i32.load offset=8
    local.set 11
    local.get 10
    local.get 11
    call $lt_modm
    local.set 12
    local.get 3
    local.get 12
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 13
    local.get 13
    i32.load
    local.set 14
    local.get 3
    i32.load offset=8
    local.set 15
    local.get 14
    local.get 15
    i32.sub
    local.set 16
    local.get 3
    i32.load offset=12
    local.set 17
    i32.const 30
    local.set 18
    local.get 17
    local.get 18
    i32.shl
    local.set 19
    local.get 16
    local.get 19
    i32.add
    local.set 20
    local.get 3
    local.get 20
    i32.store offset=16
    local.get 3
    i32.load offset=12
    local.set 21
    local.get 3
    local.get 21
    i32.store offset=8
    i32.const 0
    local.set 22
    local.get 22
    i32.load offset=1892
    local.set 23
    local.get 3
    i32.load offset=8
    local.set 24
    local.get 24
    local.get 23
    i32.add
    local.set 25
    local.get 3
    local.get 25
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 26
    local.get 26
    i32.load offset=4
    local.set 27
    local.get 3
    i32.load offset=8
    local.set 28
    local.get 27
    local.get 28
    call $lt_modm
    local.set 29
    local.get 3
    local.get 29
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 30
    local.get 30
    i32.load offset=4
    local.set 31
    local.get 3
    i32.load offset=8
    local.set 32
    local.get 31
    local.get 32
    i32.sub
    local.set 33
    local.get 3
    i32.load offset=12
    local.set 34
    i32.const 30
    local.set 35
    local.get 34
    local.get 35
    i32.shl
    local.set 36
    local.get 33
    local.get 36
    i32.add
    local.set 37
    local.get 3
    local.get 37
    i32.store offset=20
    local.get 3
    i32.load offset=12
    local.set 38
    local.get 3
    local.get 38
    i32.store offset=8
    i32.const 0
    local.set 39
    local.get 39
    i32.load offset=1896
    local.set 40
    local.get 3
    i32.load offset=8
    local.set 41
    local.get 41
    local.get 40
    i32.add
    local.set 42
    local.get 3
    local.get 42
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 43
    local.get 43
    i32.load offset=8
    local.set 44
    local.get 3
    i32.load offset=8
    local.set 45
    local.get 44
    local.get 45
    call $lt_modm
    local.set 46
    local.get 3
    local.get 46
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 47
    local.get 47
    i32.load offset=8
    local.set 48
    local.get 3
    i32.load offset=8
    local.set 49
    local.get 48
    local.get 49
    i32.sub
    local.set 50
    local.get 3
    i32.load offset=12
    local.set 51
    i32.const 30
    local.set 52
    local.get 51
    local.get 52
    i32.shl
    local.set 53
    local.get 50
    local.get 53
    i32.add
    local.set 54
    local.get 3
    local.get 54
    i32.store offset=24
    local.get 3
    i32.load offset=12
    local.set 55
    local.get 3
    local.get 55
    i32.store offset=8
    i32.const 0
    local.set 56
    local.get 56
    i32.load offset=1900
    local.set 57
    local.get 3
    i32.load offset=8
    local.set 58
    local.get 58
    local.get 57
    i32.add
    local.set 59
    local.get 3
    local.get 59
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 60
    local.get 60
    i32.load offset=12
    local.set 61
    local.get 3
    i32.load offset=8
    local.set 62
    local.get 61
    local.get 62
    call $lt_modm
    local.set 63
    local.get 3
    local.get 63
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 64
    local.get 64
    i32.load offset=12
    local.set 65
    local.get 3
    i32.load offset=8
    local.set 66
    local.get 65
    local.get 66
    i32.sub
    local.set 67
    local.get 3
    i32.load offset=12
    local.set 68
    i32.const 30
    local.set 69
    local.get 68
    local.get 69
    i32.shl
    local.set 70
    local.get 67
    local.get 70
    i32.add
    local.set 71
    local.get 3
    local.get 71
    i32.store offset=28
    local.get 3
    i32.load offset=12
    local.set 72
    local.get 3
    local.get 72
    i32.store offset=8
    i32.const 0
    local.set 73
    local.get 73
    i32.load offset=1904
    local.set 74
    local.get 3
    i32.load offset=8
    local.set 75
    local.get 75
    local.get 74
    i32.add
    local.set 76
    local.get 3
    local.get 76
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 77
    local.get 77
    i32.load offset=16
    local.set 78
    local.get 3
    i32.load offset=8
    local.set 79
    local.get 78
    local.get 79
    call $lt_modm
    local.set 80
    local.get 3
    local.get 80
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 81
    local.get 81
    i32.load offset=16
    local.set 82
    local.get 3
    i32.load offset=8
    local.set 83
    local.get 82
    local.get 83
    i32.sub
    local.set 84
    local.get 3
    i32.load offset=12
    local.set 85
    i32.const 30
    local.set 86
    local.get 85
    local.get 86
    i32.shl
    local.set 87
    local.get 84
    local.get 87
    i32.add
    local.set 88
    local.get 3
    local.get 88
    i32.store offset=32
    local.get 3
    i32.load offset=12
    local.set 89
    local.get 3
    local.get 89
    i32.store offset=8
    i32.const 0
    local.set 90
    local.get 90
    i32.load offset=1908
    local.set 91
    local.get 3
    i32.load offset=8
    local.set 92
    local.get 92
    local.get 91
    i32.add
    local.set 93
    local.get 3
    local.get 93
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 94
    local.get 94
    i32.load offset=20
    local.set 95
    local.get 3
    i32.load offset=8
    local.set 96
    local.get 95
    local.get 96
    call $lt_modm
    local.set 97
    local.get 3
    local.get 97
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 98
    local.get 98
    i32.load offset=20
    local.set 99
    local.get 3
    i32.load offset=8
    local.set 100
    local.get 99
    local.get 100
    i32.sub
    local.set 101
    local.get 3
    i32.load offset=12
    local.set 102
    i32.const 30
    local.set 103
    local.get 102
    local.get 103
    i32.shl
    local.set 104
    local.get 101
    local.get 104
    i32.add
    local.set 105
    local.get 3
    local.get 105
    i32.store offset=36
    local.get 3
    i32.load offset=12
    local.set 106
    local.get 3
    local.get 106
    i32.store offset=8
    i32.const 0
    local.set 107
    local.get 107
    i32.load offset=1912
    local.set 108
    local.get 3
    i32.load offset=8
    local.set 109
    local.get 109
    local.get 108
    i32.add
    local.set 110
    local.get 3
    local.get 110
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 111
    local.get 111
    i32.load offset=24
    local.set 112
    local.get 3
    i32.load offset=8
    local.set 113
    local.get 112
    local.get 113
    call $lt_modm
    local.set 114
    local.get 3
    local.get 114
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 115
    local.get 115
    i32.load offset=24
    local.set 116
    local.get 3
    i32.load offset=8
    local.set 117
    local.get 116
    local.get 117
    i32.sub
    local.set 118
    local.get 3
    i32.load offset=12
    local.set 119
    i32.const 30
    local.set 120
    local.get 119
    local.get 120
    i32.shl
    local.set 121
    local.get 118
    local.get 121
    i32.add
    local.set 122
    local.get 3
    local.get 122
    i32.store offset=40
    local.get 3
    i32.load offset=12
    local.set 123
    local.get 3
    local.get 123
    i32.store offset=8
    i32.const 0
    local.set 124
    local.get 124
    i32.load offset=1916
    local.set 125
    local.get 3
    i32.load offset=8
    local.set 126
    local.get 126
    local.get 125
    i32.add
    local.set 127
    local.get 3
    local.get 127
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 128
    local.get 128
    i32.load offset=28
    local.set 129
    local.get 3
    i32.load offset=8
    local.set 130
    local.get 129
    local.get 130
    call $lt_modm
    local.set 131
    local.get 3
    local.get 131
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 132
    local.get 132
    i32.load offset=28
    local.set 133
    local.get 3
    i32.load offset=8
    local.set 134
    local.get 133
    local.get 134
    i32.sub
    local.set 135
    local.get 3
    i32.load offset=12
    local.set 136
    i32.const 30
    local.set 137
    local.get 136
    local.get 137
    i32.shl
    local.set 138
    local.get 135
    local.get 138
    i32.add
    local.set 139
    local.get 3
    local.get 139
    i32.store offset=44
    local.get 3
    i32.load offset=12
    local.set 140
    local.get 3
    local.get 140
    i32.store offset=8
    i32.const 0
    local.set 141
    local.get 141
    i32.load offset=1920
    local.set 142
    local.get 3
    i32.load offset=8
    local.set 143
    local.get 143
    local.get 142
    i32.add
    local.set 144
    local.get 3
    local.get 144
    i32.store offset=8
    local.get 3
    i32.load offset=60
    local.set 145
    local.get 145
    i32.load offset=32
    local.set 146
    local.get 3
    i32.load offset=8
    local.set 147
    local.get 146
    local.get 147
    call $lt_modm
    local.set 148
    local.get 3
    local.get 148
    i32.store offset=12
    local.get 3
    i32.load offset=60
    local.set 149
    local.get 149
    i32.load offset=32
    local.set 150
    local.get 3
    i32.load offset=8
    local.set 151
    local.get 150
    local.get 151
    i32.sub
    local.set 152
    local.get 3
    i32.load offset=12
    local.set 153
    i32.const 16
    local.set 154
    local.get 153
    local.get 154
    i32.shl
    local.set 155
    local.get 152
    local.get 155
    i32.add
    local.set 156
    local.get 3
    local.get 156
    i32.store offset=48
    local.get 3
    i32.load offset=12
    local.set 157
    i32.const 1
    local.set 158
    local.get 157
    local.get 158
    i32.sub
    local.set 159
    local.get 3
    local.get 159
    i32.store offset=4
    local.get 3
    i32.load offset=4
    local.set 160
    local.get 3
    i32.load offset=60
    local.set 161
    local.get 161
    i32.load
    local.set 162
    local.get 3
    i32.load offset=16
    local.set 163
    local.get 162
    local.get 163
    i32.xor
    local.set 164
    local.get 160
    local.get 164
    i32.and
    local.set 165
    local.get 3
    i32.load offset=60
    local.set 166
    local.get 166
    i32.load
    local.set 167
    local.get 167
    local.get 165
    i32.xor
    local.set 168
    local.get 166
    local.get 168
    i32.store
    local.get 3
    i32.load offset=4
    local.set 169
    local.get 3
    i32.load offset=60
    local.set 170
    local.get 170
    i32.load offset=4
    local.set 171
    local.get 3
    i32.load offset=20
    local.set 172
    local.get 171
    local.get 172
    i32.xor
    local.set 173
    local.get 169
    local.get 173
    i32.and
    local.set 174
    local.get 3
    i32.load offset=60
    local.set 175
    local.get 175
    i32.load offset=4
    local.set 176
    local.get 176
    local.get 174
    i32.xor
    local.set 177
    local.get 175
    local.get 177
    i32.store offset=4
    local.get 3
    i32.load offset=4
    local.set 178
    local.get 3
    i32.load offset=60
    local.set 179
    local.get 179
    i32.load offset=8
    local.set 180
    local.get 3
    i32.load offset=24
    local.set 181
    local.get 180
    local.get 181
    i32.xor
    local.set 182
    local.get 178
    local.get 182
    i32.and
    local.set 183
    local.get 3
    i32.load offset=60
    local.set 184
    local.get 184
    i32.load offset=8
    local.set 185
    local.get 185
    local.get 183
    i32.xor
    local.set 186
    local.get 184
    local.get 186
    i32.store offset=8
    local.get 3
    i32.load offset=4
    local.set 187
    local.get 3
    i32.load offset=60
    local.set 188
    local.get 188
    i32.load offset=12
    local.set 189
    local.get 3
    i32.load offset=28
    local.set 190
    local.get 189
    local.get 190
    i32.xor
    local.set 191
    local.get 187
    local.get 191
    i32.and
    local.set 192
    local.get 3
    i32.load offset=60
    local.set 193
    local.get 193
    i32.load offset=12
    local.set 194
    local.get 194
    local.get 192
    i32.xor
    local.set 195
    local.get 193
    local.get 195
    i32.store offset=12
    local.get 3
    i32.load offset=4
    local.set 196
    local.get 3
    i32.load offset=60
    local.set 197
    local.get 197
    i32.load offset=16
    local.set 198
    local.get 3
    i32.load offset=32
    local.set 199
    local.get 198
    local.get 199
    i32.xor
    local.set 200
    local.get 196
    local.get 200
    i32.and
    local.set 201
    local.get 3
    i32.load offset=60
    local.set 202
    local.get 202
    i32.load offset=16
    local.set 203
    local.get 203
    local.get 201
    i32.xor
    local.set 204
    local.get 202
    local.get 204
    i32.store offset=16
    local.get 3
    i32.load offset=4
    local.set 205
    local.get 3
    i32.load offset=60
    local.set 206
    local.get 206
    i32.load offset=20
    local.set 207
    local.get 3
    i32.load offset=36
    local.set 208
    local.get 207
    local.get 208
    i32.xor
    local.set 209
    local.get 205
    local.get 209
    i32.and
    local.set 210
    local.get 3
    i32.load offset=60
    local.set 211
    local.get 211
    i32.load offset=20
    local.set 212
    local.get 212
    local.get 210
    i32.xor
    local.set 213
    local.get 211
    local.get 213
    i32.store offset=20
    local.get 3
    i32.load offset=4
    local.set 214
    local.get 3
    i32.load offset=60
    local.set 215
    local.get 215
    i32.load offset=24
    local.set 216
    local.get 3
    i32.load offset=40
    local.set 217
    local.get 216
    local.get 217
    i32.xor
    local.set 218
    local.get 214
    local.get 218
    i32.and
    local.set 219
    local.get 3
    i32.load offset=60
    local.set 220
    local.get 220
    i32.load offset=24
    local.set 221
    local.get 221
    local.get 219
    i32.xor
    local.set 222
    local.get 220
    local.get 222
    i32.store offset=24
    local.get 3
    i32.load offset=4
    local.set 223
    local.get 3
    i32.load offset=60
    local.set 224
    local.get 224
    i32.load offset=28
    local.set 225
    local.get 3
    i32.load offset=44
    local.set 226
    local.get 225
    local.get 226
    i32.xor
    local.set 227
    local.get 223
    local.get 227
    i32.and
    local.set 228
    local.get 3
    i32.load offset=60
    local.set 229
    local.get 229
    i32.load offset=28
    local.set 230
    local.get 230
    local.get 228
    i32.xor
    local.set 231
    local.get 229
    local.get 231
    i32.store offset=28
    local.get 3
    i32.load offset=4
    local.set 232
    local.get 3
    i32.load offset=60
    local.set 233
    local.get 233
    i32.load offset=32
    local.set 234
    local.get 3
    i32.load offset=48
    local.set 235
    local.get 234
    local.get 235
    i32.xor
    local.set 236
    local.get 232
    local.get 236
    i32.and
    local.set 237
    local.get 3
    i32.load offset=60
    local.set 238
    local.get 238
    i32.load offset=32
    local.set 239
    local.get 239
    local.get 237
    i32.xor
    local.set 240
    local.get 238
    local.get 240
    i32.store offset=32
    i32.const 64
    local.set 241
    local.get 3
    local.get 241
    i32.add
    local.set 242
    local.get 242
    global.set 0
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 71392))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\a3xY\03\84r\d3\00\bdn\15\03\0e\0aj\00)\c0\01\00\98\e8y\01\bb<\a0\03\98q\ce\01\ff\b6\e2\02\b3\0dH\01\00\00\00\00\00\00\00\00\b0\a0\0e\02\d2\c9\86\01\9d\18\8f\00\7fi5\00`\0c\bd\00\a7\d7\fb\01\9eL\80\02ie\e1\01\1d\fc\04\00\92\0c\ae\00\01\00\00\00\00\00\00\00\22\ae(\d7\98/\8aB\cde\ef#\91D7q/;M\ec\cf\fb\c0\b5\bc\db\89\81\a5\db\b5\e98\b5H\f3[\c2V9\19\d0\05\b6\f1\11\f1Y\9bO\19\af\a4\82?\92\18\81m\da\d5^\1c\abB\02\03\a3\98\aa\07\d8\beopE\01[\83\12\8c\b2\e4N\be\851$\e2\b4\ff\d5\c3}\0cUo\89{\f2t]\ber\b1\96\16;\fe\b1\de\805\12\c7%\a7\06\dc\9b\94&i\cft\f1\9b\c1\d2J\f1\9e\c1i\9b\e4\e3%O8\86G\be\ef\b5\d5\8c\8b\c6\9d\c1\0fe\9c\acw\cc\a1\0c$u\02+Yo,\e9-\83\e4\a6n\aa\84tJ\d4\fbA\bd\dc\a9\b0\5c\b5S\11\83\da\88\f9v\ab\dff\eeRQ>\98\102\b4-m\c61\a8?!\fb\98\c8'\03\b0\e4\0e\ef\be\c7\7fY\bf\c2\8f\a8=\f3\0b\e0\c6%\a7\0a\93G\91\a7\d5o\82\03\e0Qc\ca\06pn\0e\0ag))\14\fc/\d2F\85\0a\b7'&\c9&\5c8!\1b.\ed*\c4Z\fcm,M\df\b3\95\9d\13\0d8S\dec\af\8bTs\0ae\a8\b2w<\bb\0ajv\e6\ae\edG.\c9\c2\81;5\82\14\85,r\92d\03\f1L\a1\e8\bf\a2\010B\bcKf\1a\a8\91\97\f8\d0p\8bK\c20\beT\06\a3Ql\c7\18R\ef\d6\19\e8\92\d1\10\a9eU$\06\99\d6* qW\855\0e\f4\b8\d1\bb2p\a0j\10\c8\d0\d2\b8\16\c1\a4\19S\abAQ\08l7\1e\99\eb\8e\dfLwH'\a8H\9b\e1\b5\bc\b04cZ\c9\c5\b3\0c\1c9\cb\8aA\e3J\aa\d8Ns\e3cwO\ca\9c[\a3\b8\b2\d6\f3o.h\fc\b2\ef]\ee\82\8ft`/\17Coc\a5xr\ab\f0\a1\14x\c8\84\ec9d\1a\08\02\c7\8c(\1ec#\fa\ff\be\90\e9\bd\82\de\eblP\a4\15y\c6\b2\f7\a3\f9\be+Sr\e3\f2xq\c6\9ca&\ea\ce>'\ca\07\c2\c0!\c7\b8\86\d1\1e\eb\e0\cd\d6}\da\eax\d1n\ee\7fO}\f5\bao\17r\aag\f0\06\a6\98\c8\a2\c5}c\0a\ae\0d\f9\be\04\98?\11\1bG\1c\135\0bq\1b\84}\04#\f5w\db(\93$\c7@{\ab\ca2\bc\be\c9\15\0a\be\9e<L\0d\10\9c\c4g\1dC\b6B>\cb\be\d4\c5L*~e\fc\9c)\7fY\ec\fa\d6:\abo\cb_\17XGJ\8c\19Dl\1b\13,\0a\8c\96s6~\9a2\06BW\88\01!\eb\ff?\ff\ff\ff?\ff\ff\ff?\ff\ff\ff?\ff\ff\0f\00\00\00\00\00\00\00\00\00\00\00\00\00\ed\d3\f5\1ci\8cI e\cdy/\a8w\be7\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00>\91@\03uA\0e\00\a2s\d6\03\05\8a.\00|\e6\f4\03\09\8a\8f\004\1a\c2\00\b8\f4L\00\81\8f)\01\be\f4\13\01\85;\8c\01\bd\f1$\01\f7%\c3\01`\dc7\00\b7L>\03\c2B=\002L\a4\01\e1\a4L\01K=\a3\03t>\1f\00h\aaz\03a\81D\00y\d5\93\00Ve\1e\01\a0g\9b\00\8cYC\01\ee\e5\be\01C\0b\b5\00\c6\f0\89\02\edE\bc\01e\d2\fc\00)\faG\00\cc\aaO\03\0d.\ef\01OM\ef\00\bd\d6K\01\10\8d\f9\00&PL\01\bdUu\00V\e4\aa\000\97\ee\00\13*l\01\e4Uq\012D\87\01\10j\09\002g\01\01O\01\a8\01#\98\1e\01\0f\a8\b9\018Y\e8\01\89\d8\d0\01\c3\cf\a4\01\95BL\03\ae\e1\10\01\8cPb\01L\db\f2\00\c6\a2r\00.\da\98\00\9b+\f1\02\9a\a0h\01\ba\d6G\00\e9\b0`\00\f2\ef6\019Y\8a\00S\00T\03\87\a0d\00\5c\8ex\02g|\be\00\b5\b1>\03\f9)U\003\bb\a5\00\02\11\af\00BT\a0\01\f7:\1e\00#A5\02D\ec\bf\00-\86\f5\01\a3{\dd\00 n\14\033\17\a5\00\85\82*\01`\fc\f6\00\97\97?\02\ee\85>\00 8\9c\00-\a7\bd\01\8d\85\b3\01\83V\d3\00\bb\b3\96\02\f9\aa\0e\01\b1!2\02\aa&\cb\01M\f7t\00\d1\dd\99\00\85\80\b2\01:,\19\00\c9';\01\bd\13\fc\001\e5\d2\01u\bbu\00\bf\a3N\00%4\97\00cM\1a\00\ee\9c\d5\01\d4\c0\d1\01I.T\00\14A)\016\ceO\00\c9\83\92\02\a9o\18\01\a2\b3\b8\01\00r\db\000^\93\00\f5)8\00}\0d\cc\02\f3\adw\00,\dd \02S\ea\14\00\f9\a0\c6\01\ec~\ea\01d\80\9d\03\80_\88\01m~3\00\02\a9\b7\01\06\82b\02D\b0^\01s\04\e3\01\d9\f2\91\01\c9\ad\1f\01i\01'\01/c\a8\02\a9\e2\99\01e\b3\d8\00\e2\8dz\01yB\99\02\b5\f5\86\00\e3\e4\19\01\d69\eb\01\d7\ad8\03\b4\e7\d2\00\1b\afE\00\e4/:\01\d6\e0E\02\ce8E\01\0f\fe\8b\03\16\cf\d4\01\c9\14~\03^\d5`\01\08\b0!\00\c8\05\cf\01HC\86\01\92\c0\d6\01+&p\00D\b8K\01\cdZ\fb\00\95\eb\8d\00\b5\aa:\00t\f4\ef\00\5c\9d\02\00f\adb\00\de*\80\02\22!\c0\01\f7\e5\c4\01\81\11x\00\fbg\97\03\064p\01\8b8B\03'\e2\f5\01\d8F%\02\ab\d6\09\01\e9\89`\01\7f1\cb\00\05\9b\94\00\17\94\09\01\d2z\0c\00\22\86\1a\01\da\cc\88\00\86\08)\01\dfS+\02T\19\f7\00\93\bf\7f\02\ccN\c0\01\0dj\ed\01\bb\dbL\00\af\f3\bb\02hY\ad\00U\19Y\01\a2\f3\94\00\02v\d1\02 \9e\09\00m\7f\00\02\a8\880\00\eew\db\03\e6\ad\d5\00\ce\12\fe\02\07\ba\07\01}\09\07\01o*H\00o4\ec\02_?\8d\00x\a3.\03\5cF(\00l*\8e\02n\fc\8e\01\9a\df\90\003\e5\a7\01H\fc\9b\03]t\0c\01\97\a0\da\03\9b\ee%\01\0b\cf\8c\02\91a\f3\00\81\c0\1a\02\c8T!\01n\0aN\03\92Q\b2\01\03\04\18\00\a1\ee\d7\01\05\8d!\005\d7\0e\01\a0\ea\cf\03\c4\00\b3\01\99\a4\8d\00\e1\c4h\00\0a#\19\02\d0\d4\f2\01`\fd\de\02\b7e\e5\00\de\12\7f\01\a4\88\87\01\16\b5\d0\03\e6\8b\9d\00\b3\cb\dd\03\fe\b9q\00\bd\e2\ac\03pB\d6\01\c9>-\03e@\08\01M\ae\10\02\84uD\01\87\de \00\11\92\e1\00\02\81\b6\01\97\ac\b5\00\c0s(\02%-\94\01\94\13'\01?\07\02\01\82$\fe\02\f9\9f\c6\01\81\9d\0e\01\e5\bb\9d\01X\f2\89\00\b8\06n\00\83\18\95\02H\12\8f\0172\9b\01Su\bc\00\85\dbM\02d\c9\b4\01T\c8\c8\01)\ae`\00\8em@\01\f9\f2\cf\01Q\f4\cf\00\0c\8dw\01A\8c\ac\03Y.U\01\eeYe\03\12\1b\1d\01G\11t\00\19\b2Q\01\90&\09\01\e6w\e8\00\bb\d6\f4\012\a3r\00\03;\cd\01\f2\df\da\00^\db\97\00\8dY\86\00+\9a\c6\01\1b\cf\de\01n\fa\c2\02O|;\01\c8\ea{\03\b5\16:\01\da{\8e\02\ac\e8\f6\01\e9O\e3\01Gir\01g\0e\f1\01\des<\00\a2~+\02\c22\0f\01jw\ff\03w\22\14\00\88\8b\d3\018aw\00\22\08\c6\03@\11 \01u\d16\02\8et\08\00mG\c6\03\dcL?\01*\d0\ee\02G\8a\83\00\10r.\03\b3\cb\8b\01\e4\8d\85\00&x\dc\01\c7\7f\a3\00\0b\b4'\01\84x\95\01\ad0\1d\01\83f\81\02#\0en\01\e4k\b7\00\15\b1-\01\06eQ\02b\ceT\01\df\1eE\00\9et\bd\00Bs\99\03L,\cc\01ui\eb\00\08\95\a5\01\cf\16\a5\03\ef(\c2\00Z\ffh\01G{i\01YsR\00V1x\01\5c\d7\af\03\dcV\ce\00p\b9\e4\00\e9\ab\1c\00m\0f\9e\02\0c\85\88\01\fd\fe5\01\80m\06\00\83\0e\15\02\bf\8aD\012\02\bb\02Y\f2+\01h\82<\03 \1eq\00\8f\14\fc\03p\0e^\00\f9\8b}\01\e2\b2\12\01\83K\13\02\17\05\1a\00\cc\c3\82\01\82!y\00\99\d7\13\03\d7>\1a\00~TD\03\0dJ\f2\01\d2j\de\03'1T\00h\a8\dc\00'\8fa\00\09\17Z\01\8a\c3\dd\00\13\fd \03\8d\166\00\06\abq\03\c7?x\01_\e0\91\03]\9b\e2\018\11G\01B\a5\fc\00\cf1\ca\00\ad{\ca\01\bc\bfu\01\ad\08\a7\01\12\e2\bc\03\15B$\01\99\bbu\00h\ad\ac\01v\b9\a0\03\d1\12\dc\01\17\ab\1a\01\ba\a0\ab\00\cd\06\98\02\90\f5B\01\ea\d8\8f\01E\15\a0\01U\ad\c4\03\ffq\c9\01\c0\98\d0\00\c7\fd\0a\000\d2l\00\f3j'\01\b2\05\f9\03L\99\02\01\a4\b8.\00\eb\fb\5c\01_\85_\02\18U3\01\b2\99\cf\01t\c5\99\00\88\9c\a6\01\10\15\88\00TK\cd\01\9f\10\12\01\c5\bd\8a\00zdt\00\1f\cbw\02$3\e5\01SP\ac\02\b0\09\b1\01^\09K\02\b3\97i\01\b6k\f2\02!\101\00\85x\19\00Z\a5\d0\01\c8\fc\b6\03\d5 \c0\014JX\02\e0\ee\e7\00\03z%\03\a3\95\1e\01\91\ad\1e\01\02bS\00$\ce\b1\00\c6\16\85\00m\9df\03\a8\a4N\00\01?w\00\ce\c9\19\00qa\9f\01\de\af\d4\01#3\e3\02\b6)\ad\01\dc\d1\ea\02\a5Q\ed\01\d0\1a\85\01\fa\bd\1b\00\e5}W\000\c7\dd\00R\99\8b\03\ae\81\f2\00\90\03\d5\01q\e0\02\00\ec\80\07\00\8dD\0d\01\af\a2\f8\01\b7\a5\f0\00A%\1f\03\aeK\d3\00\9d\ff#\03m\05:\00CT\e2\02\05\ad\a1\00\e8\be\d1\00\8e\7f/\00wt\00\03\b1$*\00\13\a7\14\01v~E\01\d5U\22\03\7fd\cc\01\ef\bd\a4\020\d7S\01\cf\8b\11\00\ffU\f7\00\c7\904\01Ng\ea\01\e8\a3\bd\02\0dI\bb\00\ea\91\f2\00@\bf\0a\00!\a3\de\01\e0\9c/\00\93\b1\b2\00\b5T\fa\00/0(\01\8b\9d\a1\00\bd\f5.\02\f3\8ac\01\8ao\8c\03=:\a3\01\b2a\92\03\b8\89\bb\01\9d\cf\0b\01\a9B\cf\00\17o=\02\ca\1b\da\01%[\e3\00O\82\0d\00\cf\e9R\01]\93\ed\00`\84\0b\02?\b8\c7\01\e5i\c9\00\98A\a7\01\d9\a9F\00h\c7\cb\00j|Y\01\9b\a9D\01Qu\a5\00\9c&\18\00LF<\02\22\b0\09\00\e19\ee\00\f2\c7\14\01\d2\9a\8a\03\17LX\01\d5\c0\b0\039\0a\b3\00\e4l\8a\03:\d8\de\01\a6w\c2\01a\0a\01\01\eb\d3F\03^\99\8d\01|\c5\f2\02k(\0c\00\d1\ae\92\00{\e3%\01\01\a2|\02kk\1a\00U\0f)\03H\baG\00l\91\8d\01b\90\a5\01\d45>\01\b1\ab\02\00\aa\d2:\00\c0\dc}\00v\0f\c1\00\0bY\01\00\a6\fc,\00>\d2\0e\00)C\ee\00\04\0f\90\00e@\c2\01p\fa\82\00`^\02\02\b8\129\00\1c\04'\03\e5^~\01\ec\ec\c0\02\1c\0dZ\01|\ce\b1\02\0b\22b\00~\06E\011\d9\a5\01\a6s\96\00\09\f6\e1\00*|\92\007\aao\01\f0\0ee\01\b5co\01\e1@\cd\03\8f\c3;\00\ac\f0a\03\cc*\d4\017\10\f8\02\e8\a0\8c\00\d1#~\01\fe\eb\1d\01h\bb\bc\01c%.\00\d6\ad\e8\03\e5\16\08\00up\fb\03\ac\e5S\01\cd\1e\b1\02\85\f1k\01\ef\22\8f\00\bb\d2\e7\00.\d9%\02\85\e7\ec\00s\88P\00\f5\16~\01]\e8\fb\01\0e\9a\e3\01y\92f\01\0a\81|\01\f5AI\02\eb\eb#\00\88v\eb\00\f1`W\00FA\ca\02\e7\cds\00u\bbR\00\a7\ff\f5\00k\85\b8\03\cd}\cb\00\06N\f1\02\d0 \18\00uA\d7\01\22\9e\e5\00P\a5\fb\03AFH\00\88\005\03\a3\c9\c3\01U\f3\dc\00\1cH\04\01d\e4\22\00\e7?\f7\01%3\e0\00\98\b6R\01\9av\ef\02c6\97\00\8c\9b\03\00[9\01\01G_\80\01\ec`\91\01\d0,\83\03\eb\06\8b\00\17\d7\d4\03\06\b0L\00\8f[\a7\030=;\01\88\ad\cf\01\d14\f0\01\8a3x\00\e3\d2\c7\01#+\bc\02\05?\8b\01\aa\d9\80\02D=_\00Z\a9 \02\97\eb\ee\00\ec\aab\03Q]\83\00C\f5\b9\01M\ac?\01\ae\93\ad\02d\f4\8e\01\f7\cd\12\02\a9\8b\13\01\ab\83\15\01&=\9c\01\b4\90\87\02\b6\e2\e2\00X\b7;\03\f1\db\f0\01\d1Ks\03\e5\b1)\01\0e\95\b3\02\22\c9;\00\c8>\a5\012U\8c\01\ee<o\00y<\ae\00]\f9Q\037\a7\12\00\b8\96\d5\03\feXv\01J\e5\ac\00\daf\8b\00\99\c56\00\a2c*\01\a1\eb,\03\ack\12\00~\fe\dc\03\18O\9f\01\ee\1a\c8\01+\bcD\00eq\82\00\13|O\01\f00\b4\03\cc\96\bf\00b\8d\0c\02\97\19G\011y\fc\01\ddB\1f\00Ju\ba\009\d3[\00I\be?\0009k\01\9c\15*\01\b0\83\9f\00g\0fS\03\85{\e5\01\81\bd\ec\02\94\c2\96\00\a9\e4\fc\01\a5\01w\01}\04u\011J\ee\00\e5\86&\01\d4\fc\8e\00T\dcI\03oF\b3\01\a3\9c\17\02\14d\d8\01\d0\af\f0\03dY0\00(t\5c\01\1eq\99\00BT]\01\14\10\c7\00.\0b\b4\01\cf\83\d4\01\86\c3\af\01YH\98\01\ff\03b\03\a8\c6E\00\aa\a8 \00\aa\0b\99\00\10?1\03\de\ee|\00\e4)t\02\ce\06x\01\a1W\93\03\f4\f8B\01\b6\a7\94\02\f4\cc\ea\00\b3\edY\02n\1e1\01o2M\00F\c30\01<\ef\cc\01\b2$\c4\01\8c\91d\03\c0\8f\14\00{\8ac\01[\fd\a1\01\13\d0\8a\02\a4\e5\81\003O\a5\01\01\e1t\01W\02=\00l\85:\00\cf\1d\05\00\1d+\f6\00\ad\d0C\01\bd\adB\00\90\da\0f\00\eb<t\01\e4\e5s\01I\c7{\01z\13\b7\03\96\ce\05\01\8a!\f9\00|\8c[\01\f8\02\e1\00\e2\d7X\01\b8\a5i\01v\f1\b2\00z4\8b\01\f2\feL\01\e3\a4\14\02\95\15\7f\01\e5zm\00q\c3\95\01m\e2\91\03\c6\a7b\00\abB?\00\86\ad\0d\01\98\81O\02*+T\01T\c4\14\00q\c4\89\01\8e\98\90\03\9dy\b8\00\12I\e4\02\e6\e2x\00TV\07\00\ed>\92\01r\cd@\00v|\a3\00f\d4\09\00\1dS\c8\00p\17e\02\01\9d`\00e\c2\86\02<Q4\01\81\92\ee\00<\22]\00\0cv\5c\036\9bg\00\b8\ecs\00P\aao\01\e4\9b\c8\02D\c2o\01\83\8c\f3\02r\eb\8b\01,\ce\b3\02e\b0\97\00{\01O\03\7f\95\dd\01a\8f\14\00W\b3\ea\00\f8\d2C\03\fc\983\00\8e6\1e\01\1f*x\00\ea\9e\01\00o{\11\00\d1\d0(\01\bb\e6\a5\01\1bO\94\01\e1A+\01\01\831\030\cd\8e\01\b1\d0\04\01\8b98\00\01gr\03\8c\a8\9d\01i\97-\00\81\a6\a7\00(\90\1d\032\fc\eb\00^@ \02\ce\faq\01\f80\d9\02jm\7f\01G\8c;\02\f9\d5)\01V$\97\02$\a5\a3\00\d2Lo\00\fa9D\00\055\c5\00\fd\c2\90\01DrP\00\f90\99\00p\92\a3\01\c6'\d3\01G\bc\99\03=\e1\cf\01\99\bd2\03}>\b3\00\e4\f5\03\02\b5'6\00\f8\8a\01\00\81\85G\01\18\22J\00\b7;.\00\d0\84\93\03b\eaF\01\93\96\0b\02_\15\17\00o~\c9\03G\8cs\00\1f\db\b5\03\cf\8f\80\01\98\fc\e8\01\dd%\ed\01EP\bf\01+\5c\eb\00\98\fex\010U\b8\01\b0\0e\c2\01\22\ec\ae\01\ee\9e\0b\03~\d0\b7\01o\e1\87\01\fb!D\011\a7\9f\00\d7\b6@\00a\18\84\00\bc\7f\a2\00\bf\9a\d6\02\bf\cdX\00\ec\f9)\01\ae\19<\01\93[l\02\e7\7f:\01\ba\b2K\00o\22c\00\ca\95*\00\d9\ef\ab\01\c1\d2\f5\02\18\837\00\b5Os\03s\80%\01\f6\f0c\02\e0p\ad\01\06m\b5\01\bd\8f\18\01\03\95\1b\01\e1\d26\00\cc\a8\13\01>\1cT\01\bc+\ac\02gX\d9\01Yt\f4\01\89\d4\ea\00H[\ab\00E;\db\01\01\b8\ed\00O\02K\00\0f\19\b8\00\c2\e4\1f\01\82\1fb\00\d7\08\05\01vZ\1a\00\fd\d7\c7\00m\b9\aa\03\dc\d9\9c\015f\9c\01\1e\aa\ce\00\f2\5c\08\01\afG\fd\01\e1\f5\e3\03\99>K\00j\d4\e3\01<\03`\00\a8\f0_\01\d8\cdP\01!\8e\9e\02\bc\f1\8c\00\b1l\15\00?b=\00i\f0\a4\01S\d0\d8\00\ea\8a\b6\01\b6Z\ca\01C\ae\16\03D\dc4\01X\8d\1c\00C\b3\84\00\81\c7\18\03\1fD5\01^\1a\a5\03\f4\93\92\017\bbH\00A3=\01\1e\15C\01\e1t\9c\01\14\19\91\00\de\ddv\00o\c2k\00_\8e\d4\00\be{\22\00\a8\9eb\00\8b_\ea\010\a3y\01_\1dz\02\8e\8f\bf\01*n\d2\02^\b6\c6\00\b6\1ap\01w\daQ\00g\b6\b4\01|\ce\a0\00{\e3\8a\03R\c8*\01\fe\b0\a0\03\bb\c2\97\00\d2\17\a0\00*\8b\eb\01b\b9 \01B\fb\05\00\fd\b6S\03\ce\f8a\00c\14z\00d\0aV\01\92\a7\e0\00\92|\90\01\22f:\01\f1G{\00Y\f1\b2\02\09\e5\a6\01z\dd*\02\1d\14\d4\00R\80\03\000\d1\f3\00wy@\031\e3\9c\01\ffm\c5\01g\1b\90\00")
  (data (;1;) (i32.const 5816) "\e0\16\01\00")
  (data (;2;) (i32.const 5824) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
