(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (import "ethereum" "callDataCopy" (func (;0;) (type 0)))
  (import "bigint" "mul256" (func (;1;) (type 0)))
  (import "ethereum" "finish" (func (;2;) (type 1)))
  (func (;3;) (type 2)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 1024
    local.set 0
    i32.const 32
    local.set 1
    i32.const 1056
    local.set 2
    i32.const 1088
    local.set 3
    i32.const 36
    local.set 4
    i32.const 4
    local.set 5
    local.get 0
    local.get 5
    local.get 1
    call 0
    local.get 2
    local.get 4
    local.get 1
    call 0
    local.get 0
    local.get 2
    local.get 3
    call 1
    local.get 0
    local.get 1
    call 2
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66656))
  (global (;1;) i32 (i32.const 66656))
  (global (;2;) i32 (i32.const 1120))
  (export "memory" (memory 0))
  (export "main" (func 3))
  (data (;0;) (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
