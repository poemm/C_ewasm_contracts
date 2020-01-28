(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32 i32)))
  (func $mul256 (type 1) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get 0
    local.set 3
    i32.const 64
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    i32.const 0
    local.set 6
    local.get 5
    local.get 0
    i32.store offset=60
    local.get 5
    local.get 1
    i32.store offset=56
    local.get 5
    local.get 2
    i32.store offset=52
    local.get 5
    local.get 6
    i32.store offset=48
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 640000
        local.set 7
        local.get 5
        i32.load offset=48
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
        i32.const 0
        local.set 14
        local.get 5
        i32.load offset=60
        local.set 15
        local.get 5
        local.get 15
        i32.store offset=44
        local.get 5
        local.get 14
        i32.store offset=40
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 16
            local.set 16
            local.get 5
            i32.load offset=40
            local.set 17
            local.get 17
            local.set 18
            local.get 16
            local.set 19
            local.get 18
            local.get 19
            i32.lt_s
            local.set 20
            i32.const 1
            local.set 21
            local.get 20
            local.get 21
            i32.and
            local.set 22
            local.get 22
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 23
            local.get 5
            i32.load offset=44
            local.set 24
            local.get 5
            i32.load offset=40
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
            local.get 23
            i32.store
            local.get 5
            i32.load offset=40
            local.set 29
            i32.const 1
            local.set 30
            local.get 29
            local.get 30
            i32.add
            local.set 31
            local.get 5
            local.get 31
            i32.store offset=40
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        i32.const 0
        local.set 32
        local.get 5
        local.get 32
        i32.store offset=36
        block  ;; label = @3
          loop  ;; label = @4
            i32.const 8
            local.set 33
            local.get 5
            i32.load offset=36
            local.set 34
            local.get 34
            local.set 35
            local.get 33
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
            local.get 39
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 40
            local.get 5
            local.get 40
            i32.store offset=32
            local.get 5
            local.get 40
            i32.store offset=28
            block  ;; label = @5
              loop  ;; label = @6
                i32.const 8
                local.set 41
                local.get 5
                i32.load offset=28
                local.set 42
                local.get 42
                local.set 43
                local.get 41
                local.set 44
                local.get 43
                local.get 44
                i32.lt_s
                local.set 45
                i32.const 1
                local.set 46
                local.get 45
                local.get 46
                i32.and
                local.set 47
                local.get 47
                i32.eqz
                br_if 1 (;@5;)
                local.get 5
                i32.load offset=44
                local.set 48
                local.get 5
                i32.load offset=36
                local.set 49
                local.get 5
                i32.load offset=28
                local.set 50
                local.get 49
                local.get 50
                i32.add
                local.set 51
                i32.const 2
                local.set 52
                local.get 51
                local.get 52
                i32.shl
                local.set 53
                local.get 48
                local.get 53
                i32.add
                local.set 54
                local.get 54
                i32.load
                local.set 55
                local.get 55
                local.set 56
                local.get 56
                i64.extend_i32_u
                local.set 100
                local.get 5
                i32.load offset=56
                local.set 57
                local.get 5
                i32.load offset=28
                local.set 58
                i32.const 2
                local.set 59
                local.get 58
                local.get 59
                i32.shl
                local.set 60
                local.get 57
                local.get 60
                i32.add
                local.set 61
                local.get 61
                i32.load
                local.set 62
                local.get 62
                local.set 63
                local.get 63
                i64.extend_i32_u
                local.set 101
                local.get 5
                i32.load offset=52
                local.set 64
                local.get 5
                i32.load offset=36
                local.set 65
                i32.const 2
                local.set 66
                local.get 65
                local.get 66
                i32.shl
                local.set 67
                local.get 64
                local.get 67
                i32.add
                local.set 68
                local.get 68
                i32.load
                local.set 69
                local.get 69
                local.set 70
                local.get 70
                i64.extend_i32_u
                local.set 102
                local.get 101
                local.get 102
                i64.mul
                local.set 103
                local.get 100
                local.get 103
                i64.add
                local.set 104
                local.get 5
                local.get 104
                i64.store offset=16
                local.get 5
                i32.load offset=32
                local.set 71
                local.get 71
                local.set 72
                local.get 72
                i64.extend_i32_u
                local.set 105
                local.get 5
                i64.load offset=16
                local.set 106
                local.get 106
                local.get 105
                i64.add
                local.set 107
                local.get 5
                local.get 107
                i64.store offset=16
                local.get 5
                i64.load offset=16
                local.set 108
                i64.const 32
                local.set 109
                local.get 108
                local.get 109
                i64.shr_u
                local.set 110
                local.get 5
                local.get 110
                i64.store offset=8
                local.get 5
                i64.load offset=16
                local.set 111
                local.get 111
                i32.wrap_i64
                local.set 73
                local.get 5
                local.get 73
                i32.store offset=4
                local.get 5
                i32.load offset=4
                local.set 74
                local.get 5
                i32.load offset=44
                local.set 75
                local.get 5
                i32.load offset=36
                local.set 76
                local.get 5
                i32.load offset=28
                local.set 77
                local.get 76
                local.get 77
                i32.add
                local.set 78
                i32.const 2
                local.set 79
                local.get 78
                local.get 79
                i32.shl
                local.set 80
                local.get 75
                local.get 80
                i32.add
                local.set 81
                local.get 81
                local.get 74
                i32.store
                local.get 5
                i64.load offset=8
                local.set 112
                local.get 112
                i32.wrap_i64
                local.set 82
                local.get 5
                local.get 82
                i32.store offset=32
                local.get 5
                i32.load offset=28
                local.set 83
                i32.const 1
                local.set 84
                local.get 83
                local.get 84
                i32.add
                local.set 85
                local.get 5
                local.get 85
                i32.store offset=28
                br 0 (;@6;)
                unreachable
              end
              unreachable
            end
            local.get 5
            i32.load offset=32
            local.set 86
            local.get 5
            i32.load offset=44
            local.set 87
            local.get 5
            i32.load offset=36
            local.set 88
            i32.const 8
            local.set 89
            local.get 88
            local.get 89
            i32.add
            local.set 90
            i32.const 2
            local.set 91
            local.get 90
            local.get 91
            i32.shl
            local.set 92
            local.get 87
            local.get 92
            i32.add
            local.set 93
            local.get 93
            local.get 86
            i32.store
            local.get 5
            i32.load offset=36
            local.set 94
            i32.const 1
            local.set 95
            local.get 94
            local.get 95
            i32.add
            local.set 96
            local.get 5
            local.get 96
            i32.store offset=36
            br 0 (;@4;)
            unreachable
          end
          unreachable
        end
        local.get 5
        i32.load offset=48
        local.set 97
        i32.const 1
        local.set 98
        local.get 97
        local.get 98
        i32.add
        local.set 99
        local.get 5
        local.get 99
        i32.store offset=48
        br 0 (;@2;)
        unreachable
      end
      unreachable
    end
    return)
  (func $_main (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    local.get 2
    local.get 3
    i32.store offset=8
    local.get 2
    local.get 3
    i32.store offset=4
    local.get 2
    i32.load offset=12
    local.set 4
    local.get 2
    i32.load offset=8
    local.set 5
    local.get 2
    i32.load offset=4
    local.set 6
    local.get 4
    local.get 5
    local.get 6
    call $mul256
    i32.const 16
    local.set 7
    local.get 2
    local.get 7
    i32.add
    local.set 8
    local.get 8
    global.set 0
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (export "memory" (memory 0))
  (export "main" (func $_main)))
