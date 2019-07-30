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
export PROJECT := blake2b_ref
# directory of the c file
export SRC_DIR := src/


# paths to tools
export LLVM := /home/user/repos/llvm9/llvm-project/build/bin/
#export LLVM := llvm-project/build/bin
#export LLVM := 
export WABT_DIR := wabt/build/
export BINARYEN_DIR := binaryen/build/bin/
export SCOUT_DIR := scout/target/release/


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

binaryen-install:
	git clone https://github.com/WebAssembly/binaryen.git
	cd binaryen; mkdir build
	cd binaryen/build; cmake ..
	cd binaryen/build; make -j4

scout-install:
	git clone https://github.com/ewasm/scout.git
	cd scout; make

llvm-install:
	# WARNING: should do this manually. Downloads a lot, requires a lot of system resources, and takes a long time. Might require restarting with `make` again if compilation has an error.
	git clone https://github.com/llvm/llvm-project.git
	cd llvm-project; mkdir build
	cd llvm-project/build; cmake -G 'Unix Makefiles' -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;lld" ../llvm
	cd llvm-project/build; make -j4

install: wabt-install binaryen-install scout-install
	#WARNING: this does not include llvm-install because this should be done manually

wabt-check:
ifeq (, $(shell which $(WABT_DIR)/wasm2wat))
	$(error "ERROR: Could not find wabt with wasm2wat, install it yourself and adjust path WABT_DIR in this makefile, or just install it with `make wabt-install`, and try again.")
endif

binaryen-check:
ifeq (, $(shell which $(BINARYEN_DIR)wasm-dis))
	$(error "ERROR: Could not find binaryen with wasm-dis, install it yourself and adjust path BINARYEN_DIR in this makefile, or just install it with `make binaryen-install`, and try again.")
endif

scout-check:
ifeq (, $(shell which $(SCOUT_DIR)phase2-scout))
	$(error "ERROR: Could not find scout with phase2-scout, install it yourself and adjust path SCOUT_DIR in this makefile, or just install it with `make scout-install`, and try again.")
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



test: scout-check
	cd wasm; ../${SCOUT_DIR}phase2-scout ../tests/helloworld.yaml



# Build, convert, optimize
project:
	# compile
	$(LLVM)clang -cc1 ${OPTIMIZATION_CLANG} -emit-llvm -triple=wasm32-unknown-unknown-wasm ${SRC_DIR}${PROJECT}.c -o ${PROJECT}.ll
	$(LLVM)opt ${OPTIMIZATION_OPT} ${PROJECT}.ll -o ${PROJECT}.ll
	$(LLVM)llc ${OPTIMIZATION_LLC} -filetype=obj ${PROJECT}.ll -o ${PROJECT}.o
	$(LLVM)wasm-ld ${PROJECT}.o -o ${PROJECT}.wasm --no-entry -allow-undefined-file=src/ewasm.syms -export=_main #--stack-first -z stack-size=10000
	# done compiling, optimize with Wasm-specific optimizer
	$(BINARYEN_DIR)wasm-opt ${OPTIMIZATION_BINARYEN} ${PROJECT}.wasm -o ${PROJECT}.wasm -g #-g keeps function names
	# hack so that we export "main" instead of "_main"
	$(WABT_DIR)wasm2wat ${PROJECT}.wasm > ${PROJECT}.wat
	sed -i -e 's/(export "_main" (func $$_main))/(export "main" (func $$_main))/g' ${PROJECT}.wat
	$(WABT_DIR)wat2wasm ${PROJECT}.wat > ${PROJECT}.wasm
	# save files
	mv $(PROJECT).wasm wasm/$(PROJECT).wasm
	mv $(PROJECT).wat wat/$(PROJECT).wat
	# remove intermediate files
	rm -f $(PROJECT).ll $(PROJECT).o


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



helloworld: src/helloworld.c
	make project PROJECT=helloworld \
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



sha256: sha256_bcon sha256_nacl sha256_rhash

sha256_bcon: src/sha256_bcon.c
	make project PROJECT=sha256_bcon \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
        OPTIMIZATION_BINARYEN=-O3

sha256_mbedtls: src/sha256_mbedtls.c
	make project PROJECT=sha256_mbedtls\
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

sha256_trezor: src/sha256_trezor.c
	make project PROJECT=sha256_trezor \
        OPTIMIZATION_CLANG=-O3 \
        OPTIMIZATION_OPT=-O3 \
        OPTIMIZATION_LLC=-O3 \
        OPTIMIZATION_BINARYEN=-O3


all: blake2b helloworld keccak256_rhash sha256 


clean:
	rm -f *.ll *.o *.wasm *.wat



.PHONY: default all clean


