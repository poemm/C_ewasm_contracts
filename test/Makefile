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
# In testeth, to "fill" a test means to convert it from a <name>Filler.yml to <name>.json.
# We use a script to generate <name>Filler.yml for a given wasm blob and test vectors.
# The act of filling also performs the test, so filling may be sufficient for testing.
# If you also wish to run a filled .json test on several computers and clients, then e.g.
#    make test PROJECT=blake2b_ref
# 
# We have experimental support for benchmarks, see below. But our tools are not optimized for speed.
#


# paths to tools
export HERA_DIR := hera/
export TESTETH_DIR := aleth/
export TESTS_DIR := tests/
export LLLC_DIR := ./lllc/
PATH := $(LLLC_DIR):$(PATH)

# where .wasm files live, wrc20 is separate
export WASM_DIR := ../wasm/
export WRC20WASM_DIR := wrc20_tester/

# global variable used to specify what is the test is filled with
export PROJECT := blake2b_ref
export TESTS_VECTOR := test_vectors/blake2.dat

# when executing benchmark, can choose engine
export ENGINE := wabt

# helper
export OS_NAME := $(shell uname -s | tr '[:upper:]' '[:lower:]')



default: fill


# dependencies checks and installation

install: hera-install aleth-install tests-install lllc-install

hera-install:
	git clone https://github.com/ewasm/hera.git $(HERA_DIR)
	#cd $(HERA_DIR); git reset --hard ef469a2bb71c73d8c25e2393fb8dd041177cf5aa
	cd $(HERA_DIR);	git submodule update --init
	cd $(HERA_DIR); mkdir build
	cd $(HERA_DIR)build; cmake -DBUILD_SHARED_LIBS=ON -DHERA_DEBUGGING=ON -DHERA_BINARYEN=ON -DHERA_WABT=ON -DHERA_WAVM=ON ..
	# if this fails, might need dependency: sudo apt-get install zlib1g-dev
	# Note: For compatibility, Hera compiles its own versions of wabt, binaryen, and wavm, it is easier this way.
	cd $(HERA_DIR)build; make -j4

testeth-install:
	# we get aleth instead of testeth because aleth includes testeth and is maintained closer to ewasm stuff
	# compiling aleth takes long and bloats your system, so we just downalod binaries
	mkdir $(TESTETH_DIR)
	# this step gets your OS name, either linux or darwin, and downloads a specific version of aleth
	# this next step may fail, so visit https://github.com/ethereum/aleth/releases/ and copy the tarball url for your system (linux or darwin)
	cd $(TESTETH_DIR); wget https://github.com/ethereum/aleth/releases/download/v1.6.0/aleth-1.6.0-$(OS_NAME)-x86_64.tar.gz
	cd $(TESTETH_DIR); tar -xvzf *.tar.gz

tests-install:
	#git clone https://github.com/ewasm/tests.git $(TEST_DIR)
	# above is >100 MB to download, instead just create directories
	mkdir -p $(TEST_DIR)GeneralStateTests/stEWASMTests
	mkdir -p $(TEST_DIR)src/GeneralStateTestsFiller/stEWASMTests

lllc-install:
	# fill dependency of testeth with dummy lllc
	mkdir lllc
	cd lllc; printf '#!/usr/bin/env bash\necho 1' > lllc
	cd lllc; chmod +x lllc



# check if tools are installed

testeth-check:
ifeq (, $(shell which $(TESTETH_DIR)/bin/testeth))
	$(error "ERROR: Could not find testeth, install it yourself and adjust path TESTETH_DIR in this makefile, or just install it with `make testeth-install`, and try again.")
endif

hera-check:
ifeq (, $(shell if [ -e $(HERA_DIR)build/src/libhera.so ] ; then echo blah ; fi;))
	$(error "ERROR: Could not find hera, install it yourself and adjust path HERA_DIR in this makefile, or just install it with make hera-install, and try again.")) 
endif

tests-check:
ifeq (, $(shell if [ -d $(TESTS_DIR) ] ; then echo blah ; fi;))
	$(error "ERROR: Could not find ewasm tests directory, install it yourself and adjust path TESTS_DIR in this makefile, or just install it with `make tests-install`, and try again.")
endif

