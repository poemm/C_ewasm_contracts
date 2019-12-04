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



# all of these exports can be passed as command-line arguments to make

# the c file to compile, without the ".c"
export PROJECT := sha1_rhash
# directory of the c file
export SRC_DIR := src/

# paths to tools
#export LLVM := /home/user/repos/llvm9/llvm-project/build/bin/
#export LLVM := llvm-project/build/bin
export LLVM := 
export WABT_DIR := wabt/build/
export BINARYEN_DIR := binaryen/build/bin/

# compiler options
export OPTIMIZATION_CLANG := -O3	#-Oz, -Os, -O0, -O1, -O2, or -O3
export OPTIMIZATION_OPT := -O3		#-Oz, -Os, -O0, -O1, -O2, or -O3
export OPTIMIZATION_LLC := -O3		#          -O0, -O1, -O2, or -O3
export OPTIMIZATION_WASM_LD := -O3	#          -O0, -O1, or -O2 # see docs, this has to do with string merging, dont think it affects wasm
export OPTIMIZATION_BINARYEN := -O3	#-Oz, -Os, -O0, -O1, -O2, or -O3



default: project


# dependencies checks and installation

wabt-install:
	git clone https://github.com/webassembly/wabt.git
	mkdir wabt/build
	cd wabt/build; cmake .. -DBUILD_TESTS=OFF
	cd wabt/build; make -j4
	touch wabt.READY

binaryen-install:
	git clone https://github.com/WebAssembly/binaryen.git
	cd binaryen; mkdir build
	cd binaryen/build; cmake ..
	cd binaryen/build; make -j4

llvm-install:
	# WARNING: should do this manually. Downloads a lot, requires a lot of system resources, and takes a long time. Might require restarting with `make` again if compilation has an error.
	git clone https://github.com/llvm/llvm-project.git
	cd llvm-project; mkdir build
	cd llvm-project/build; cmake -G 'Unix Makefiles' -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;lld" ../llvm
	cd llvm-project/build; make -j4

install: wabt-install binaryen-install
	#WARNING: this does not include llvm-install because this should be done manually

wabt-check:
ifeq (, $(shell which $(WABT_DIR)/wasm2wat))
	$(error "ERROR: Could not find wabt with wasm2wat, install it yourself and adjust path WABT_DIR in this makefile, or just install it with `make wabt-install`, and try again.")
endif

binaryen-check:
ifeq (, $(shell which $(BINARYEN_DIR)wasm-dis))
	$(error "ERROR: Could not find binaryen with wasm-dis, install it yourself and adjust path BINARYEN_DIR in this makefile, or just install it with `make binaryen-install`, and try again.")
endif

export LLVM_ERROR := "ERROR: Could not find llvm8+, install it yourself and adjust path LLVM_DIR in this makefile. It can also be found in some repositories. Install it yourself with `make llvm-install`, but this may fail and you should do it manually. WARNNG: 600MB+ download size, needs lots of RAM/disk to compile, compilation may fail the first try so need to restart multiple times.")

llvm-check:
ifeq (, $(shell which $(LLVM)clang))
	$(error $(LLVM_ERROR))
endif
ifeq (, $(shell which $(LLVM)opt))
	$(error $(LLVM_ERROR))
endif
ifeq (, $(shell which $(LLVM)lld))
	$(error $(LLVM_ERROR))
endif
ifeq (, $(shell which $(LLVM)wasm-ld))
	$(error $(LLVM_ERROR))
endif





# Compile .c to .wasm with llvm.
compile: llvm-check
	$(LLVM)clang -cc1 ${OPTIMIZATION_CLANG} -emit-llvm -triple=wasm32-unknown-unknown-wasm src/${PROJECT}.c -o ${PROJECT}.ll
	$(LLVM)opt ${OPTIMIZATION_OPT} ${PROJECT}.ll -o ${PROJECT}.ll
	$(LLVM)llc ${OPTIMIZATION_LLC} -filetype=obj ${PROJECT}.ll -o ${PROJECT}.o
	$(LLVM)wasm-ld ${PROJECT}.o -o ${PROJECT}.wasm --no-entry -allow-undefined-file=src/ewasm.syms -export=_main


# Convert the binary format .wasm to equivalent text format .wat
wasm2wat: wabt-check
	$(WABT_DIR)wasm2wat ${PROJECT}.wasm > ${PROJECT}.wat


# Convert the binary format .wasm to equivalent text format .wat
wasm-dis: binaryen-check
	$(BINARYEN_DIR)wasm-dis ${PROJECT}.wasm > ${PROJECT}.wat


# postprocess imports/exports and size reductions
ewasmify: wabt-check binaryen-check
	PYTHONPATH="$(PYTHONPATH):$(PYWEBASSEMBLY_DIR)" python3 $(PYWEBASSEMBLY_DIR)examples/ewasmify.py $(PROJECT).wasm
	$(BINARYEN_DIR)wasm-opt ${OPTIMIZATION_BINARYEN} $(PROJECT)_ewasmified.wasm -o $(PROJECT)_ewasmified.wasm
	$(WABT_DIR)wasm2wat $(PROJECT)_ewasmified.wasm > $(PROJECT)_ewasmified.wat
