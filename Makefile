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

#
# Dependencies: llvm8+, wabt, binaryen, pywebassembly. Can install locally with `make install`.
#
# To compile an individual file.
#   make project PROJECT=blake2b_ref
#
# To compile all files.
#   make all
#
# To use custom dependencies, change the paths below, or use command line args.
#   make project WABT_DIR=/home/user/wabt/build/ PYWEBASSEMBLY_DIR=/home/user/pywebassembly/ PROJECT=mul256
#
# To clean up.
#   make clean
#
# If you have errors with compiling, your llvm may not support wasm.
# LLVM version 8+ support Wasm by default. Earlier versions must be compiled with experimental wasm flag, and have different linker.
#
# This file uses bash commands, which I think is the default on many *nix OSs.
#


# the c file in src/ to compile, without the ".c", can also pass as command line argument
export PROJECT := sha1_rhash

# paths to tools
export LLVM := /home/user/repos/llvm9/llvm-project/build/bin/
#export LLVM := llvm-project/build/bin
export WABT_DIR := wabt/build/
export PYWEBASSEMBLY_DIR := pywebassembly/
export BINARYEN_DIR := binaryen/build/bin/

export OPTIMIZATION_CLANG := -O0	#-Oz, -Os, -O0, -O1, -O2, or -O3
export OPTIMIZATION_OPT := -O0		#-Oz, -Os, -O0, -O1, -O2, or -O3
export OPTIMIZATION_LLC := -O0		#          -O0, -O1, -O2, or -O3
export OPTIMIZATION_BINARYEN := -O0	#-Oz, -Os, -O0, -O1, -O2, or -O3



default: all


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

pywebassembly-install:
	git clone https://github.com/poemm/pywebassembly.git

llvm-install:
	git clone https://github.com/llvm/llvm-project.git
	cd llvm-project; mkdir build
	cd llvm-project/build; cmake -G 'Unix Makefiles' -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;lld" ../llvm
	cd llvm-project/build; make -j4

install: wabt-install binaryen-install pywebassembly-install
	#WARNING: this does not include llvm-install because this should be done manually

wasm2wat-check:
ifeq (, $(shell which $(WABT_DIR)/wasm2wat))
	$(error "ERROR: Could not find wabt with wasm2wat, install it yourself and adjust path WABT_DIR in this makefile, or just install it with `make wabt-install`, and try again.")
endif

wasm-dis-check:
ifeq (, $(shell which $(BINARYEN_DIR)wasm-dis))
	$(error "ERROR: Could not find binaryen with wasm-dis, install it yourself and adjust path BINARYEN_DIR in this makefile, or just install it with `make binaryen-install`, and try again.")
endif

ewasmify-check:
ifeq (, $(shell if [ -e $(PYWEBASSEMBLY_DIR)examples/ewasmify.py ] ; then echo blah ; fi;))
	$(error "ERROR: Could not find ewasmify.py, install it yourself and adjust path EWASMIFY_DIR in this makefile, or just install it with make pywebassembly-install, and try again.")) 
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




# Use llvm to compile .c to .wasm.
compile: llvm-check
	$(LLVM)clang -cc1 ${OPTIMIZATION_CLANG} -emit-llvm -triple=wasm32-unknown-unknown-wasm src/${PROJECT}.c -o ${PROJECT}.ll
	$(LLVM)opt ${OPTIMIZATION_OPT} ${PROJECT}.ll -o ${PROJECT}.ll
	$(LLVM)llc ${OPTIMIZATION_LLC} -filetype=obj ${PROJECT}.ll -o ${PROJECT}.o
	$(LLVM)wasm-ld ${PROJECT}.o -o ${PROJECT}.wasm --no-entry -allow-undefined-file=src/ewasm.syms -export=_main

# Convert the binary format .wasm to equivalent text format .wat
wasm2wat: wasm2wat-check
	$(WABT_DIR)wasm2wat ${PROJECT}.wasm > ${PROJECT}.wat

# Convert the binary format .wasm to equivalent text format .wat
wasm-dis: wasm-dis-check
	$(BINARYEN_DIR)wasm-dis ${PROJECT}.wasm > ${PROJECT}.wat

