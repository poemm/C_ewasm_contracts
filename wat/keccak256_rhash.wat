(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func))
  (import "ethereum" "getCallDataSize" (func (;0;) (type 0)))
  (import "ethereum" "callDataCopy" (func (;1;) (type 1)))
  (import "ethereum" "finish" (func (;2;) (type 2)))
  (func (;3;) (type 3) (param i32) (result i32)
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
  (func (;4;) (type 4) (param i32 i32 i32) (result i32)
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
  (func (;5;) (type 4) (param i32 i32 i32) (result i32)
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
  (func (;6;) (type 1) (param i32 i32 i32)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    local.get 0
    local.get 0
    i64.load
    local.get 1
    i64.load
    i64.xor
    local.tee 3
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    local.get 1
    i64.load offset=8
    i64.xor
    local.tee 4
    i64.store offset=8
    local.get 0
    local.get 0
    i64.load offset=16
    local.get 1
    i64.load offset=16
    i64.xor
    local.tee 5
    i64.store offset=16
    local.get 0
    local.get 0
    i64.load offset=24
    local.get 1
    i64.load offset=24
    i64.xor
    local.tee 6
    i64.store offset=24
    local.get 0
    local.get 0
    i64.load offset=32
    local.get 1
    i64.load offset=32
    i64.xor
    local.tee 7
    i64.store offset=32
    local.get 0
    local.get 0
    i64.load offset=40
    local.get 1
    i64.load offset=40
    i64.xor
    local.tee 8
    i64.store offset=40
    local.get 0
    local.get 0
    i64.load offset=48
    local.get 1
    i64.load offset=48
    i64.xor
    local.tee 9
    i64.store offset=48
    local.get 0
    local.get 0
    i64.load offset=56
    local.get 1
    i64.load offset=56
    i64.xor
    local.tee 10
    i64.store offset=56
    local.get 0
    local.get 0
    i64.load offset=64
    local.get 1
    i64.load offset=64
    i64.xor
    local.tee 11
    i64.store offset=64
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 72
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=80
        local.set 12
        local.get 0
        i64.load offset=96
        local.set 13
        local.get 0
        i64.load offset=72
        local.set 14
        local.get 0
        i64.load offset=88
        local.set 15
        br 1 (;@1;)
      end
      local.get 0
      local.get 0
      i64.load offset=72
      local.get 1
      i64.load offset=72
      i64.xor
      local.tee 14
      i64.store offset=72
      local.get 0
      local.get 0
      i64.load offset=80
      local.get 1
      i64.load offset=80
      i64.xor
      local.tee 12
      i64.store offset=80
      local.get 0
      local.get 0
      i64.load offset=88
      local.get 1
      i64.load offset=88
      i64.xor
      local.tee 15
      i64.store offset=88
      local.get 0
      local.get 0
      i64.load offset=96
      local.get 1
      i64.load offset=96
      i64.xor
      local.tee 13
      i64.store offset=96
      local.get 2
      i32.const 105
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i64.load offset=104
      local.get 1
      i64.load offset=104
      i64.xor
      i64.store offset=104
      local.get 0
      local.get 0
      i64.load offset=112
      local.get 1
      i64.load offset=112
      i64.xor
      i64.store offset=112
      local.get 0
      local.get 0
      i64.load offset=120
      local.get 1
      i64.load offset=120
      i64.xor
      i64.store offset=120
      local.get 0
      local.get 0
      i64.load offset=128
      local.get 1
      i64.load offset=128
      i64.xor
      i64.store offset=128
      local.get 2
      i32.const 137
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i64.load offset=136
      local.get 1
      i64.load offset=136
      i64.xor
      i64.store offset=136
    end
    local.get 0
    i64.load offset=184
    local.set 16
    local.get 0
    i64.load offset=144
    local.set 17
    local.get 0
    i64.load offset=104
    local.set 18
    local.get 0
    i64.load offset=160
    local.set 19
    local.get 0
    i64.load offset=120
    local.set 20
    local.get 0
    i64.load offset=176
    local.set 21
    local.get 0
    i64.load offset=136
    local.set 22
    local.get 0
    i64.load offset=192
    local.set 23
    local.get 0
    i64.load offset=152
    local.set 24
    local.get 0
    i64.load offset=112
    local.set 25
    local.get 0
    i64.load offset=168
    local.set 26
    local.get 0
    i64.load offset=128
    local.set 27
    i32.const -192
    local.set 1
    loop  ;; label = @1
      local.get 23
      local.get 20
      local.get 19
      i64.xor
      local.get 12
      i64.xor
      local.get 8
      i64.xor
      local.get 3
      i64.xor
      local.tee 28
      i64.const 1
      i64.rotl
      local.get 17
      local.get 16
      i64.xor
      local.get 18
      i64.xor
      local.get 11
      i64.xor
      local.get 6
      i64.xor
      local.tee 29
      i64.xor
      local.tee 30
      i64.xor
      local.set 31
      local.get 27
      local.get 26
      i64.xor
      local.get 15
      i64.xor
      local.get 9
      i64.xor
      local.get 4
      i64.xor
      local.tee 32
      i64.const 1
      i64.rotl
      local.get 24
      local.get 23
      i64.xor
      local.get 25
      i64.xor
      local.get 14
      i64.xor
      local.get 7
      i64.xor
      local.tee 23
      i64.xor
      local.tee 33
      local.get 3
      i64.xor
      local.tee 34
      local.get 1
      i32.const 1232
      i32.add
      i64.load
      i64.xor
      local.get 32
      local.get 29
      i64.const 1
      i64.rotl
      i64.xor
      local.tee 29
      local.get 13
      i64.xor
      i64.const 43
      i64.rotl
      local.tee 35
      local.get 9
      local.get 22
      local.get 21
      i64.xor
      local.get 13
      i64.xor
      local.get 10
      i64.xor
      local.get 5
      i64.xor
      local.tee 32
      i64.const 1
      i64.rotl
      local.get 28
      i64.xor
      local.tee 28
      i64.xor
      i64.const 44
      i64.rotl
      local.tee 36
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 3
      local.get 23
      i64.const 1
      i64.rotl
      local.get 32
      i64.xor
      local.tee 32
      local.get 11
      i64.xor
      i64.const 55
      i64.rotl
      local.tee 37
      local.get 29
      local.get 5
      i64.xor
      i64.const 62
      i64.rotl
      local.tee 38
      i64.const -1
      i64.xor
      i64.and
      local.get 26
      local.get 28
      i64.xor
      i64.const 2
      i64.rotl
      local.tee 39
      i64.xor
      local.set 23
      local.get 33
      local.get 20
      i64.xor
      i64.const 41
      i64.rotl
      local.tee 40
      local.get 25
      local.get 30
      i64.xor
      i64.const 39
      i64.rotl
      local.tee 41
      i64.const -1
      i64.xor
      i64.and
      local.get 37
      i64.xor
      local.set 26
      local.get 32
      local.get 16
      i64.xor
      i64.const 56
      i64.rotl
      local.tee 42
      local.get 29
      local.get 22
      i64.xor
      i64.const 15
      i64.rotl
      local.tee 43
      i64.const -1
      i64.xor
      i64.and
      local.get 15
      local.get 28
      i64.xor
      i64.const 10
      i64.rotl
      local.tee 44
      i64.xor
      local.set 22
      local.get 44
      local.get 33
      local.get 8
      i64.xor
      i64.const 36
      i64.rotl
      local.tee 45
      i64.const -1
      i64.xor
      i64.and
      local.get 7
      local.get 30
      i64.xor
      i64.const 27
      i64.rotl
      local.tee 7
      i64.xor
      local.set 20
      local.get 33
      local.get 19
      i64.xor
      i64.const 18
      i64.rotl
      local.tee 19
      local.get 29
      local.get 10
      i64.xor
      i64.const 6
      i64.rotl
      local.tee 46
      local.get 4
      local.get 28
      i64.xor
      i64.const 1
      i64.rotl
      local.tee 47
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 25
      local.get 19
      local.get 24
      local.get 30
      i64.xor
      i64.const 8
      i64.rotl
      local.tee 24
      i64.const -1
      i64.xor
      i64.and
      local.get 32
      local.get 18
      i64.xor
      i64.const 25
      i64.rotl
      local.tee 48
      i64.xor
      local.set 13
      local.get 46
      local.get 24
      local.get 48
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 15
      local.get 29
      local.get 21
      i64.xor
      i64.const 61
      i64.rotl
      local.tee 29
      local.get 14
      local.get 30
      i64.xor
      i64.const 20
      i64.rotl
      local.tee 30
      local.get 32
      local.get 6
      i64.xor
      i64.const 28
      i64.rotl
      local.tee 4
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 14
      local.get 4
      local.get 29
      i64.const -1
      i64.xor
      i64.and
      local.get 27
      local.get 28
      i64.xor
      i64.const 45
      i64.rotl
      local.tee 28
      i64.xor
      local.set 11
      local.get 33
      local.get 12
      i64.xor
      i64.const 3
      i64.rotl
      local.tee 33
      local.get 29
      local.get 28
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 10
      local.get 28
      local.get 33
      i64.const -1
      i64.xor
      i64.and
      local.get 30
      i64.xor
      local.set 9
      local.get 33
      local.get 30
      i64.const -1
      i64.xor
      i64.and
      local.get 4
      i64.xor
      local.set 8
      local.get 34
      local.get 31
      i64.const 14
      i64.rotl
      local.tee 30
      i64.const -1
      i64.xor
      i64.and
      local.get 32
      local.get 17
      i64.xor
      i64.const 21
      i64.rotl
      local.tee 33
      i64.xor
      local.set 6
      local.get 35
      local.get 30
      local.get 33
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.set 5
      local.get 33
      local.get 35
      i64.const -1
      i64.xor
      i64.and
      local.get 36
      i64.xor
      local.set 4
      local.get 40
      local.get 38
      local.get 39
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.tee 33
      local.set 16
      local.get 43
      local.get 7
      local.get 42
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.tee 29
      local.set 17
      local.get 47
      local.get 19
      i64.const -1
      i64.xor
      i64.and
      local.get 24
      i64.xor
      local.tee 28
      local.set 18
      local.get 38
      local.get 41
      local.get 37
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.tee 32
      local.set 19
      local.get 48
      local.get 46
      i64.const -1
      i64.xor
      i64.and
      local.get 47
      i64.xor
      local.tee 35
      local.set 12
      local.get 39
      local.get 40
      i64.const -1
      i64.xor
      i64.and
      local.get 41
      i64.xor
      local.tee 37
      local.set 21
      local.get 45
      local.get 7
      i64.const -1
      i64.xor
      i64.and
      local.get 42
      i64.xor
      local.tee 38
      local.set 24
      local.get 36
      local.get 34
      i64.const -1
      i64.xor
      i64.and
      local.get 30
      i64.xor
      local.tee 30
      local.set 7
      local.get 45
      local.get 43
      local.get 44
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      local.tee 34
      local.set 27
      local.get 1
      i32.const 8
      i32.add
      local.tee 1
      br_if 0 (;@1;)
    end
    local.get 0
    local.get 26
    i64.store offset=168
    local.get 0
    local.get 34
    i64.store offset=128
    local.get 0
    local.get 15
    i64.store offset=88
    local.get 0
    local.get 9
    i64.store offset=48
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 0
    local.get 23
    i64.store offset=192
    local.get 0
    local.get 38
    i64.store offset=152
    local.get 0
    local.get 25
    i64.store offset=112
    local.get 0
    local.get 14
    i64.store offset=72
    local.get 0
    local.get 30
    i64.store offset=32
    local.get 0
    local.get 37
    i64.store offset=176
    local.get 0
    local.get 22
    i64.store offset=136
    local.get 0
    local.get 13
    i64.store offset=96
    local.get 0
    local.get 10
    i64.store offset=56
    local.get 0
    local.get 5
    i64.store offset=16
    local.get 0
    local.get 32
    i64.store offset=160
    local.get 0
    local.get 20
    i64.store offset=120
    local.get 0
    local.get 35
    i64.store offset=80
    local.get 0
    local.get 8
    i64.store offset=40
    local.get 0
    local.get 3
    i64.store
    local.get 0
    local.get 33
    i64.store offset=184
    local.get 0
    local.get 29
    i64.store offset=144
    local.get 0
    local.get 28
    i64.store offset=104
    local.get 0
    local.get 11
    i64.store offset=64
    local.get 0
    local.get 6
    i64.store offset=24)
  (func (;7;) (type 5)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 432
    i32.sub
    local.tee 0
    global.set 0
    call 0
    local.tee 1
    call 3
    local.tee 2
    i32.const 0
    local.get 1
    call 1
    local.get 0
    i32.const 0
    i32.const 392
    call 5
    local.tee 3
    i32.const 136
    i32.store offset=396
    local.get 3
    local.get 1
    i32.const 136
    i32.rem_u
    i32.store offset=392
    block  ;; label = @1
      local.get 1
      i32.const 136
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 200
      i32.add
      local.set 4
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 7
            i32.and
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 4
          local.get 2
          i32.const 136
          call 4
          local.set 0
        end
        local.get 3
        local.get 0
        i32.const 136
        call 6
        local.get 2
        i32.const 136
        i32.add
        local.set 2
        local.get 1
        i32.const -136
        i32.add
        local.tee 1
        i32.const 135
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 200
      i32.add
      local.get 2
      local.get 1
      call 4
      drop
    end
    i32.const 100
    local.get 3
    i32.load offset=396
    local.tee 2
    i32.const 1
    i32.shr_u
    i32.sub
    local.set 4
    block  ;; label = @1
      local.get 3
      i32.load offset=392
      local.tee 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 3
      i32.const 200
      i32.add
      local.tee 1
      local.get 0
      i32.add
      i32.const 0
      local.get 2
      local.get 0
      i32.sub
      call 5
      drop
      local.get 1
      local.get 3
      i32.load offset=392
      i32.add
      local.tee 0
      local.get 0
      i32.load8_u
      i32.const 1
      i32.or
      i32.store8
      local.get 1
      local.get 2
      i32.add
      i32.const -1
      i32.add
      local.tee 0
      local.get 0
      i32.load8_u
      i32.const 128
      i32.or
      i32.store8
      local.get 3
      local.get 1
      local.get 2
      call 6
      local.get 3
      i32.const -2147483648
      i32.store offset=392
    end
    local.get 3
    i32.const 400
    i32.add
    local.get 3
    local.get 4
    call 4
    drop
    local.get 3
    i32.const 400
    i32.add
    i32.const 32
    call 2
    local.get 3
    i32.const 432
    i32.add
    global.set 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66768))
  (global (;1;) i32 (i32.const 66768))
  (global (;2;) i32 (i32.const 1232))
  (export "memory" (memory 0))
  (export "main" (func 7))
  (data (;0;) (i32.const 1024) "\d0\04\00\00")
  (data (;1;) (i32.const 1040) "\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\09\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\09\80\00\80\00\00\00\00\0a\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\0a\80\00\00\00\00\00\00\0a\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80"))
