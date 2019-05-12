
#set -x

# the tests to run, can comment some out with #
tests=(
  #blake2_rust
  #blake2b_ref
  #blake2b_ref_small
  #blake2b_ref_smallfast
  #bls12pairing_rust	# need more tests, only have one trivial test case
  #ecadd_rust		# returns zeros for everything, need to check tests
  #ecmul_rust		# returns zeros for everything, need to check tests
  #ecpairing_rust	# very fast, returns zeros for everything, something is wrong
  #ecrecover_rust	# no test cases
  #ed25519_rust
  #ed25519verify_tweetnacl
  #identity_rust
  #keccak256_rhash
  #keccak256_rust
  #polynomial_evaluation_32bit
  #ripemd160_rust
  #mul256
  #sha1_bcon
  #sha1_bcon_small
  #sha1_rhash
  sha1_rhash_small
  #sha1_rust		# returns zeros for everything, something is wrong
  #sha256_rust
  #sha256_nacl
  #sha256_bcon
  #sha256_rhash
  #wrc20_C
  #wrc20_handwritten_faster_transfer
  #wrc20_handwritten_faster_get_balance
)

optimization_clang=(
  #-Oz
  #-Os
  #-O0
  #-O1
  -O2
  -O3
)
optimization_opt=(
  -Oz
  -Os
  -O0
  -O1
  -O2
  -O3
)
optimization_llc=(
  -O0
  -O1
  -O2
  -O3
)
optimization_wasm_opt=(
  -Oz
  -Os
  -O0
  -O1
  -O2
  -O3
)

SMALLEST_SIZE=100000

# double loop over each test and engine
for testcase in "${tests[@]}"; do
  #printf "\n" >> runtime_data.csv
  printf "\n\n\nBENCHMARKING %s\n" $testcase
  for clang_opt in "${optimization_clang[@]}"; do
    for opt_opt in "${optimization_opt[@]}"; do
      for llc_opt in "${optimization_llc[@]}"; do
        for wasm_opt_opt in "${optimization_wasm_opt[@]}"; do

          make project PROJECT=$testcase  \
          OPTIMIZATION_CLANG=$clang_opt \
          OPTIMIZATION_OPT=$opt_opt \
          OPTIMIZATION_LLC=$llc_opt \
          OPTIMIZATION_BINARYEN=$wasm_opt_opt
          
          printf "\n %s %s %s %s %s" $testcase $clang_opt $opt_opt $llc_opt $wasm_opt_opt >> out.txt
          ls -l wasm/$testcase.wasm >> out.txt

          SIZE=$(ls -l wasm/$testcase.wasm | awk '{print $5}')
          if [ "$SIZE" -le "$SMALLEST_SIZE" ]; then
            SMALLEST_SIZE=$SIZE
            printf "new smallest $SMALLEST_SIZE" >> out.txt
            echo new smallest $SMALLEST_SIZE
          fi

        done
      done
    done
  done
done

echo $SMALLEST_SIZE
