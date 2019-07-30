(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32 i32)))
  (import "env" "eth2_blockDataSize" (func $eth2_blockDataSize (type 0)))
  (import "env" "eth2_blockDataCopy" (func $eth2_blockDataCopy (type 1)))
  (import "env" "eth2_savePostStateRoot" (func $eth2_savePostStateRoot (type 2)))
  (func $malloc (type 3) (param i32) (result i32)
    (local i32 i32)
    memory.size
    local.set 2
    i32.const 1024
    i32.load
    local.get 0
    i32.add
    local.tee 1
    local.get 2
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
    i32.const 1024
    local.get 1
    i32.store
    local.get 1
    local.get 0
    i32.sub)
  (func $memcpy (type 6) (param i32 i32 i32)
    (local i32)
    local.get 2
    i32.const 8
    i32.ge_u
    if  ;; label = @1
      local.get 2
      local.set 3
      loop  ;; label = @2
        local.get 0
        local.get 1
        i64.load
        i64.store
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 0
        i32.const 8
        i32.add
        local.set 0
        local.get 3
        i32.const -8
        i32.add
        local.tee 3
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
        local.get 0
        i32.const 1
        i32.add
        local.set 0
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
    end)
  (func $sha256_Init (type 2) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.set 1
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.const 24
      i32.add
      i32.const 1064
      i64.load
      i64.store
      local.get 0
      i32.const 16
      i32.add
      i32.const 1056
      i64.load
      i64.store
      local.get 0
      i32.const 8
      i32.add
      i32.const 1048
      i64.load
      i64.store
      local.get 0
      i32.const 1040
      i64.load
      i64.store
      local.get 1
      local.get 0
      i32.const 40
      i32.add
      i32.store offset=12
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=1
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=2
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=3
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=4
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=5
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=6
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=7
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=8
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=9
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=10
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=11
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=12
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=13
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=14
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=15
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=16
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=17
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=18
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=19
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=20
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=21
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=22
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=23
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=24
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=25
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=26
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=27
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=28
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=29
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=30
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=31
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=32
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=33
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=34
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=35
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=36
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=37
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=38
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=39
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=40
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=41
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=42
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=43
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=44
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=45
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=46
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=47
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=48
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=49
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=50
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=51
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=52
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=53
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=54
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=55
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=56
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=57
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=58
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=59
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=60
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=61
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=62
      local.get 1
      i32.load offset=12
      i32.const 0
      i32.store8 offset=63
      local.get 0
      i64.const 0
      i64.store offset=32
    end)
  (func $sha256_Transform (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.set 15
    local.get 0
    i32.load offset=28
    local.set 9
    local.get 0
    i32.load offset=24
    local.set 4
    local.get 0
    i32.load offset=20
    local.set 5
    local.get 0
    i32.load offset=16
    local.set 3
    local.get 0
    i32.load offset=12
    local.set 12
    local.get 0
    i32.load offset=8
    local.set 13
    local.get 0
    i32.load offset=4
    local.set 14
    local.get 0
    i32.load
    local.tee 25
    local.set 6
    loop  ;; label = @1
      local.get 10
      local.get 15
      i32.add
      local.tee 7
      local.get 1
      local.get 10
      i32.add
      local.tee 8
      i32.load
      local.tee 11
      i32.store
      local.get 7
      i32.const 4
      i32.add
      local.get 8
      i32.const 4
      i32.add
      i32.load
      local.tee 17
      i32.store
      local.get 7
      i32.const 8
      i32.add
      local.get 8
      i32.const 8
      i32.add
      i32.load
      local.tee 20
      i32.store
      local.get 7
      i32.const 12
      i32.add
      local.get 8
      i32.const 12
      i32.add
      i32.load
      local.tee 19
      i32.store
      local.get 7
      i32.const 16
      i32.add
      local.get 8
      i32.const 16
      i32.add
      i32.load
      local.tee 16
      i32.store
      local.get 7
      i32.const 20
      i32.add
      local.get 8
      i32.const 20
      i32.add
      i32.load
      local.tee 21
      i32.store
      local.get 7
      i32.const 24
      i32.add
      local.get 8
      i32.const 24
      i32.add
      i32.load
      local.tee 23
      i32.store
      local.get 7
      i32.const 28
      i32.add
      local.get 8
      i32.const 28
      i32.add
      i32.load
      local.tee 24
      i32.store
      local.get 11
      local.get 10
      i32.const 1072
      i32.add
      i32.load
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      local.get 9
      i32.add
      local.get 4
      local.get 3
      i32.const -1
      i32.xor
      i32.and
      local.get 3
      local.get 5
      i32.and
      i32.or
      i32.add
      i32.add
      i32.add
      local.tee 7
      local.get 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      local.get 6
      local.get 14
      i32.and
      local.tee 8
      local.get 6
      local.get 14
      i32.xor
      local.get 13
      i32.and
      i32.xor
      i32.add
      i32.add
      local.tee 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      local.get 6
      local.get 9
      i32.and
      local.tee 11
      local.get 9
      local.get 14
      i32.and
      local.get 8
      i32.xor
      i32.xor
      i32.add
      local.get 17
      local.get 10
      i32.const 1076
      i32.add
      i32.load
      local.get 4
      i32.add
      i32.add
      local.get 7
      local.get 12
      i32.add
      local.tee 4
      local.get 3
      i32.and
      local.get 5
      local.get 4
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      i32.add
      local.tee 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      local.get 9
      i32.and
      local.tee 17
      local.get 6
      local.get 7
      i32.and
      local.get 11
      i32.xor
      i32.xor
      i32.add
      local.get 20
      local.get 10
      i32.const 1080
      i32.add
      i32.load
      local.get 5
      i32.add
      i32.add
      local.get 12
      local.get 13
      i32.add
      local.tee 5
      local.get 4
      i32.and
      local.get 3
      local.get 5
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 5
      i32.const 26
      i32.rotl
      local.get 5
      i32.const 21
      i32.rotl
      i32.xor
      local.get 5
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      i32.add
      local.tee 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      local.get 8
      i32.and
      local.tee 13
      local.get 8
      local.get 9
      i32.and
      local.get 17
      i32.xor
      i32.xor
      i32.add
      local.get 19
      local.get 10
      i32.const 1084
      i32.add
      i32.load
      local.get 3
      i32.add
      i32.add
      local.get 12
      local.get 14
      i32.add
      local.tee 3
      local.get 5
      i32.and
      local.get 4
      local.get 3
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      i32.add
      local.tee 11
      i32.const 30
      i32.rotl
      local.get 11
      i32.const 19
      i32.rotl
      i32.xor
      local.get 11
      i32.const 10
      i32.rotl
      i32.xor
      local.get 8
      local.get 11
      i32.and
      local.tee 14
      local.get 7
      local.get 11
      i32.and
      local.get 13
      i32.xor
      i32.xor
      i32.add
      local.get 16
      local.get 10
      i32.const 1088
      i32.add
      i32.load
      local.get 4
      i32.add
      i32.add
      local.get 6
      local.get 12
      i32.add
      local.tee 6
      local.get 3
      i32.and
      local.get 5
      local.get 6
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 6
      i32.const 26
      i32.rotl
      local.get 6
      i32.const 21
      i32.rotl
      i32.xor
      local.get 6
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 4
      i32.add
      local.tee 12
      i32.const 30
      i32.rotl
      local.get 12
      i32.const 19
      i32.rotl
      i32.xor
      local.get 12
      i32.const 10
      i32.rotl
      i32.xor
      local.get 11
      local.get 12
      i32.and
      local.tee 17
      local.get 8
      local.get 12
      i32.and
      local.get 14
      i32.xor
      i32.xor
      i32.add
      local.get 21
      local.get 10
      i32.const 1092
      i32.add
      i32.load
      local.get 5
      i32.add
      i32.add
      local.get 4
      local.get 9
      i32.add
      local.tee 9
      local.get 6
      i32.and
      local.get 3
      local.get 9
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 9
      i32.const 26
      i32.rotl
      local.get 9
      i32.const 21
      i32.rotl
      i32.xor
      local.get 9
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 4
      i32.add
      local.tee 13
      i32.const 30
      i32.rotl
      local.get 13
      i32.const 19
      i32.rotl
      i32.xor
      local.get 13
      i32.const 10
      i32.rotl
      i32.xor
      local.get 12
      local.get 13
      i32.and
      local.tee 5
      local.get 11
      local.get 13
      i32.and
      local.get 17
      i32.xor
      i32.xor
      i32.add
      local.get 23
      local.get 10
      i32.const 1096
      i32.add
      i32.load
      local.get 3
      i32.add
      i32.add
      local.get 4
      local.get 7
      i32.add
      local.tee 4
      local.get 9
      i32.and
      local.get 6
      local.get 4
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 3
      i32.add
      local.tee 14
      i32.const 30
      i32.rotl
      local.get 14
      i32.const 19
      i32.rotl
      i32.xor
      local.get 14
      i32.const 10
      i32.rotl
      i32.xor
      local.get 14
      local.get 12
      local.get 13
      i32.xor
      i32.and
      local.get 5
      i32.xor
      i32.add
      local.get 24
      local.get 6
      local.get 10
      i32.const 1100
      i32.add
      i32.load
      i32.add
      i32.add
      local.get 3
      local.get 8
      i32.add
      local.tee 5
      local.get 4
      i32.and
      local.get 9
      local.get 5
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 5
      i32.const 26
      i32.rotl
      local.get 5
      i32.const 21
      i32.rotl
      i32.xor
      local.get 5
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 3
      i32.add
      local.set 6
      local.get 3
      local.get 11
      i32.add
      local.set 3
      local.get 10
      i32.const 32
      i32.add
      local.set 10
      local.get 18
      i32.const 8
      i32.add
      local.tee 18
      i32.const 16
      i32.lt_u
      br_if 0 (;@1;)
    end
    i32.const 16
    local.set 10
    i32.const 1164
    local.set 1
    loop  ;; label = @1
      local.get 1
      i32.const -28
      i32.add
      i32.load
      local.get 15
      local.get 10
      i32.const 8
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 7
      local.get 7
      i32.load
      local.get 15
      local.get 10
      i32.const 9
      i32.add
      i32.const 9
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get 15
      local.get 10
      i32.const 1
      i32.add
      i32.const 9
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 11
      i32.load
      local.tee 8
      i32.const 14
      i32.rotl
      local.get 8
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 8
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.get 15
      local.get 10
      i32.const 14
      i32.add
      i32.const 14
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee 20
      i32.const 13
      i32.rotl
      local.get 20
      i32.const 10
      i32.shr_u
      i32.xor
      local.get 20
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 7
      i32.store
      local.get 1
      i32.const -24
      i32.add
      i32.load
      local.set 23
      local.get 11
      local.get 8
      local.get 15
      local.get 10
      i32.const 10
      i32.add
      i32.const 10
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.add
      local.get 15
      local.get 10
      i32.const 2
      i32.add
      i32.const 10
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 18
      i32.load
      local.tee 11
      i32.const 14
      i32.rotl
      local.get 11
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 11
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 15
      local.get 10
      i32.const -1
      i32.add
      i32.const 15
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee 19
      i32.const 13
      i32.rotl
      local.get 19
      i32.const 10
      i32.shr_u
      i32.xor
      local.get 19
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 8
      i32.store
      local.get 1
      i32.const -20
      i32.add
      i32.load
      local.set 24
      local.get 18
      local.get 15
      local.get 10
      i32.const 11
      i32.add
      i32.const 11
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get 11
      local.get 7
      i32.const 10
      i32.shr_u
      local.get 7
      i32.const 13
      i32.rotl
      i32.xor
      local.get 7
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      i32.add
      local.get 15
      local.get 10
      i32.const 3
      i32.add
      i32.const 11
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 17
      i32.load
      local.tee 18
      i32.const 14
      i32.rotl
      local.get 18
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 18
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.tee 11
      i32.store
      local.get 1
      i32.const -16
      i32.add
      i32.load
      local.set 26
      local.get 17
      local.get 18
      local.get 15
      local.get 10
      i32.const 12
      i32.add
      i32.const 12
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.add
      local.get 8
      i32.const 10
      i32.shr_u
      local.get 8
      i32.const 13
      i32.rotl
      i32.xor
      local.get 8
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.get 15
      local.get 10
      i32.const 4
      i32.add
      i32.const 12
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 16
      i32.load
      local.tee 17
      i32.const 14
      i32.rotl
      local.get 17
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 17
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.tee 18
      i32.store
      local.get 1
      i32.const -12
      i32.add
      i32.load
      local.set 27
      local.get 16
      local.get 17
      local.get 15
      local.get 10
      i32.const 13
      i32.add
      i32.const 13
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.add
      local.get 11
      i32.const 10
      i32.shr_u
      local.get 11
      i32.const 13
      i32.rotl
      i32.xor
      local.get 11
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.get 15
      local.get 10
      i32.const 5
      i32.add
      i32.const 13
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 22
      i32.load
      local.tee 16
      i32.const 14
      i32.rotl
      local.get 16
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 16
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.tee 17
      i32.store
      local.get 1
      i32.const -8
      i32.add
      i32.load
      local.set 28
      local.get 22
      local.get 16
      local.get 20
      i32.add
      local.get 18
      i32.const 10
      i32.shr_u
      local.get 18
      i32.const 13
      i32.rotl
      i32.xor
      local.get 18
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.get 15
      local.get 10
      i32.const 6
      i32.add
      i32.const 14
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 22
      i32.load
      local.tee 16
      i32.const 14
      i32.rotl
      local.get 16
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 16
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.tee 20
      i32.store
      local.get 1
      i32.const -4
      i32.add
      i32.load
      local.set 29
      local.get 22
      local.get 16
      local.get 19
      i32.add
      local.get 15
      local.get 10
      i32.const 7
      i32.add
      i32.const 15
      i32.and
      i32.const 2
      i32.shl
      i32.add
      local.tee 16
      i32.load
      local.tee 19
      i32.const 14
      i32.rotl
      local.get 19
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 19
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 17
      i32.const 10
      i32.shr_u
      local.get 17
      i32.const 13
      i32.rotl
      i32.xor
      local.get 17
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 22
      i32.store
      local.get 1
      i32.load
      local.set 30
      local.get 16
      local.get 7
      local.get 19
      i32.add
      local.get 15
      local.get 10
      i32.const 8
      i32.add
      local.tee 10
      i32.const 8
      i32.and
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.tee 19
      i32.const 14
      i32.rotl
      local.get 19
      i32.const 3
      i32.shr_u
      i32.xor
      local.get 19
      i32.const 25
      i32.rotl
      i32.xor
      i32.add
      local.get 20
      i32.const 10
      i32.shr_u
      local.get 20
      i32.const 13
      i32.rotl
      i32.xor
      local.get 20
      i32.const 15
      i32.rotl
      i32.xor
      i32.add
      local.tee 19
      i32.store
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      local.get 9
      i32.add
      local.get 4
      local.get 3
      i32.const -1
      i32.xor
      i32.and
      local.get 3
      local.get 5
      i32.and
      i32.or
      i32.add
      i32.add
      local.get 7
      i32.add
      local.tee 7
      local.get 6
      i32.const 30
      i32.rotl
      local.get 6
      i32.const 19
      i32.rotl
      i32.xor
      local.get 6
      i32.const 10
      i32.rotl
      i32.xor
      local.get 6
      local.get 14
      i32.and
      local.tee 16
      local.get 6
      local.get 14
      i32.xor
      local.get 13
      i32.and
      i32.xor
      i32.add
      i32.add
      local.tee 9
      i32.const 30
      i32.rotl
      local.get 9
      i32.const 19
      i32.rotl
      i32.xor
      local.get 9
      i32.const 10
      i32.rotl
      i32.xor
      local.get 6
      local.get 9
      i32.and
      local.tee 21
      local.get 9
      local.get 14
      i32.and
      local.get 16
      i32.xor
      i32.xor
      i32.add
      local.get 4
      local.get 23
      i32.add
      local.get 7
      local.get 12
      i32.add
      local.tee 4
      local.get 3
      i32.and
      local.get 5
      local.get 4
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.get 8
      i32.add
      local.tee 12
      i32.add
      local.tee 7
      i32.const 30
      i32.rotl
      local.get 7
      i32.const 19
      i32.rotl
      i32.xor
      local.get 7
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      local.get 9
      i32.and
      local.tee 16
      local.get 6
      local.get 7
      i32.and
      local.get 21
      i32.xor
      i32.xor
      i32.add
      local.get 5
      local.get 24
      i32.add
      local.get 11
      i32.add
      local.get 12
      local.get 13
      i32.add
      local.tee 5
      local.get 4
      i32.and
      local.get 3
      local.get 5
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 5
      i32.const 26
      i32.rotl
      local.get 5
      i32.const 21
      i32.rotl
      i32.xor
      local.get 5
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      i32.add
      local.tee 8
      i32.const 30
      i32.rotl
      local.get 8
      i32.const 19
      i32.rotl
      i32.xor
      local.get 8
      i32.const 10
      i32.rotl
      i32.xor
      local.get 7
      local.get 8
      i32.and
      local.tee 13
      local.get 8
      local.get 9
      i32.and
      local.get 16
      i32.xor
      i32.xor
      i32.add
      local.get 3
      local.get 26
      i32.add
      local.get 18
      i32.add
      local.get 12
      local.get 14
      i32.add
      local.tee 3
      local.get 5
      i32.and
      local.get 4
      local.get 3
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 3
      i32.const 26
      i32.rotl
      local.get 3
      i32.const 21
      i32.rotl
      i32.xor
      local.get 3
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 12
      i32.add
      local.tee 11
      i32.const 30
      i32.rotl
      local.get 11
      i32.const 19
      i32.rotl
      i32.xor
      local.get 11
      i32.const 10
      i32.rotl
      i32.xor
      local.get 8
      local.get 11
      i32.and
      local.tee 14
      local.get 7
      local.get 11
      i32.and
      local.get 13
      i32.xor
      i32.xor
      i32.add
      local.get 4
      local.get 27
      i32.add
      local.get 17
      i32.add
      local.get 6
      local.get 12
      i32.add
      local.tee 6
      local.get 3
      i32.and
      local.get 5
      local.get 6
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 6
      i32.const 26
      i32.rotl
      local.get 6
      i32.const 21
      i32.rotl
      i32.xor
      local.get 6
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 4
      i32.add
      local.tee 12
      i32.const 30
      i32.rotl
      local.get 12
      i32.const 19
      i32.rotl
      i32.xor
      local.get 12
      i32.const 10
      i32.rotl
      i32.xor
      local.get 11
      local.get 12
      i32.and
      local.tee 18
      local.get 8
      local.get 12
      i32.and
      local.get 14
      i32.xor
      i32.xor
      i32.add
      local.get 5
      local.get 28
      i32.add
      local.get 20
      i32.add
      local.get 4
      local.get 9
      i32.add
      local.tee 9
      local.get 6
      i32.and
      local.get 3
      local.get 9
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 9
      i32.const 26
      i32.rotl
      local.get 9
      i32.const 21
      i32.rotl
      i32.xor
      local.get 9
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 4
      i32.add
      local.tee 13
      i32.const 30
      i32.rotl
      local.get 13
      i32.const 19
      i32.rotl
      i32.xor
      local.get 13
      i32.const 10
      i32.rotl
      i32.xor
      local.get 12
      local.get 13
      i32.and
      local.tee 5
      local.get 11
      local.get 13
      i32.and
      local.get 18
      i32.xor
      i32.xor
      i32.add
      local.get 3
      local.get 29
      i32.add
      local.get 22
      i32.add
      local.get 4
      local.get 7
      i32.add
      local.tee 4
      local.get 9
      i32.and
      local.get 6
      local.get 4
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 4
      i32.const 26
      i32.rotl
      local.get 4
      i32.const 21
      i32.rotl
      i32.xor
      local.get 4
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 3
      i32.add
      local.tee 14
      i32.const 30
      i32.rotl
      local.get 14
      i32.const 19
      i32.rotl
      i32.xor
      local.get 14
      i32.const 10
      i32.rotl
      i32.xor
      local.get 14
      local.get 12
      local.get 13
      i32.xor
      i32.and
      local.get 5
      i32.xor
      i32.add
      local.get 6
      local.get 30
      i32.add
      local.get 19
      i32.add
      local.get 3
      local.get 8
      i32.add
      local.tee 5
      local.get 4
      i32.and
      local.get 9
      local.get 5
      i32.const -1
      i32.xor
      i32.and
      i32.or
      i32.add
      local.get 5
      i32.const 26
      i32.rotl
      local.get 5
      i32.const 21
      i32.rotl
      i32.xor
      local.get 5
      i32.const 7
      i32.rotl
      i32.xor
      i32.add
      local.tee 3
      i32.add
      local.set 6
      local.get 3
      local.get 11
      i32.add
      local.set 3
      local.get 1
      i32.const 32
      i32.add
      local.set 1
      local.get 10
      i32.const 64
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 2
    local.get 6
    local.get 25
    i32.add
    i32.store
    local.get 2
    local.get 0
    i32.load offset=4
    local.get 14
    i32.add
    i32.store offset=4
    local.get 2
    local.get 0
    i32.load offset=8
    local.get 13
    i32.add
    i32.store offset=8
    local.get 2
    local.get 0
    i32.load offset=12
    local.get 12
    i32.add
    i32.store offset=12
    local.get 2
    local.get 0
    i32.load offset=16
    local.get 3
    i32.add
    i32.store offset=16
    local.get 2
    local.get 0
    i32.load offset=20
    local.get 5
    i32.add
    i32.store offset=20
    local.get 2
    local.get 0
    i32.load offset=24
    local.get 4
    i32.add
    i32.store offset=24
    local.get 2
    local.get 0
    i32.load offset=28
    local.get 9
    i32.add
    i32.store offset=28)
  (func $sha256_Update (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=32
        local.tee 6
        i32.wrap_i64
        i32.const 3
        i32.shr_u
        i32.const 63
        i32.and
        local.tee 5
        if  ;; label = @3
          local.get 0
          i32.const 40
          i32.add
          local.tee 4
          local.get 5
          i32.add
          local.set 3
          i32.const 64
          local.get 5
          i32.sub
          local.tee 5
          local.get 2
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 1
          local.get 5
          call $memcpy
          local.get 0
          local.get 6
          local.get 5
          i32.const 3
          i32.shl
          i64.extend_i32_u
          i64.add
          i64.store offset=32
          local.get 0
          local.get 0
          i32.load offset=40
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store offset=40
          local.get 0
          i32.const 44
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 48
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 52
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 56
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 60
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const -64
          i32.sub
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 68
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 72
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 76
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 80
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 84
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 88
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 92
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 96
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          i32.const 100
          i32.add
          local.tee 3
          local.get 3
          i32.load
          local.tee 3
          i32.const 24
          i32.shl
          local.get 3
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 3
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 3
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          i32.store
          local.get 0
          local.get 4
          local.get 0
          call $sha256_Transform
          local.get 2
          local.get 5
          i32.sub
          local.set 2
          local.get 1
          local.get 5
          i32.add
          local.set 1
        end
        local.get 2
        i32.const 64
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i32.const 40
          i32.add
          local.set 3
          local.get 2
          local.set 5
          loop  ;; label = @4
            local.get 3
            local.get 1
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 56
            i32.add
            local.get 1
            i32.const 56
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 48
            i32.add
            local.get 1
            i32.const 48
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 40
            i32.add
            local.get 1
            i32.const 40
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 32
            i32.add
            local.get 1
            i32.const 32
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 24
            i32.add
            local.get 1
            i32.const 24
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 16
            i32.add
            local.get 1
            i32.const 16
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i64.load align=1
            i64.store align=1
            local.get 0
            local.get 0
            i32.load offset=40
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=40
            local.get 0
            local.get 0
            i32.load offset=44
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=44
            local.get 0
            local.get 0
            i32.load offset=48
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=48
            local.get 0
            local.get 0
            i32.load offset=52
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=52
            local.get 0
            local.get 0
            i32.load offset=56
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=56
            local.get 0
            local.get 0
            i32.load offset=60
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=60
            local.get 0
            local.get 0
            i32.load offset=64
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=64
            local.get 0
            local.get 0
            i32.load offset=68
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=68
            local.get 0
            local.get 0
            i32.load offset=72
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=72
            local.get 0
            local.get 0
            i32.load offset=76
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=76
            local.get 0
            local.get 0
            i32.load offset=80
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=80
            local.get 0
            local.get 0
            i32.load offset=84
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=84
            local.get 0
            local.get 0
            i32.load offset=88
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=88
            local.get 0
            local.get 0
            i32.load offset=92
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=92
            local.get 0
            local.get 0
            i32.load offset=96
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=96
            local.get 0
            local.get 0
            i32.load offset=100
            local.tee 4
            i32.const 24
            i32.shl
            local.get 4
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 4
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 4
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=100
            local.get 0
            local.get 3
            local.get 0
            call $sha256_Transform
            local.get 0
            local.get 0
            i64.load offset=32
            i64.const 512
            i64.add
            i64.store offset=32
            local.get 1
            i32.const -64
            i32.sub
            local.set 1
            local.get 5
            i32.const -64
            i32.add
            local.tee 5
            i32.const 63
            i32.gt_u
            br_if 0 (;@4;)
          end
          local.get 2
          i32.const 63
          i32.and
          local.set 2
        end
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 40
        i32.add
        local.get 1
        local.get 2
        call $memcpy
        local.get 0
        local.get 0
        i64.load offset=32
        local.get 2
        i32.const 3
        i32.shl
        i64.extend_i32_u
        i64.add
        i64.store offset=32
      end
      return
    end
    local.get 3
    local.get 1
    local.get 2
    call $memcpy
    local.get 0
    local.get 6
    local.get 2
    i32.const 3
    i32.shl
    i64.extend_i32_u
    i64.add
    i64.store offset=32)
  (func $sha256_Final (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 1
    if  ;; label = @1
      local.get 0
      i32.const 40
      i32.add
      local.tee 5
      local.get 0
      i32.load offset=32
      i32.const 3
      i32.shr_u
      i32.const 63
      i32.and
      local.tee 3
      i32.add
      i32.const 128
      i32.store8
      local.get 3
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i32.const 56
      i32.ge_u
      if  ;; label = @2
        local.get 4
        local.get 2
        local.get 5
        i32.add
        i32.store offset=4
        local.get 3
        i32.const 63
        i32.ne
        if  ;; label = @3
          local.get 3
          i32.const 63
          i32.xor
          local.set 3
          i32.const 0
          local.set 2
          loop  ;; label = @4
            local.get 4
            i32.load offset=4
            local.get 2
            i32.add
            i32.const 0
            i32.store8
            local.get 3
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 0
        i32.load offset=40
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=40
        local.get 0
        i32.const 44
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 48
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 52
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 56
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 60
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const -64
        i32.sub
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 68
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 72
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 76
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 80
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 84
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 88
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 92
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 96
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        i32.const 100
        i32.add
        local.tee 2
        local.get 2
        i32.load
        local.tee 2
        i32.const 24
        i32.shl
        local.get 2
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 2
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store
        local.get 0
        local.get 5
        local.get 0
        call $sha256_Transform
        i32.const 0
        local.set 2
      end
      local.get 4
      local.get 2
      local.get 5
      i32.add
      i32.store offset=12
      i32.const 56
      local.get 2
      i32.sub
      local.tee 3
      if  ;; label = @2
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 4
          i32.load offset=12
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=40
      local.get 0
      i32.const 44
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 48
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 52
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 56
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 60
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const -64
      i32.sub
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 68
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 72
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 76
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 80
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 84
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 88
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 92
      i32.add
      local.tee 2
      local.get 2
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      i32.const 100
      i32.add
      local.get 0
      i64.load offset=32
      local.tee 6
      i64.store32
      local.get 0
      i32.const 96
      i32.add
      local.get 6
      i64.const 32
      i64.shr_u
      i64.store32
      local.get 0
      local.get 5
      local.get 0
      call $sha256_Transform
      local.get 0
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=8
      local.get 0
      local.get 0
      i32.load offset=12
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=12
      local.get 0
      local.get 0
      i32.load
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=4
      local.get 0
      local.get 0
      i32.load offset=16
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=16
      local.get 0
      local.get 0
      i32.load offset=20
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=20
      local.get 0
      local.get 0
      i32.load offset=24
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=24
      local.get 0
      local.get 0
      i32.load offset=28
      local.tee 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      i32.store offset=28
      local.get 1
      i32.const 8
      i32.add
      local.get 0
      i64.load offset=8 align=1
      i64.store align=1
      local.get 1
      i32.const 24
      i32.add
      local.get 0
      i64.load offset=24 align=1
      i64.store align=1
      local.get 1
      i32.const 16
      i32.add
      local.get 0
      i64.load offset=16 align=1
      i64.store align=1
      local.get 1
      local.get 0
      i64.load align=1
      i64.store align=1
    end
    local.get 4
    local.get 0
    i32.store offset=8
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 4
      i32.load offset=8
      local.get 2
      i32.add
      i32.const 0
      i32.store8
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 104
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func $_main (type 5)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    call $eth2_blockDataSize
    local.tee 1
    call $malloc
    local.tee 3
    i32.const 0
    local.get 1
    call $eth2_blockDataCopy
    local.get 1
    i32.const 49999
    i32.add
    local.get 1
    i32.const 1
    i32.add
    i32.div_s
    local.tee 2
    i32.const 1
    i32.ge_s
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.const 40
        i32.add
        call $sha256_Init
        local.get 0
        i32.const 40
        i32.add
        local.get 3
        local.get 1
        call $sha256_Update
        local.get 0
        i32.const 40
        i32.add
        local.get 0
        call $sha256_Final
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 0
    call $eth2_savePostStateRoot
    local.get 0
    i32.const 144
    i32.add
    global.set 0)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66864))
  (global (;1;) i32 (i32.const 66864))
  (global (;2;) i32 (i32.const 1328))
  (export "memory" (memory 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $_main))
  (data (;0;) (i32.const 1024) "0\05\01")
  (data (;1;) (i32.const 1040) "g\e6\09j\85\aeg\bbr\f3n<:\f5O\a5\7fR\0eQ\8ch\05\9b\ab\d9\83\1f\19\cd\e0[\98/\8aB\91D7q\cf\fb\c0\b5\a5\db\b5\e9[\c2V9\f1\11\f1Y\a4\82?\92\d5^\1c\ab\98\aa\07\d8\01[\83\12\be\851$\c3}\0cUt]\ber\fe\b1\de\80\a7\06\dc\9bt\f1\9b\c1\c1i\9b\e4\86G\be\ef\c6\9d\c1\0f\cc\a1\0c$o,\e9-\aa\84tJ\dc\a9\b0\5c\da\88\f9vRQ>\98m\c61\a8\c8'\03\b0\c7\7fY\bf\f3\0b\e0\c6G\91\a7\d5Qc\ca\06g))\14\85\0a\b7'8!\1b.\fcm,M\13\0d8STs\0ae\bb\0ajv.\c9\c2\81\85,r\92\a1\e8\bf\a2Kf\1a\a8p\8bK\c2\a3Ql\c7\19\e8\92\d1$\06\99\d6\855\0e\f4p\a0j\10\16\c1\a4\19\08l7\1eLwH'\b5\bc\b04\b3\0c\1c9J\aa\d8NO\ca\9c[\f3o.h\ee\82\8ftoc\a5x\14x\c8\84\08\02\c7\8c\fa\ff\be\90\eblP\a4\f7\a3\f9\be\f2xq\c6"))
