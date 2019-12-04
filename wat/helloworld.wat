(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func))
  (import "env" "eth2_loadPreStateRoot" (func $eth2_loadPreStateRoot (type 0)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 0)))
  (func $_main (type 2)
    i32.const 1024
    call $eth2_loadPreStateRoot
    call $eth2_blockDataSize
    i32.eqz
    if  ;; label = @1
      i32.const 1080
      i32.const 1048
      i64.load
      i64.store
      i32.const 1072
      i32.const 1040
      i64.load
      i64.store
      i32.const 1064
      i32.const 1032
      i64.load
      i64.store
      i32.const 1056
      i32.const 1024
      i64.load
      i64.store
      i32.const 1056
      call $eth2_savePostStateRoot
    end)
  (memory (;0;) 2)
  (global (;0;) i32 (i32.const 66624))
  (global (;1;) i32 (i32.const 1088))
  (export "memory" (memory 0))
  (export "__heap_base" (global 0))
  (export "__data_end" (global 1))
  (export "main" (func $_main)))
