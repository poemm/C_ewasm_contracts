
This repository has some Ewasm contracts written in C.

Get dependencies.
```
# hopefully you have llvm 8+, check:
clang --version
# if not, the following command will install it, but you should do this manually compilation may take several restarts. Just copy the Makefile recipe or see LLVM getting started website.
make llvm-install
# Note: LLVM versions 8+ support Wasm by default. Earlier versions must be compiled with experimental wasm flag, and have different linker which we do not support.

# install everything else
make install
# or install things individually
make wabt-install
make binaryen-install
make pywebassembly-install

# you can also install things anywhere in your system, and update paths in the Makefile or as arguments
```



Compile stuff.

```
# compile contracts in src/
make all

# compile individual project with a recipe in the Makefile
make blake2b_ref

# compile arbitrary my_contract.c
make PROJECT=my_contract SRC_DIR=path/to/my_contract/src/dir

# compile with custom tool directories
make WABT_DIR=path/to/wabt/build/ LLVM_DIR=path/to/llvm/binaries/ PROJECT=mul256

# clean up
make clean

```

WARNING: Ewasm is not yet finalized. This toolchain is changing. There are experiments in the src directory.

NOTE ABOUT C++: Basic things like `std::vector` require memory managment, which most standard C++ libraries implement as system calls. Ewasm doesn't support system calls, so memory management must be done in Wasm. So far, a custom `malloc()` is in `ewasm.h`, but other things are still needed before we can try to compile against C++ standard library without requiring system calls.
