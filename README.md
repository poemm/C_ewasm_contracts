This repository has some Ewasm contracts written in C. 

 * `src` directory has source code for contracts. 
 * `wasm` and `wat` directories have output .wasm and .wat files.
 * `tests` directory contains scout yaml files.
 * `old_ewasm_1_stuff` directory contains old things which have not yet been ported to scout.

# Dependencies

Dependencies are executables: wabt (`wasm2wat`, `wat2wasm`), binaryen (`wasm-opt`), llvm8+ (`clang`, `opt`, `llc`, `wasm-ld`), and optionally scout (`scout`). If you don't have any of these, download and compile these locally into this directory as follows, or just copy that recipe from the Makefile.

Wabt
```
git clone https://github.com/webassembly/wabt.git
cd wabt; mkdir wabt/build; cd wabt/build
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF ..
make -j4
cd ../..
```

Binaryen
```
git clone https://github.com/WebAssembly/binaryen.git
cd binaryen; mkdir build; cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4
cd ../..
```

LLVM
```
git clone https://github.com/llvm/llvm-project.git	# big download
cd llvm-project; mkdir build; cd build
cmake -G 'Unix Makefiles' -DLLVM_ENABLE_PROJECTS="clang;libcxx;libcxxabi;lld" ../llvm
make -j4	# warning: long compilation time, need lots of ram and disk, may crash and need to be restarted
```

LLVM builtins -- Needed for things like `__multi3()` which do multiplciation of two 64-bit integers to a 128-bit integer.
```
wget https://github.com/CraneStation/wasi-sdk/releases/download/wasi-sdk-5/libclang_rt.builtins-wasm32-wasi-5.0.tar.gz
tar -xvzf libclang_rt.builtins-wasm32-wasi-5.0.tar.gz
```

Scout (optional)
```
git clone https://github.com/poemm/scout.cpp.git
cd scout.c; mkdir build; cd build
cmake ..
make
cd ../..
cp scout.cpp/build/scout.exec .
```

# Compile src to Wasm

Update paths to dependencies in Makefile variables `LLVM_DIR`, `WABT_DIR`, `BINARYEN_DIR`, and `SCOUT_DIR`. Or just keep those variables empty and update `$PATH` to the directories with the above executables. Or pass those paths as arguments to `make`.

```
# compile blake2b reference implementation to Wasm
make blake2b_ref

# same as above, but with custom paths to tools, if you don't want to set paths in Makefile
make blake2b_ref WABT_DIR=wabt/build/ BINARYAN_DIR=binaryen/build/bin/ LLVM_DIR=llvm-project/build/bin/

# compile a custom my_contract.c
make PROJECT=my_contract SRC_DIR=path/to/my_contract/src/dir/

# run a test in scout, assuming scout is installed to the location using above: make scoutcpp-install
cd wasm
../scout.exec ../tests/helloworld.yaml
cd ..
```

# Some notes

WARNING: Ewasm is not yet finalized. This toolchain is changing. There are experiments in the src directory.

NOTE ABOUT C++: Basic things like `std::vector` require memory managment, which most standard C++ libraries implement as system calls. Ewasm doesn't support system calls, so memory management must be done in Wasm. So far, a custom `malloc()` is in `ewasm.h`, but other things are still needed before we can try to compile against C++ standard library without requiring system calls. Anyway, `std::vector` may be expensive to use on-chain.
