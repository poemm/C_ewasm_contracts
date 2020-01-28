#
#    Copyright 2019 Paul Dworzanski et al.
#
#    This file is part of c_ewasm_contracts.
#
#    c_ewasm_contracts is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    c_ewasm_contracts is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with c_ewasm_contracts.  If not, see <https://www.gnu.org/licenses/>.
#





############################################################
# variables, can be passed as command-line arguments to make

# the c file to compile, without the ".c"
export PROJECT := blake2b_ref

# directory of the c files
export SRC_DIR := src/

# paths to tools
export LLVM_DIR := llvm-project/build/bin/
export WABT_DIR := wabt/build/
export BINARYEN_DIR := binaryen/build/bin/
export SCOUT_DIR := 
#export LLVM_DIR :=
#export WABT_DIR :=
#export BINARYEN_DIR :=

# compiler options
export OPTIMIZATION_CLANG := -O3	#-Oz, -Os, -O0, -O1, -O2, or -O3
export OPTIMIZATION_OPT := -O3		#-Oz, -Os, -O0, -O1, -O2, or -O3
export OPTIMIZATION_LLC := -O3		#          -O0, -O1, -O2, or -O3
export OPTIMIZATION_WASM_LD := -O3	#          -O0, -O1, or -O2 # this has to do with string merging, don't think it affects wasm
export OPTIMIZATION_BINARYEN := -O3	#-Oz, -Os, -O0, -O1, -O2, or -O3
export DEFINES :=





#######################################################
# The main recipe, does all compilation/transformations

default: project

# This is the main recipe to build, optimize, convert
project:
	# compile
	$(LLVM_DIR)/clang -cc1 ${OPTIMIZATION_CLANG} ${CFLAGS} -emit-llvm -triple=wasm32-unknown-unknown-wasm ${SRC_DIR}${PROJECT}.c -o ${PROJECT}.ll
	$(LLVM_DIR)/opt ${OPTIMIZATION_OPT} ${PROJECT}.ll -o ${PROJECT}.ll
	$(LLVM_DIR)/llc ${OPTIMIZATION_LLC} -filetype=obj ${PROJECT}.ll -o ${PROJECT}.o
	$(LLVM_DIR)/wasm-ld $(OPTIMIZATION_WASM_LD) ${PROJECT}.o -o ${PROJECT}.wasm --no-entry -allow-undefined-file=src/ewasm.syms -export=_main lib/wasi/libclang_rt.builtins-wasm32.a  #--stack-first -z stack-size=10000
	# done compiling, optimize with Wasm-specific optimizer
	$(BINARYEN_DIR)/wasm-opt ${OPTIMIZATION_BINARYEN} ${PROJECT}.wasm -o ${PROJECT}.wasm -g #-g keeps function names
	# hack so that we export "main" instead of "_main"
	$(WABT_DIR)/wasm2wat ${PROJECT}.wasm > ${PROJECT}.wat
	sed -i -e 's/(export "_main" (func $$_main))/(export "main" (func $$_main))/g' ${PROJECT}.wat
	$(WABT_DIR)/wat2wasm ${PROJECT}.wat > ${PROJECT}.wasm
	# save files
	mv $(PROJECT).wasm wasm/$(PROJECT).wasm
	mv $(PROJECT).wat wat/$(PROJECT).wat
	# remove intermediate files
	rm -f $(PROJECT).ll $(PROJECT).o





########################################################
# Build individual projects, calls the main recipe above 
# Add your project here, or copy/paste commands in recipe above

blake2b: blake2b_floodyberry blake2b_mjosref blake2b_openssl blake2b_ref blake2b_ref_small

blake2b_floodyberry: src/blake2b_floodyberry.c
	make project PROJECT=blake2b_floodyberry \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3

blake2b_mjosref: src/blake2b_mjosref.c
	make project PROJECT=blake2b_mjosref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# funny enough, these speed optimization flags produced the smallest wasm, there were some ties

blake2b_openssl: src/blake2b_openssl.c
	make project PROJECT=blake2b_openssl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3

blake2b_ref: src/blake2b_ref.c
	make project PROJECT=blake2b_ref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3

blake2b_ref_small: src/blake2b_ref_small.c
	make project PROJECT=blake2b_ref_small \
	OPTIMIZATION_CLANG=-Os \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties



helloworld: src/helloworld.c
	make project PROJECT=helloworld \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3



keccak256: keccak256_ref keccak256_ref_readable_and_compact keccak256_rhash keccak256_libkeccak-tiny keccak256_libkeccak-tiny-unrolled keccak256_openssl

keccak256_ref: src/keccak256_ref.c
	make project PROJECT=keccak256_ref \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O0

keccak256_ref_readable_and_compact: src/keccak256_ref_readable_and_compact.c
	make project PROJECT=keccak256_ref_readable_and_compact \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