# postprocess imports/exports and size reductions
ewasmify: ewasmify-check wasm2wat-check wasm-dis-check
	PYTHONPATH="$(PYTHONPATH):$(PYWEBASSEMBLY_DIR)" python3 $(PYWEBASSEMBLY_DIR)examples/ewasmify.py $(PROJECT).wasm
	$(WABT_DIR)wasm2wat $(PROJECT)_ewasmified.wasm > $(PROJECT)_ewasmified.wat
	$(BINARYEN_DIR)wasm-opt ${OPTIMIZATION_BINARYEN} $(PROJECT)_ewasmified.wasm -o $(PROJECT)_ewasmified.wasm



# Build a single project.
project: compile wasm2wat ewasmify
	cp $(PROJECT)_ewasmified.wasm wasm/$(PROJECT).wasm
	cp $(PROJECT)_ewasmified.wat wat/$(PROJECT).wat


# build individual projects
wasm/blake2b_floodyberry.wasm: src/blake2b_floodyberry.c
	make project PROJECT=blake2b_floodyberry \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/blake2b_mjosref.wasm: src/blake2b_mjosref.c
	make project PROJECT=blake2b_mjosref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# funny enough, these speed optimization flags produced the smallest wasm, there were some ties

wasm/blake2b_openssl.wasm: src/blake2b_openssl.c
	make project PROJECT=blake2b_openssl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/blake2b_ref.wasm: src/blake2b_ref.c
	make project PROJECT=blake2b_ref \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/blake2b_ref_small.wasm: src/blake2b_ref_small.c
	make project PROJECT=blake2b_ref_small \
	OPTIMIZATION_CLANG=-Os \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties

wasm/ed25519verify_tweetnacl.wasm: src/ed25519verify_tweetnacl.c
	make project PROJECT=ed25519verify_tweetnacl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/keccak256_rhash.wasm: src/keccak256_rhash.c
	make project PROJECT=keccak256_rhash \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/mul256.wasm: src/mul256.c
	make project PROJECT=mul256 \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/polynomial_evaluation_32bit.wasm: src/polynomial_evaluation_32bit.c
	make project PROJECT=polynomial_evaluation_32bit \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/sha1_bcon.wasm: src/sha1_bcon.c
	make project PROJECT=sha1_bcon \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/sha1_bcon_small.wasm: src/sha1_bcon_small.c
	make project PROJECT=sha1_bcon_small \
	OPTIMIZATION_CLANG=-Oz \
	OPTIMIZATION_OPT=-O1 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties

wasm/sha1_rhash.wasm: src/sha1_rhash.c
	make project PROJECT=sha1_rhash \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/sha1_rhash_small.wasm: src/sha1_rhash_small.c
	make project PROJECT=sha1_rhash_small \
	OPTIMIZATION_CLANG=-Oz \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-Oz
	# these optimization flags produced the smallest wasm, there were some ties

wasm/sha256_bcon.wasm: src/sha256_bcon.c
	make project PROJECT=sha256_bcon \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/sha256_nacl.wasm: src/sha256_nacl.c
	make project PROJECT=sha256_nacl \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/sha256_rhash.wasm: src/sha256_rhash.c
	make project PROJECT=sha256_rhash \
	OPTIMIZATION_CLANG=-O3 \
	OPTIMIZATION_OPT=-O3 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3

wasm/wrc20.wasm: src/wrc20.c
	make project PROJECT=wrc20 \
	OPTIMIZATION_CLANG=-O1 \
	OPTIMIZATION_OPT=-O1 \
	OPTIMIZATION_LLC=-O3 \
	OPTIMIZATION_BINARYEN=-O3
	# these optimization flags produced the smallest wasm, there were some ties


all: wasm/blake2b_floodyberry.wasm wasm/blake2b_mjosref.wasm wasm/blake2b_openssl.wasm wasm/blake2b_ref.wasm wasm/blake2b_ref_small.wasm wasm/ed25519verify_tweetnacl.wasm wasm/keccak256_rhash.wasm wasm/mul256.wasm wasm/polynomial_evaluation_32bit.wasm wasm/sha1_bcon.wasm wasm/sha1_bcon_small.wasm wasm/sha1_rhash.wasm wasm/sha1_rhash_small.wasm wasm/sha256_bcon.wasm wasm/sha256_nacl.wasm wasm/sha256_rhash.wasm wasm/wrc20.wasm



# Compile all c files to wasm, recursively calling make. Use this to recomple everything.
all_force:
	for f in $(shell  cd src; find *.c | sed 's/\.c//g'); do echo $$f; make project PROJECT=$$f ; done;


clean:
	rm -f *.ll *.o *.wasm *.wat


.PHONY: default buildproject buildall wabt ewasmify all clean ewasmify-check


