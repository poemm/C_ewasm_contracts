(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (import "env" "callDataCopy" (func $callDataCopy (type 0)))
  (import "env" "finish" (func $finish (type 1)))
  (func $mul256 (type 0) (param i32 i32 i32)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    local.get 0
    i64.load32_u
    local.set 3
    local.get 1
    i64.load32_u
    local.set 4
    local.get 1
    i64.load32_u offset=4
    local.set 5
    local.get 0
    i64.load32_u offset=4
    local.set 6
    local.get 1
    i64.load32_u offset=8
    local.set 7
    local.get 0
    i64.load32_u offset=8
    local.set 8
    local.get 1
    i64.load32_u offset=12
    local.set 9
    local.get 0
    i64.load32_u offset=12
    local.set 10
    local.get 1
    i64.load32_u offset=16
    local.set 11
    local.get 0
    i64.load32_u offset=16
    local.set 12
    local.get 1
    i64.load32_u offset=20
    local.set 13
    local.get 0
    i64.load32_u offset=20
    local.set 14
    local.get 1
    i64.load32_u offset=24
    local.set 15
    local.get 0
    i64.load32_u offset=24
    local.set 16
    local.get 2
    local.get 1
    i64.load32_u offset=28
    local.tee 17
    local.get 0
    i64.load32_u offset=28
    local.tee 18
    i64.mul
    local.tee 19
    i64.store32 offset=28
    local.get 2
    local.get 19
    i64.const 32
    i64.shr_u
    local.get 17
    local.get 16
    i64.mul
    i64.add
    local.tee 19
    i64.const 4294967295
    i64.and
    local.get 15
    local.get 18
    i64.mul
    i64.add
    local.tee 20
    i64.store32 offset=24
    local.get 2
    local.get 19
    i64.const 32
    i64.shr_u
    local.get 17
    local.get 14
    i64.mul
    i64.add
    local.tee 19
    i64.const 4294967295
    i64.and
    local.get 15
    local.get 16
    i64.mul
    i64.add
    local.get 20
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 20
    i64.const 4294967295
    i64.and
    local.get 13
    local.get 18
    i64.mul
    i64.add
    local.tee 21
    i64.store32 offset=20
    local.get 2
    local.get 19
    i64.const 32
    i64.shr_u
    local.get 17
    local.get 12
    i64.mul
    i64.add
    local.tee 19
    i64.const 4294967295
    i64.and
    local.get 15
    local.get 14
    i64.mul
    i64.add
    local.get 20
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 20
    i64.const 4294967295
    i64.and
    local.get 13
    local.get 16
    i64.mul
    i64.add
    local.get 21
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 21
    i64.const 4294967295
    i64.and
    local.get 11
    local.get 18
    i64.mul
    i64.add
    local.tee 22
    i64.store32 offset=16
    local.get 2
    local.get 19
    i64.const 32
    i64.shr_u
    local.get 17
    local.get 10
    i64.mul
    i64.add
    local.tee 19
    i64.const 4294967295
    i64.and
    local.get 15
    local.get 12
    i64.mul
    i64.add
    local.get 20
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 20
    i64.const 4294967295
    i64.and
    local.get 13
    local.get 14
    i64.mul
    i64.add
    local.get 21
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 21
    i64.const 4294967295
    i64.and
    local.get 11
    local.get 16
    i64.mul
    i64.add
    local.get 22
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 22
    i64.const 4294967295
    i64.and
    local.get 9
    local.get 18
    i64.mul
    i64.add
    local.tee 23
    i64.store32 offset=12
    local.get 2
    local.get 19
    i64.const 32
    i64.shr_u
    local.get 17
    local.get 8
    i64.mul
    i64.add
    local.tee 19
    i64.const 4294967295
    i64.and
    local.get 15
    local.get 10
    i64.mul
    i64.add
    local.get 20
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 20
    i64.const 4294967295
    i64.and
    local.get 13
    local.get 12
    i64.mul
    i64.add
    local.get 21
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 21
    i64.const 4294967295
    i64.and
    local.get 11
    local.get 14
    i64.mul
    i64.add
    local.get 22
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 22
    i64.const 4294967295
    i64.and
    local.get 9
    local.get 16
    i64.mul
    i64.add
    local.get 23
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 23
    i64.const 4294967295
    i64.and
    local.get 7
    local.get 18
    i64.mul
    i64.add
    local.tee 24
    i64.store32 offset=8
    local.get 2
    local.get 19
    i64.const 32
    i64.shr_u
    local.get 17
    local.get 6
    i64.mul
    i64.add
    local.tee 19
    i64.const 4294967295
    i64.and
    local.get 15
    local.get 8
    i64.mul
    i64.add
    local.get 20
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 20
    i64.const 4294967295
    i64.and
    local.get 13
    local.get 10
    i64.mul
    i64.add
    local.get 21
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 21
    i64.const 4294967295
    i64.and
    local.get 11
    local.get 12
    i64.mul
    i64.add
    local.get 22
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 22
    i64.const 4294967295
    i64.and
    local.get 9
    local.get 14
    i64.mul
    i64.add
    local.get 23
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 23
    i64.const 4294967295
    i64.and
    local.get 7
    local.get 16
    i64.mul
    i64.add
    local.get 24
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 24
    i64.const 4294967295
    i64.and
    local.get 5
    local.get 18
    i64.mul
    i64.add
    local.tee 25
    i64.store32 offset=4
    local.get 2
    local.get 5
    local.get 16
    i64.mul
    local.get 4
    local.get 18
    i64.mul
    i64.add
    local.get 7
    local.get 14
    i64.mul
    i64.add
    local.get 9
    local.get 12
    i64.mul
    i64.add
    local.get 11
    local.get 10
    i64.mul
    i64.add
    local.get 13
    local.get 8
    i64.mul
    i64.add
    local.get 15
    local.get 6
    i64.mul
    i64.add
    local.get 17
    local.get 3
    i64.mul
    i64.add
    local.get 19
    i64.const 32
    i64.shr_u
    i64.add
    local.get 20
    i64.const 32
    i64.shr_u
    i64.add
    local.get 21
    i64.const 32
    i64.shr_u
    i64.add
    local.get 22
    i64.const 32
    i64.shr_u
    i64.add
    local.get 23
    i64.const 32
    i64.shr_u
    i64.add
    local.get 24
    i64.const 32
    i64.shr_u
    i64.add
    local.get 25
    i64.const 32
    i64.shr_u
    i64.add
    i64.store32)
  (func $_main (type 2)
    (local i32)
    i32.const 1024
    i32.const 4
    i32.const 32
    call $callDataCopy
    i32.const 1056
    i32.const 36
    i32.const 32
    call $callDataCopy
    i32.const 10000
    local.set 0
    loop  ;; label = @1
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      i32.const 1056
      i32.const 1024
      i32.const 1088
      call $mul256
      i32.const 1056
      i32.const 1088
      i32.const 1024
      call $mul256
      local.get 0
      i32.const -1
      i32.add
      local.tee 0
      br_if 0 (;@1;)
    end
    i32.const 1024
    i32.const 32
    call $finish)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66656))
  (global (;1;) i32 (i32.const 66656))
  (global (;2;) i32 (i32.const 1120))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "_main" (func $_main))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