ifeq ($(PROJECT), mul256_bignum)
	# next, some extra steps to transform import name for new bigint module
	$(WABT_DIR)wasm2wat $(PROJECT)_ewasmified.wasm > $(PROJECT)_ewasmified.wat
	sed -i -e 's/"ethereum" "mul256"/"bignum" "mul256"/g' $(PROJECT)_ewasmified.wat
	$(WABT_DIR)wat2wasm $(PROJECT)_ewasmified.wat
endif
ifeq ($(PROJECT), mul256_bignum_640000)
	# next, some extra steps to transform import name for new bigint module
	$(WABT_DIR)wasm2wat $(PROJECT)_ewasmified.wasm > $(PROJECT)_ewasmified.wat
	sed -i -e 's/"ethereum" "mul256"/"bignum" "mul256"/g' $(PROJECT)_ewasmified.wat
	$(WABT_DIR)wat2wasm $(PROJECT)_ewasmified.wat
endif




# Build a single project.
project: compile wasm2wat ewasmify
	cp $(PROJECT)_ewasmified.wasm wasm/$(PROJECT).wasm
	cp $(PROJECT).wat wat/$(PROJECT).wat




# build individual projects

blake2b: blake2b_floodyberry blake2b_mjosref blake2b_openssl blake2b_ref blake2b_ref_small

blake2b_floodyberry: src/blake2b_floodyberry.c
	make project PROJECT=blake2b_floodyberry \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

blake2b_mjosref: src/blake2b_mjosref.c
	make project PROJECT=blake2b_mjosref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# funny enough, these speed optimization flags produced the smallest wasm, there were some ties

blake2b_openssl: src/blake2b_openssl.c
	make project PROJECT=blake2b_openssl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

blake2b_ref: src/blake2b_ref.c
	make project PROJECT=blake2b_ref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

blake2b_ref_small: src/blake2b_ref_small.c
	make project PROJECT=blake2b_ref_small \
	OPTIMIZATION_CLANG=-Os \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties

ed25519verify_tweetnacl: src/ed25519verify_tweetnacl.c
	make project PROJECT=ed25519verify_tweetnacl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

keccak256_rhash: src/keccak256_rhash.c
	make project PROJECT=keccak256_rhash \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

mul256_all: mul256 mul256_bignum mul256_640000 mul256_bignum_640000

mul256: src/mul256.c
	make project PROJECT=mul256 \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

mul256_bignum: src/mul256_bignum.c
	make project PROJECT=mul256_bignum \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	
mul256_640000: src/mul256_640000.c
	make project PROJECT=mul256_640000 \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

mul256_bignum_640000: src/mul256_bignum_640000.c
	make project PROJECT=mul256_bignum_640000 \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

polynomial_evaluation_32bit: src/polynomial_evaluation_32bit.c
	make project PROJECT=polynomial_evaluation_32bit \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

sha1_bcon: src/sha1_bcon.c
	make project PROJECT=sha1_bcon \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

sha1_bcon_small: src/sha1_bcon_small.c
	make project PROJECT=sha1_bcon_small \
	OPTIMIZATION_CLANG=-Oz \
	OPTIMIZATION_OPT=-O1 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties

sha1_ref: src/sha1_ref.c
	make project PROJECT=sha1_ref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

sha1_rhash: src/sha1_rhash.c
	make project PROJECT=sha1_rhash \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

sha1_rhash_small: src/sha1_rhash_small.c
	make project PROJECT=sha1_rhash_small \
	OPTIMIZATION_CLANG=-Oz \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-Oz
	# these optimization flags produced the smallest wasm, there were some ties

sha256_bcon: src/sha256_bcon.c
	make project PROJECT=sha256_bcon \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

sha256_nacl: src/sha256_nacl.c
	make project PROJECT=sha256_nacl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

sha256_rhash: src/sha256_rhash.c
	make project PROJECT=sha256_rhash \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wrc20: src/wrc20.c
	make project PROJECT=wrc20 \
	OPTIMIZATION_CLANG=-O1 \
	OPTIMIZATION_OPT=-O1 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties


all: blake2b_floodyberry blake2b_mjosref blake2b_openssl blake2b_ref blake2b_ref_small ed25519verify_tweetnacl keccak256_rhash mul256_all polynomial_evaluation_32bit sha1_bcon sha1_bcon_small sha1_ref sha1_rhash sha1_rhash_small sha256_bcon sha256_nacl sha256_rhash wrc20



# Compile all c files in src/* to wasm.
all_force:
	for f in $(shell  cd src; find *.c | sed 's/\.c//g'); do echo $$f; make project PROJECT=$$f ; done;


clean:
	rm -f *.ll *.o *.wasm *.wat


.PHONY: default all all clean


