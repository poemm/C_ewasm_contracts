(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i64) (result i64)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i64) (result i32)))
  (type (;7;) (func (param i64 i64 i64) (result i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32 i32 i64 i32) (result i32)))
  (type (;13;) (func (param i32) (result i64)))
  (type (;14;) (func (param i64 i32) (result i64)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 10)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_loadPreStateRoot" (func $eth2_loadPreStateRoot (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 5) (param i32) (result i32)
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
    i32.load offset=2880
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
    i32.store offset=2880
    i32.const 0
    local.set 33
    local.get 33
    i32.load offset=2880
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
  (func $vn (type 11) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 32
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    i32.const 0
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
    local.get 6
    i32.store offset=12
    local.get 5
    local.get 6
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=16
        local.set 7
        local.get 5
        i32.load offset=20
        local.set 8
        local.get 7
        local.set 9
        local.get 8
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
        local.get 5
        i32.load offset=28
        local.set 14
        local.get 5
        i32.load offset=16
        local.set 15
        local.get 14
        local.get 15
        i32.add
        local.set 16
        local.get 16
        i32.load8_u
        local.set 17
        i32.const 255
        local.set 18
        local.get 17
        local.get 18
        i32.and
        local.set 19
        local.get 5
        i32.load offset=24
        local.set 20
        local.get 5
        i32.load offset=16
        local.set 21
        local.get 20
        local.get 21
        i32.add
        local.set 22
        local.get 22
        i32.load8_u
        local.set 23
        i32.const 255
        local.set 24
        local.get 23
        local.get 24
        i32.and
        local.set 25
        local.get 19
        local.get 25
        i32.xor
        local.set 26
        local.get 5
        i32.load offset=12
        local.set 27
        local.get 27
        local.get 26
        i32.or
        local.set 28
        local.get 5
        local.get 28
        i32.store offset=12
        local.get 5
        i32.load offset=16
        local.set 29
        i32.const 1
        local.set 30
        local.get 29
        local.get 30
        i32.add
        local.set 31
        local.get 5
        local.get 31
        i32.store offset=16
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    i32.load offset=12
    local.set 32
    i32.const 1
    local.set 33
    local.get 32
    local.get 33
    i32.sub
    local.set 34
    i32.const 8
    local.set 35
    local.get 34
    local.get 35
    i32.shr_u
    local.set 36
    i32.const 1
    local.set 37
    local.get 36
    local.get 37
    i32.and
    local.set 38
    i32.const 1
    local.set 39
    local.get 38
    local.get 39
    i32.sub
    local.set 40
    local.get 40
    return)
  (func $crypto_verify_32_tweet (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 32
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=12
    local.set 6
    local.get 4
    i32.load offset=8
    local.set 7
    local.get 6
    local.get 7
    local.get 5
    call $vn
    local.set 8
    i32.const 16
    local.set 9
    local.get 4
    local.get 9
    i32.add
    local.set 10
    local.get 10
    global.set 0
    local.get 8
    return)
  (func $unpack25519 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 5
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 6
        local.get 4
        i32.load offset=4
        local.set 7
        local.get 7
        local.set 8
        local.get 6
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=8
        local.set 13
        local.get 4
        i32.load offset=4
        local.set 14
        i32.const 1
        local.set 15
        local.get 14
        local.get 15
        i32.shl
        local.set 16
        local.get 13
        local.get 16
        i32.add
        local.set 17
        local.get 17
        i32.load8_u
        local.set 18
        i32.const 255
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        local.get 20
        i64.extend_i32_u
        local.set 40
        local.get 4
        i32.load offset=8
        local.set 21
        local.get 4
        i32.load offset=4
        local.set 22
        i32.const 1
        local.set 23
        local.get 22
        local.get 23
        i32.shl
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.add
        local.set 26
        local.get 21
        local.get 26
        i32.add
        local.set 27
        local.get 27
        i32.load8_u
        local.set 28
        i32.const 255
        local.set 29
        local.get 28
        local.get 29
        i32.and
        local.set 30
        local.get 30
        i64.extend_i32_u
        local.set 41
        i64.const 8
        local.set 42
        local.get 41
        local.get 42
        i64.shl
        local.set 43
        local.get 40
        local.get 43
        i64.add
        local.set 44
        local.get 4
        i32.load offset=12
        local.set 31
        local.get 4
        i32.load offset=4
        local.set 32
        i32.const 3
        local.set 33
        local.get 32
        local.get 33
        i32.shl
        local.set 34
        local.get 31
        local.get 34
        i32.add
        local.set 35
        local.get 35
        local.get 44
        i64.store
        local.get 4
        i32.load offset=4
        local.set 36
        i32.const 1
        local.set 37
        local.get 36
        local.get 37
        i32.add
        local.set 38
        local.get 4
        local.get 38
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 4
    i32.load offset=12
    local.set 39
    local.get 39
    i64.load offset=120
    local.set 45
    i64.const 32767
    local.set 46
    local.get 45
    local.get 46
    i64.and
    local.set 47
    local.get 39
    local.get 47
    i64.store offset=120
    return)
  (func $sel25519 (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    i64.const 0
    local.set 35
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
    local.set 6
    i32.const 1
    local.set 7
    local.get 6
    local.get 7
    i32.sub
    local.set 8
    i32.const -1
    local.set 9
    local.get 8
    local.get 9
    i32.xor
    local.set 10
    local.get 10
    local.set 11
    local.get 11
    i64.extend_i32_s
    local.set 36
    local.get 5
    local.get 36
    i64.store offset=8
    local.get 5
    local.get 35
    i64.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 16
        local.set 37
        local.get 5
        i64.load offset=16
        local.set 38
        local.get 38
        local.set 39
        local.get 37
        local.set 40
        local.get 39
        local.get 40
        i64.lt_u
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
        i64.load offset=8
        local.set 41
        local.get 5
        i32.load offset=44
        local.set 15
        local.get 5
        i64.load offset=16
        local.set 42
        local.get 42
        i32.wrap_i64
        local.set 16
        i32.const 3
        local.set 17
        local.get 16
        local.get 17
        i32.shl
        local.set 18
        local.get 15
        local.get 18
        i32.add
        local.set 19
        local.get 19
        i64.load
        local.set 43
        local.get 5
        i32.load offset=40
        local.set 20
        local.get 5
        i64.load offset=16
        local.set 44
        local.get 44
        i32.wrap_i64
        local.set 21
        i32.const 3
        local.set 22
        local.get 21
        local.get 22
        i32.shl
        local.set 23
        local.get 20
        local.get 23
        i32.add
        local.set 24
        local.get 24
        i64.load
        local.set 45
        local.get 43
        local.get 45
        i64.xor
        local.set 46
        local.get 41
        local.get 46
        i64.and
        local.set 47
        local.get 5
        local.get 47
        i64.store offset=24
        local.get 5
        i64.load offset=24
        local.set 48
        local.get 5
        i32.load offset=44
        local.set 25
        local.get 5
        i64.load offset=16
        local.set 49
        local.get 49
        i32.wrap_i64
        local.set 26
        i32.const 3
        local.set 27
        local.get 26
        local.get 27
        i32.shl
        local.set 28
        local.get 25
        local.get 28
        i32.add
        local.set 29
        local.get 29
        i64.load
        local.set 50
        local.get 50
        local.get 48
        i64.xor
        local.set 51
        local.get 29
        local.get 51
        i64.store
        local.get 5
        i64.load offset=24
        local.set 52
        local.get 5
        i32.load offset=40
        local.set 30
        local.get 5
        i64.load offset=16
        local.set 53
        local.get 53
        i32.wrap_i64
        local.set 31
        i32.const 3
        local.set 32
        local.get 31
        local.get 32
        i32.shl
        local.set 33
        local.get 30
        local.get 33
        i32.add
        local.set 34
        local.get 34
        i64.load
        local.set 54
        local.get 54
        local.get 52
        i64.xor
        local.set 55
        local.get 34
        local.get 55
        i64.store
        local.get 5
        i64.load offset=16
        local.set 56
        i64.const 1
        local.set 57
        local.get 56
        local.get 57
        i64.add
        local.set 58
        local.get 5
        local.get 58
        i64.store offset=16
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $A (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
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
        i32.const 16
        local.set 7
        local.get 5
        i32.load
        local.set 8
        local.get 8
        local.set 9
        local.get 7
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
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
        local.get 5
        i32.load offset=8
        local.set 14
        local.get 5
        i32.load
        local.set 15
        i32.const 3
        local.set 16
        local.get 15
        local.get 16
        i32.shl
        local.set 17
        local.get 14
        local.get 17
        i32.add
        local.set 18
        local.get 18
        i64.load
        local.set 32
        local.get 5
        i32.load offset=4
        local.set 19
        local.get 5
        i32.load
        local.set 20
        i32.const 3
        local.set 21
        local.get 20
        local.get 21
        i32.shl
        local.set 22
        local.get 19
        local.get 22
        i32.add
        local.set 23
        local.get 23
        i64.load
        local.set 33
        local.get 32
        local.get 33
        i64.add
        local.set 34
        local.get 5
        i32.load offset=12
        local.set 24
        local.get 5
        i32.load
        local.set 25
        i32.const 3
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
        local.get 34
        i64.store
        local.get 5
        i32.load
        local.set 29
        i32.const 1
        local.set 30
        local.get 29
        local.get 30
        i32.add
        local.set 31
        local.get 5
        local.get 31
        i32.store
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $Z (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
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
        i32.const 16
        local.set 7
        local.get 5
        i32.load
        local.set 8
        local.get 8
        local.set 9
        local.get 7
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
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
        local.get 5
        i32.load offset=8
        local.set 14
        local.get 5
        i32.load
        local.set 15
        i32.const 3
        local.set 16
        local.get 15
        local.get 16
        i32.shl
        local.set 17
        local.get 14
        local.get 17
        i32.add
        local.set 18
        local.get 18
        i64.load
        local.set 32
        local.get 5
        i32.load offset=4
        local.set 19
        local.get 5
        i32.load
        local.set 20
        i32.const 3
        local.set 21
        local.get 20
        local.get 21
        i32.shl
        local.set 22
        local.get 19
        local.get 22
        i32.add
        local.set 23
        local.get 23
        i64.load
        local.set 33
        local.get 32
        local.get 33
        i64.sub
        local.set 34
        local.get 5
        i32.load offset=12
        local.set 24
        local.get 5
        i32.load
        local.set 25
        i32.const 3
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
        local.get 34
        i64.store
        local.get 5
        i32.load
        local.set 29
        i32.const 1
        local.set 30
        local.get 29
        local.get 30
        i32.add
        local.set 31
        local.get 5
        local.get 31
        i32.store
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $S (type 0) (param i32 i32)
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
    global.set 0
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
    local.get 4
    i32.load offset=8
    local.set 7
    local.get 5
    local.get 6
    local.get 7
    call $M
    i32.const 16
    local.set 8
    local.get 4
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set 0
    return)
  (func $M (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 288
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    i64.const 0
    local.set 64
    local.get 5
    local.get 0
    i32.store offset=284
    local.get 5
    local.get 1
    i32.store offset=280
    local.get 5
    local.get 2
    i32.store offset=276
    local.get 5
    local.get 64
    i64.store offset=264
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 31
        local.set 65
        local.get 5
        i64.load offset=264
        local.set 66
        local.get 66
        local.set 67
        local.get 65
        local.set 68
        local.get 67
        local.get 68
        i64.lt_u
        local.set 6
        i32.const 1
        local.set 7
        local.get 6
        local.get 7
        i32.and
        local.set 8
        local.get 8
        i32.eqz
        br_if 1 (;@1;)
        i64.const 0
        local.set 69
        local.get 5
        local.set 9
        local.get 5
        i64.load offset=264
        local.set 70
        local.get 70
        i32.wrap_i64
        local.set 10
        i32.const 3
        local.set 11
        local.get 10
        local.get 11
        i32.shl
        local.set 12
        local.get 9
        local.get 12
        i32.add
        local.set 13
        local.get 13
        local.get 69
        i64.store
        local.get 5
        i64.load offset=264
        local.set 71
        i64.const 1
        local.set 72
        local.get 71
        local.get 72
        i64.add
        local.set 73
        local.get 5
        local.get 73
        i64.store offset=264
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 74
    local.get 5
    local.get 74
    i64.store offset=264
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 16
        local.set 75
        local.get 5
        i64.load offset=264
        local.set 76
        local.get 76
        local.set 77
        local.get 75
        local.set 78
        local.get 77
        local.get 78
        i64.lt_u
        local.set 14
        i32.const 1
        local.set 15
        local.get 14
        local.get 15
        i32.and
        local.set 16
        local.get 16
        i32.eqz
        br_if 1 (;@1;)
        i64.const 0
        local.set 79
        local.get 5
        local.get 79
        i64.store offset=256
        block  ;; label = @3
          loop  ;; label = @4
            i64.const 16
            local.set 80
            local.get 5
            i64.load offset=256
            local.set 81
            local.get 81
            local.set 82
            local.get 80
            local.set 83
            local.get 82
            local.get 83
            i64.lt_u
            local.set 17
            i32.const 1
            local.set 18
            local.get 17
            local.get 18
            i32.and
            local.set 19
            local.get 19
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            local.set 20
            local.get 5
            i32.load offset=280
            local.set 21
            local.get 5
            i64.load offset=264
            local.set 84
            local.get 84
            i32.wrap_i64
            local.set 22
            i32.const 3
            local.set 23
            local.get 22
            local.get 23
            i32.shl
            local.set 24
            local.get 21
            local.get 24
            i32.add
            local.set 25
            local.get 25
            i64.load
            local.set 85
            local.get 5
            i32.load offset=276
            local.set 26
            local.get 5
            i64.load offset=256
            local.set 86
            local.get 86
            i32.wrap_i64
            local.set 27
            i32.const 3
            local.set 28
            local.get 27
            local.get 28
            i32.shl
            local.set 29
            local.get 26
            local.get 29
            i32.add
            local.set 30
            local.get 30
            i64.load
            local.set 87
            local.get 85
            local.get 87
            i64.mul
            local.set 88
            local.get 5
            i64.load offset=264
            local.set 89
            local.get 5
            i64.load offset=256
            local.set 90
            local.get 89
            local.get 90
            i64.add
            local.set 91
            local.get 91
            i32.wrap_i64
            local.set 31
            i32.const 3
            local.set 32
            local.get 31
            local.get 32
            i32.shl
            local.set 33
            local.get 20
            local.get 33
            i32.add
            local.set 34
            local.get 34
            i64.load
            local.set 92
            local.get 92
            local.get 88
            i64.add
            local.set 93
            local.get 34
            local.get 93
            i64.store
            local.get 5
            i64.load offset=256
            local.set 94
            i64.const 1
            local.set 95
            local.get 94
            local.get 95
            i64.add
            local.set 96
            local.get 5
            local.get 96
            i64.store offset=256
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 5
        i64.load offset=264
        local.set 97
        i64.const 1
        local.set 98
        local.get 97
        local.get 98
        i64.add
        local.set 99
        local.get 5
        local.get 99
        i64.store offset=264
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 100
    local.get 5
    local.get 100
    i64.store offset=264
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 15
        local.set 101
        local.get 5
        i64.load offset=264
        local.set 102
        local.get 102
        local.set 103
        local.get 101
        local.set 104
        local.get 103
        local.get 104
        i64.lt_u
        local.set 35
        i32.const 1
        local.set 36
        local.get 35
        local.get 36
        i32.and
        local.set 37
        local.get 37
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        local.set 38
        local.get 5
        i64.load offset=264
        local.set 105
        i64.const 16
        local.set 106
        local.get 105
        local.get 106
        i64.add
        local.set 107
        local.get 107
        i32.wrap_i64
        local.set 39
        i32.const 3
        local.set 40
        local.get 39
        local.get 40
        i32.shl
        local.set 41
        local.get 38
        local.get 41
        i32.add
        local.set 42
        local.get 42
        i64.load
        local.set 108
        i64.const 38
        local.set 109
        local.get 108
        local.get 109
        i64.mul
        local.set 110
        local.get 5
        i64.load offset=264
        local.set 111
        local.get 111
        i32.wrap_i64
        local.set 43
        i32.const 3
        local.set 44
        local.get 43
        local.get 44
        i32.shl
        local.set 45
        local.get 38
        local.get 45
        i32.add
        local.set 46
        local.get 46
        i64.load
        local.set 112
        local.get 112
        local.get 110
        i64.add
        local.set 113
        local.get 46
        local.get 113
        i64.store
        local.get 5
        i64.load offset=264
        local.set 114
        i64.const 1
        local.set 115
        local.get 114
        local.get 115
        i64.add
        local.set 116
        local.get 5
        local.get 116
        i64.store offset=264
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 117
    local.get 5
    local.get 117
    i64.store offset=264
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 16
        local.set 118
        local.get 5
        i64.load offset=264
        local.set 119
        local.get 119
        local.set 120
        local.get 118
        local.set 121
        local.get 120
        local.get 121
        i64.lt_u
        local.set 47
        i32.const 1
        local.set 48
        local.get 47
        local.get 48
        i32.and
        local.set 49
        local.get 49
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        local.set 50
        local.get 5
        i64.load offset=264
        local.set 122
        local.get 122
        i32.wrap_i64
        local.set 51
        i32.const 3
        local.set 52
        local.get 51
        local.get 52
        i32.shl
        local.set 53
        local.get 50
        local.get 53
        i32.add
        local.set 54
        local.get 54
        i64.load
        local.set 123
        local.get 5
        i32.load offset=284
        local.set 55
        local.get 5
        i64.load offset=264
        local.set 124
        local.get 124
        i32.wrap_i64
        local.set 56
        i32.const 3
        local.set 57
        local.get 56
        local.get 57
        i32.shl
        local.set 58
        local.get 55
        local.get 58
        i32.add
        local.set 59
        local.get 59
        local.get 123
        i64.store
        local.get 5
        i64.load offset=264
        local.set 125
        i64.const 1
        local.set 126
        local.get 125
        local.get 126
        i64.add
        local.set 127
        local.get 5
        local.get 127
        i64.store offset=264
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    i32.load offset=284
    local.set 60
    local.get 60
    call $car25519
    local.get 5
    i32.load offset=284
    local.set 61
    local.get 61
    call $car25519
    i32.const 288
    local.set 62
    local.get 5
    local.get 62
    i32.add
    local.set 63
    local.get 63
    global.set 0
    return)
  (func $inv25519 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
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
    i32.const 0
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=156
    local.get 4
    local.get 1
    i32.store offset=152
    local.get 4
    local.get 5
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 7
        local.get 7
        local.set 8
        local.get 6
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        i32.const 16
        local.set 13
        local.get 4
        local.get 13
        i32.add
        local.set 14
        local.get 14
        local.set 15
        local.get 4
        i32.load offset=152
        local.set 16
        local.get 4
        i32.load offset=12
        local.set 17
        i32.const 3
        local.set 18
        local.get 17
        local.get 18
        i32.shl
        local.set 19
        local.get 16
        local.get 19
        i32.add
        local.set 20
        local.get 20
        i64.load
        local.set 85
        local.get 4
        i32.load offset=12
        local.set 21
        i32.const 3
        local.set 22
        local.get 21
        local.get 22
        i32.shl
        local.set 23
        local.get 15
        local.get 23
        i32.add
        local.set 24
        local.get 24
        local.get 85
        i64.store
        local.get 4
        i32.load offset=12
        local.set 25
        i32.const 1
        local.set 26
        local.get 25
        local.get 26
        i32.add
        local.set 27
        local.get 4
        local.get 27
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 253
    local.set 28
    local.get 4
    local.get 28
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 29
        local.get 4
        i32.load offset=12
        local.set 30
        local.get 30
        local.set 31
        local.get 29
        local.set 32
        local.get 31
        local.get 32
        i32.ge_s
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.and
        local.set 35
        local.get 35
        i32.eqz
        br_if 1 (;@1;)
        i32.const 2
        local.set 36
        i32.const 16
        local.set 37
        local.get 4
        local.get 37
        i32.add
        local.set 38
        local.get 38
        local.set 39
        local.get 39
        local.get 39
        call $S
        local.get 4
        i32.load offset=12
        local.set 40
        local.get 40
        local.set 41
        local.get 36
        local.set 42
        local.get 41
        local.get 42
        i32.ne
        local.set 43
        i32.const 1
        local.set 44
        local.get 43
        local.get 44
        i32.and
        local.set 45
        block  ;; label = @3
          local.get 45
          i32.eqz
          br_if 0 (;@3;)
          i32.const 4
          local.set 46
          local.get 4
          i32.load offset=12
          local.set 47
          local.get 47
          local.set 48
          local.get 46
          local.set 49
          local.get 48
          local.get 49
          i32.ne
          local.set 50
          i32.const 1
          local.set 51
          local.get 50
          local.get 51
          i32.and
          local.set 52
          local.get 52
          i32.eqz
          br_if 0 (;@3;)
          i32.const 16
          local.set 53
          local.get 4
          local.get 53
          i32.add
          local.set 54
          local.get 54
          local.set 55
          local.get 4
          i32.load offset=152
          local.set 56
          local.get 55
          local.get 55
          local.get 56
          call $M
        end
        local.get 4
        i32.load offset=12
        local.set 57
        i32.const -1
        local.set 58
        local.get 57
        local.get 58
        i32.add
        local.set 59
        local.get 4
        local.get 59
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 60
    local.get 4
    local.get 60
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 61
        local.get 4
        i32.load offset=12
        local.set 62
        local.get 62
        local.set 63
        local.get 61
        local.set 64
        local.get 63
        local.get 64
        i32.lt_s
        local.set 65
        i32.const 1
        local.set 66
        local.get 65
        local.get 66
        i32.and
        local.set 67
        local.get 67
        i32.eqz
        br_if 1 (;@1;)
        i32.const 16
        local.set 68
        local.get 4
        local.get 68
        i32.add
        local.set 69
        local.get 69
        local.set 70
        local.get 4
        i32.load offset=12
        local.set 71
        i32.const 3
        local.set 72
        local.get 71
        local.get 72
        i32.shl
        local.set 73
        local.get 70
        local.get 73
        i32.add
        local.set 74
        local.get 74
        i64.load
        local.set 86
        local.get 4
        i32.load offset=156
        local.set 75
        local.get 4
        i32.load offset=12
        local.set 76
        i32.const 3
        local.set 77
        local.get 76
        local.get 77
        i32.shl
        local.set 78
        local.get 75
        local.get 78
        i32.add
        local.set 79
        local.get 79
        local.get 86
        i64.store
        local.get 4
        i32.load offset=12
        local.set 80
        i32.const 1
        local.set 81
        local.get 80
        local.get 81
        i32.add
        local.set 82
        local.get 4
        local.get 82
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 160
    local.set 83
    local.get 4
    local.get 83
    i32.add
    local.set 84
    local.get 84
    global.set 0
    return)
  (func $pack25519 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 288
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 0
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=284
    local.get 4
    local.get 1
    i32.store offset=280
    local.get 4
    local.get 5
    i32.store offset=276
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 6
        local.get 4
        i32.load offset=276
        local.set 7
        local.get 7
        local.set 8
        local.get 6
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.set 13
        local.get 4
        i32.load offset=280
        local.set 14
        local.get 4
        i32.load offset=276
        local.set 15
        i32.const 3
        local.set 16
        local.get 15
        local.get 16
        i32.shl
        local.set 17
        local.get 14
        local.get 17
        i32.add
        local.set 18
        local.get 18
        i64.load
        local.set 117
        local.get 4
        i32.load offset=276
        local.set 19
        i32.const 3
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 13
        local.get 21
        i32.add
        local.set 22
        local.get 22
        local.get 117
        i64.store
        local.get 4
        i32.load offset=276
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 4
        local.get 25
        i32.store offset=276
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 26
    local.get 4
    local.set 27
    local.get 27
    call $car25519
    local.get 27
    call $car25519
    local.get 27
    call $car25519
    local.get 4
    local.get 26
    i32.store offset=272
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 2
        local.set 28
        local.get 4
        i32.load offset=272
        local.set 29
        local.get 29
        local.set 30
        local.get 28
        local.set 31
        local.get 30
        local.get 31
        i32.lt_s
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
        i32.const 1
        local.set 35
        local.get 4
        i64.load
        local.set 118
        i64.const 65517
        local.set 119
        local.get 118
        local.get 119
        i64.sub
        local.set 120
        local.get 4
        local.get 120
        i64.store offset=128
        local.get 4
        local.get 35
        i32.store offset=276
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 15
            local.set 36
            local.get 4
            i32.load offset=276
            local.set 37
            local.get 37
            local.set 38
            local.get 36
            local.set 39
            local.get 38
            local.get 39
            i32.lt_s
            local.set 40
            i32.const 1
            local.set 41
            local.get 40
            local.get 41
            i32.and
            local.set 42
            local.get 42
            i32.eqz
            br_if 1 (;@3;)
            i32.const 128
            local.set 43
            local.get 4
            local.get 43
            i32.add
            local.set 44
            local.get 44
            local.set 45
            local.get 4
            local.set 46
            local.get 4
            i32.load offset=276
            local.set 47
            i32.const 3
            local.set 48
            local.get 47
            local.get 48
            i32.shl
            local.set 49
            local.get 46
            local.get 49
            i32.add
            local.set 50
            local.get 50
            i64.load
            local.set 121
            i64.const 65535
            local.set 122
            local.get 121
            local.get 122
            i64.sub
            local.set 123
            local.get 4
            i32.load offset=276
            local.set 51
            i32.const 1
            local.set 52
            local.get 51
            local.get 52
            i32.sub
            local.set 53
            i32.const 3
            local.set 54
            local.get 53
            local.get 54
            i32.shl
            local.set 55
            local.get 45
            local.get 55
            i32.add
            local.set 56
            local.get 56
            i64.load
            local.set 124
            i64.const 16
            local.set 125
            local.get 124
            local.get 125
            i64.shr_u
            local.set 126
            i64.const 1
            local.set 127
            local.get 126
            local.get 127
            i64.and
            local.set 128
            local.get 123
            local.get 128
            i64.sub
            local.set 129
            local.get 4
            i32.load offset=276
            local.set 57
            i32.const 3
            local.set 58
            local.get 57
            local.get 58
            i32.shl
            local.set 59
            local.get 45
            local.get 59
            i32.add
            local.set 60
            local.get 60
            local.get 129
            i64.store
            local.get 4
            i32.load offset=276
            local.set 61
            i32.const 1
            local.set 62
            local.get 61
            local.get 62
            i32.sub
            local.set 63
            i32.const 3
            local.set 64
            local.get 63
            local.get 64
            i32.shl
            local.set 65
            local.get 45
            local.get 65
            i32.add
            local.set 66
            local.get 66
            i64.load
            local.set 130
            i64.const 65535
            local.set 131
            local.get 130
            local.get 131
            i64.and
            local.set 132
            local.get 66
            local.get 132
            i64.store
            local.get 4
            i32.load offset=276
            local.set 67
            i32.const 1
            local.set 68
            local.get 67
            local.get 68
            i32.add
            local.set 69
            local.get 4
            local.get 69
            i32.store offset=276
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 1
        local.set 70
        i32.const 128
        local.set 71
        local.get 4
        local.get 71
        i32.add
        local.set 72
        local.get 72
        local.set 73
        local.get 4
        local.set 74
        local.get 4
        i64.load offset=120
        local.set 133
        i64.const 32767
        local.set 134
        local.get 133
        local.get 134
        i64.sub
        local.set 135
        local.get 4
        i64.load offset=240
        local.set 136
        i64.const 16
        local.set 137
        local.get 136
        local.get 137
        i64.shr_u
        local.set 138
        i64.const 1
        local.set 139
        local.get 138
        local.get 139
        i64.and
        local.set 140
        local.get 135
        local.get 140
        i64.sub
        local.set 141
        local.get 4
        local.get 141
        i64.store offset=248
        local.get 4
        i64.load offset=248
        local.set 142
        i64.const 16
        local.set 143
        local.get 142
        local.get 143
        i64.shr_u
        local.set 144
        i64.const 1
        local.set 145
        local.get 144
        local.get 145
        i64.and
        local.set 146
        local.get 146
        i32.wrap_i64
        local.set 75
        local.get 4
        local.get 75
        i32.store offset=268
        local.get 4
        i64.load offset=240
        local.set 147
        i64.const 65535
        local.set 148
        local.get 147
        local.get 148
        i64.and
        local.set 149
        local.get 4
        local.get 149
        i64.store offset=240
        local.get 4
        i32.load offset=268
        local.set 76
        local.get 70
        local.get 76
        i32.sub
        local.set 77
        local.get 74
        local.get 73
        local.get 77
        call $sel25519
        local.get 4
        i32.load offset=272
        local.set 78
        i32.const 1
        local.set 79
        local.get 78
        local.get 79
        i32.add
        local.set 80
        local.get 4
        local.get 80
        i32.store offset=272
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 81
    local.get 4
    local.get 81
    i32.store offset=276
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 82
        local.get 4
        i32.load offset=276
        local.set 83
        local.get 83
        local.set 84
        local.get 82
        local.set 85
        local.get 84
        local.get 85
        i32.lt_s
        local.set 86
        i32.const 1
        local.set 87
        local.get 86
        local.get 87
        i32.and
        local.set 88
        local.get 88
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.set 89
        local.get 4
        i32.load offset=276
        local.set 90
        i32.const 3
        local.set 91
        local.get 90
        local.get 91
        i32.shl
        local.set 92
        local.get 89
        local.get 92
        i32.add
        local.set 93
        local.get 93
        i64.load
        local.set 150
        i64.const 255
        local.set 151
        local.get 150
        local.get 151
        i64.and
        local.set 152
        local.get 152
        i32.wrap_i64
        local.set 94
        local.get 4
        i32.load offset=284
        local.set 95
        local.get 4
        i32.load offset=276
        local.set 96
        i32.const 1
        local.set 97
        local.get 96
        local.get 97
        i32.shl
        local.set 98
        local.get 95
        local.get 98
        i32.add
        local.set 99
        local.get 99
        local.get 94
        i32.store8
        local.get 4
        i32.load offset=276
        local.set 100
        i32.const 3
        local.set 101
        local.get 100
        local.get 101
        i32.shl
        local.set 102
        local.get 89
        local.get 102
        i32.add
        local.set 103
        local.get 103
        i64.load
        local.set 153
        i64.const 8
        local.set 154
        local.get 153
        local.get 154
        i64.shr_u
        local.set 155
        local.get 155
        i32.wrap_i64
        local.set 104
        local.get 4
        i32.load offset=284
        local.set 105
        local.get 4
        i32.load offset=276
        local.set 106
        i32.const 1
        local.set 107
        local.get 106
        local.get 107
        i32.shl
        local.set 108
        i32.const 1
        local.set 109
        local.get 108
        local.get 109
        i32.add
        local.set 110
        local.get 105
        local.get 110
        i32.add
        local.set 111
        local.get 111
        local.get 104
        i32.store8
        local.get 4
        i32.load offset=276
        local.set 112
        i32.const 1
        local.set 113
        local.get 112
        local.get 113
        i32.add
        local.set 114
        local.get 4
        local.get 114
        i32.store offset=276
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 288
    local.set 115
    local.get 4
    local.get 115
    i32.add
    local.set 116
    local.get 116
    global.set 0
    return)
  (func $car25519 (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
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
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 5
        local.get 3
        i32.load offset=8
        local.set 6
        local.get 6
        local.set 7
        local.get 5
        local.set 8
        local.get 7
        local.get 8
        i32.lt_s
        local.set 9
        i32.const 1
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        local.get 11
        i32.eqz
        br_if 1 (;@1;)
        i32.const 15
        local.set 12
        local.get 3
        i32.load offset=12
        local.set 13
        local.get 3
        i32.load offset=8
        local.set 14
        i32.const 3
        local.set 15
        local.get 14
        local.get 15
        i32.shl
        local.set 16
        local.get 13
        local.get 16
        i32.add
        local.set 17
        local.get 17
        i64.load
        local.set 52
        i64.const 65536
        local.set 53
        local.get 52
        local.get 53
        i64.add
        local.set 54
        local.get 17
        local.get 54
        i64.store
        local.get 3
        i32.load offset=12
        local.set 18
        local.get 3
        i32.load offset=8
        local.set 19
        i32.const 3
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 18
        local.get 21
        i32.add
        local.set 22
        local.get 22
        i64.load
        local.set 55
        i64.const 16
        local.set 56
        local.get 55
        local.get 56
        i64.shr_u
        local.set 57
        local.get 3
        local.get 57
        i64.store
        local.get 3
        i64.load
        local.set 58
        i64.const 1
        local.set 59
        local.get 58
        local.get 59
        i64.sub
        local.set 60
        local.get 3
        i64.load
        local.set 61
        i64.const 1
        local.set 62
        local.get 61
        local.get 62
        i64.sub
        local.set 63
        i64.const 37
        local.set 64
        local.get 63
        local.get 64
        i64.mul
        local.set 65
        local.get 3
        i32.load offset=8
        local.set 23
        local.get 23
        local.set 24
        local.get 12
        local.set 25
        local.get 24
        local.get 25
        i32.eq
        local.set 26
        i32.const 1
        local.set 27
        local.get 26
        local.get 27
        i32.and
        local.set 28
        local.get 28
        local.set 29
        local.get 29
        i64.extend_i32_s
        local.set 66
        local.get 65
        local.get 66
        i64.mul
        local.set 67
        local.get 60
        local.get 67
        i64.add
        local.set 68
        local.get 3
        i32.load offset=12
        local.set 30
        local.get 3
        i32.load offset=8
        local.set 31
        i32.const 1
        local.set 32
        local.get 31
        local.get 32
        i32.add
        local.set 33
        local.get 3
        i32.load offset=8
        local.set 34
        local.get 34
        local.set 35
        local.get 12
        local.set 36
        local.get 35
        local.get 36
        i32.lt_s
        local.set 37
        i32.const 1
        local.set 38
        local.get 37
        local.get 38
        i32.and
        local.set 39
        local.get 33
        local.get 39
        i32.mul
        local.set 40
        i32.const 3
        local.set 41
        local.get 40
        local.get 41
        i32.shl
        local.set 42
        local.get 30
        local.get 42
        i32.add
        local.set 43
        local.get 43
        i64.load
        local.set 69
        local.get 69
        local.get 68
        i64.add
        local.set 70
        local.get 43
        local.get 70
        i64.store
        local.get 3
        i64.load
        local.set 71
        i64.const 16
        local.set 72
        local.get 71
        local.get 72
        i64.shl
        local.set 73
        local.get 3
        i32.load offset=12
        local.set 44
        local.get 3
        i32.load offset=8
        local.set 45
        i32.const 3
        local.set 46
        local.get 45
        local.get 46
        i32.shl
        local.set 47
        local.get 44
        local.get 47
        i32.add
        local.set 48
        local.get 48
        i64.load
        local.set 74
        local.get 74
        local.get 73
        i64.sub
        local.set 75
        local.get 48
        local.get 75
        i64.store
        local.get 3
        i32.load offset=8
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.add
        local.set 51
        local.get 3
        local.get 51
        i32.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $crypto_hashblocks_sha512_tweet (type 6) (param i32 i32 i64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 352
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
    i32.store offset=348
    local.get 5
    local.get 1
    i32.store offset=344
    local.get 5
    local.get 2
    i64.store offset=336
    local.get 5
    local.get 6
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 8
        local.set 7
        local.get 5
        i32.load offset=4
        local.set 8
        local.get 8
        local.set 9
        local.get 7
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
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
        i32.const 272
        local.set 14
        local.get 5
        local.get 14
        i32.add
        local.set 15
        local.get 15
        local.set 16
        i32.const 144
        local.set 17
        local.get 5
        local.get 17
        i32.add
        local.set 18
        local.get 18
        local.set 19
        local.get 5
        i32.load offset=348
        local.set 20
        local.get 5
        i32.load offset=4
        local.set 21
        i32.const 3
        local.set 22
        local.get 21
        local.get 22
        i32.shl
        local.set 23
        local.get 20
        local.get 23
        i32.add
        local.set 24
        local.get 24
        call $dl64
        local.set 254
        local.get 5
        i32.load offset=4
        local.set 25
        i32.const 3
        local.set 26
        local.get 25
        local.get 26
        i32.shl
        local.set 27
        local.get 19
        local.get 27
        i32.add
        local.set 28
        local.get 28
        local.get 254
        i64.store
        local.get 5
        i32.load offset=4
        local.set 29
        i32.const 3
        local.set 30
        local.get 29
        local.get 30
        i32.shl
        local.set 31
        local.get 16
        local.get 31
        i32.add
        local.set 32
        local.get 32
        local.get 254
        i64.store
        local.get 5
        i32.load offset=4
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.add
        local.set 35
        local.get 5
        local.get 35
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 128
        local.set 255
        local.get 5
        i64.load offset=336
        local.set 256
        local.get 256
        local.set 257
        local.get 255
        local.set 258
        local.get 257
        local.get 258
        i64.ge_u
        local.set 36
        i32.const 1
        local.set 37
        local.get 36
        local.get 37
        i32.and
        local.set 38
        local.get 38
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 39
        local.get 5
        local.get 39
        i32.store offset=4
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 16
            local.set 40
            local.get 5
            i32.load offset=4
            local.set 41
            local.get 41
            local.set 42
            local.get 40
            local.set 43
            local.get 42
            local.get 43
            i32.lt_s
            local.set 44
            i32.const 1
            local.set 45
            local.get 44
            local.get 45
            i32.and
            local.set 46
            local.get 46
            i32.eqz
            br_if 1 (;@3;)
            i32.const 16
            local.set 47
            local.get 5
            local.get 47
            i32.add
            local.set 48
            local.get 48
            local.set 49
            local.get 5
            i32.load offset=344
            local.set 50
            local.get 5
            i32.load offset=4
            local.set 51
            i32.const 3
            local.set 52
            local.get 51
            local.get 52
            i32.shl
            local.set 53
            local.get 50
            local.get 53
            i32.add
            local.set 54
            local.get 54
            call $dl64
            local.set 259
            local.get 5
            i32.load offset=4
            local.set 55
            i32.const 3
            local.set 56
            local.get 55
            local.get 56
            i32.shl
            local.set 57
            local.get 49
            local.get 57
            i32.add
            local.set 58
            local.get 58
            local.get 259
            i64.store
            local.get 5
            i32.load offset=4
            local.set 59
            i32.const 1
            local.set 60
            local.get 59
            local.get 60
            i32.add
            local.set 61
            local.get 5
            local.get 61
            i32.store offset=4
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 0
        local.set 62
        local.get 5
        local.get 62
        i32.store offset=4
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 80
            local.set 63
            local.get 5
            i32.load offset=4
            local.set 64
            local.get 64
            local.set 65
            local.get 63
            local.set 66
            local.get 65
            local.get 66
            i32.lt_s
            local.set 67
            i32.const 1
            local.set 68
            local.get 67
            local.get 68
            i32.and
            local.set 69
            local.get 69
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 70
            local.get 5
            local.get 70
            i32.store
            block  ;; label = @5
              loop  ;; label = @6
                i32.const 8
                local.set 71
                local.get 5
                i32.load
                local.set 72
                local.get 72
                local.set 73
                local.get 71
                local.set 74
                local.get 73
                local.get 74
                i32.lt_s
                local.set 75
                i32.const 1
                local.set 76
                local.get 75
                local.get 76
                i32.and
                local.set 77
                local.get 77
                i32.eqz
                br_if 1 (;@5;)
                i32.const 208
                local.set 78
                local.get 5
                local.get 78
                i32.add
                local.set 79
                local.get 79
                local.set 80
                i32.const 144
                local.set 81
                local.get 5
                local.get 81
                i32.add
                local.set 82
                local.get 82
                local.set 83
                local.get 5
                i32.load
                local.set 84
                i32.const 3
                local.set 85
                local.get 84
                local.get 85
                i32.shl
                local.set 86
                local.get 83
                local.get 86
                i32.add
                local.set 87
                local.get 87
                i64.load
                local.set 260
                local.get 5
                i32.load
                local.set 88
                i32.const 3
                local.set 89
                local.get 88
                local.get 89
                i32.shl
                local.set 90
                local.get 80
                local.get 90
                i32.add
                local.set 91
                local.get 91
                local.get 260
                i64.store
                local.get 5
                i32.load
                local.set 92
                i32.const 1
                local.set 93
                local.get 92
                local.get 93
                i32.add
                local.set 94
                local.get 5
                local.get 94
                i32.store
                br 0 (;@6;)
                unreachable
              end
              unreachable
            end
            i32.const 0
            local.set 95
            i32.const 16
            local.set 96
            local.get 5
            local.get 96
            i32.add
            local.set 97
            local.get 97
            local.set 98
            i32.const 1024
            local.set 99
            local.get 5
            i64.load offset=200
            local.set 261
            local.get 5
            i64.load offset=176
            local.set 262
            local.get 262
            call $Sigma1
            local.set 263
            local.get 261
            local.get 263
            i64.add
            local.set 264
            local.get 5
            i64.load offset=176
            local.set 265
            local.get 5
            i64.load offset=184
            local.set 266
            local.get 5
            i64.load offset=192
            local.set 267
            local.get 265
            local.get 266
            local.get 267
            call $Ch
            local.set 268
            local.get 264
            local.get 268
            i64.add
            local.set 269
            local.get 5
            i32.load offset=4
            local.set 100
            i32.const 3
            local.set 101
            local.get 100
            local.get 101
            i32.shl
            local.set 102
            local.get 99
            local.get 102
            i32.add
            local.set 103
            local.get 103
            i64.load
            local.set 270
            local.get 269
            local.get 270
            i64.add
            local.set 271
            local.get 5
            i32.load offset=4
            local.set 104
            i32.const 16
            local.set 105
            local.get 104
            local.get 105
            i32.rem_s
            local.set 106
            i32.const 3
            local.set 107
            local.get 106
            local.get 107
            i32.shl
            local.set 108
            local.get 98
            local.get 108
            i32.add
            local.set 109
            local.get 109
            i64.load
            local.set 272
            local.get 271
            local.get 272
            i64.add
            local.set 273
            local.get 5
            local.get 273
            i64.store offset=8
            local.get 5
            i64.load offset=8
            local.set 274
            local.get 5
            i64.load offset=144
            local.set 275
            local.get 275
            call $Sigma0
            local.set 276
            local.get 274
            local.get 276
            i64.add
            local.set 277
            local.get 5
            i64.load offset=144
            local.set 278
            local.get 5
            i64.load offset=152
            local.set 279
            local.get 5
            i64.load offset=160
            local.set 280
            local.get 278
            local.get 279
            local.get 280
            call $Maj
            local.set 281
            local.get 277
            local.get 281
            i64.add
            local.set 282
            local.get 5
            local.get 282
            i64.store offset=264
            local.get 5
            i64.load offset=8
            local.set 283
            local.get 5
            i64.load offset=232
            local.set 284
            local.get 284
            local.get 283
            i64.add
            local.set 285
            local.get 5
            local.get 285
            i64.store offset=232
            local.get 5
            local.get 95
            i32.store
            block  ;; label = @5
              loop  ;; label = @6
                i32.const 8
                local.set 110
                local.get 5
                i32.load
                local.set 111
                local.get 111
                local.set 112
                local.get 110
                local.set 113
                local.get 112
                local.get 113
                i32.lt_s
                local.set 114
                i32.const 1
                local.set 115
                local.get 114
                local.get 115
                i32.and
                local.set 116
                local.get 116
                i32.eqz
                br_if 1 (;@5;)
                i32.const 144
                local.set 117
                local.get 5
                local.get 117
                i32.add
                local.set 118
                local.get 118
                local.set 119
                i32.const 208
                local.set 120
                local.get 5
                local.get 120
                i32.add
                local.set 121
                local.get 121
                local.set 122
                local.get 5
                i32.load
                local.set 123
                i32.const 3
                local.set 124
                local.get 123
                local.get 124
                i32.shl
                local.set 125
                local.get 122
                local.get 125
                i32.add
                local.set 126
                local.get 126
                i64.load
                local.set 286
                local.get 5
                i32.load
                local.set 127
                i32.const 1
                local.set 128
                local.get 127
                local.get 128
                i32.add
                local.set 129
                i32.const 8
                local.set 130
                local.get 129
                local.get 130
                i32.rem_s
                local.set 131
                i32.const 3
                local.set 132
                local.get 131
                local.get 132
                i32.shl
                local.set 133
                local.get 119
                local.get 133
                i32.add
                local.set 134
                local.get 134
                local.get 286
                i64.store
                local.get 5
                i32.load
                local.set 135
                i32.const 1
                local.set 136
                local.get 135
                local.get 136
                i32.add
                local.set 137
                local.get 5
                local.get 137
                i32.store
                br 0 (;@6;)
                unreachable
              end
              unreachable
            end
            i32.const 15
            local.set 138
            local.get 5
            i32.load offset=4
            local.set 139
            i32.const 16
            local.set 140
            local.get 139
            local.get 140
            i32.rem_s
            local.set 141
            local.get 141
            local.set 142
            local.get 138
            local.set 143
            local.get 142
            local.get 143
            i32.eq
            local.set 144
            i32.const 1
            local.set 145
            local.get 144
            local.get 145
            i32.and
            local.set 146
            block  ;; label = @5
              local.get 146
              i32.eqz
              br_if 0 (;@5;)
              i32.const 0
              local.set 147
              local.get 5
              local.get 147
              i32.store
              block  ;; label = @6
                loop  ;; label = @7
                  i32.const 16
                  local.set 148
                  local.get 5
                  i32.load
                  local.set 149
                  local.get 149
                  local.set 150
                  local.get 148
                  local.set 151
                  local.get 150
                  local.get 151
                  i32.lt_s
                  local.set 152
                  i32.const 1
                  local.set 153
                  local.get 152
                  local.get 153
                  i32.and
                  local.set 154
                  local.get 154
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 16
                  local.set 155
                  local.get 5
                  local.get 155
                  i32.add
                  local.set 156
                  local.get 156
                  local.set 157
                  local.get 5
                  i32.load
                  local.set 158
                  i32.const 9
                  local.set 159
                  local.get 158
                  local.get 159
                  i32.add
                  local.set 160
                  i32.const 16
                  local.set 161
                  local.get 160
                  local.get 161
                  i32.rem_s
                  local.set 162
                  i32.const 3
                  local.set 163
                  local.get 162
                  local.get 163
                  i32.shl
                  local.set 164
                  local.get 157
                  local.get 164
                  i32.add
                  local.set 165
                  local.get 165
                  i64.load
                  local.set 287
                  local.get 5
                  i32.load
                  local.set 166
                  i32.const 1
                  local.set 167
                  local.get 166
                  local.get 167
                  i32.add
                  local.set 168
                  i32.const 16
                  local.set 169
                  local.get 168
                  local.get 169
                  i32.rem_s
                  local.set 170
                  i32.const 3
                  local.set 171
                  local.get 170
                  local.get 171
                  i32.shl
                  local.set 172
                  local.get 157
                  local.get 172
                  i32.add
                  local.set 173
                  local.get 173
                  i64.load
                  local.set 288
                  local.get 288
                  call $sigma0
                  local.set 289
                  local.get 287
                  local.get 289
                  i64.add
                  local.set 290
                  local.get 5
                  i32.load
                  local.set 174
                  i32.const 14
                  local.set 175
                  local.get 174
                  local.get 175
                  i32.add
                  local.set 176
                  i32.const 16
                  local.set 177
                  local.get 176
                  local.get 177
                  i32.rem_s
                  local.set 178
                  i32.const 3
                  local.set 179
                  local.get 178
                  local.get 179
                  i32.shl
                  local.set 180
                  local.get 157
                  local.get 180
                  i32.add
                  local.set 181
                  local.get 181
                  i64.load
                  local.set 291
                  local.get 291
                  call $sigma1
                  local.set 292
                  local.get 290
                  local.get 292
                  i64.add
                  local.set 293
                  local.get 5
                  i32.load
                  local.set 182
                  i32.const 3
                  local.set 183
                  local.get 182
                  local.get 183
                  i32.shl
                  local.set 184
                  local.get 157
                  local.get 184
                  i32.add
                  local.set 185
                  local.get 185
                  i64.load
                  local.set 294
                  local.get 294
                  local.get 293
                  i64.add
                  local.set 295
                  local.get 185
                  local.get 295
                  i64.store
                  local.get 5
                  i32.load
                  local.set 186
                  i32.const 1
                  local.set 187
                  local.get 186
                  local.get 187
                  i32.add
                  local.set 188
                  local.get 5
                  local.get 188
                  i32.store
                  br 0 (;@7;)
                  unreachable
                end
                unreachable
              end
            end
            local.get 5
            i32.load offset=4
            local.set 189
            i32.const 1
            local.set 190
            local.get 189
            local.get 190
            i32.add
            local.set 191
            local.get 5
            local.get 191
            i32.store offset=4
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 0
        local.set 192
        local.get 5
        local.get 192
        i32.store offset=4
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 8
            local.set 193
            local.get 5
            i32.load offset=4
            local.set 194
            local.get 194
            local.set 195
            local.get 193
            local.set 196
            local.get 195
            local.get 196
            i32.lt_s
            local.set 197
            i32.const 1
            local.set 198
            local.get 197
            local.get 198
            i32.and
            local.set 199
            local.get 199
            i32.eqz
            br_if 1 (;@3;)
            i32.const 272
            local.set 200
            local.get 5
            local.get 200
            i32.add
            local.set 201
            local.get 201
            local.set 202
            i32.const 144
            local.set 203
            local.get 5
            local.get 203
            i32.add
            local.set 204
            local.get 204
            local.set 205
            local.get 5
            i32.load offset=4
            local.set 206
            i32.const 3
            local.set 207
            local.get 206
            local.get 207
            i32.shl
            local.set 208
            local.get 202
            local.get 208
            i32.add
            local.set 209
            local.get 209
            i64.load
            local.set 296
            local.get 5
            i32.load offset=4
            local.set 210
            i32.const 3
            local.set 211
            local.get 210
            local.get 211
            i32.shl
            local.set 212
            local.get 205
            local.get 212
            i32.add
            local.set 213
            local.get 213
            i64.load
            local.set 297
            local.get 297
            local.get 296
            i64.add
            local.set 298
            local.get 213
            local.get 298
            i64.store
            local.get 5
            i32.load offset=4
            local.set 214
            i32.const 3
            local.set 215
            local.get 214
            local.get 215
            i32.shl
            local.set 216
            local.get 205
            local.get 216
            i32.add
            local.set 217
            local.get 217
            i64.load
            local.set 299
            local.get 5
            i32.load offset=4
            local.set 218
            i32.const 3
            local.set 219
            local.get 218
            local.get 219
            i32.shl
            local.set 220
            local.get 202
            local.get 220
            i32.add
            local.set 221
            local.get 221
            local.get 299
            i64.store
            local.get 5
            i32.load offset=4
            local.set 222
            i32.const 1
            local.set 223
            local.get 222
            local.get 223
            i32.add
            local.set 224
            local.get 5
            local.get 224
            i32.store offset=4
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 5
        i32.load offset=344
        local.set 225
        i32.const 128
        local.set 226
        local.get 225
        local.get 226
        i32.add
        local.set 227
        local.get 5
        local.get 227
        i32.store offset=344
        local.get 5
        i64.load offset=336
        local.set 300
        i64.const 128
        local.set 301
        local.get 300
        local.get 301
        i64.sub
        local.set 302
        local.get 5
        local.get 302
        i64.store offset=336
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 228
    local.get 5
    local.get 228
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 8
        local.set 229
        local.get 5
        i32.load offset=4
        local.set 230
        local.get 230
        local.set 231
        local.get 229
        local.set 232
        local.get 231
        local.get 232
        i32.lt_s
        local.set 233
        i32.const 1
        local.set 234
        local.get 233
        local.get 234
        i32.and
        local.set 235
        local.get 235
        i32.eqz
        br_if 1 (;@1;)
        i32.const 272
        local.set 236
        local.get 5
        local.get 236
        i32.add
        local.set 237
        local.get 237
        local.set 238
        local.get 5
        i32.load offset=348
        local.set 239
        local.get 5
        i32.load offset=4
        local.set 240
        i32.const 3
        local.set 241
        local.get 240
        local.get 241
        i32.shl
        local.set 242
        local.get 239
        local.get 242
        i32.add
        local.set 243
        local.get 5
        i32.load offset=4
        local.set 244
        i32.const 3
        local.set 245
        local.get 244
        local.get 245
        i32.shl
        local.set 246
        local.get 238
        local.get 246
        i32.add
        local.set 247
        local.get 247
        i64.load
        local.set 303
        local.get 243
        local.get 303
        call $ts64
        local.get 5
        i32.load offset=4
        local.set 248
        i32.const 1
        local.set 249
        local.get 248
        local.get 249
        i32.add
        local.set 250
        local.get 5
        local.get 250
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 5
    i64.load offset=336
    local.set 304
    local.get 304
    i32.wrap_i64
    local.set 251
    i32.const 352
    local.set 252
    local.get 5
    local.get 252
    i32.add
    local.set 253
    local.get 253
    global.set 0
    local.get 251
    return)
  (func $dl64 (type 13) (param i32) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    i64.const 0
    local.set 13
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 13
    i64.store offset=8
    local.get 3
    local.get 13
    i64.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 8
        local.set 14
        local.get 3
        i64.load offset=16
        local.set 15
        local.get 15
        local.set 16
        local.get 14
        local.set 17
        local.get 16
        local.get 17
        i64.lt_u
        local.set 4
        i32.const 1
        local.set 5
        local.get 4
        local.get 5
        i32.and
        local.set 6
        local.get 6
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i64.load offset=8
        local.set 18
        i64.const 8
        local.set 19
        local.get 18
        local.get 19
        i64.shl
        local.set 20
        local.get 3
        i32.load offset=28
        local.set 7
        local.get 3
        i64.load offset=16
        local.set 21
        local.get 21
        i32.wrap_i64
        local.set 8
        local.get 7
        local.get 8
        i32.add
        local.set 9
        local.get 9
        i32.load8_u
        local.set 10
        i32.const 255
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i64.extend_i32_u
        local.set 22
        local.get 20
        local.get 22
        i64.or
        local.set 23
        local.get 3
        local.get 23
        i64.store offset=8
        local.get 3
        i64.load offset=16
        local.set 24
        i64.const 1
        local.set 25
        local.get 24
        local.get 25
        i64.add
        local.set 26
        local.get 3
        local.get 26
        i64.store offset=16
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 3
    i64.load offset=8
    local.set 27
    local.get 27
    return)
  (func $Sigma1 (type 3) (param i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 41
    local.set 4
    i32.const 18
    local.set 5
    i32.const 14
    local.set 6
    local.get 3
    local.get 0
    i64.store offset=8
    local.get 3
    i64.load offset=8
    local.set 9
    local.get 9
    local.get 6
    call $R
    local.set 10
    local.get 3
    i64.load offset=8
    local.set 11
    local.get 11
    local.get 5
    call $R
    local.set 12
    local.get 10
    local.get 12
    i64.xor
    local.set 13
    local.get 3
    i64.load offset=8
    local.set 14
    local.get 14
    local.get 4
    call $R
    local.set 15
    local.get 13
    local.get 15
    i64.xor
    local.set 16
    i32.const 16
    local.set 7
    local.get 3
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set 0
    local.get 16
    return)
  (func $Ch (type 7) (param i64 i64 i64) (result i64)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
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
    i64.store offset=24
    local.get 5
    local.get 1
    i64.store offset=16
    local.get 5
    local.get 2
    i64.store offset=8
    local.get 5
    i64.load offset=24
    local.set 6
    local.get 5
    i64.load offset=16
    local.set 7
    local.get 6
    local.get 7
    i64.and
    local.set 8
    local.get 5
    i64.load offset=24
    local.set 9
    i64.const -1
    local.set 10
    local.get 9
    local.get 10
    i64.xor
    local.set 11
    local.get 5
    i64.load offset=8
    local.set 12
    local.get 11
    local.get 12
    i64.and
    local.set 13
    local.get 8
    local.get 13
    i64.xor
    local.set 14
    local.get 14
    return)
  (func $Sigma0 (type 3) (param i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 39
    local.set 4
    i32.const 34
    local.set 5
    i32.const 28
    local.set 6
    local.get 3
    local.get 0
    i64.store offset=8
    local.get 3
    i64.load offset=8
    local.set 9
    local.get 9
    local.get 6
    call $R
    local.set 10
    local.get 3
    i64.load offset=8
    local.set 11
    local.get 11
    local.get 5
    call $R
    local.set 12
    local.get 10
    local.get 12
    i64.xor
    local.set 13
    local.get 3
    i64.load offset=8
    local.set 14
    local.get 14
    local.get 4
    call $R
    local.set 15
    local.get 13
    local.get 15
    i64.xor
    local.set 16
    i32.const 16
    local.set 7
    local.get 3
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set 0
    local.get 16
    return)
  (func $Maj (type 7) (param i64 i64 i64) (result i64)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
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
    i64.store offset=24
    local.get 5
    local.get 1
    i64.store offset=16
    local.get 5
    local.get 2
    i64.store offset=8
    local.get 5
    i64.load offset=24
    local.set 6
    local.get 5
    i64.load offset=16
    local.set 7
    local.get 6
    local.get 7
    i64.and
    local.set 8
    local.get 5
    i64.load offset=24
    local.set 9
    local.get 5
    i64.load offset=8
    local.set 10
    local.get 9
    local.get 10
    i64.and
    local.set 11
    local.get 8
    local.get 11
    i64.xor
    local.set 12
    local.get 5
    i64.load offset=16
    local.set 13
    local.get 5
    i64.load offset=8
    local.set 14
    local.get 13
    local.get 14
    i64.and
    local.set 15
    local.get 12
    local.get 15
    i64.xor
    local.set 16
    local.get 16
    return)
  (func $sigma0 (type 3) (param i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 8
    local.set 4
    i32.const 1
    local.set 5
    local.get 3
    local.get 0
    i64.store offset=8
    local.get 3
    i64.load offset=8
    local.set 8
    local.get 8
    local.get 5
    call $R
    local.set 9
    local.get 3
    i64.load offset=8
    local.set 10
    local.get 10
    local.get 4
    call $R
    local.set 11
    local.get 9
    local.get 11
    i64.xor
    local.set 12
    local.get 3
    i64.load offset=8
    local.set 13
    i64.const 7
    local.set 14
    local.get 13
    local.get 14
    i64.shr_u
    local.set 15
    local.get 12
    local.get 15
    i64.xor
    local.set 16
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set 0
    local.get 16
    return)
  (func $sigma1 (type 3) (param i64) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i32.const 61
    local.set 4
    i32.const 19
    local.set 5
    local.get 3
    local.get 0
    i64.store offset=8
    local.get 3
    i64.load offset=8
    local.set 8
    local.get 8
    local.get 5
    call $R
    local.set 9
    local.get 3
    i64.load offset=8
    local.set 10
    local.get 10
    local.get 4
    call $R
    local.set 11
    local.get 9
    local.get 11
    i64.xor
    local.set 12
    local.get 3
    i64.load offset=8
    local.set 13
    i64.const 6
    local.set 14
    local.get 13
    local.get 14
    i64.shr_u
    local.set 15
    local.get 12
    local.get 15
    i64.xor
    local.set 16
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set 0
    local.get 16
    return)
  (func $ts64 (type 9) (param i32 i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i32.const 7
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i64.store offset=16
    local.get 4
    local.get 5
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 7
        local.get 7
        local.set 8
        local.get 6
        local.set 9
        local.get 8
        local.get 9
        i32.ge_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i64.load offset=16
        local.set 20
        local.get 20
        i32.wrap_i64
        local.set 13
        local.get 4
        i32.load offset=28
        local.set 14
        local.get 4
        i32.load offset=12
        local.set 15
        local.get 14
        local.get 15
        i32.add
        local.set 16
        local.get 16
        local.get 13
        i32.store8
        local.get 4
        i64.load offset=16
        local.set 21
        i64.const 8
        local.set 22
        local.get 21
        local.get 22
        i64.shr_u
        local.set 23
        local.get 4
        local.get 23
        i64.store offset=16
        local.get 4
        i32.load offset=12
        local.set 17
        i32.const -1
        local.set 18
        local.get 17
        local.get 18
        i32.add
        local.set 19
        local.get 4
        local.get 19
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $R (type 14) (param i64 i32) (result i64)
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
  (func $crypto_hash_sha512_tweet (type 6) (param i32 i32 i64) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 352
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set 0
    i64.const 0
    local.set 88
    local.get 5
    local.get 0
    i32.store offset=348
    local.get 5
    local.get 1
    i32.store offset=344
    local.get 5
    local.get 2
    i64.store offset=336
    local.get 5
    i64.load offset=336
    local.set 89
    local.get 5
    local.get 89
    i64.store
    local.get 5
    local.get 88
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 64
        local.set 90
        local.get 5
        i64.load offset=8
        local.set 91
        local.get 91
        local.set 92
        local.get 90
        local.set 93
        local.get 92
        local.get 93
        i64.lt_u
        local.set 6
        i32.const 1
        local.set 7
        local.get 6
        local.get 7
        i32.and
        local.set 8
        local.get 8
        i32.eqz
        br_if 1 (;@1;)
        i32.const 272
        local.set 9
        local.get 5
        local.get 9
        i32.add
        local.set 10
        local.get 10
        local.set 11
        local.get 5
        i64.load offset=8
        local.set 94
        local.get 94
        i32.wrap_i64
        local.set 12
        local.get 12
        i32.load8_u offset=1664
        local.set 13
        local.get 5
        i64.load offset=8
        local.set 95
        local.get 95
        i32.wrap_i64
        local.set 14
        local.get 11
        local.get 14
        i32.add
        local.set 15
        local.get 15
        local.get 13
        i32.store8
        local.get 5
        i64.load offset=8
        local.set 96
        i64.const 1
        local.set 97
        local.get 96
        local.get 97
        i64.add
        local.set 98
        local.get 5
        local.get 98
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 99
    i32.const 0
    local.set 16
    i32.const 272
    local.set 17
    local.get 5
    local.get 17
    i32.add
    local.set 18
    local.get 18
    local.set 19
    local.get 5
    i32.load offset=344
    local.set 20
    local.get 5
    i64.load offset=336
    local.set 100
    local.get 19
    local.get 20
    local.get 100
    call $crypto_hashblocks_sha512_tweet
    drop
    local.get 5
    i64.load offset=336
    local.set 101
    local.get 5
    i32.load offset=344
    local.set 21
    local.get 101
    i32.wrap_i64
    local.set 22
    local.get 21
    local.get 22
    i32.add
    local.set 23
    local.get 5
    local.get 23
    i32.store offset=344
    local.get 5
    i64.load offset=336
    local.set 102
    i64.const 127
    local.set 103
    local.get 102
    local.get 103
    i64.and
    local.set 104
    local.get 5
    local.get 104
    i64.store offset=336
    local.get 5
    i64.load offset=336
    local.set 105
    local.get 5
    i32.load offset=344
    local.set 24
    local.get 105
    i32.wrap_i64
    local.set 25
    local.get 16
    local.get 25
    i32.sub
    local.set 26
    local.get 24
    local.get 26
    i32.add
    local.set 27
    local.get 5
    local.get 27
    i32.store offset=344
    local.get 5
    local.get 99
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 256
        local.set 106
        local.get 5
        i64.load offset=8
        local.set 107
        local.get 107
        local.set 108
        local.get 106
        local.set 109
        local.get 108
        local.get 109
        i64.lt_u
        local.set 28
        i32.const 1
        local.set 29
        local.get 28
        local.get 29
        i32.and
        local.set 30
        local.get 30
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 31
        i32.const 16
        local.set 32
        local.get 5
        local.get 32
        i32.add
        local.set 33
        local.get 33
        local.set 34
        local.get 5
        i64.load offset=8
        local.set 110
        local.get 110
        i32.wrap_i64
        local.set 35
        local.get 34
        local.get 35
        i32.add
        local.set 36
        local.get 36
        local.get 31
        i32.store8
        local.get 5
        i64.load offset=8
        local.set 111
        i64.const 1
        local.set 112
        local.get 111
        local.get 112
        i64.add
        local.set 113
        local.get 5
        local.get 113
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 114
    local.get 5
    local.get 114
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i64.load offset=8
        local.set 115
        local.get 5
        i64.load offset=336
        local.set 116
        local.get 115
        local.set 117
        local.get 116
        local.set 118
        local.get 117
        local.get 118
        i64.lt_u
        local.set 37
        i32.const 1
        local.set 38
        local.get 37
        local.get 38
        i32.and
        local.set 39
        local.get 39
        i32.eqz
        br_if 1 (;@1;)
        i32.const 16
        local.set 40
        local.get 5
        local.get 40
        i32.add
        local.set 41
        local.get 41
        local.set 42
        local.get 5
        i32.load offset=344
        local.set 43
        local.get 5
        i64.load offset=8
        local.set 119
        local.get 119
        i32.wrap_i64
        local.set 44
        local.get 43
        local.get 44
        i32.add
        local.set 45
        local.get 45
        i32.load8_u
        local.set 46
        local.get 5
        i64.load offset=8
        local.set 120
        local.get 120
        i32.wrap_i64
        local.set 47
        local.get 42
        local.get 47
        i32.add
        local.set 48
        local.get 48
        local.get 46
        i32.store8
        local.get 5
        i64.load offset=8
        local.set 121
        i64.const 1
        local.set 122
        local.get 121
        local.get 122
        i64.add
        local.set 123
        local.get 5
        local.get 123
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 124
    i32.const 16
    local.set 49
    local.get 5
    local.get 49
    i32.add
    local.set 50
    local.get 50
    local.set 51
    i32.const 272
    local.set 52
    local.get 5
    local.get 52
    i32.add
    local.set 53
    local.get 53
    local.set 54
    i32.const 256
    local.set 55
    i64.const 112
    local.set 125
    i32.const 128
    local.set 56
    local.get 5
    i64.load offset=336
    local.set 126
    local.get 126
    i32.wrap_i64
    local.set 57
    local.get 51
    local.get 57
    i32.add
    local.set 58
    local.get 58
    local.get 56
    i32.store8
    local.get 5
    i64.load offset=336
    local.set 127
    local.get 127
    local.set 128
    local.get 125
    local.set 129
    local.get 128
    local.get 129
    i64.lt_u
    local.set 59
    i32.const 1
    local.set 60
    local.get 59
    local.get 60
    i32.and
    local.set 61
    i32.const 7
    local.set 62
    local.get 61
    local.get 62
    i32.shl
    local.set 63
    local.get 55
    local.get 63
    i32.sub
    local.set 64
    local.get 64
    local.set 65
    local.get 65
    i64.extend_i32_s
    local.set 130
    local.get 5
    local.get 130
    i64.store offset=336
    local.get 5
    i64.load
    local.set 131
    i64.const 61
    local.set 132
    local.get 131
    local.get 132
    i64.shr_u
    local.set 133
    local.get 133
    i32.wrap_i64
    local.set 66
    local.get 5
    i64.load offset=336
    local.set 134
    i64.const 9
    local.set 135
    local.get 134
    local.get 135
    i64.sub
    local.set 136
    local.get 136
    i32.wrap_i64
    local.set 67
    local.get 51
    local.get 67
    i32.add
    local.set 68
    local.get 68
    local.get 66
    i32.store8
    local.get 5
    i64.load offset=336
    local.set 137
    local.get 137
    i32.wrap_i64
    local.set 69
    local.get 51
    local.get 69
    i32.add
    local.set 70
    i32.const -8
    local.set 71
    local.get 70
    local.get 71
    i32.add
    local.set 72
    local.get 5
    i64.load
    local.set 138
    i64.const 3
    local.set 139
    local.get 138
    local.get 139
    i64.shl
    local.set 140
    local.get 72
    local.get 140
    call $ts64
    local.get 5
    i64.load offset=336
    local.set 141
    local.get 54
    local.get 51
    local.get 141
    call $crypto_hashblocks_sha512_tweet
    drop
    local.get 5
    local.get 124
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 64
        local.set 142
        local.get 5
        i64.load offset=8
        local.set 143
        local.get 143
        local.set 144
        local.get 142
        local.set 145
        local.get 144
        local.get 145
        i64.lt_u
        local.set 73
        i32.const 1
        local.set 74
        local.get 73
        local.get 74
        i32.and
        local.set 75
        local.get 75
        i32.eqz
        br_if 1 (;@1;)
        i32.const 272
        local.set 76
        local.get 5
        local.get 76
        i32.add
        local.set 77
        local.get 77
        local.set 78
        local.get 5
        i64.load offset=8
        local.set 146
        local.get 146
        i32.wrap_i64
        local.set 79
        local.get 78
        local.get 79
        i32.add
        local.set 80
        local.get 80
        i32.load8_u
        local.set 81
        local.get 5
        i32.load offset=348
        local.set 82
        local.get 5
        i64.load offset=8
        local.set 147
        local.get 147
        i32.wrap_i64
        local.set 83
        local.get 82
        local.get 83
        i32.add
        local.set 84
        local.get 84
        local.get 81
        i32.store8
        local.get 5
        i64.load offset=8
        local.set 148
        i64.const 1
        local.set 149
        local.get 148
        local.get 149
        i64.add
        local.set 150
        local.get 5
        local.get 150
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 85
    i32.const 352
    local.set 86
    local.get 5
    local.get 86
    i32.add
    local.set 87
    local.get 87
    global.set 0
    local.get 85
    return)
  (func $scalarbase (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 528
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.set 5
    i32.const 1728
    local.set 6
    i32.const 1856
    local.set 7
    i32.const 1984
    local.set 8
    local.get 8
    local.set 9
    local.get 4
    local.get 0
    i32.store offset=524
    local.get 4
    local.get 1
    i32.store offset=520
    local.get 5
    local.get 6
    call $set25519
    i32.const 128
    local.set 10
    local.get 5
    local.get 10
    i32.add
    local.set 11
    local.get 11
    local.get 7
    call $set25519
    i32.const 256
    local.set 12
    local.get 5
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.get 9
    call $set25519
    i32.const 384
    local.set 14
    local.get 5
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.get 6
    local.get 7
    call $M
    local.get 4
    i32.load offset=524
    local.set 16
    local.get 4
    i32.load offset=520
    local.set 17
    local.get 16
    local.get 5
    local.get 17
    call $scalarmult
    i32.const 528
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set 0
    return)
  (func $pack (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 400
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 256
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    i32.const 128
    local.set 8
    local.get 4
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    local.get 4
    local.set 11
    local.get 4
    local.get 0
    i32.store offset=396
    local.get 4
    local.get 1
    i32.store offset=392
    local.get 4
    i32.load offset=392
    local.set 12
    i32.const 256
    local.set 13
    local.get 12
    local.get 13
    i32.add
    local.set 14
    local.get 11
    local.get 14
    call $inv25519
    local.get 4
    i32.load offset=392
    local.set 15
    local.get 7
    local.get 15
    local.get 11
    call $M
    local.get 4
    i32.load offset=392
    local.set 16
    i32.const 128
    local.set 17
    local.get 16
    local.get 17
    i32.add
    local.set 18
    local.get 10
    local.get 18
    local.get 11
    call $M
    local.get 4
    i32.load offset=396
    local.set 19
    local.get 19
    local.get 10
    call $pack25519
    local.get 7
    call $par25519
    local.set 20
    i32.const 255
    local.set 21
    local.get 20
    local.get 21
    i32.and
    local.set 22
    i32.const 7
    local.set 23
    local.get 22
    local.get 23
    i32.shl
    local.set 24
    local.get 4
    i32.load offset=396
    local.set 25
    local.get 25
    i32.load8_u offset=31
    local.set 26
    i32.const 255
    local.set 27
    local.get 26
    local.get 27
    i32.and
    local.set 28
    local.get 28
    local.get 24
    i32.xor
    local.set 29
    local.get 25
    local.get 29
    i32.store8 offset=31
    i32.const 400
    local.set 30
    local.get 4
    local.get 30
    i32.add
    local.set 31
    local.get 31
    global.set 0
    return)
  (func $set25519 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    local.get 5
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 6
        local.get 4
        i32.load offset=4
        local.set 7
        local.get 7
        local.set 8
        local.get 6
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=8
        local.set 13
        local.get 4
        i32.load offset=4
        local.set 14
        i32.const 3
        local.set 15
        local.get 14
        local.get 15
        i32.shl
        local.set 16
        local.get 13
        local.get 16
        i32.add
        local.set 17
        local.get 17
        i64.load
        local.set 26
        local.get 4
        i32.load offset=12
        local.set 18
        local.get 4
        i32.load offset=4
        local.set 19
        i32.const 3
        local.set 20
        local.get 19
        local.get 20
        i32.shl
        local.set 21
        local.get 18
        local.get 21
        i32.add
        local.set 22
        local.get 22
        local.get 26
        i64.store
        local.get 4
        i32.load offset=4
        local.set 23
        i32.const 1
        local.set 24
        local.get 23
        local.get 24
        i32.add
        local.set 25
        local.get 4
        local.get 25
        i32.store offset=4
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $scalarmult (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 255
    local.set 6
    i32.const 2624
    local.set 7
    i32.const 1984
    local.set 8
    local.get 8
    local.set 9
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
    local.set 10
    local.get 10
    local.get 7
    call $set25519
    local.get 5
    i32.load offset=28
    local.set 11
    i32.const 128
    local.set 12
    local.get 11
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.get 9
    call $set25519
    local.get 5
    i32.load offset=28
    local.set 14
    i32.const 256
    local.set 15
    local.get 14
    local.get 15
    i32.add
    local.set 16
    local.get 16
    local.get 9
    call $set25519
    local.get 5
    i32.load offset=28
    local.set 17
    i32.const 384
    local.set 18
    local.get 17
    local.get 18
    i32.add
    local.set 19
    local.get 19
    local.get 7
    call $set25519
    local.get 5
    local.get 6
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 20
        local.get 5
        i32.load offset=16
        local.set 21
        local.get 21
        local.set 22
        local.get 20
        local.set 23
        local.get 22
        local.get 23
        i32.ge_s
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        local.get 26
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=20
        local.set 27
        local.get 5
        i32.load offset=16
        local.set 28
        i32.const 8
        local.set 29
        local.get 28
        local.get 29
        i32.div_s
        local.set 30
        local.get 27
        local.get 30
        i32.add
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
        local.get 5
        i32.load offset=16
        local.set 35
        i32.const 7
        local.set 36
        local.get 35
        local.get 36
        i32.and
        local.set 37
        local.get 34
        local.get 37
        i32.shr_s
        local.set 38
        i32.const 1
        local.set 39
        local.get 38
        local.get 39
        i32.and
        local.set 40
        local.get 5
        local.get 40
        i32.store8 offset=15
        local.get 5
        i32.load offset=28
        local.set 41
        local.get 5
        i32.load offset=24
        local.set 42
        local.get 5
        i32.load8_u offset=15
        local.set 43
        i32.const 255
        local.set 44
        local.get 43
        local.get 44
        i32.and
        local.set 45
        local.get 41
        local.get 42
        local.get 45
        call $cswap
        local.get 5
        i32.load offset=24
        local.set 46
        local.get 5
        i32.load offset=28
        local.set 47
        local.get 46
        local.get 47
        call $add
        local.get 5
        i32.load offset=28
        local.set 48
        local.get 5
        i32.load offset=28
        local.set 49
        local.get 48
        local.get 49
        call $add
        local.get 5
        i32.load offset=28
        local.set 50
        local.get 5
        i32.load offset=24
        local.set 51
        local.get 5
        i32.load8_u offset=15
        local.set 52
        i32.const 255
        local.set 53
        local.get 52
        local.get 53
        i32.and
        local.set 54
        local.get 50
        local.get 51
        local.get 54
        call $cswap
        local.get 5
        i32.load offset=16
        local.set 55
        i32.const -1
        local.set 56
        local.get 55
        local.get 56
        i32.add
        local.set 57
        local.get 5
        local.get 57
        i32.store offset=16
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 32
    local.set 58
    local.get 5
    local.get 58
    i32.add
    local.set 59
    local.get 59
    global.set 0
    return)
  (func $par25519 (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 48
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.set 4
    local.get 3
    local.get 0
    i32.store offset=44
    local.get 3
    i32.load offset=44
    local.set 5
    local.get 4
    local.get 5
    call $pack25519
    local.get 3
    i32.load8_u
    local.set 6
    i32.const 255
    local.set 7
    local.get 6
    local.get 7
    i32.and
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    i32.const 255
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    i32.const 48
    local.set 13
    local.get 3
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set 0
    local.get 12
    return)
  (func $reduce (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 1
    i32.const 544
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    i64.const 0
    local.set 33
    local.get 3
    local.get 0
    i32.store offset=540
    local.get 3
    local.get 33
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 64
        local.set 34
        local.get 3
        i64.load offset=8
        local.set 35
        local.get 35
        local.set 36
        local.get 34
        local.set 37
        local.get 36
        local.get 37
        i64.lt_u
        local.set 4
        i32.const 1
        local.set 5
        local.get 4
        local.get 5
        i32.and
        local.set 6
        local.get 6
        i32.eqz
        br_if 1 (;@1;)
        i32.const 16
        local.set 7
        local.get 3
        local.get 7
        i32.add
        local.set 8
        local.get 8
        local.set 9
        local.get 3
        i32.load offset=540
        local.set 10
        local.get 3
        i64.load offset=8
        local.set 38
        local.get 38
        i32.wrap_i64
        local.set 11
        local.get 10
        local.get 11
        i32.add
        local.set 12
        local.get 12
        i32.load8_u
        local.set 13
        i32.const 255
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i64.extend_i32_u
        local.set 39
        local.get 3
        i64.load offset=8
        local.set 40
        local.get 40
        i32.wrap_i64
        local.set 16
        i32.const 3
        local.set 17
        local.get 16
        local.get 17
        i32.shl
        local.set 18
        local.get 9
        local.get 18
        i32.add
        local.set 19
        local.get 19
        local.get 39
        i64.store
        local.get 3
        i64.load offset=8
        local.set 41
        i64.const 1
        local.set 42
        local.get 41
        local.get 42
        i64.add
        local.set 43
        local.get 3
        local.get 43
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 44
    local.get 3
    local.get 44
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 64
        local.set 45
        local.get 3
        i64.load offset=8
        local.set 46
        local.get 46
        local.set 47
        local.get 45
        local.set 48
        local.get 47
        local.get 48
        i64.lt_u
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
        local.get 3
        i32.load offset=540
        local.set 24
        local.get 3
        i64.load offset=8
        local.set 49
        local.get 49
        i32.wrap_i64
        local.set 25
        local.get 24
        local.get 25
        i32.add
        local.set 26
        local.get 26
        local.get 23
        i32.store8
        local.get 3
        i64.load offset=8
        local.set 50
        i64.const 1
        local.set 51
        local.get 50
        local.get 51
        i64.add
        local.set 52
        local.get 3
        local.get 52
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 16
    local.set 27
    local.get 3
    local.get 27
    i32.add
    local.set 28
    local.get 28
    local.set 29
    local.get 3
    i32.load offset=540
    local.set 30
    local.get 30
    local.get 29
    call $modL
    i32.const 544
    local.set 31
    local.get 3
    local.get 31
    i32.add
    local.set 32
    local.get 32
    global.set 0
    return)
  (func $modL (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    i64.const 63
    local.set 105
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    local.get 105
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 32
        local.set 106
        local.get 4
        i64.load offset=8
        local.set 107
        local.get 107
        local.set 108
        local.get 106
        local.set 109
        local.get 108
        local.get 109
        i64.ge_u
        local.set 5
        i32.const 1
        local.set 6
        local.get 5
        local.get 6
        i32.and
        local.set 7
        local.get 7
        i32.eqz
        br_if 1 (;@1;)
        i64.const 0
        local.set 110
        local.get 4
        local.get 110
        i64.store offset=16
        local.get 4
        i64.load offset=8
        local.set 111
        i64.const 32
        local.set 112
        local.get 111
        local.get 112
        i64.sub
        local.set 113
        local.get 4
        local.get 113
        i64.store
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i64.load
            local.set 114
            local.get 4
            i64.load offset=8
            local.set 115
            i64.const 12
            local.set 116
            local.get 115
            local.get 116
            i64.sub
            local.set 117
            local.get 114
            local.set 118
            local.get 117
            local.set 119
            local.get 118
            local.get 119
            i64.lt_u
            local.set 8
            i32.const 1
            local.set 9
            local.get 8
            local.get 9
            i32.and
            local.set 10
            local.get 10
            i32.eqz
            br_if 1 (;@3;)
            i32.const 2112
            local.set 11
            local.get 4
            i64.load offset=16
            local.set 120
            local.get 4
            i32.load offset=24
            local.set 12
            local.get 4
            i64.load offset=8
            local.set 121
            local.get 121
            i32.wrap_i64
            local.set 13
            i32.const 3
            local.set 14
            local.get 13
            local.get 14
            i32.shl
            local.set 15
            local.get 12
            local.get 15
            i32.add
            local.set 16
            local.get 16
            i64.load
            local.set 122
            i64.const 4
            local.set 123
            local.get 122
            local.get 123
            i64.shl
            local.set 124
            local.get 4
            i64.load
            local.set 125
            local.get 4
            i64.load offset=8
            local.set 126
            i64.const 32
            local.set 127
            local.get 126
            local.get 127
            i64.sub
            local.set 128
            local.get 125
            local.get 128
            i64.sub
            local.set 129
            local.get 129
            i32.wrap_i64
            local.set 17
            i32.const 3
            local.set 18
            local.get 17
            local.get 18
            i32.shl
            local.set 19
            local.get 11
            local.get 19
            i32.add
            local.set 20
            local.get 20
            i64.load
            local.set 130
            local.get 124
            local.get 130
            i64.mul
            local.set 131
            local.get 120
            local.get 131
            i64.sub
            local.set 132
            local.get 4
            i32.load offset=24
            local.set 21
            local.get 4
            i64.load
            local.set 133
            local.get 133
            i32.wrap_i64
            local.set 22
            i32.const 3
            local.set 23
            local.get 22
            local.get 23
            i32.shl
            local.set 24
            local.get 21
            local.get 24
            i32.add
            local.set 25
            local.get 25
            i64.load
            local.set 134
            local.get 134
            local.get 132
            i64.add
            local.set 135
            local.get 25
            local.get 135
            i64.store
            local.get 4
            i32.load offset=24
            local.set 26
            local.get 4
            i64.load
            local.set 136
            local.get 136
            i32.wrap_i64
            local.set 27
            i32.const 3
            local.set 28
            local.get 27
            local.get 28
            i32.shl
            local.set 29
            local.get 26
            local.get 29
            i32.add
            local.set 30
            local.get 30
            i64.load
            local.set 137
            i64.const 128
            local.set 138
            local.get 137
            local.get 138
            i64.add
            local.set 139
            i64.const 8
            local.set 140
            local.get 139
            local.get 140
            i64.shr_u
            local.set 141
            local.get 4
            local.get 141
            i64.store offset=16
            local.get 4
            i64.load offset=16
            local.set 142
            i64.const 8
            local.set 143
            local.get 142
            local.get 143
            i64.shl
            local.set 144
            local.get 4
            i32.load offset=24
            local.set 31
            local.get 4
            i64.load
            local.set 145
            local.get 145
            i32.wrap_i64
            local.set 32
            i32.const 3
            local.set 33
            local.get 32
            local.get 33
            i32.shl
            local.set 34
            local.get 31
            local.get 34
            i32.add
            local.set 35
            local.get 35
            i64.load
            local.set 146
            local.get 146
            local.get 144
            i64.sub
            local.set 147
            local.get 35
            local.get 147
            i64.store
            local.get 4
            i64.load
            local.set 148
            i64.const 1
            local.set 149
            local.get 148
            local.get 149
            i64.add
            local.set 150
            local.get 4
            local.get 150
            i64.store
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i64.const 0
        local.set 151
        local.get 4
        i64.load offset=16
        local.set 152
        local.get 4
        i32.load offset=24
        local.set 36
        local.get 4
        i64.load
        local.set 153
        local.get 153
        i32.wrap_i64
        local.set 37
        i32.const 3
        local.set 38
        local.get 37
        local.get 38
        i32.shl
        local.set 39
        local.get 36
        local.get 39
        i32.add
        local.set 40
        local.get 40
        i64.load
        local.set 154
        local.get 154
        local.get 152
        i64.add
        local.set 155
        local.get 40
        local.get 155
        i64.store
        local.get 4
        i32.load offset=24
        local.set 41
        local.get 4
        i64.load offset=8
        local.set 156
        local.get 156
        i32.wrap_i64
        local.set 42
        i32.const 3
        local.set 43
        local.get 42
        local.get 43
        i32.shl
        local.set 44
        local.get 41
        local.get 44
        i32.add
        local.set 45
        local.get 45
        local.get 151
        i64.store
        local.get 4
        i64.load offset=8
        local.set 157
        i64.const -1
        local.set 158
        local.get 157
        local.get 158
        i64.add
        local.set 159
        local.get 4
        local.get 159
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 160
    local.get 4
    local.get 160
    i64.store offset=16
    local.get 4
    local.get 160
    i64.store
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 32
        local.set 161
        local.get 4
        i64.load
        local.set 162
        local.get 162
        local.set 163
        local.get 161
        local.set 164
        local.get 163
        local.get 164
        i64.lt_u
        local.set 46
        i32.const 1
        local.set 47
        local.get 46
        local.get 47
        i32.and
        local.set 48
        local.get 48
        i32.eqz
        br_if 1 (;@1;)
        i32.const 2112
        local.set 49
        local.get 4
        i64.load offset=16
        local.set 165
        local.get 4
        i32.load offset=24
        local.set 50
        local.get 50
        i64.load offset=248
        local.set 166
        i64.const 4
        local.set 167
        local.get 166
        local.get 167
        i64.shr_u
        local.set 168
        local.get 4
        i64.load
        local.set 169
        local.get 169
        i32.wrap_i64
        local.set 51
        i32.const 3
        local.set 52
        local.get 51
        local.get 52
        i32.shl
        local.set 53
        local.get 49
        local.get 53
        i32.add
        local.set 54
        local.get 54
        i64.load
        local.set 170
        local.get 168
        local.get 170
        i64.mul
        local.set 171
        local.get 165
        local.get 171
        i64.sub
        local.set 172
        local.get 4
        i32.load offset=24
        local.set 55
        local.get 4
        i64.load
        local.set 173
        local.get 173
        i32.wrap_i64
        local.set 56
        i32.const 3
        local.set 57
        local.get 56
        local.get 57
        i32.shl
        local.set 58
        local.get 55
        local.get 58
        i32.add
        local.set 59
        local.get 59
        i64.load
        local.set 174
        local.get 174
        local.get 172
        i64.add
        local.set 175
        local.get 59
        local.get 175
        i64.store
        local.get 4
        i32.load offset=24
        local.set 60
        local.get 4
        i64.load
        local.set 176
        local.get 176
        i32.wrap_i64
        local.set 61
        i32.const 3
        local.set 62
        local.get 61
        local.get 62
        i32.shl
        local.set 63
        local.get 60
        local.get 63
        i32.add
        local.set 64
        local.get 64
        i64.load
        local.set 177
        i64.const 8
        local.set 178
        local.get 177
        local.get 178
        i64.shr_u
        local.set 179
        local.get 4
        local.get 179
        i64.store offset=16
        local.get 4
        i32.load offset=24
        local.set 65
        local.get 4
        i64.load
        local.set 180
        local.get 180
        i32.wrap_i64
        local.set 66
        i32.const 3
        local.set 67
        local.get 66
        local.get 67
        i32.shl
        local.set 68
        local.get 65
        local.get 68
        i32.add
        local.set 69
        local.get 69
        i64.load
        local.set 181
        i64.const 255
        local.set 182
        local.get 181
        local.get 182
        i64.and
        local.set 183
        local.get 69
        local.get 183
        i64.store
        local.get 4
        i64.load
        local.set 184
        i64.const 1
        local.set 185
        local.get 184
        local.get 185
        i64.add
        local.set 186
        local.get 4
        local.get 186
        i64.store
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 187
    local.get 4
    local.get 187
    i64.store
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 32
        local.set 188
        local.get 4
        i64.load
        local.set 189
        local.get 189
        local.set 190
        local.get 188
        local.set 191
        local.get 190
        local.get 191
        i64.lt_u
        local.set 70
        i32.const 1
        local.set 71
        local.get 70
        local.get 71
        i32.and
        local.set 72
        local.get 72
        i32.eqz
        br_if 1 (;@1;)
        i32.const 2112
        local.set 73
        local.get 4
        i64.load offset=16
        local.set 192
        local.get 4
        i64.load
        local.set 193
        local.get 193
        i32.wrap_i64
        local.set 74
        i32.const 3
        local.set 75
        local.get 74
        local.get 75
        i32.shl
        local.set 76
        local.get 73
        local.get 76
        i32.add
        local.set 77
        local.get 77
        i64.load
        local.set 194
        local.get 192
        local.get 194
        i64.mul
        local.set 195
        local.get 4
        i32.load offset=24
        local.set 78
        local.get 4
        i64.load
        local.set 196
        local.get 196
        i32.wrap_i64
        local.set 79
        i32.const 3
        local.set 80
        local.get 79
        local.get 80
        i32.shl
        local.set 81
        local.get 78
        local.get 81
        i32.add
        local.set 82
        local.get 82
        i64.load
        local.set 197
        local.get 197
        local.get 195
        i64.sub
        local.set 198
        local.get 82
        local.get 198
        i64.store
        local.get 4
        i64.load
        local.set 199
        i64.const 1
        local.set 200
        local.get 199
        local.get 200
        i64.add
        local.set 201
        local.get 4
        local.get 201
        i64.store
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i64.const 0
    local.set 202
    local.get 4
    local.get 202
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i64.const 32
        local.set 203
        local.get 4
        i64.load offset=8
        local.set 204
        local.get 204
        local.set 205
        local.get 203
        local.set 206
        local.get 205
        local.get 206
        i64.lt_u
        local.set 83
        i32.const 1
        local.set 84
        local.get 83
        local.get 84
        i32.and
        local.set 85
        local.get 85
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=24
        local.set 86
        local.get 4
        i64.load offset=8
        local.set 207
        local.get 207
        i32.wrap_i64
        local.set 87
        i32.const 3
        local.set 88
        local.get 87
        local.get 88
        i32.shl
        local.set 89
        local.get 86
        local.get 89
        i32.add
        local.set 90
        local.get 90
        i64.load
        local.set 208
        i64.const 8
        local.set 209
        local.get 208
        local.get 209
        i64.shr_u
        local.set 210
        local.get 4
        i32.load offset=24
        local.set 91
        local.get 4
        i64.load offset=8
        local.set 211
        i64.const 1
        local.set 212
        local.get 211
        local.get 212
        i64.add
        local.set 213
        local.get 213
        i32.wrap_i64
        local.set 92
        i32.const 3
        local.set 93
        local.get 92
        local.get 93
        i32.shl
        local.set 94
        local.get 91
        local.get 94
        i32.add
        local.set 95
        local.get 95
        i64.load
        local.set 214
        local.get 214
        local.get 210
        i64.add
        local.set 215
        local.get 95
        local.get 215
        i64.store
        local.get 4
        i32.load offset=24
        local.set 96
        local.get 4
        i64.load offset=8
        local.set 216
        local.get 216
        i32.wrap_i64
        local.set 97
        i32.const 3
        local.set 98
        local.get 97
        local.get 98
        i32.shl
        local.set 99
        local.get 96
        local.get 99
        i32.add
        local.set 100
        local.get 100
        i64.load
        local.set 217
        i64.const 255
        local.set 218
        local.get 217
        local.get 218
        i64.and
        local.set 219
        local.get 219
        i32.wrap_i64
        local.set 101
        local.get 4
        i32.load offset=28
        local.set 102
        local.get 4
        i64.load offset=8
        local.set 220
        local.get 220
        i32.wrap_i64
        local.set 103
        local.get 102
        local.get 103
        i32.add
        local.set 104
        local.get 104
        local.get 101
        i32.store8
        local.get 4
        i64.load offset=8
        local.set 221
        i64.const 1
        local.set 222
        local.get 221
        local.get 222
        i64.add
        local.set 223
        local.get 4
        local.get 223
        i64.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $crypto_sign_ed25519_tweet_open (type 12) (param i32 i32 i32 i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 5
    i32.const 1152
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    global.set 0
    i64.const 64
    local.set 106
    i64.const -1
    local.set 107
    local.get 7
    local.get 0
    i32.store offset=1144
    local.get 7
    local.get 1
    i32.store offset=1140
    local.get 7
    local.get 2
    i32.store offset=1136
    local.get 7
    local.get 3
    i64.store offset=1128
    local.get 7
    local.get 4
    i32.store offset=1124
    local.get 7
    i32.load offset=1140
    local.set 8
    local.get 8
    local.get 107
    i64.store
    local.get 7
    i64.load offset=1128
    local.set 108
    local.get 108
    local.set 109
    local.get 106
    local.set 110
    local.get 109
    local.get 110
    i64.lt_u
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 12
        local.get 7
        local.get 12
        i32.store offset=1148
        br 1 (;@1;)
      end
      local.get 7
      local.set 13
      local.get 7
      i32.load offset=1124
      local.set 14
      local.get 13
      local.get 14
      call $unpackneg
      local.set 15
      block  ;; label = @2
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 16
        local.get 7
        local.get 16
        i32.store offset=1148
        br 1 (;@1;)
      end
      i32.const 0
      local.set 17
      local.get 7
      local.get 17
      i32.store offset=1120
      block  ;; label = @2
        loop  ;; label = @3
          local.get 7
          i32.load offset=1120
          local.set 18
          local.get 18
          local.set 19
          local.get 19
          i64.extend_i32_s
          local.set 111
          local.get 7
          i64.load offset=1128
          local.set 112
          local.get 111
          local.set 113
          local.get 112
          local.set 114
          local.get 113
          local.get 114
          i64.lt_u
          local.set 20
          i32.const 1
          local.set 21
          local.get 20
          local.get 21
          i32.and
          local.set 22
          local.get 22
          i32.eqz
          br_if 1 (;@2;)
          local.get 7
          i32.load offset=1136
          local.set 23
          local.get 7
          i32.load offset=1120
          local.set 24
          local.get 23
          local.get 24
          i32.add
          local.set 25
          local.get 25
          i32.load8_u
          local.set 26
          local.get 7
          i32.load offset=1144
          local.set 27
          local.get 7
          i32.load offset=1120
          local.set 28
          local.get 27
          local.get 28
          i32.add
          local.set 29
          local.get 29
          local.get 26
          i32.store8
          local.get 7
          i32.load offset=1120
          local.set 30
          i32.const 1
          local.set 31
          local.get 30
          local.get 31
          i32.add
          local.set 32
          local.get 7
          local.get 32
          i32.store offset=1120
          br 0 (;@3;)
          unreachable
        end
        unreachable
      end
      i32.const 0
      local.set 33
      local.get 7
      local.get 33
      i32.store offset=1120
      block  ;; label = @2
        loop  ;; label = @3
          i32.const 32
          local.set 34
          local.get 7
          i32.load offset=1120
          local.set 35
          local.get 35
          local.set 36
          local.get 34
          local.set 37
          local.get 36
          local.get 37
          i32.lt_s
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
          local.get 7
          i32.load offset=1124
          local.set 41
          local.get 7
          i32.load offset=1120
          local.set 42
          local.get 41
          local.get 42
          i32.add
          local.set 43
          local.get 43
          i32.load8_u
          local.set 44
          local.get 7
          i32.load offset=1144
          local.set 45
          local.get 7
          i32.load offset=1120
          local.set 46
          i32.const 32
          local.set 47
          local.get 46
          local.get 47
          i32.add
          local.set 48
          local.get 45
          local.get 48
          i32.add
          local.set 49
          local.get 49
          local.get 44
          i32.store8
          local.get 7
          i32.load offset=1120
          local.set 50
          i32.const 1
          local.set 51
          local.get 50
          local.get 51
          i32.add
          local.set 52
          local.get 7
          local.get 52
          i32.store offset=1120
          br 0 (;@3;)
          unreachable
        end
        unreachable
      end
      i32.const 1088
      local.set 53
      local.get 7
      local.get 53
      i32.add
      local.set 54
      local.get 54
      local.set 55
      i32.const 512
      local.set 56
      local.get 7
      local.get 56
      i32.add
      local.set 57
      local.get 57
      local.set 58
      local.get 7
      local.set 59
      i32.const 1024
      local.set 60
      local.get 7
      local.get 60
      i32.add
      local.set 61
      local.get 61
      local.set 62
      local.get 7
      i32.load offset=1144
      local.set 63
      local.get 7
      i64.load offset=1128
      local.set 115
      local.get 62
      local.get 63
      local.get 115
      call $crypto_hash_sha512_tweet
      drop
      local.get 62
      call $reduce
      local.get 58
      local.get 59
      local.get 62
      call $scalarmult
      local.get 7
      i32.load offset=1136
      local.set 64
      i32.const 32
      local.set 65
      local.get 64
      local.get 65
      i32.add
      local.set 66
      local.get 59
      local.get 66
      call $scalarbase
      local.get 58
      local.get 59
      call $add
      local.get 55
      local.get 58
      call $pack
      local.get 7
      i64.load offset=1128
      local.set 116
      i64.const 64
      local.set 117
      local.get 116
      local.get 117
      i64.sub
      local.set 118
      local.get 7
      local.get 118
      i64.store offset=1128
      local.get 7
      i32.load offset=1136
      local.set 67
      local.get 67
      local.get 55
      call $crypto_verify_32_tweet
      local.set 68
      block  ;; label = @2
        local.get 68
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 69
        local.get 7
        local.get 69
        i32.store offset=1120
        block  ;; label = @3
          loop  ;; label = @4
            local.get 7
            i32.load offset=1120
            local.set 70
            local.get 70
            local.set 71
            local.get 71
            i64.extend_i32_s
            local.set 119
            local.get 7
            i64.load offset=1128
            local.set 120
            local.get 119
            local.set 121
            local.get 120
            local.set 122
            local.get 121
            local.get 122
            i64.lt_u
            local.set 72
            i32.const 1
            local.set 73
            local.get 72
            local.get 73
            i32.and
            local.set 74
            local.get 74
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 75
            local.get 7
            i32.load offset=1144
            local.set 76
            local.get 7
            i32.load offset=1120
            local.set 77
            local.get 76
            local.get 77
            i32.add
            local.set 78
            local.get 78
            local.get 75
            i32.store8
            local.get 7
            i32.load offset=1120
            local.set 79
            i32.const 1
            local.set 80
            local.get 79
            local.get 80
            i32.add
            local.set 81
            local.get 7
            local.get 81
            i32.store offset=1120
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const -1
        local.set 82
        local.get 7
        local.get 82
        i32.store offset=1148
        br 1 (;@1;)
      end
      i32.const 0
      local.set 83
      local.get 7
      local.get 83
      i32.store offset=1120
      block  ;; label = @2
        loop  ;; label = @3
          local.get 7
          i32.load offset=1120
          local.set 84
          local.get 84
          local.set 85
          local.get 85
          i64.extend_i32_s
          local.set 123
          local.get 7
          i64.load offset=1128
          local.set 124
          local.get 123
          local.set 125
          local.get 124
          local.set 126
          local.get 125
          local.get 126
          i64.lt_u
          local.set 86
          i32.const 1
          local.set 87
          local.get 86
          local.get 87
          i32.and
          local.set 88
          local.get 88
          i32.eqz
          br_if 1 (;@2;)
          local.get 7
          i32.load offset=1136
          local.set 89
          local.get 7
          i32.load offset=1120
          local.set 90
          i32.const 64
          local.set 91
          local.get 90
          local.get 91
          i32.add
          local.set 92
          local.get 89
          local.get 92
          i32.add
          local.set 93
          local.get 93
          i32.load8_u
          local.set 94
          local.get 7
          i32.load offset=1144
          local.set 95
          local.get 7
          i32.load offset=1120
          local.set 96
          local.get 95
          local.get 96
          i32.add
          local.set 97
          local.get 97
          local.get 94
          i32.store8
          local.get 7
          i32.load offset=1120
          local.set 98
          i32.const 1
          local.set 99
          local.get 98
          local.get 99
          i32.add
          local.set 100
          local.get 7
          local.get 100
          i32.store offset=1120
          br 0 (;@3;)
          unreachable
        end
        unreachable
      end
      i32.const 0
      local.set 101
      local.get 7
      i64.load offset=1128
      local.set 127
      local.get 7
      i32.load offset=1140
      local.set 102
      local.get 102
      local.get 127
      i64.store
      local.get 7
      local.get 101
      i32.store offset=1148
    end
    local.get 7
    i32.load offset=1148
    local.set 103
    i32.const 1152
    local.set 104
    local.get 7
    local.get 104
    i32.add
    local.set 105
    local.get 105
    global.set 0
    local.get 103
    return)
  (func $unpackneg (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 912
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    i32.const 512
    local.set 5
    local.get 4
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    i32.const 640
    local.set 8
    local.get 4
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    i32.const 384
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 768
    local.set 14
    local.get 4
    local.get 14
    i32.add
    local.set 15
    local.get 15
    local.set 16
    local.get 4
    local.set 17
    i32.const 256
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    local.set 20
    i32.const 128
    local.set 21
    local.get 4
    local.get 21
    i32.add
    local.set 22
    local.get 22
    local.set 23
    i32.const 2368
    local.set 24
    i32.const 1984
    local.set 25
    local.get 25
    local.set 26
    local.get 4
    local.get 0
    i32.store offset=904
    local.get 4
    local.get 1
    i32.store offset=900
    local.get 4
    i32.load offset=904
    local.set 27
    i32.const 256
    local.set 28
    local.get 27
    local.get 28
    i32.add
    local.set 29
    local.get 29
    local.get 26
    call $set25519
    local.get 4
    i32.load offset=904
    local.set 30
    i32.const 128
    local.set 31
    local.get 30
    local.get 31
    i32.add
    local.set 32
    local.get 4
    i32.load offset=900
    local.set 33
    local.get 32
    local.get 33
    call $unpack25519
    local.get 4
    i32.load offset=904
    local.set 34
    i32.const 128
    local.set 35
    local.get 34
    local.get 35
    i32.add
    local.set 36
    local.get 7
    local.get 36
    call $S
    local.get 13
    local.get 7
    local.get 24
    call $M
    local.get 4
    i32.load offset=904
    local.set 37
    i32.const 256
    local.set 38
    local.get 37
    local.get 38
    i32.add
    local.set 39
    local.get 7
    local.get 7
    local.get 39
    call $Z
    local.get 4
    i32.load offset=904
    local.set 40
    i32.const 256
    local.set 41
    local.get 40
    local.get 41
    i32.add
    local.set 42
    local.get 13
    local.get 42
    local.get 13
    call $A
    local.get 20
    local.get 13
    call $S
    local.get 23
    local.get 20
    call $S
    local.get 17
    local.get 23
    local.get 20
    call $M
    local.get 16
    local.get 17
    local.get 7
    call $M
    local.get 16
    local.get 16
    local.get 13
    call $M
    local.get 16
    local.get 16
    call $pow2523
    local.get 16
    local.get 16
    local.get 7
    call $M
    local.get 16
    local.get 16
    local.get 13
    call $M
    local.get 16
    local.get 16
    local.get 13
    call $M
    local.get 4
    i32.load offset=904
    local.set 43
    local.get 43
    local.get 16
    local.get 13
    call $M
    local.get 4
    i32.load offset=904
    local.set 44
    local.get 10
    local.get 44
    call $S
    local.get 10
    local.get 10
    local.get 13
    call $M
    local.get 10
    local.get 7
    call $neq25519
    local.set 45
    block  ;; label = @1
      local.get 45
      i32.eqz
      br_if 0 (;@1;)
      i32.const 2496
      local.set 46
      local.get 4
      i32.load offset=904
      local.set 47
      local.get 4
      i32.load offset=904
      local.set 48
      local.get 47
      local.get 48
      local.get 46
      call $M
    end
    i32.const 512
    local.set 49
    local.get 4
    local.get 49
    i32.add
    local.set 50
    local.get 50
    local.set 51
    i32.const 640
    local.set 52
    local.get 4
    local.get 52
    i32.add
    local.set 53
    local.get 53
    local.set 54
    i32.const 384
    local.set 55
    local.get 4
    local.get 55
    i32.add
    local.set 56
    local.get 56
    local.set 57
    local.get 4
    i32.load offset=904
    local.set 58
    local.get 54
    local.get 58
    call $S
    local.get 54
    local.get 54
    local.get 57
    call $M
    local.get 54
    local.get 51
    call $neq25519
    local.set 59
    block  ;; label = @1
      block  ;; label = @2
        local.get 59
        i32.eqz
        br_if 0 (;@2;)
        i32.const -1
        local.set 60
        local.get 4
        local.get 60
        i32.store offset=908
        br 1 (;@1;)
      end
      local.get 4
      i32.load offset=904
      local.set 61
      local.get 61
      call $par25519
      local.set 62
      i32.const 255
      local.set 63
      local.get 62
      local.get 63
      i32.and
      local.set 64
      local.get 4
      i32.load offset=900
      local.set 65
      local.get 65
      i32.load8_u offset=31
      local.set 66
      i32.const 255
      local.set 67
      local.get 66
      local.get 67
      i32.and
      local.set 68
      i32.const 7
      local.set 69
      local.get 68
      local.get 69
      i32.shr_s
      local.set 70
      local.get 64
      local.set 71
      local.get 70
      local.set 72
      local.get 71
      local.get 72
      i32.eq
      local.set 73
      i32.const 1
      local.set 74
      local.get 73
      local.get 74
      i32.and
      local.set 75
      block  ;; label = @2
        local.get 75
        i32.eqz
        br_if 0 (;@2;)
        i32.const 2624
        local.set 76
        local.get 4
        i32.load offset=904
        local.set 77
        local.get 4
        i32.load offset=904
        local.set 78
        local.get 77
        local.get 76
        local.get 78
        call $Z
      end
      i32.const 0
      local.set 79
      local.get 4
      i32.load offset=904
      local.set 80
      i32.const 384
      local.set 81
      local.get 80
      local.get 81
      i32.add
      local.set 82
      local.get 4
      i32.load offset=904
      local.set 83
      local.get 4
      i32.load offset=904
      local.set 84
      i32.const 128
      local.set 85
      local.get 84
      local.get 85
      i32.add
      local.set 86
      local.get 82
      local.get 83
      local.get 86
      call $M
      local.get 4
      local.get 79
      i32.store offset=908
    end
    local.get 4
    i32.load offset=908
    local.set 87
    i32.const 912
    local.set 88
    local.get 4
    local.get 88
    i32.add
    local.set 89
    local.get 89
    global.set 0
    local.get 87
    return)
  (func $add (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 1168
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.set 5
    i32.const 384
    local.set 6
    local.get 4
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    i32.const 256
    local.set 9
    local.get 4
    local.get 9
    i32.add
    local.set 10
    local.get 10
    local.set 11
    i32.const 128
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    local.set 14
    i32.const 1024
    local.set 15
    local.get 4
    local.get 15
    i32.add
    local.set 16
    local.get 16
    local.set 17
    i32.const 896
    local.set 18
    local.get 4
    local.get 18
    i32.add
    local.set 19
    local.get 19
    local.set 20
    i32.const 768
    local.set 21
    local.get 4
    local.get 21
    i32.add
    local.set 22
    local.get 22
    local.set 23
    i32.const 640
    local.set 24
    local.get 4
    local.get 24
    i32.add
    local.set 25
    local.get 25
    local.set 26
    i32.const 2752
    local.set 27
    i32.const 512
    local.set 28
    local.get 4
    local.get 28
    i32.add
    local.set 29
    local.get 29
    local.set 30
    local.get 4
    local.get 0
    i32.store offset=1164
    local.get 4
    local.get 1
    i32.store offset=1160
    local.get 4
    i32.load offset=1164
    local.set 31
    i32.const 128
    local.set 32
    local.get 31
    local.get 32
    i32.add
    local.set 33
    local.get 4
    i32.load offset=1164
    local.set 34
    local.get 17
    local.get 33
    local.get 34
    call $Z
    local.get 4
    i32.load offset=1160
    local.set 35
    i32.const 128
    local.set 36
    local.get 35
    local.get 36
    i32.add
    local.set 37
    local.get 4
    i32.load offset=1160
    local.set 38
    local.get 30
    local.get 37
    local.get 38
    call $Z
    local.get 17
    local.get 17
    local.get 30
    call $M
    local.get 4
    i32.load offset=1164
    local.set 39
    local.get 4
    i32.load offset=1164
    local.set 40
    i32.const 128
    local.set 41
    local.get 40
    local.get 41
    i32.add
    local.set 42
    local.get 20
    local.get 39
    local.get 42
    call $A
    local.get 4
    i32.load offset=1160
    local.set 43
    local.get 4
    i32.load offset=1160
    local.set 44
    i32.const 128
    local.set 45
    local.get 44
    local.get 45
    i32.add
    local.set 46
    local.get 30
    local.get 43
    local.get 46
    call $A
    local.get 20
    local.get 20
    local.get 30
    call $M
    local.get 4
    i32.load offset=1164
    local.set 47
    i32.const 384
    local.set 48
    local.get 47
    local.get 48
    i32.add
    local.set 49
    local.get 4
    i32.load offset=1160
    local.set 50
    i32.const 384
    local.set 51
    local.get 50
    local.get 51
    i32.add
    local.set 52
    local.get 23
    local.get 49
    local.get 52
    call $M
    local.get 23
    local.get 23
    local.get 27
    call $M
    local.get 4
    i32.load offset=1164
    local.set 53
    i32.const 256
    local.set 54
    local.get 53
    local.get 54
    i32.add
    local.set 55
    local.get 4
    i32.load offset=1160
    local.set 56
    i32.const 256
    local.set 57
    local.get 56
    local.get 57
    i32.add
    local.set 58
    local.get 26
    local.get 55
    local.get 58
    call $M
    local.get 26
    local.get 26
    local.get 26
    call $A
    local.get 8
    local.get 20
    local.get 17
    call $Z
    local.get 11
    local.get 26
    local.get 23
    call $Z
    local.get 14
    local.get 26
    local.get 23
    call $A
    local.get 5
    local.get 20
    local.get 17
    call $A
    local.get 4
    i32.load offset=1164
    local.set 59
    local.get 59
    local.get 8
    local.get 11
    call $M
    local.get 4
    i32.load offset=1164
    local.set 60
    i32.const 128
    local.set 61
    local.get 60
    local.get 61
    i32.add
    local.set 62
    local.get 62
    local.get 5
    local.get 14
    call $M
    local.get 4
    i32.load offset=1164
    local.set 63
    i32.const 256
    local.set 64
    local.get 63
    local.get 64
    i32.add
    local.set 65
    local.get 65
    local.get 14
    local.get 11
    call $M
    local.get 4
    i32.load offset=1164
    local.set 66
    i32.const 384
    local.set 67
    local.get 66
    local.get 67
    i32.add
    local.set 68
    local.get 68
    local.get 8
    local.get 5
    call $M
    i32.const 1168
    local.set 69
    local.get 4
    local.get 69
    i32.add
    local.set 70
    local.get 70
    global.set 0
    return)
  (func $pow2523 (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64)
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
    i32.const 0
    local.set 5
    local.get 4
    local.get 0
    i32.store offset=156
    local.get 4
    local.get 1
    i32.store offset=152
    local.get 4
    local.get 5
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 6
        local.get 4
        i32.load offset=12
        local.set 7
        local.get 7
        local.set 8
        local.get 6
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        i32.const 16
        local.set 13
        local.get 4
        local.get 13
        i32.add
        local.set 14
        local.get 14
        local.set 15
        local.get 4
        i32.load offset=152
        local.set 16
        local.get 4
        i32.load offset=12
        local.set 17
        i32.const 3
        local.set 18
        local.get 17
        local.get 18
        i32.shl
        local.set 19
        local.get 16
        local.get 19
        i32.add
        local.set 20
        local.get 20
        i64.load
        local.set 78
        local.get 4
        i32.load offset=12
        local.set 21
        i32.const 3
        local.set 22
        local.get 21
        local.get 22
        i32.shl
        local.set 23
        local.get 15
        local.get 23
        i32.add
        local.set 24
        local.get 24
        local.get 78
        i64.store
        local.get 4
        i32.load offset=12
        local.set 25
        i32.const 1
        local.set 26
        local.get 25
        local.get 26
        i32.add
        local.set 27
        local.get 4
        local.get 27
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 250
    local.set 28
    local.get 4
    local.get 28
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 29
        local.get 4
        i32.load offset=12
        local.set 30
        local.get 30
        local.set 31
        local.get 29
        local.set 32
        local.get 31
        local.get 32
        i32.ge_s
        local.set 33
        i32.const 1
        local.set 34
        local.get 33
        local.get 34
        i32.and
        local.set 35
        local.get 35
        i32.eqz
        br_if 1 (;@1;)
        i32.const 1
        local.set 36
        i32.const 16
        local.set 37
        local.get 4
        local.get 37
        i32.add
        local.set 38
        local.get 38
        local.set 39
        local.get 39
        local.get 39
        call $S
        local.get 4
        i32.load offset=12
        local.set 40
        local.get 40
        local.set 41
        local.get 36
        local.set 42
        local.get 41
        local.get 42
        i32.ne
        local.set 43
        i32.const 1
        local.set 44
        local.get 43
        local.get 44
        i32.and
        local.set 45
        block  ;; label = @3
          local.get 45
          i32.eqz
          br_if 0 (;@3;)
          i32.const 16
          local.set 46
          local.get 4
          local.get 46
          i32.add
          local.set 47
          local.get 47
          local.set 48
          local.get 4
          i32.load offset=152
          local.set 49
          local.get 48
          local.get 48
          local.get 49
          call $M
        end
        local.get 4
        i32.load offset=12
        local.set 50
        i32.const -1
        local.set 51
        local.get 50
        local.get 51
        i32.add
        local.set 52
        local.get 4
        local.get 52
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 0
    local.set 53
    local.get 4
    local.get 53
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 16
        local.set 54
        local.get 4
        i32.load offset=12
        local.set 55
        local.get 55
        local.set 56
        local.get 54
        local.set 57
        local.get 56
        local.get 57
        i32.lt_s
        local.set 58
        i32.const 1
        local.set 59
        local.get 58
        local.get 59
        i32.and
        local.set 60
        local.get 60
        i32.eqz
        br_if 1 (;@1;)
        i32.const 16
        local.set 61
        local.get 4
        local.get 61
        i32.add
        local.set 62
        local.get 62
        local.set 63
        local.get 4
        i32.load offset=12
        local.set 64
        i32.const 3
        local.set 65
        local.get 64
        local.get 65
        i32.shl
        local.set 66
        local.get 63
        local.get 66
        i32.add
        local.set 67
        local.get 67
        i64.load
        local.set 79
        local.get 4
        i32.load offset=156
        local.set 68
        local.get 4
        i32.load offset=12
        local.set 69
        i32.const 3
        local.set 70
        local.get 69
        local.get 70
        i32.shl
        local.set 71
        local.get 68
        local.get 71
        i32.add
        local.set 72
        local.get 72
        local.get 79
        i64.store
        local.get 4
        i32.load offset=12
        local.set 73
        i32.const 1
        local.set 74
        local.get 73
        local.get 74
        i32.add
        local.set 75
        local.get 4
        local.get 75
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 160
    local.set 76
    local.get 4
    local.get 76
    i32.add
    local.set 77
    local.get 77
    global.set 0
    return)
  (func $neq25519 (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 2
    i32.const 80
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set 0
    local.get 4
    local.set 5
    i32.const 32
    local.set 6
    local.get 4
    local.get 6
    i32.add
    local.set 7
    local.get 7
    local.set 8
    local.get 4
    local.get 0
    i32.store offset=76
    local.get 4
    local.get 1
    i32.store offset=72
    local.get 4
    i32.load offset=76
    local.set 9
    local.get 8
    local.get 9
    call $pack25519
    local.get 4
    i32.load offset=72
    local.set 10
    local.get 5
    local.get 10
    call $pack25519
    local.get 8
    local.get 5
    call $crypto_verify_32_tweet
    local.set 11
    i32.const 80
    local.set 12
    local.get 4
    local.get 12
    i32.add
    local.set 13
    local.get 13
    global.set 0
    local.get 11
    return)
  (func $cswap (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 3
    i32.const 16
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
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store8 offset=7
    local.get 5
    local.get 6
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 4
        local.set 7
        local.get 5
        i32.load
        local.set 8
        local.get 8
        local.set 9
        local.get 7
        local.set 10
        local.get 9
        local.get 10
        i32.lt_s
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
        local.get 5
        i32.load offset=12
        local.set 14
        local.get 5
        i32.load
        local.set 15
        i32.const 7
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
        i32.load offset=8
        local.set 19
        local.get 5
        i32.load
        local.set 20
        i32.const 7
        local.set 21
        local.get 20
        local.get 21
        i32.shl
        local.set 22
        local.get 19
        local.get 22
        i32.add
        local.set 23
        local.get 5
        i32.load8_u offset=7
        local.set 24
        i32.const 255
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        local.get 18
        local.get 23
        local.get 26
        call $sel25519
        local.get 5
        i32.load
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.add
        local.set 29
        local.get 5
        local.get 29
        i32.store
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 16
    local.set 30
    local.get 5
    local.get 30
    i32.add
    local.set 31
    local.get 31
    global.set 0
    return)
  (func $_main (type 8)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
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
      i32.const 0
      local.set 5
      i32.const 8
      local.set 6
      local.get 2
      local.get 6
      i32.add
      local.set 7
      local.get 7
      local.set 8
      i32.const 20000
      local.set 9
      i64.const 32
      local.set 66
      i32.const 2896
      local.set 10
      local.get 10
      local.set 11
      local.get 2
      i32.load offset=60
      local.set 12
      local.get 12
      call $malloc
      local.set 13
      i32.const 0
      local.set 14
      local.get 14
      local.get 13
      i32.store offset=2944
      i32.const 0
      local.set 15
      local.get 15
      i32.load offset=2944
      local.set 16
      local.get 2
      i32.load offset=60
      local.set 17
      local.get 16
      local.get 5
      local.get 17
      call $eth2_blockDataCopy
      local.get 11
      call $eth2_loadPreStateRoot
      local.get 2
      local.get 66
      i64.store offset=48
      local.get 2
      i32.load offset=60
      local.set 18
      local.get 18
      local.set 19
      local.get 19
      i64.extend_i32_u
      local.set 67
      local.get 2
      i64.load offset=48
      local.set 68
      local.get 67
      local.get 68
      i64.sub
      local.set 69
      local.get 2
      local.get 69
      i64.store offset=40
      local.get 2
      i32.load offset=60
      local.set 20
      local.get 20
      local.set 21
      local.get 21
      i64.extend_i32_u
      local.set 70
      local.get 2
      i64.load offset=48
      local.set 71
      local.get 70
      local.get 71
      i64.sub
      local.set 72
      local.get 2
      i64.load offset=40
      local.set 73
      local.get 72
      local.get 73
      i64.sub
      local.set 74
      local.get 2
      local.get 74
      i64.store offset=32
      i32.const 0
      local.set 22
      local.get 22
      i32.load offset=2944
      local.set 23
      local.get 2
      local.get 23
      i32.store offset=28
      i32.const 0
      local.set 24
      local.get 24
      i32.load offset=2944
      local.set 25
      local.get 2
      i64.load offset=48
      local.set 75
      local.get 75
      i32.wrap_i64
      local.set 26
      local.get 25
      local.get 26
      i32.add
      local.set 27
      local.get 2
      local.get 27
      i32.store offset=24
      i32.const 0
      local.set 28
      local.get 28
      i32.load offset=2944
      local.set 29
      local.get 2
      i64.load offset=48
      local.set 76
      local.get 76
      i32.wrap_i64
      local.set 30
      local.get 29
      local.get 30
      i32.add
      local.set 31
      local.get 2
      i64.load offset=40
      local.set 77
      local.get 77
      i32.wrap_i64
      local.set 32
      local.get 31
      local.get 32
      i32.add
      local.set 33
      local.get 2
      local.get 33
      i32.store offset=20
      local.get 9
      call $malloc
      local.set 34
      local.get 2
      local.get 34
      i32.store offset=16
      local.get 2
      i32.load offset=16
      local.set 35
      local.get 2
      i32.load offset=24
      local.set 36
      local.get 2
      i64.load offset=40
      local.set 78
      local.get 2
      i32.load offset=28
      local.set 37
      local.get 35
      local.get 8
      local.get 36
      local.get 78
      local.get 37
      call $crypto_sign_ed25519_tweet_open
      local.set 38
      local.get 2
      local.get 38
      i32.store offset=4
      local.get 2
      local.get 5
      i32.store
      loop  ;; label = @2
        i32.const 0
        local.set 39
        i32.const 32
        local.set 40
        local.get 2
        i32.load
        local.set 41
        local.get 41
        local.set 42
        local.get 40
        local.set 43
        local.get 42
        local.get 43
        i32.lt_s
        local.set 44
        i32.const 1
        local.set 45
        local.get 44
        local.get 45
        i32.and
        local.set 46
        local.get 39
        local.set 47
        block  ;; label = @3
          local.get 46
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.set 48
          local.get 48
          local.set 49
          local.get 49
          i64.extend_i32_s
          local.set 79
          local.get 2
          i64.load offset=32
          local.set 80
          local.get 79
          local.set 81
          local.get 80
          local.set 82
          local.get 81
          local.get 82
          i64.lt_u
          local.set 50
          local.get 50
          local.set 47
        end
        local.get 47
        local.set 51
        i32.const 1
        local.set 52
        local.get 51
        local.get 52
        i32.and
        local.set 53
        block  ;; label = @3
          local.get 53
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=16
          local.set 54
          local.get 2
          i32.load
          local.set 55
          local.get 54
          local.get 55
          i32.add
          local.set 56
          local.get 56
          i32.load8_u
          local.set 57
          local.get 2
          i32.load
          local.set 58
          local.get 58
          local.get 57
          i32.store8 offset=2960
          local.get 2
          i32.load
          local.set 59
          i32.const 1
          local.set 60
          local.get 59
          local.get 60
          i32.add
          local.set 61
          local.get 2
          local.get 61
          i32.store
          br 1 (;@2;)
        end
      end
      i32.const 2960
      local.set 62
      local.get 62
      local.set 63
      local.get 63
      call $eth2_savePostStateRoot
    end
    i32.const 64
    local.set 64
    local.get 2
    local.get 64
    i32.add
    local.set 65
    local.get 65
    global.set 0
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 68528))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\22\ae(\d7\98/\8aB\cde\ef#\91D7q/;M\ec\cf\fb\c0\b5\bc\db\89\81\a5\db\b5\e98\b5H\f3[\c2V9\19\d0\05\b6\f1\11\f1Y\9bO\19\af\a4\82?\92\18\81m\da\d5^\1c\abB\02\03\a3\98\aa\07\d8\beopE\01[\83\12\8c\b2\e4N\be\851$\e2\b4\ff\d5\c3}\0cUo\89{\f2t]\ber\b1\96\16;\fe\b1\de\805\12\c7%\a7\06\dc\9b\94&i\cft\f1\9b\c1\d2J\f1\9e\c1i\9b\e4\e3%O8\86G\be\ef\b5\d5\8c\8b\c6\9d\c1\0fe\9c\acw\cc\a1\0c$u\02+Yo,\e9-\83\e4\a6n\aa\84tJ\d4\fbA\bd\dc\a9\b0\5c\b5S\11\83\da\88\f9v\ab\dff\eeRQ>\98\102\b4-m\c61\a8?!\fb\98\c8'\03\b0\e4\0e\ef\be\c7\7fY\bf\c2\8f\a8=\f3\0b\e0\c6%\a7\0a\93G\91\a7\d5o\82\03\e0Qc\ca\06pn\0e\0ag))\14\fc/\d2F\85\0a\b7'&\c9&\5c8!\1b.\ed*\c4Z\fcm,M\df\b3\95\9d\13\0d8S\dec\af\8bTs\0ae\a8\b2w<\bb\0ajv\e6\ae\edG.\c9\c2\81;5\82\14\85,r\92d\03\f1L\a1\e8\bf\a2\010B\bcKf\1a\a8\91\97\f8\d0p\8bK\c20\beT\06\a3Ql\c7\18R\ef\d6\19\e8\92\d1\10\a9eU$\06\99\d6* qW\855\0e\f4\b8\d1\bb2p\a0j\10\c8\d0\d2\b8\16\c1\a4\19S\abAQ\08l7\1e\99\eb\8e\dfLwH'\a8H\9b\e1\b5\bc\b04cZ\c9\c5\b3\0c\1c9\cb\8aA\e3J\aa\d8Ns\e3cwO\ca\9c[\a3\b8\b2\d6\f3o.h\fc\b2\ef]\ee\82\8ft`/\17Coc\a5xr\ab\f0\a1\14x\c8\84\ec9d\1a\08\02\c7\8c(\1ec#\fa\ff\be\90\e9\bd\82\de\eblP\a4\15y\c6\b2\f7\a3\f9\be+Sr\e3\f2xq\c6\9ca&\ea\ce>'\ca\07\c2\c0!\c7\b8\86\d1\1e\eb\e0\cd\d6}\da\eax\d1n\ee\7fO}\f5\bao\17r\aag\f0\06\a6\98\c8\a2\c5}c\0a\ae\0d\f9\be\04\98?\11\1bG\1c\135\0bq\1b\84}\04#\f5w\db(\93$\c7@{\ab\ca2\bc\be\c9\15\0a\be\9e<L\0d\10\9c\c4g\1dC\b6B>\cb\be\d4\c5L*~e\fc\9c)\7fY\ec\fa\d6:\abo\cb_\17XGJ\8c\19Dlj\09\e6g\f3\bc\c9\08\bbg\ae\85\84\ca\a7;<n\f3r\fe\94\f8+\a5O\f5:_\1d6\f1Q\0eR\7f\ad\e6\82\d1\9b\05h\8c+>l\1f\1f\83\d9\ab\fbA\bdk[\e0\cd\19\13~!y\1a\d5\00\00\00\00\00\00%\8f\00\00\00\00\00\00`-\00\00\00\00\00\00V\c9\00\00\00\00\00\00\b2\a7\00\00\00\00\00\00%\95\00\00\00\00\00\00`\c7\00\00\00\00\00\00,i\00\00\00\00\00\00\5c\dc\00\00\00\00\00\00\d6\fd\00\00\00\00\00\001\e2\00\00\00\00\00\00\a4\c0\00\00\00\00\00\00\feS\00\00\00\00\00\00n\cd\00\00\00\00\00\00\d36\00\00\00\00\00\00i!\00\00\00\00\00\00Xf\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00ff\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\ed\00\00\00\00\00\00\00\d3\00\00\00\00\00\00\00\f5\00\00\00\00\00\00\00\5c\00\00\00\00\00\00\00\1a\00\00\00\00\00\00\00c\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\d6\00\00\00\00\00\00\00\9c\00\00\00\00\00\00\00\f7\00\00\00\00\00\00\00\a2\00\00\00\00\00\00\00\de\00\00\00\00\00\00\00\f9\00\00\00\00\00\00\00\de\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\a3x\00\00\00\00\00\00Y\13\00\00\00\00\00\00\caM\00\00\00\00\00\00\ebu\00\00\00\00\00\00\ab\d8\00\00\00\00\00\00AA\00\00\00\00\00\00M\0a\00\00\00\00\00\00p\00\00\00\00\00\00\00\98\e8\00\00\00\00\00\00yw\00\00\00\00\00\00y@\00\00\00\00\00\00\c7\8c\00\00\00\00\00\00s\fe\00\00\00\00\00\00o+\00\00\00\00\00\00\eel\00\00\00\00\00\00\03R\00\00\00\00\00\00\b0\a0\00\00\00\00\00\00\0eJ\00\00\00\00\00\00'\1b\00\00\00\00\00\00\ee\c4\00\00\00\00\00\00x\e4\00\00\00\00\00\00/\ad\00\00\00\00\00\00\06\18\00\00\00\00\00\00C/\00\00\00\00\00\00\a7\d7\00\00\00\00\00\00\fb=\00\00\00\00\00\00\99\00\00\00\00\00\00\00M+\00\00\00\00\00\00\0b\df\00\00\00\00\00\00\c1O\00\00\00\00\00\00\80$\00\00\00\00\00\00\83+\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Y\f1\00\00\00\00\00\00\b2&\00\00\00\00\00\00\94\9b\00\00\00\00\00\00\d6\eb\00\00\00\00\00\00V\b1\00\00\00\00\00\00\83\82\00\00\00\00\00\00\9a\14\00\00\00\00\00\00\e0\00\00\00\00\00\00\000\d1\00\00\00\00\00\00\f3\ee\00\00\00\00\00\00\f2\80\00\00\00\00\00\00\8e\19\00\00\00\00\00\00\e7\fc\00\00\00\00\00\00\dfV\00\00\00\00\00\00\dc\d9\00\00\00\00\00\00\06$\00\00\00\00\00\00")
  (data (;1;) (i32.const 2880) "\b0\0b\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00")
  (data (;2;) (i32.const 2944) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
