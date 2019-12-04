This repository has some Ewasm contracts written in C. The `src` directory has source code for contracts. The `wasm` and `wat` directories have output .wasm and .wat files. The `tests` directory contains scout yaml files. The `old_ewasm_1_stuff` directory contains old things which have not yet been ported to scout.

Dependencies are executables: wabt (`wasm2wat`, `wat2wasm`), binaryen (`wasm-opt`), llvm8+ (`clang`, `opt`, `llc`, `wasm-ld`), and scout (`phase2-scout`). To download and compile these locally into this directory, do as follows.

```
make scout-install
make wabt-install
make binaryen-install
make llvm-install	# warning: big download, long compilation time, may crash and need to be restarted, better to do this manually by copy/pasting from Makefile.
```

Once dependencies are available, update paths in Makefile variables `LLVM_DIR`, `WABT_DIR`, `BINARYEN_DIR`, and `SCOUT_DIR`. Or just keep those variables empty and update `$PATH` to the directories with the above executables. Or pass those paths as arguments to `make`.

```
# compile blake2b reference implementation to Wasm
make blake2b_ref

# same as above, but with custom paths to tools, if you don't want to set paths in Makefile
make blake2b_ref WABT_DIR=wabt/build/ BINARYAN_DIR=binaryen/build/bin/ LLVM_DIR=llvm-project/build/bin

# compile a custom my_contract.c
make PROJECT=my_contract SRC_DIR=path/to/my_contract/src/dir/

# run a test in scout, assuming scout is installed to the location using above: make scout-install
cd wasm
../scout/target/release/phase2-scout ../tests/helloworld.yaml
```

WARNING: Ewasm is not yet finalized. This toolchain is changing. There are experiments in the src directory.


NOTE ABOUT C++: Basic things like `std::vector` require memory managment, which most standard C++ libraries implement as system calls. Ewasm doesn't support system calls, so memory management must be done in Wasm. So far, a custom `malloc()` is in `ewasm.h`, but other things are still needed before we can try to compile against C++ standard library without requiring system calls. Anyway, `std::vector` may be expensive to use on-chain.