keccak256_rhash: src/keccak256_rhash.c
	make project PROJECT=keccak256_rhash \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

keccak256_openssl: src/keccak256_openssl.c
	make project PROJECT=keccak256_openssl \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

keccak256_libkeccak-tiny: src/keccak256_libkeccak-tiny.c
	make project PROJECT=keccak256_libkeccak-tiny \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

keccak256_libkeccak-tiny-unrolled: src/keccak256_libkeccak-tiny-unrolled.c
	make project PROJECT=keccak256_libkeccak-tiny-unrolled \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

keccak256_rhash_init_update_final: src/keccak256_rhash_init_update_final.c
	make project PROJECT=keccak256_rhash_init_update_final \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3


ecrecover: ecrecover_libsecp256k1 ecrecover_trezor

ecrecover_libsecp256k1: src/ecrecover_libsecp256k1_untested.c
	make project PROJECT=ecrecover_libsecp256k1_untested \
        OPTIMIZATION_CLANG=-O1 \
        OPTIMIZATION_OPT=-O1 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# larger optimizations result in a runtime error

ecrecover_trezor: src/ecrecover_trezor_untested.c
	make project PROJECT=ecrecover_trezor_untested \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# LLC must be -O0, otherwise runtime error at ecdsa_validate_pubkey()

ecrecover_libsecp256k1_broken: src/ecrecover_libsecp256k1_broken.c
	make project PROJECT=ecrecover_libsecp256k1_broken \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0


sha256: sha256_bcon sha256_nacl sha256_rhash sha256_mbedtls sha256_trezor

sha256_bcon: src/sha256_bcon.c
	make project PROJECT=sha256_bcon \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha256_mbedtls: src/sha256_mbedtls.c
	make project PROJECT=sha256_mbedtls\
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha256_nacl: src/sha256_nacl.c
	make project PROJECT=sha256_nacl \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha256_rhash: src/sha256_rhash.c
	make project PROJECT=sha256_rhash \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha256_trezor: src/sha256_trezor.c
	make project PROJECT=sha256_trezor \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha1: sha1_bcon sha1_bcon_small sha1_ref sha1_ref_small sha1_rhash sha1_rhash_small

sha1_bcon: src/sha1_bcon.c
	make project PROJECT=sha1_bcon \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha1_bcon_small: src/sha1_bcon_small.c
	make project PROJECT=sha1_bcon_small \
        OPTIMIZATION_CLANG=-Oz \
        OPTIMIZATION_OPT=-Oz \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-Oz

sha1_ref: src/sha1_ref.c
	make project PROJECT=sha1_ref \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha1_ref_small: src/sha1_ref_small.c
	make project PROJECT=sha1_ref_small \
        OPTIMIZATION_CLANG=-Oz \
        OPTIMIZATION_OPT=-Oz \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-Oz

sha1_rhash: src/sha1_rhash.c
	make project PROJECT=sha1_rhash \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_WASM_LD=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha1_rhash_small: src/sha1_rhash_small.c
	make project PROJECT=sha1_rhash_small \
        OPTIMIZATION_CLANG=-Oz \
        OPTIMIZATION_OPT=-Oz \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-Oz


mul256_: mul256_import_64000 mul256

mul256: src/mul256.c
	make project PROJECT=mul256 \
	OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0

mul256_import_64000: src/mul256_import_640000.c
	make project PROJECT=mul256_import_640000 \
	CFLAGS=-DBIGINT=1 \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0



ed25519verify: ed25519verify_tweetnacl ed25519verify_floodyberry ed25519verify_ref10

ed25519verify_tweetnacl: src/ed25519verify_tweetnacl_untested.c
	make project PROJECT=ed25519verify_tweetnacl_untested \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0

ed25519verify_floodyberry: src/ed25519verify_floodyberry_untested.c
	make project PROJECT=ed25519verify_floodyberry_untested \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0

ed25519verify_ref10: src/ed25519verify_ref10_untested.c
	make project PROJECT=ed25519verify_ref10_untested \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0




polynomial_evaluation_32bit: src/polynomial_evaluation_32bit.c
	make project PROJECT=polynomial_evaluation_32bit \
        OPTIMIZATION_CLANG=-O0 \
        OPTIMIZATION_OPT=-O0 \
        OPTIMIZATION_LLC=-O0 \
	OPTIMIZATION_WASM_LD=-O0 \
        OPTIMIZATION_BINARYEN=-O0




all: helloworld blake2b keccak256 sha1 sha256 ed25519verify ecrecover polynomial_evaluation_32bit mul256_





#############
# Scout tests

test-helloworld:
	cd wasm; ../${SCOUT_DIR}scout.exec ../tests/helloworld.yaml





clean:
	rm -f *.ll *.o *.wasm *.wat

.PHONY: default all clean


