(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 3)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 2)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 0)))
  (func $malloc (type 4) (param i32) (result i32)
    (local i32 i32)
    i32.const 1216
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
    i32.const 1216
    local.get 1
    i32.store
    local.get 1
    local.get 0
    i32.sub)
  (func $memset (type 0) (param i32)
    (local i32 i32 i32)
    i32.const 200
    local.tee 1
    i32.const 8
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i64.const 0
        i64.store
        local.get 1
        i32.const -8
        i32.add
        local.tee 3
        local.set 1
        local.get 0
        i32.const 8
        i32.add
        local.tee 2
        local.set 0
        local.get 3
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      i32.const 0
      local.set 1
      local.get 2
      local.set 0
    end
    local.get 1
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.store8
        local.get 1
        i32.const -1
        i32.add
        local.tee 2
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end)
  (func $keccakf (type 0) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.const 80
    i32.add
    local.set 3
    local.get 0
    i32.const 120
    i32.add
    local.set 4
    local.get 0
    i32.const 160
    i32.add
    local.set 5
    local.get 0
    i32.const 8
    i32.add
    local.set 6
    local.get 0
    i32.const 48
    i32.add
    local.set 7
    local.get 0
    i32.const 88
    i32.add
    local.set 8
    local.get 0
    i32.const 128
    i32.add
    local.set 9
    local.get 0
    i32.const 168
    i32.add
    local.set 10
    local.get 0
    i32.const 16
    i32.add
    local.set 11
    local.get 0
    i32.const 56
    i32.add
    local.set 12
    local.get 0
    i32.const 96
    i32.add
    local.set 13
    local.get 0
    i32.const 136
    i32.add
    local.set 14
    local.get 0
    i32.const 176
    i32.add
    local.set 15
    local.get 0
    i32.const 24
    i32.add
    local.set 16
    local.get 0
    i32.const -64
    i32.sub
    local.set 17
    local.get 0
    i32.const 104
    i32.add
    local.set 18
    local.get 0
    i32.const 144
    i32.add
    local.set 19
    local.get 0
    i32.const 184
    i32.add
    local.set 20
    local.get 0
    i32.const 32
    i32.add
    local.set 21
    local.get 0
    i32.const 72
    i32.add
    local.set 22
    local.get 0
    i32.const 112
    i32.add
    local.set 23
    local.get 0
    i32.const 152
    i32.add
    local.set 24
    local.get 0
    i32.const 192
    i32.add
    local.set 25
    local.get 0
    i64.load offset=192
    local.set 57
    local.get 0
    i64.load offset=152
    local.set 43
    local.get 0
    i64.load offset=112
    local.set 58
    local.get 0
    i64.load offset=72
    local.set 44
    local.get 0
    i64.load offset=32
    local.set 34
    local.get 0
    i64.load offset=184
    local.set 45
    local.get 0
    i64.load offset=144
    local.set 46
    local.get 0
    i64.load offset=104
    local.set 47
    local.get 0
    i64.load offset=64
    local.set 59
    local.get 0
    i64.load offset=24
    local.set 30
    local.get 0
    i64.load offset=176
    local.set 27
    local.get 0
    i64.load offset=136
    local.set 48
    local.get 0
    i64.load offset=96
    local.set 28
    local.get 0
    i64.load offset=56
    local.set 38
    local.get 0
    i64.load offset=16
    local.set 31
    local.get 0
    i64.load offset=168
    local.set 39
    local.get 0
    i64.load offset=128
    local.set 35
    local.get 0
    i64.load offset=88
    local.set 36
    local.get 0
    i64.load offset=48
    local.set 49
    local.get 0
    i64.load offset=8
    local.set 40
    local.get 0
    i64.load offset=160
    local.set 50
    local.get 0
    i64.load offset=120
    local.set 37
    local.get 0
    i64.load offset=80
    local.set 54
    local.get 0
    i64.load offset=40
    local.set 51
    local.get 0
    i64.load
    local.set 32
    loop  ;; label = @1
      local.get 43
      local.get 57
      i64.xor
      local.get 58
      i64.xor
      local.get 44
      i64.xor
      local.get 34
      i64.xor
      local.tee 52
      local.get 35
      local.get 39
      i64.xor
      local.get 36
      i64.xor
      local.get 49
      i64.xor
      local.get 40
      i64.xor
      local.tee 29
      i64.const 1
      i64.shl
      local.get 29
      i64.const 63
      i64.shr_u
      i64.or
      i64.xor
      local.tee 33
      local.get 32
      i64.xor
      local.set 60
      local.get 40
      local.get 37
      local.get 50
      i64.xor
      local.get 54
      i64.xor
      local.get 51
      i64.xor
      local.get 32
      i64.xor
      local.tee 40
      local.get 27
      local.get 48
      i64.xor
      local.get 28
      i64.xor
      local.get 38
      i64.xor
      local.get 31
      i64.xor
      local.tee 32
      i64.const 1
      i64.shl
      local.get 32
      i64.const 63
      i64.shr_u
      i64.or
      i64.xor
      local.tee 53
      i64.xor
      local.set 41
      local.get 31
      local.get 45
      local.get 46
      i64.xor
      local.get 47
      i64.xor
      local.get 59
      i64.xor
      local.get 30
      i64.xor
      local.tee 31
      i64.const 1
      i64.shl
      local.get 31
      i64.const 63
      i64.shr_u
      i64.or
      local.get 29
      i64.xor
      local.tee 29
      i64.xor
      local.set 55
      local.get 30
      local.get 52
      i64.const 1
      i64.shl
      local.get 52
      i64.const 63
      i64.shr_u
      i64.or
      local.get 32
      i64.xor
      local.tee 30
      i64.xor
      local.set 32
      local.get 34
      local.get 40
      i64.const 1
      i64.shl
      local.get 40
      i64.const 63
      i64.shr_u
      i64.or
      local.get 31
      i64.xor
      local.tee 34
      i64.xor
      local.set 42
      local.get 49
      local.get 53
      i64.xor
      local.tee 31
      i64.const 44
      i64.shl
      local.get 31
      i64.const 20
      i64.shr_u
      i64.or
      local.tee 61
      local.get 30
      local.get 46
      i64.xor
      local.tee 31
      i64.const 21
      i64.shl
      local.get 31
      i64.const 43
      i64.shr_u
      i64.or
      local.tee 56
      local.get 28
      local.get 29
      i64.xor
      local.tee 28
      i64.const 43
      i64.shl
      local.get 28
      i64.const 21
      i64.shr_u
      i64.or
      local.tee 62
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 40
      local.get 34
      local.get 57
      i64.xor
      local.tee 28
      i64.const 14
      i64.shl
      local.get 28
      i64.const 50
      i64.shr_u
      i64.or
      local.tee 63
      local.get 56
      i64.const -1
      i64.xor
      i64.and
      local.get 62
      i64.xor
      local.set 31
      local.get 32
      i64.const 28
      i64.shl
      local.get 32
      i64.const 36
      i64.shr_u
      i64.or
      local.tee 64
      local.get 33
      local.get 54
      i64.xor
      local.tee 28
      i64.const 3
      i64.shl
      local.get 28
      i64.const 61
      i64.shr_u
      i64.or
      local.tee 28
      local.get 34
      local.get 44
      i64.xor
      local.tee 49
      i64.const 20
      i64.shl
      local.get 49
      i64.const 44
      i64.shr_u
      i64.or
      local.tee 44
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.get 35
      local.get 53
      i64.xor
      local.tee 35
      i64.const 45
      i64.shl
      local.get 35
      i64.const 19
      i64.shr_u
      i64.or
      local.tee 65
      local.get 28
      i64.const -1
      i64.xor
      i64.and
      local.get 44
      i64.xor
      local.set 49
      local.get 27
      local.get 29
      i64.xor
      local.tee 27
      i64.const 61
      i64.shl
      local.get 27
      i64.const 3
      i64.shr_u
      i64.or
      local.tee 66
      local.get 65
      i64.const -1
      i64.xor
      i64.and
      local.get 28
      i64.xor
      local.get 41
      i64.const 1
      i64.shl
      local.get 41
      i64.const 63
      i64.shr_u
      i64.or
      local.tee 41
      local.get 30
      local.get 47
      i64.xor
      local.tee 27
      i64.const 25
      i64.shl
      local.get 27
      i64.const 39
      i64.shr_u
      i64.or
      local.tee 27
      local.get 29
      local.get 38
      i64.xor
      local.tee 28
      i64.const 6
      i64.shl
      local.get 28
      i64.const 58
      i64.shr_u
      i64.or
      local.tee 38
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 54
      local.get 34
      local.get 43
      i64.xor
      local.tee 28
      i64.const 8
      i64.shl
      local.get 28
      i64.const 56
      i64.shr_u
      i64.or
      local.tee 47
      local.get 27
      i64.const -1
      i64.xor
      i64.and
      local.get 38
      i64.xor
      local.set 52
      local.get 27
      local.get 33
      local.get 50
      i64.xor
      local.tee 27
      i64.const 18
      i64.shl
      local.get 27
      i64.const 46
      i64.shr_u
      i64.or
      local.tee 67
      local.get 47
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 28
      local.get 42
      i64.const 27
      i64.shl
      local.get 42
      i64.const 37
      i64.shr_u
      i64.or
      local.tee 46
      local.get 36
      local.get 53
      i64.xor
      local.tee 27
      i64.const 10
      i64.shl
      local.get 27
      i64.const 54
      i64.shr_u
      i64.or
      local.tee 27
      local.get 33
      local.get 51
      i64.xor
      local.tee 36
      i64.const 36
      i64.shl
      local.get 36
      i64.const 28
      i64.shr_u
      i64.or
      local.tee 43
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 51
      local.get 29
      local.get 48
      i64.xor
      local.tee 48
      i64.const 15
      i64.shl
      local.get 48
      i64.const 49
      i64.shr_u
      i64.or
      local.tee 29
      local.get 27
      i64.const -1
      i64.xor
      i64.and
      local.get 43
      i64.xor
      local.set 36
      local.get 27
      local.get 30
      local.get 45
      i64.xor
      local.tee 27
      i64.const 56
      i64.shl
      local.get 27
      i64.const 8
      i64.shr_u
      i64.or
      local.tee 42
      local.get 29
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 48
      local.get 55
      i64.const 62
      i64.shl
      local.get 55
      i64.const 2
      i64.shr_u
      i64.or
      local.tee 45
      local.get 34
      local.get 58
      i64.xor
      local.tee 27
      i64.const 39
      i64.shl
      local.get 27
      i64.const 25
      i64.shr_u
      i64.or
      local.tee 27
      local.get 30
      local.get 59
      i64.xor
      local.tee 50
      i64.const 55
      i64.shl
      local.get 50
      i64.const 9
      i64.shr_u
      i64.or
      local.tee 30
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 50
      local.get 33
      local.get 37
      i64.xor
      local.tee 37
      i64.const 41
      i64.shl
      local.get 37
      i64.const 23
      i64.shr_u
      i64.or
      local.tee 33
      local.get 27
      i64.const -1
      i64.xor
      i64.and
      local.get 30
      i64.xor
      local.set 37
      local.get 27
      local.get 39
      local.get 53
      i64.xor
      local.tee 27
      i64.const 2
      i64.shl
      local.get 27
      i64.const 62
      i64.shr_u
      i64.or
      local.tee 39
      local.get 33
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 27
      local.get 45
      i64.const -1
      i64.xor
      local.get 30
      i64.and
      local.get 39
      i64.xor
      local.tee 53
      local.set 57
      local.get 46
      i64.const -1
      i64.xor
      local.get 43
      i64.and
      local.get 42
      i64.xor
      local.tee 55
      local.set 43
      local.get 41
      i64.const -1
      i64.xor
      local.get 38
      i64.and
      local.get 67
      i64.xor
      local.tee 68
      local.set 58
      local.get 64
      i64.const -1
      i64.xor
      local.get 44
      i64.and
      local.get 66
      i64.xor
      local.tee 69
      local.set 44
      local.get 60
      i64.const -1
      i64.xor
      local.get 61
      i64.and
      local.get 63
      i64.xor
      local.tee 70
      local.set 34
      local.get 39
      i64.const -1
      i64.xor
      local.get 45
      i64.and
      local.get 33
      i64.xor
      local.tee 33
      local.set 45
      local.get 42
      i64.const -1
      i64.xor
      local.get 46
      i64.and
      local.get 29
      i64.xor
      local.tee 29
      local.set 46
      local.get 67
      i64.const -1
      i64.xor
      local.get 41
      i64.and
      local.get 47
      i64.xor
      local.tee 41
      local.set 47
      local.get 66
      i64.const -1
      i64.xor
      local.get 64
      i64.and
      local.get 65
      i64.xor
      local.tee 42
      local.set 59
      local.get 63
      i64.const -1
      i64.xor
      local.get 60
      i64.and
      local.get 56
      i64.xor
      local.tee 56
      local.set 30
      local.set 38
      local.get 37
      local.set 39
      local.get 36
      local.set 35
      local.get 52
      local.set 36
      local.get 51
      local.set 37
      local.set 51
      local.get 61
      i64.const -1
      i64.xor
      local.get 62
      i64.and
      local.get 1
      i32.const 3
      i32.shl
      i32.const 1024
      i32.add
      i64.load
      local.get 60
      i64.xor
      i64.xor
      local.tee 52
      local.set 32
      local.get 1
      i32.const 1
      i32.add
      local.tee 26
      local.set 1
      local.get 26
      i32.const 24
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 52
    i64.store
    local.get 51
    i64.store
    local.get 3
    local.get 54
    i64.store
    local.get 4
    local.get 37
    i64.store
    local.get 5
    local.get 50
    i64.store
    local.get 6
    local.get 40
    i64.store
    local.get 7
    local.get 49
    i64.store
    local.get 8
    local.get 36
    i64.store
    local.get 9
    local.get 35
    i64.store
    local.get 10
    local.get 39
    i64.store
    local.get 11
    local.get 31
    i64.store
    local.get 12
    local.get 38
    i64.store
    local.get 13
    local.get 28
    i64.store
    local.get 14
    local.get 48
    i64.store
    local.get 15
    local.get 27
    i64.store
    local.get 16
    local.get 56
    i64.store
    local.get 17
    local.get 42
    i64.store
    local.get 18
    local.get 41
    i64.store
    local.get 19
    local.get 29
    i64.store
    local.get 20
    local.get 33
    i64.store
    local.get 21
    local.get 70
    i64.store
    local.get 22
    local.get 69
    i64.store
    local.get 23
    local.get 68
    i64.store
    local.get 24
    local.get 55
    i64.store
    local.get 25
    local.get 53
    i64.store)
  (func $_main (type 1)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 4
    call $malloc
    local.tee 1
    i32.const 0
    local.get 4
    call $eth2_blockDataCopy
    local.get 1
    i32.eqz
    local.get 4
    i32.const 0
    i32.ne
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 0
      call $memset
      local.get 4
      i32.const 136
      i32.ge_u
      if  ;; label = @2
        loop  ;; label = @3
          local.get 1
          local.set 2
          i32.const 0
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.add
            local.tee 3
            local.get 1
            local.get 2
            i32.add
            i32.load8_u
            local.get 3
            i32.load8_u
            i32.xor
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            local.set 1
            local.get 3
            i32.const 136
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          call $keccakf
          local.get 4
          i32.const -136
          i32.add
          local.tee 3
          local.set 4
          local.get 2
          i32.const 136
          i32.add
          local.set 1
          local.get 3
          i32.const 136
          i32.ge_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 4
      i32.add
      local.tee 2
      local.get 2
      i32.load8_u
      i32.const 1
      i32.xor
      i32.store8
      local.get 0
      local.get 0
      i32.load8_u offset=135
      i32.const -128
      i32.xor
      i32.store8 offset=135
      i32.const 0
      local.set 2
      local.get 4
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.add
          local.tee 3
          local.get 1
          local.get 2
          i32.add
          i32.load8_u
          local.get 3
          i32.load8_u
          i32.xor
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.tee 3
          local.set 2
          local.get 3
          local.get 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      call $keccakf
      i32.const 1232
      local.get 0
      i64.load
      i64.store
      i32.const 1256
      local.get 0
      i32.const 24
      i32.add
      i64.load
      i64.store
      i32.const 1248
      local.get 0
      i32.const 16
      i32.add
      i64.load
      i64.store
      i32.const 1240
      local.get 0
      i32.const 8
      i32.add
      i64.load
      i64.store
    end
    i32.const 1232
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 208
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66800))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\09\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\09\80\00\80\00\00\00\00\0a\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\0a\80\00\00\00\00\00\00\0a\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80")
  (data (;1;) (i32.const 1216) "\f0\04\01"))