lllc-check:
ifeq (, $(shell $(LLLC_DIR)lllc --version))
	$(error "ERROR: Could not find lllc, install it yourself and adjust path LLLC_DIR in this makefile, or just install it with `make lllc-install`, and try again.")
endif



# given a wasm blob and a list of test vectors, generate a yml filler and use it to fill a json test
fill: testeth-check hera-check tests-check lllc-check
	@echo ""
	@echo ""
	@echo ""
	#FILLING TEST $(PROJECT)
	$(shell echo "")
ifeq (, $(shell if [ -e $(WASM_DIR)/$(PROJECT).wasm ] ; then echo blah ; fi;))
	$(error "ERROR: Could not find $(WASM_DIR)$(PROJECT).wasm.")) 
endif
	${HERA_DIR}build/deps/bin/wasm-dis $(WASM_DIR)$(PROJECT).wasm > $(PROJECT).wat
	python3 scripts/ewasm_filler_generator.py $(PROJECT) $(PROJECT).wat $(TEST_VECTORS)
	cp $(PROJECT)Filler.yml $(TESTS_DIR)src/GeneralStateTestsFiller/stEWASMTests/
	ETHEREUM_TEST_PATH=$(TESTS_DIR) $(TESTETH_DIR)bin/testeth -t GeneralStateTests/stEWASMTests -- --filltests --vm $(HERA_DIR)build/src/libhera.so --evmc engine=wabt benchmark=true --singlenet "Byzantium" --singletest $(PROJECT)
	cp $(TESTS_DIR)src/GeneralStateTestsFiller/stEWASMTests/$(PROJECT)Filler.yml fillers/
	rm $(TESTS_DIR)src/GeneralStateTestsFiller/stEWASMTests/$(PROJECT)Filler.yml
	cp $(TESTS_DIR)GeneralStateTests/stEWASMTests/$(PROJECT).json filled/
	rm $(TESTS_DIR)GeneralStateTests/stEWASMTests/$(PROJECT).json

# wrc20 is similar, but slightly different
fill_wrc20: testeth-check hera-check tests-check lllc-check
	@echo ""
	@echo ""
	@echo ""
	#FILLING TEST $(PROJECT)
ifeq (, $(shell if [ -e $(PROJECT).wasm ] ; then echo blah ; fi;))
	$(error "ERROR: Could not find $(PROJECT).wasm.")) 
endif
	${HERA_DIR}build/deps/bin/wasm-dis $(PROJECT).wasm > $(PROJECT).wat
	python3 scripts/ewasm_filler_generator.py $(PROJECT) $(PROJECT).wat $(WRC20_FOOTER)
	python3 wrc20_tester/generate_wrc20_filler.py $(PROJECT).wat wrc20_tester/header.txt $(WRC20_FOOTER)
	cp $(PROJECT)Filler.yml $(TESTS_DIR)src/GeneralStateTestsFiller/stEWASMTests/
	ETHEREUM_TEST_PATH=$(TESTS_DIR) $(TESTETH_DIR)bin/testeth -t GeneralStateTests/stEWASMTests -- --filltests --vm $(HERA_DIR)build/src/libhera.so --evmc engine=wabt benchmark=true --singlenet "Byzantium" --singletest $(PROJECT)
	cp $(TESTS_DIR)src/GeneralStateTestsFiller/stEWASMTests/$(PROJECT)Filler.yml fillers/
	rm $(TESTS_DIR)src/GeneralStateTestsFiller/stEWASMTests/$(PROJECT)Filler.yml
	cp $(TESTS_DIR)GeneralStateTests/stEWASMTests/$(PROJECT).json filled/
	rm $(TESTS_DIR)GeneralStateTests/stEWASMTests/$(PROJECT).json

# filling may be enough, but this is useful if you have filled json tests and just want to test it.
# also, this does experimental benchmarking collection, but Hera may not be the fastest yet.
test: testeth-check hera-check tests-check lllc-check
	@echo ""
	@echo ""
	@echo ""
	#TESTING $(PROJECT)
	printf "\n\nBENCHMARKING %s in %s\n" $(PROJECT) $(ENGINE)
	cp filled/$(PROJECT) $(TESTS_DIR)GeneralStateTests/stEWASMTests/
	ETHEREUM_TEST_PATH=$(TESTS_DIR) $(TESTETH_DIR)bin/testeth -t GeneralStateTests/stEWASMTests -- --vm $(HERA_DIR)build/src/libhera.so --evmc engine=$(ENGINE) benchmark=true --singlenet "Byzantium" --singletest $(PROJECT)
	# python script takes runtimes and appends them to runtimes.txt
	python3 scripts/benchmark_log_scraper.py hera_benchmarks.log $(ENGINE) $(PROJECT) benchmark.txt
	rm hera_benchmarks.log



