(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 4)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 3)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 0) (param i32) (result i32)
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
    i32.load offset=1024
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
    i32.store offset=1024
    i32.const 0
    local.set 33
    local.get 33
    i32.load offset=1024
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
  (func $reverse_bytes_32 (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 3
    i32.load offset=12
    local.set 5
    i32.const -16777216
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    i32.const 24
    local.set 8
    local.get 7
    local.get 8
    i32.shr_u
    local.set 9
    local.get 3
    i32.load offset=8
    local.set 10
    local.get 10
    local.get 9
    i32.or
    local.set 11
    local.get 3
    local.get 11
    i32.store offset=8
    local.get 3
    i32.load offset=12
    local.set 12
    i32.const 16711680
    local.set 13
    local.get 12
    local.get 13
    i32.and
    local.set 14
    i32.const 8
    local.set 15
    local.get 14
    local.get 15
    i32.shr_u
    local.set 16
    local.get 3
    i32.load offset=8
    local.set 17
    local.get 17
    local.get 16
    i32.or
    local.set 18
    local.get 3
    local.get 18
    i32.store offset=8
    local.get 3
    i32.load offset=12
    local.set 19
    i32.const 65280
    local.set 20
    local.get 19
    local.get 20
    i32.and
    local.set 21
    i32.const 8
    local.set 22
    local.get 21
    local.get 22
    i32.shl
    local.set 23
    local.get 3
    i32.load offset=8
    local.set 24
    local.get 24
    local.get 23
    i32.or
    local.set 25
    local.get 3
    local.get 25
    i32.store offset=8
    local.get 3
    i32.load offset=12
    local.set 26
    i32.const 255
    local.set 27
    local.get 26
    local.get 27
    i32.and
    local.set 28
    i32.const 24
    local.set 29
    local.get 28
    local.get 29
    i32.shl
    local.set 30
    local.get 3
    i32.load offset=8
    local.set 31
    local.get 31
    local.get 30
    i32.or
    local.set 32
    local.get 3
    local.get 32
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 33
    local.get 33
    return)
  (func $PolynomialEvaluation (type 5) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    i32.const 0
    local.set 7
    local.get 6
    local.get 0
    i32.store offset=28
    local.get 6
    local.get 1
    i32.store offset=24
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store offset=16
    local.get 6
    i32.load offset=20
    local.set 8
    local.get 6
    i32.load offset=16
    local.set 9
    local.get 8
    local.get 9
    i32.rem_u
    local.set 10
    local.get 6
    local.get 10
    i32.store offset=20
    local.get 6
    local.get 7
    i32.store offset=12
    local.get 6
    i32.load offset=24
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.sub
    local.set 13
    local.get 6
    local.get 13
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 14
        local.get 6
        i32.load offset=8
        local.set 15
        local.get 15
        local.set 16
        local.get 14
        local.set 17
        local.get 16
        local.get 17
        i32.ge_s
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.and
        local.set 20
        local.get 20
        i32.eqz
        br_if 1 (;@1;)
        local.get 6
        i32.load offset=12
        local.set 21
        local.get 21
        local.set 22
        local.get 22
        i64.extend_i32_u
        local.set 39
        local.get 6
        i32.load offset=20
        local.set 23
        local.get 23
        local.set 24
        local.get 24
        i64.extend_i32_u
        local.set 40
        local.get 39
        local.get 40
        i64.mul
        local.set 41
        local.get 6
        i32.load offset=28
        local.set 25
        local.get 6
        i32.load offset=8
        local.set 26
        i32.const 2
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
        i32.load
        local.set 30
        local.get 30
        local.set 31
        local.get 31
        i64.extend_i32_u
        local.set 42
        local.get 41
        local.get 42
        i64.add
        local.set 43
        local.get 6
        i32.load offset=16
        local.set 32
        local.get 32
        local.set 33
        local.get 33
        i64.extend_i32_u
        local.set 44
        local.get 43
        local.get 44
        i64.rem_u
        local.set 45
        local.get 45
        i32.wrap_i64
        local.set 34
        local.get 6
        local.get 34
        i32.store offset=12
        local.get 6
        i32.load offset=8
        local.set 35
        i32.const -1
        local.set 36
        local.get 35
        local.get 36
        i32.add
        local.set 37
        local.get 6
        local.get 37
        i32.store offset=8
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    local.get 6
    i32.load offset=12
    local.set 38
    local.get 38
    return)
  (func $_main (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    call $eth2_blockDataSize
    local.set 4
    local.get 2
    local.get 4
    i32.store offset=28
    local.get 2
    i32.load offset=28
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.get 6
    i32.shl
    local.set 7
    local.get 7
    call $malloc
    local.set 8
    local.get 2
    local.get 8
    i32.store offset=24
    local.get 2
    i32.load offset=24
    local.set 9
    local.get 2
    i32.load offset=28
    local.set 10
    local.get 9
    local.get 3
    local.get 10
    call $eth2_blockDataCopy
    local.get 2
    i32.load offset=28
    local.set 11
    i32.const 2
    local.set 12
    local.get 11
    local.get 12
    i32.shr_u
    local.set 13
    i32.const 2
    local.set 14
    local.get 13
    local.get 14
    i32.sub
    local.set 15
    local.get 2
    local.get 15
    i32.store offset=20
    local.get 2
    i32.load offset=24
    local.set 16
    local.get 2
    local.get 16
    i32.store offset=16
    local.get 2
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 17
        local.get 2
        i32.load offset=20
        local.set 18
        local.get 17
        local.set 19
        local.get 18
        local.set 20
        local.get 19
        local.get 20
        i32.lt_s
        local.set 21
        i32.const 1
        local.set 22
        local.get 21
        local.get 22
        i32.and
        local.set 23
        local.get 23
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 24
        local.get 2
        i32.load offset=12
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
        local.get 29
        call $reverse_bytes_32
        local.set 30
        local.get 2
        i32.load offset=16
        local.set 31
        local.get 2
        i32.load offset=12
        local.set 32
        i32.const 2
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
        local.get 30
        i32.store
        local.get 2
        i32.load offset=12
        local.set 36
        i32.const 1
        local.set 37
        local.get 36
        local.get 37
        i32.add
        local.set 38
        local.get 2
        local.get 38
        i32.store offset=12
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    i32.const 32
    local.set 39
    local.get 2
    i32.load offset=24
    local.set 40
    local.get 2
    i32.load offset=28
    local.set 41
    local.get 40
    local.get 41
    i32.add
    local.set 42
    i32.const -8
    local.set 43
    local.get 42
    local.get 43
    i32.add
    local.set 44
    local.get 2
    local.get 44
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.set 45
    local.get 45
    i32.load
    local.set 46
    local.get 46
    call $reverse_bytes_32
    local.set 47
    local.get 2
    i32.load offset=8
    local.set 48
    local.get 48
    local.get 47
    i32.store
    local.get 2
    i32.load offset=24
    local.set 49
    local.get 2
    i32.load offset=28
    local.set 50
    local.get 49
    local.get 50
    i32.add
    local.set 51
    i32.const -4
    local.set 52
    local.get 51
    local.get 52
    i32.add
    local.set 53
    local.get 2
    local.get 53
    i32.store offset=4
    local.get 2
    i32.load offset=4
    local.set 54
    local.get 54
    i32.load
    local.set 55
    local.get 55
    call $reverse_bytes_32
    local.set 56
    local.get 2
    i32.load offset=4
    local.set 57
    local.get 57
    local.get 56
    i32.store
    local.get 39
    call $malloc
    local.set 58
    local.get 2
    local.get 58
    i32.store
    local.get 2
    i32.load offset=16
    local.set 59
    local.get 2
    i32.load offset=20
    local.set 60
    local.get 2
    i32.load offset=8
    local.set 61
    local.get 61
    i32.load
    local.set 62
    local.get 2
    i32.load offset=4
    local.set 63
    local.get 63
    i32.load
    local.set 64
    local.get 59
    local.get 60
    local.get 62
    local.get 64
    call $PolynomialEvaluation
    local.set 65
    local.get 2
    i32.load
    local.set 66
    local.get 66
    local.get 65
    i32.store
    local.get 2
    i32.load
    local.set 67
    local.get 67
    i32.load
    local.set 68
    local.get 68
    call $reverse_bytes_32
    local.set 69
    local.get 2
    i32.load
    local.set 70
    local.get 70
    local.get 69
    i32.store
    local.get 2
    i32.load
    local.set 71
    local.get 71
    call $eth2_savePostStateRoot
    i32.const 32
    local.set 72
    local.get 2
    local.get 72
    i32.add
    local.set 73
    local.get 73
    global.set 0
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\10\04\01\00"))
