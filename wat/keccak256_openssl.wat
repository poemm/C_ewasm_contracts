(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 4)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 0)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 1)))
  (func $malloc (type 5) (param i32) (result i32)
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
  (func $memcpy (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    local.get 1
    local.set 3
    local.get 0
    local.set 4
    local.get 2
    local.set 5
    local.get 2
    i32.const 7
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 4
        local.get 3
        i64.load
        i64.store
        local.get 3
        i32.const 8
        i32.add
        local.tee 1
        local.set 3
        local.get 4
        i32.const 8
        i32.add
        local.tee 0
        local.set 4
        local.get 5
        i32.const -8
        i32.add
        local.tee 6
        local.set 5
        local.get 6
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i32.const 7
      i32.and
      local.set 2
    end
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 3
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end)
  (func $memset (type 3) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    local.tee 2
    i32.const 8
    i32.gt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i64.const 0
        i64.store
        local.get 2
        i32.const -8
        i32.add
        local.tee 3
        local.set 2
        local.get 0
        i32.const 8
        i32.add
        local.tee 4
        local.set 0
        local.get 3
        i32.const 7
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 7
      i32.and
      local.set 2
      local.get 4
      local.set 0
    end
    local.get 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 0
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.tee 1
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        br_if 0 (;@2;)
      end
    end)
  (func $SHA3_absorb (type 6) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    local.get 3
    i32.const 3
    i32.shr_u
    local.set 8
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      local.tee 9
      local.set 7
      local.get 8
      if  ;; label = @2
        loop  ;; label = @3
          i32.const 0
          local.set 7
          loop  ;; label = @4
            local.get 1
            i32.load8_u
            i64.extend_i32_u
            local.get 1
            i32.load8_u offset=1
            i64.extend_i32_u
            i64.const 8
            i64.shl
            i64.or
            local.get 1
            i32.load8_u offset=2
            i64.extend_i32_u
            i64.const 16
            i64.shl
            i64.or
            local.get 1
            i32.load8_u offset=3
            i64.extend_i32_u
            i64.const 24
            i64.shl
            i64.or
            local.tee 11
            i32.wrap_i64
            local.tee 5
            i32.const 1431655765
            i32.and
            local.tee 2
            local.get 2
            i32.const 1
            i32.shr_u
            i32.or
            i32.const 858993459
            i32.and
            local.tee 2
            local.get 2
            i32.const 2
            i32.shr_u
            i32.or
            i32.const 252645135
            i32.and
            local.tee 2
            local.get 2
            i32.const 4
            i32.shr_u
            i32.or
            local.set 2
            local.get 1
            i32.load8_u offset=4
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 11
            i64.or
            local.get 1
            i32.load8_u offset=5
            i64.extend_i32_u
            i64.const 40
            i64.shl
            i64.or
            local.get 1
            i32.load8_u offset=6
            i64.extend_i32_u
            i64.const 48
            i64.shl
            i64.or
            local.get 1
            i32.load8_u offset=7
            i64.extend_i32_u
            i64.const 56
            i64.shl
            i64.or
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 6
            i32.const 1431655765
            i32.and
            local.tee 4
            local.get 4
            i32.const 1
            i32.shr_u
            i32.or
            i32.const 858993459
            i32.and
            local.tee 4
            local.get 4
            i32.const 2
            i32.shr_u
            i32.or
            i32.const 252645135
            i32.and
            local.tee 4
            local.get 4
            i32.const 4
            i32.shr_u
            i32.or
            i32.const 16711935
            i32.and
            local.set 4
            local.get 7
            i32.const 3
            i32.shl
            local.get 0
            i32.add
            local.tee 10
            local.get 10
            i64.load
            local.get 2
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 2
            i32.const 255
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            local.get 4
            i32.or
            i32.const 16
            i32.shl
            i32.or
            i64.extend_i32_u
            local.get 6
            i32.const -1431655766
            i32.and
            local.tee 6
            local.get 6
            i32.const 1
            i32.shl
            i32.or
            i32.const -858993460
            i32.and
            local.tee 6
            local.get 6
            i32.const 2
            i32.shl
            i32.or
            i32.const -252645136
            i32.and
            local.tee 6
            local.get 6
            i32.const 4
            i32.shl
            i32.or
            local.tee 6
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            local.get 6
            i32.const -16777216
            i32.and
            local.get 5
            i32.const -1431655766
            i32.and
            local.tee 5
            local.get 5
            i32.const 1
            i32.shl
            i32.or
            i32.const -858993460
            i32.and
            local.tee 5
            local.get 5
            i32.const 2
            i32.shl
            i32.or
            i32.const -252645136
            i32.and
            local.tee 5
            local.get 5
            i32.const 4
            i32.shl
            i32.or
            i32.const -16711936
            i32.and
            local.tee 5
            local.get 5
            i32.const 8
            i32.shl
            i32.or
            i32.const 16
            i32.shr_u
            i32.or
            i32.or
            i64.extend_i32_u
            i64.const 32
            i64.shl
            i64.or
            i64.xor
            i64.store
            local.get 1
            i32.const 8
            i32.add
            local.tee 2
            local.set 1
            local.get 7
            i32.const 1
            i32.add
            local.tee 4
            local.set 7
            local.get 4
            local.get 8
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 0
          call $KeccakF1600
          local.get 2
          local.set 1
          local.get 9
          local.get 3
          i32.sub
          local.tee 2
          local.set 9
          local.get 2
          local.get 3
          i32.ge_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        unreachable
      end
      loop  ;; label = @2
        local.get 0
        call $KeccakF1600
        local.get 7
        local.get 3
        i32.sub
        local.tee 2
        local.set 7
        local.get 2
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $KeccakF1600 (type 1) (param i32)
    (local i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.const 0
    call $Round
    local.get 0
    local.get 1
    i32.const 1
    call $Round
    local.get 1
    local.get 0
    i32.const 2
    call $Round
    local.get 0
    local.get 1
    i32.const 3
    call $Round
    local.get 1
    local.get 0
    i32.const 4
    call $Round
    local.get 0
    local.get 1
    i32.const 5
    call $Round
    local.get 1
    local.get 0
    i32.const 6
    call $Round
    local.get 0
    local.get 1
    i32.const 7
    call $Round
    local.get 1
    local.get 0
    i32.const 8
    call $Round
    local.get 0
    local.get 1
    i32.const 9
    call $Round
    local.get 1
    local.get 0
    i32.const 10
    call $Round
    local.get 0
    local.get 1
    i32.const 11
    call $Round
    local.get 1
    local.get 0
    i32.const 12
    call $Round
    local.get 0
    local.get 1
    i32.const 13
    call $Round
    local.get 1
    local.get 0
    i32.const 14
    call $Round
    local.get 0
    local.get 1
    i32.const 15
    call $Round
    local.get 1
    local.get 0
    i32.const 16
    call $Round
    local.get 0
    local.get 1
    i32.const 17
    call $Round
    local.get 1
    local.get 0
    i32.const 18
    call $Round
    local.get 0
    local.get 1
    i32.const 19
    call $Round
    local.get 1
    local.get 0
    i32.const 20
    call $Round
    local.get 0
    local.get 1
    i32.const 21
    call $Round
    local.get 1
    local.get 0
    i32.const 22
    call $Round
    local.get 0
    local.get 1
    i32.const 23
    call $Round
    local.get 1
    i32.const 208
    i32.add
    global.set 0)
  (func $SHA3_squeeze (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    local.get 2
    i32.const 3
    i32.shr_u
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.const 0
      i32.ne
      local.set 7
      i32.const 1232
      local.set 2
      local.get 1
      local.set 5
      loop  ;; label = @2
        i32.const 0
        local.set 1
        local.get 5
        i32.const 0
        i32.ne
        local.tee 4
        local.set 3
        local.get 4
        local.get 7
        i32.and
        if  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const 3
            i32.shl
            local.get 0
            i32.add
            i64.load
            local.tee 9
            i64.const 32
            i64.shr_u
            local.set 8
            local.get 9
            i32.wrap_i64
            local.tee 3
            i32.const 65535
            i32.and
            local.tee 4
            local.get 4
            i32.const 8
            i32.shl
            i32.or
            i32.const 16711935
            i32.and
            local.tee 4
            local.get 4
            i32.const 4
            i32.shl
            i32.or
            i32.const 252645135
            i32.and
            local.tee 4
            local.get 4
            i32.const 2
            i32.shl
            i32.or
            i32.const 858993459
            i32.and
            local.set 4
            local.get 3
            i32.const 16
            i32.shr_u
            local.tee 3
            local.get 3
            i32.const 8
            i32.shl
            i32.or
            i32.const 16711935
            i32.and
            local.tee 3
            local.get 3
            i32.const 4
            i32.shl
            i32.or
            i32.const 252645135
            i32.and
            local.tee 3
            local.get 3
            i32.const 2
            i32.shl
            i32.or
            i32.const 858993459
            i32.and
            local.tee 3
            local.get 3
            i32.const 1
            i32.shl
            i32.or
            i32.const 1431655765
            i32.and
            local.get 8
            i32.wrap_i64
            i32.const -65536
            i32.and
            local.tee 3
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.const -16711936
            i32.and
            local.tee 3
            local.get 3
            i32.const 4
            i32.shr_u
            i32.or
            i32.const -252645136
            i32.and
            local.tee 3
            local.get 3
            i32.const 2
            i32.shr_u
            i32.or
            i32.const -858993460
            i32.and
            local.tee 3
            local.get 3
            i32.const 1
            i32.shr_u
            i32.or
            i32.const -1431655766
            i32.and
            i32.or
            local.set 3
            local.get 4
            i32.const 1
            i32.shl
            local.get 4
            i32.or
            i32.const 1431655765
            i32.and
            local.get 8
            i64.const 8
            i64.shl
            i32.wrap_i64
            i32.const 65280
            i32.and
            local.get 8
            i64.const 16
            i64.shl
            i32.wrap_i64
            i32.const -16777216
            i32.and
            i32.or
            local.tee 4
            local.get 4
            i32.const 4
            i32.shr_u
            i32.or
            i32.const -252645136
            i32.and
            local.tee 4
            local.get 4
            i32.const 2
            i32.shr_u
            i32.or
            i32.const -858993460
            i32.and
            local.tee 4
            local.get 4
            i32.const 1
            i32.shr_u
            i32.or
            i32.const -1431655766
            i32.and
            i32.or
            local.set 4
            local.get 5
            i32.const 8
            i32.lt_u
            if  ;; label = @5
              local.get 4
              i64.extend_i32_u
              local.get 3
              i64.extend_i32_u
              i64.const 32
              i64.shl
              i64.or
              local.set 8
              i32.const 0
              local.set 1
              loop  ;; label = @6
                local.get 2
                local.get 8
                i64.store8
                local.get 8
                i64.const 8
                i64.shr_u
                local.set 8
                local.get 2
                i32.const 1
                i32.add
                local.set 2
                local.get 1
                i32.const 1
                i32.add
                local.tee 0
                local.set 1
                local.get 0
                local.get 5
                i32.ne
                br_if 0 (;@6;)
              end
              br 4 (;@1;)
            end
            local.get 2
            local.get 4
            i32.store8
            local.get 2
            local.get 4
            i32.const 8
            i32.shr_u
            i32.store8 offset=1
            local.get 2
            local.get 4
            i32.const 16
            i32.shr_u
            i32.store8 offset=2
            local.get 2
            local.get 4
            i32.const 24
            i32.shr_u
            i32.store8 offset=3
            local.get 2
            local.get 3
            i32.store8 offset=4
            local.get 2
            local.get 3
            i32.const 8
            i32.shr_u
            i32.store8 offset=5
            local.get 2
            local.get 3
            i32.const 16
            i32.shr_u
            i32.store8 offset=6
            local.get 2
            local.get 3
            i32.const 24
            i32.shr_u
            i32.store8 offset=7
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 1
            i32.const 1
            i32.add
            local.tee 4
            local.set 1
            local.get 5
            i32.const -8
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.tee 3
            local.get 4
            local.get 6
            i32.lt_u
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 3
        if  ;; label = @3
          local.get 0
          call $KeccakF1600
        end
        local.get 5
        br_if 0 (;@2;)
      end
    end)
  (func $Round (type 0) (param i32 i32 i32)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    local.get 1
    i64.load offset=192
    local.tee 9
    local.get 1
    i64.load offset=152
    local.get 1
    i64.load offset=112
    local.get 1
    i64.load offset=32
    local.get 1
    i64.load offset=72
    i64.xor
    i64.xor
    i64.xor
    i64.xor
    local.tee 12
    local.get 1
    i64.load offset=168
    local.get 1
    i64.load offset=128
    local.get 1
    i64.load offset=88
    local.get 1
    i64.load offset=48
    local.tee 14
    local.get 1
    i64.load offset=8
    i64.xor
    i64.xor
    i64.xor
    i64.xor
    local.tee 11
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 11
    i64.const 32
    i64.shl
    local.get 11
    i64.const 63
    i64.shr_u
    i64.or
    i64.or
    i64.xor
    local.set 15
    local.get 1
    i64.load offset=184
    local.get 1
    i64.load offset=144
    local.tee 16
    local.get 1
    i64.load offset=104
    local.get 1
    i64.load offset=24
    local.get 1
    i64.load offset=64
    i64.xor
    i64.xor
    i64.xor
    i64.xor
    local.tee 13
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 13
    i64.const 32
    i64.shl
    local.get 13
    i64.const 63
    i64.shr_u
    i64.or
    i64.or
    local.get 11
    i64.xor
    local.set 11
    local.get 14
    local.get 1
    i64.load offset=160
    local.get 1
    i64.load offset=120
    local.get 1
    i64.load offset=80
    local.get 1
    i64.load
    local.tee 10
    local.get 1
    i64.load offset=40
    i64.xor
    i64.xor
    i64.xor
    i64.xor
    local.tee 6
    local.get 1
    i64.load offset=176
    local.get 1
    i64.load offset=136
    local.get 1
    i64.load offset=96
    local.tee 17
    local.get 1
    i64.load offset=16
    local.get 1
    i64.load offset=56
    i64.xor
    i64.xor
    i64.xor
    i64.xor
    local.tee 7
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 7
    i64.const 32
    i64.shl
    local.get 7
    i64.const 63
    i64.shr_u
    i64.or
    i64.or
    i64.xor
    local.tee 14
    i64.xor
    local.tee 8
    i32.wrap_i64
    local.set 3
    local.get 6
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 6
    i64.const 32
    i64.shl
    local.get 6
    i64.const 63
    i64.shr_u
    i64.or
    i64.or
    local.get 13
    i64.xor
    local.tee 13
    local.get 9
    i64.xor
    local.tee 6
    i32.wrap_i64
    local.set 4
    local.get 0
    local.get 11
    local.get 17
    i64.xor
    local.tee 9
    i32.wrap_i64
    local.tee 5
    i32.const 21
    i32.shl
    local.get 5
    i32.const 11
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 9
    i64.const 10
    i64.shr_u
    i64.const 4290772992
    i64.and
    local.get 9
    i64.const 42
    i64.shr_u
    i64.or
    i64.or
    local.tee 9
    local.get 3
    i32.const 22
    i32.shl
    local.get 3
    i32.const 10
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 8
    i64.const 10
    i64.shr_u
    i64.const 4290772992
    i64.and
    local.get 8
    i64.const 42
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 8
    i64.const -1
    i64.xor
    i64.and
    local.get 10
    local.get 15
    i64.xor
    local.tee 10
    local.get 2
    i32.const 3
    i32.shl
    i32.const 1024
    i32.add
    i64.load
    i64.xor
    i64.xor
    i64.store
    local.get 0
    local.get 12
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 12
    i64.const 32
    i64.shl
    local.get 12
    i64.const 63
    i64.shr_u
    i64.or
    i64.or
    local.get 7
    i64.xor
    local.tee 12
    local.get 16
    i64.xor
    local.tee 7
    i32.wrap_i64
    local.tee 2
    i32.const 10
    i32.shl
    local.get 2
    i32.const 22
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 7
    i64.const 21
    i64.shr_u
    i64.const 4294965248
    i64.and
    local.get 7
    i64.const 53
    i64.shr_u
    i64.or
    i64.or
    local.tee 7
    local.get 9
    i64.const -1
    i64.xor
    i64.and
    local.get 8
    i64.xor
    i64.store offset=8
    local.get 0
    local.get 4
    i32.const 7
    i32.shl
    local.get 4
    i32.const 25
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 6
    i64.const 25
    i64.shr_u
    i64.const 4294967168
    i64.and
    local.get 6
    i64.const 57
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 6
    local.get 7
    i64.const -1
    i64.xor
    i64.and
    local.get 9
    i64.xor
    i64.store offset=16
    local.get 0
    local.get 6
    i64.const -1
    i64.xor
    local.get 10
    i64.and
    local.get 7
    i64.xor
    i64.store offset=24
    local.get 0
    local.get 10
    i64.const -1
    i64.xor
    local.get 8
    i64.and
    local.get 6
    i64.xor
    i64.store offset=32
    local.get 1
    i64.load offset=24
    local.get 12
    i64.xor
    local.tee 8
    i32.wrap_i64
    local.set 2
    local.get 1
    i64.load offset=72
    local.get 13
    i64.xor
    local.tee 9
    i32.wrap_i64
    local.set 3
    local.get 1
    i64.load offset=128
    local.get 14
    i64.xor
    local.tee 6
    i32.wrap_i64
    local.tee 4
    i32.const 22
    i32.shl
    local.get 4
    i32.const 10
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 6
    i64.const 9
    i64.shr_u
    i64.const 4286578688
    i64.and
    local.get 6
    i64.const 41
    i64.shr_u
    i64.or
    i64.or
    local.set 6
    local.get 1
    i64.load offset=176
    local.get 11
    i64.xor
    local.tee 7
    i32.wrap_i64
    local.tee 4
    i32.const 30
    i32.shl
    local.get 4
    i32.const 2
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 7
    i64.const 1
    i64.shr_u
    i64.const 2147483648
    i64.and
    local.get 7
    i64.const 33
    i64.shr_u
    i64.or
    i64.or
    local.set 7
    local.get 0
    local.get 2
    i32.const 14
    i32.shl
    local.get 2
    i32.const 18
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 8
    i64.const 18
    i64.shr_u
    i64.const 4294950912
    i64.and
    local.get 8
    i64.const 50
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 8
    local.get 1
    i64.load offset=80
    local.get 15
    i64.xor
    local.tee 10
    i32.wrap_i64
    local.tee 2
    i32.const 1
    i32.shl
    local.get 2
    i32.const 31
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 10
    i64.const 30
    i64.shr_u
    i64.const 4294967292
    i64.and
    local.get 10
    i64.const 62
    i64.shr_u
    i64.or
    i64.or
    local.tee 10
    local.get 3
    i32.const 10
    i32.shl
    local.get 3
    i32.const 22
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 9
    i64.const 22
    i64.shr_u
    i64.const 4294966272
    i64.and
    local.get 9
    i64.const 54
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 9
    i64.const -1
    i64.xor
    i64.and
    i64.xor
    i64.store offset=40
    local.get 0
    local.get 10
    i64.const -1
    i64.xor
    local.get 6
    i64.and
    local.get 9
    i64.xor
    i64.store offset=48
    local.get 0
    local.get 6
    i64.const -1
    i64.xor
    local.get 7
    i64.and
    local.get 10
    i64.xor
    i64.store offset=56
    local.get 0
    local.get 7
    i64.const -1
    i64.xor
    local.get 8
    i64.and
    local.get 6
    i64.xor
    i64.store offset=64
    local.get 0
    local.get 8
    i64.const -1
    i64.xor
    local.get 9
    i64.and
    local.get 7
    i64.xor
    i64.store offset=72
    local.get 1
    i64.load offset=56
    local.get 11
    i64.xor
    local.tee 6
    i32.wrap_i64
    local.set 2
    local.get 1
    i64.load offset=152
    local.get 13
    i64.xor
    local.tee 7
    i32.wrap_i64
    local.set 3
    local.get 1
    i64.load offset=160
    local.get 15
    i64.xor
    local.tee 8
    i32.wrap_i64
    local.set 4
    local.get 0
    local.get 1
    i64.load offset=8
    local.get 14
    i64.xor
    local.tee 9
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 9
    i64.const 32
    i64.shl
    local.get 9
    i64.const 63
    i64.shr_u
    i64.or
    i64.or
    local.tee 9
    local.get 1
    i64.load offset=104
    local.get 12
    i64.xor
    local.tee 10
    i32.wrap_i64
    local.tee 5
    i32.const 12
    i32.shl
    local.get 5
    i32.const 20
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 10
    i64.const 19
    i64.shr_u
    i64.const 4294959104
    i64.and
    local.get 10
    i64.const 51
    i64.shr_u
    i64.or
    i64.or
    local.tee 10
    local.get 2
    i32.const 3
    i32.shl
    local.get 2
    i32.const 29
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 6
    i64.const 29
    i64.shr_u
    i64.const 4294967288
    i64.and
    local.get 6
    i64.const 61
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 6
    i64.const -1
    i64.xor
    i64.and
    i64.xor
    i64.store offset=80
    local.get 0
    local.get 3
    i32.const 4
    i32.shl
    local.get 3
    i32.const 28
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 7
    i64.const 28
    i64.shr_u
    i64.const 4294967280
    i64.and
    local.get 7
    i64.const 60
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 7
    local.get 10
    i64.const -1
    i64.xor
    i64.and
    local.get 6
    i64.xor
    i64.store offset=88
    local.get 0
    local.get 4
    i32.const 9
    i32.shl
    local.get 4
    i32.const 23
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 8
    i64.const 23
    i64.shr_u
    i64.const 4294966784
    i64.and
    local.get 8
    i64.const 55
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 8
    local.get 7
    i64.const -1
    i64.xor
    i64.and
    local.get 10
    i64.xor
    i64.store offset=96
    local.get 0
    local.get 8
    i64.const -1
    i64.xor
    local.get 9
    i64.and
    local.get 7
    i64.xor
    i64.store offset=104
    local.get 0
    local.get 9
    i64.const -1
    i64.xor
    local.get 6
    i64.and
    local.get 8
    i64.xor
    i64.store offset=112
    local.get 1
    i64.load offset=40
    local.get 15
    i64.xor
    local.tee 7
    i32.wrap_i64
    local.set 2
    local.get 1
    i64.load offset=88
    local.get 14
    i64.xor
    local.tee 8
    i32.wrap_i64
    local.set 3
    local.get 1
    i64.load offset=136
    local.get 11
    i64.xor
    local.tee 6
    i32.wrap_i64
    local.tee 4
    i32.const 7
    i32.shl
    local.get 4
    i32.const 25
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 6
    i64.const 24
    i64.shr_u
    i64.const 4294967040
    i64.and
    local.get 6
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    local.set 6
    local.get 1
    i64.load offset=184
    local.get 12
    i64.xor
    local.tee 9
    i32.wrap_i64
    local.set 4
    local.get 0
    local.get 1
    i64.load offset=32
    local.get 13
    i64.xor
    local.tee 10
    i32.wrap_i64
    local.tee 5
    i32.const 13
    i32.shl
    local.get 5
    i32.const 19
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 10
    i64.const 18
    i64.shr_u
    i64.const 4294950912
    i64.and
    local.get 10
    i64.const 50
    i64.shr_u
    i64.or
    i64.or
    local.tee 10
    local.get 3
    i32.const 5
    i32.shl
    local.get 3
    i32.const 27
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 8
    i64.const 27
    i64.shr_u
    i64.const 4294967264
    i64.and
    local.get 8
    i64.const 59
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 8
    local.get 2
    i32.const 18
    i32.shl
    local.get 2
    i32.const 14
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 7
    i64.const 14
    i64.shr_u
    i64.const 4294705152
    i64.and
    local.get 7
    i64.const 46
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 7
    i64.const -1
    i64.xor
    i64.and
    i64.xor
    i64.store offset=120
    local.get 0
    local.get 8
    i64.const -1
    i64.xor
    local.get 6
    i64.and
    local.get 7
    i64.xor
    i64.store offset=128
    local.get 0
    local.get 8
    local.get 4
    i32.const 28
    i32.shl
    local.get 4
    i32.const 4
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 9
    i64.const 4
    i64.shr_u
    i64.const 4026531840
    i64.and
    local.get 9
    i64.const 36
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 8
    local.get 6
    i64.const -1
    i64.xor
    i64.and
    i64.xor
    i64.store offset=136
    local.get 0
    local.get 8
    i64.const -1
    i64.xor
    local.get 10
    i64.and
    local.get 6
    i64.xor
    i64.store offset=144
    local.get 0
    local.get 10
    i64.const -1
    i64.xor
    local.get 7
    i64.and
    local.get 8
    i64.xor
    i64.store offset=152
    local.get 1
    i64.load offset=16
    local.get 11
    i64.xor
    local.tee 11
    i32.wrap_i64
    local.set 2
    local.get 1
    i64.load offset=120
    local.get 15
    i64.xor
    local.tee 15
    i32.wrap_i64
    local.tee 3
    i32.const 20
    i32.shl
    local.get 3
    i32.const 12
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 15
    i64.const 11
    i64.shr_u
    i64.const 4292870144
    i64.and
    local.get 15
    i64.const 43
    i64.shr_u
    i64.or
    i64.or
    local.set 15
    local.get 1
    i64.load offset=168
    local.get 14
    i64.xor
    local.tee 14
    i32.wrap_i64
    local.set 3
    local.get 0
    local.get 2
    i32.const 31
    i32.shl
    local.get 2
    i32.const 1
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 11
    i64.const 1
    i64.shr_u
    i64.const 2147483648
    i64.and
    local.get 11
    i64.const 33
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 11
    local.get 1
    i64.load offset=112
    local.get 13
    i64.xor
    local.tee 13
    i32.wrap_i64
    local.tee 2
    i32.const 19
    i32.shl
    local.get 2
    i32.const 13
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 13
    i64.const 12
    i64.shr_u
    i64.const 4293918720
    i64.and
    local.get 13
    i64.const 44
    i64.shr_u
    i64.or
    i64.or
    local.tee 13
    local.get 1
    i64.load offset=64
    local.get 12
    i64.xor
    local.tee 12
    i32.wrap_i64
    local.tee 1
    i32.const 27
    i32.shl
    local.get 1
    i32.const 5
    i32.shr_u
    i32.or
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 12
    i64.const 4
    i64.shr_u
    i64.const 4026531840
    i64.and
    local.get 12
    i64.const 36
    i64.shr_u
    i64.or
    i64.or
    local.tee 12
    i64.const -1
    i64.xor
    i64.and
    i64.xor
    i64.store offset=160
    local.get 0
    local.get 13
    i64.const -1
    i64.xor
    local.get 15
    i64.and
    local.get 12
    i64.xor
    i64.store offset=168
    local.get 0
    local.get 3
    i32.const 1
    i32.shl
    local.get 3
    i32.const 31
    i32.shr_u
    i32.or
    i64.extend_i32_u
    local.get 14
    i64.const 31
    i64.shr_u
    i64.const 4294967294
    i64.and
    local.get 14
    i64.const 63
    i64.shr_u
    i64.or
    i64.const 32
    i64.shl
    i64.or
    local.tee 14
    local.get 15
    i64.const -1
    i64.xor
    i64.and
    local.get 13
    i64.xor
    i64.store offset=176
    local.get 0
    local.get 14
    i64.const -1
    i64.xor
    local.get 11
    i64.and
    local.get 15
    i64.xor
    i64.store offset=184
    local.get 0
    local.get 11
    i64.const -1
    i64.xor
    local.get 12
    i64.and
    local.get 14
    i64.xor
    i64.store offset=192)
  (func $_main (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 400
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.set 0
    call $eth2_blockDataSize
    local.tee 2
    call $malloc
    local.tee 3
    i32.const 0
    local.get 2
    call $eth2_blockDataCopy
    local.get 0
    i32.const 200
    call $memset
    local.get 0
    i32.const 208
    i32.add
    local.set 4
    local.get 1
    i32.const 0
    i32.store offset=216
    local.get 0
    i32.const 200
    i32.add
    local.set 6
    local.get 1
    i32.const 136
    i32.store offset=208
    local.get 0
    i32.const 204
    i32.add
    local.set 7
    local.get 1
    i32.const 32
    i32.store offset=212
    local.get 0
    i32.const 380
    i32.add
    local.set 8
    local.get 1
    i32.const 1
    i32.store8 offset=388
    i32.const 0
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        local.tee 0
        i32.const 136
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        local.get 2
        i32.const 136
        call $SHA3_absorb
        local.tee 5
        local.set 0
        local.get 5
        br_if 0 (;@2;)
        local.get 4
        i32.load
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      i32.const 220
      i32.add
      local.get 2
      local.get 3
      i32.add
      local.get 0
      i32.sub
      local.get 0
      call $memcpy
      local.get 4
      local.get 0
      i32.store
    end
    local.get 1
    i32.const 8
    i32.add
    local.set 3
    local.get 1
    i32.const 220
    i32.add
    local.tee 4
    local.get 0
    i32.add
    local.tee 5
    local.get 6
    i32.load
    local.tee 2
    local.get 0
    i32.sub
    call $memset
    local.get 5
    local.get 8
    i32.load8_u
    i32.store8
    local.get 2
    i32.const -1
    i32.add
    local.get 4
    i32.add
    local.tee 0
    local.get 0
    i32.load8_u
    i32.const -128
    i32.or
    i32.store8
    local.get 3
    local.get 4
    local.get 2
    local.get 2
    call $SHA3_absorb
    drop
    local.get 3
    local.get 7
    i32.load
    local.get 2
    call $SHA3_squeeze
    i32.const 1232
    call $eth2_savePostStateRoot
    local.get 1
    i32.const 400
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66800))
  (export "memory" (memory 0))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "\01")
  (data (;1;) (i32.const 1036) "\89\00\00\00\00\00\00\00\8b\00\00\80\00\00\00\00\80\80\00\80\01\00\00\00\8b\00\00\00\01\00\00\00\00\80\00\00\01\00\00\00\88\80\00\80\01\00\00\00\82\00\00\80\00\00\00\00\0b\00\00\00\00\00\00\00\0a\00\00\00\01\00\00\00\82\80\00\00\00\00\00\00\03\80\00\00\01\00\00\00\8b\80\00\00\01\00\00\00\0b\00\00\80\01\00\00\00\8a\00\00\80\01\00\00\00\81\00\00\80\00\00\00\00\81\00\00\80\00\00\00\00\08\00\00\80\00\00\00\00\83\00\00\00\00\00\00\00\03\80\00\80\01\00\00\00\88\80\00\80\00\00\00\00\88\00\00\80\01\00\00\00\00\80\00\00\00\00\00\00\82\80\00\80")
  (data (;2;) (i32.const 1216) "\f0\04\01"))
