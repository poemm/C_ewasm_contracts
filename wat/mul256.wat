(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func))
  (import "ethereum" "callDataCopy" (func (;0;) (type 0)))
  (import "ethereum" "finish" (func (;1;) (type 1)))
  (func (;2;) (type 3)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    i32.const 1052
    i64.load32_u
    local.set 20
    i32.const 1084
    i64.load32_u
    local.set 21
    i32.const 1080
    i64.load32_u
    local.set 18
    i32.const 1048
    i64.load32_u
    local.set 19
    i32.const 1076
    i64.load32_u
    local.set 15
    i32.const 1044
    i64.load32_u
    local.set 16
    i32.const 1072
    i64.load32_u
    local.set 13
    i32.const 1040
    i64.load32_u
    local.set 14
    i32.const 1068
    i64.load32_u
    local.set 10
    i32.const 1036
    i64.load32_u
    local.set 11
    i32.const 1064
    i64.load32_u
    local.set 8
    i32.const 1032
    i64.load32_u
    local.set 9
    i32.const 1060
    i64.load32_u
    local.set 3
    i32.const 1028
    i64.load32_u
    local.set 4
    i32.const 1088
    i32.const 1056
    i64.load32_u
    local.tee 5
    i32.const 1024
    i64.load32_u
    local.tee 6
    i64.mul
    local.tee 0
    i64.store32
    i32.const 1092
    local.get 3
    local.get 6
    i64.mul
    local.get 4
    local.get 5
    i64.mul
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 0
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 1
    i64.store32
    i32.const 1096
    local.get 6
    local.get 8
    i64.mul
    local.get 3
    local.get 4
    i64.mul
    local.get 5
    local.get 9
    i64.mul
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 0
    i64.const 4294967295
    i64.and
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 2
    i64.store32
    i32.const 1100
    local.get 6
    local.get 10
    i64.mul
    local.get 4
    local.get 8
    i64.mul
    local.get 3
    local.get 9
    i64.mul
    local.get 5
    local.get 11
    i64.mul
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 0
    i64.const 4294967295
    i64.and
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4294967295
    i64.and
    i64.add
    local.get 2
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 2
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 7
    i64.store32
    i32.const 1104
    local.get 6
    local.get 13
    i64.mul
    local.get 4
    local.get 10
    i64.mul
    local.get 8
    local.get 9
    i64.mul
    local.get 3
    local.get 11
    i64.mul
    local.get 5
    local.get 14
    i64.mul
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 0
    i64.const 4294967295
    i64.and
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4294967295
    i64.and
    i64.add
    local.get 2
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 2
    i64.const 4294967295
    i64.and
    i64.add
    local.get 7
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 7
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 12
    i64.store32
    i32.const 1108
    local.get 6
    local.get 15
    i64.mul
    local.get 4
    local.get 13
    i64.mul
    local.get 9
    local.get 10
    i64.mul
    local.get 8
    local.get 11
    i64.mul
    local.get 3
    local.get 14
    i64.mul
    local.get 5
    local.get 16
    i64.mul
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 0
    i64.const 4294967295
    i64.and
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4294967295
    i64.and
    i64.add
    local.get 2
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 2
    i64.const 4294967295
    i64.and
    i64.add
    local.get 7
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 7
    i64.const 4294967295
    i64.and
    i64.add
    local.get 12
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 12
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 17
    i64.store32
    i32.const 1112
    local.get 6
    local.get 18
    i64.mul
    local.get 4
    local.get 15
    i64.mul
    local.get 9
    local.get 13
    i64.mul
    local.get 10
    local.get 11
    i64.mul
    local.get 8
    local.get 14
    i64.mul
    local.get 3
    local.get 16
    i64.mul
    local.get 5
    local.get 19
    i64.mul
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 0
    i64.const 4294967295
    i64.and
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 1
    i64.const 4294967295
    i64.and
    i64.add
    local.get 2
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 2
    i64.const 4294967295
    i64.and
    i64.add
    local.get 7
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 7
    i64.const 4294967295
    i64.and
    i64.add
    local.get 12
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 12
    i64.const 4294967295
    i64.and
    i64.add
    local.get 17
    i64.const 32
    i64.shr_u
    i64.add
    local.tee 17
    i64.const 4294967295
    i64.and
    i64.add
    local.tee 22
    i64.store32
    i32.const 1116
    local.get 4
    local.get 18
    i64.mul
    local.get 6
    local.get 21
    i64.mul
    i64.add
    local.get 9
    local.get 15
    i64.mul
    i64.add
    local.get 11
    local.get 13
    i64.mul
    i64.add
    local.get 10
    local.get 14
    i64.mul
    i64.add
    local.get 8
    local.get 16
    i64.mul
    i64.add
    local.get 3
    local.get 19
    i64.mul
    i64.add
    local.get 5
    local.get 20
    i64.mul
    i64.add
    local.get 0
    i64.const 32
    i64.shr_u
    i64.add
    local.get 1
    i64.const 32
    i64.shr_u
    i64.add
    local.get 2
    i64.const 32
    i64.shr_u
    i64.add
    local.get 7
    i64.const 32
    i64.shr_u
    i64.add
    local.get 12
    i64.const 32
    i64.shr_u
    i64.add
    local.get 17
    i64.const 32
    i64.shr_u
    i64.add
    local.get 22
    i64.const 32
    i64.shr_u
    i64.add
    i64.store32)
  (func (;3;) (type 2)
    i32.const 1024
    i32.const 4
    i32.const 32
    call 0
    i32.const 1056
    i32.const 36
    i32.const 32
    call 0
    call 2
    i32.const 1088
    i32.const 32
    call 1)
  (memory (;0;) 2)
  (export "memory" (memory 0))
  (export "main" (func 3)))