# hard-coded recipes to make things easier

blake2b: blake2b_floodyberry blake2b_mjosref blake2b_openssl blake2b_ref blake2b_ref_small

blake2b_floodyberry:
	make fill PROJECT=blake2b_floodyberry	TEST_VECTORS=test_vectors/blake2.dat	WASM_DIR=../wasm/

blake2b_mjosref:
	make fill PROJECT=blake2b_mjosref	TEST_VECTORS=test_vectors/blake2.dat	WASM_DIR=../wasm/

blake2b_openssl:
	make fill PROJECT=blake2b_openssl	TEST_VECTORS=test_vectors/blake2.dat	WASM_DIR=../wasm/

blake2b_ref:
	make fill PROJECT=blake2b_ref		TEST_VECTORS=test_vectors/blake2.dat	WASM_DIR=../wasm/

blake2b_ref_small:
	make fill PROJECT=blake2b_ref_small	TEST_VECTORS=test_vectors/blake2.dat	WASM_DIR=../wasm/

keccak256_rhash:
	make fill PROJECT=keccak256_rhash	TEST_VECTORS=test_vectors/keccak256.dat	WASM_DIR=../wasm/

mul256:
	make fill PROJECT=mul256	TEST_VECTORS=test_vectors/mul256.dat	WASM_DIR=../wasm/

sha1: sha1_bcon sha1_bcon_small sha1_ref sha1_rhash sha1_rhash_small

sha1_bcon:
	make fill PROJECT=sha1_bcon	TEST_VECTORS=test_vectors/sha1.dat	WASM_DIR=../wasm/

sha1_bcon_small:
	make fill PROJECT=sha1_bcon_small	TEST_VECTORS=test_vectors/sha1.dat	WASM_DIR=../wasm/

sha1_ref:
	make fill PROJECT=sha1_ref	TEST_VECTORS=test_vectors/sha1.dat	WASM_DIR=../wasm/

sha1_rhash:
	make fill PROJECT=sha1_rhash	TEST_VECTORS=test_vectors/sha1.dat	WASM_DIR=../wasm/

sha1_rhash_small:
	make fill PROJECT=sha1_rhash_small	TEST_VECTORS=test_vectors/sha1.dat	WASM_DIR=../wasm/

sha256: sha256_nacl sha256_bcon sha256_rhash

sha256_nacl:
	make fill PROJECT=sha256_nacl	TEST_VECTORS=test_vectors/sha256.dat	WASM_DIR=../wasm/

sha256_bcon:
	make fill PROJECT=sha256_bcon	TEST_VECTORS=test_vectors/sha256.dat	WASM_DIR=../wasm/

sha256_rhash:
	make fill PROJECT=sha256_rhash	TEST_VECTORS=test_vectors/sha256.dat	WASM_DIR=../wasm/

polynomial_evaluation_32bit:
	make fill PROJECT=polynomial_evaluation_32bit	TEST_VECTORS=test_vectors/polynomial_evaluation_32bit.dat	WASM_DIR=../wasm/

wrc20: wrc20_C wrc20_handwritten

wrc20_C:
	cp $(WASM_DIR)wrc20.wasm wrc20_C.wasm
	make fill_wrc20 PROJECT=wrc20_C		WRC20_FOOTER=wrc20_tester/footer2.txt

wrc20_handwritten:
	cp wrc20_handwritten_contracts/*.wasm .
	make fill_wrc20 PROJECT=wrc20_handwritten_fast_transfer		WRC20_FOOTER=wrc20_tester/footer3.txt
	make fill_wrc20 PROJECT=wrc20_handwritten_fast_get_balance	WRC20_FOOTER=wrc20_tester/footer1.txt

fill_all: blake2b keccak256_rhash mul256 sha1 sha256 polynomial_evaluation_32_bit wrc20






clean:
	rm -f *.wasm *.wat *.yml *.log


.PHONY: default install clean

