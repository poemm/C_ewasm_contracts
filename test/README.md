

This test framework is source language agnostic -- works for Ewasm contracts written in any source language. This is how the C-based contracts were tested, and the Makefile has hard-coded recipes for the C-based contracts.


Install test framework.
```
# Install all dependencies.
# (these commands will download and install everything locally to this directory.
make install

# Or install dependencies individually as follows.
make testeth-install
make hera-install
make tests-install
mkae lllc-install

# One can also install these elsewhere copying the recipe in the Makefile and hard-code paths in the Makefile or as arguments to make.
```

Use test framework.
```
# some tests with hard-coded recipes in the Makefile
make blake2b	# tests all versions of blake2b, see the Makefile for the recipe.
make wrc20_C	# tests wrc20.wasm from C source, see the Makefile for the recipe.

# Test a custom wasm blob with custom paths and tools.
cp path/to/custom/blob.wasm .
make PROJECT=blob TEST_VECTORS=path/to/blob_vectors.dat TESTETH_DIR=path/to/aleth/

# Currently, the tests from wrc20 are done differently, but wrc20 testing will eventually be unified with the above
cp path/to/custom/wrc20blob.wasm .
make fill_wrc20 PROJECT=wrc20blob         WRC20_FOOTER=wrc20_tester/footer2.txt
# where footer2.txt was chosen because it has storage encoding which correspond to the way wrc20blob stores things.
```


This directory has the following files and subdirectories.
```
Makefile	All interaction can be done through here.
fillers/	yml files used by testeth to fill tests
filled/		json files filled by testeth from fillers
scripts/	helper scripts used by the Makefile
test_vectors/	lists of inputs/outputs, used for generating fillers
wrc20_tester/	test filler generator specific to wrc20

```

DETAILS AND WARNING: This test framework uses testeth and hera. The author of this repository often struggles with testeth and hera. Debugging Ewasm contracts may be difficlut using these tools unless one is familiar with them. A better Ewasm testing/debugging framework is needed. Some details about testeth follow. In testeth, to "fill" a test means to convert it from a <name>Filler.yml to <name>.json. We use a script to generate <name>Filler.yml for a given wasm blob and test vectors. The act of filling also performs the test, so filling may be sufficient for testing. If you also wish to run a filled .json test, see the Makefile recipe called `test`.

BONUS: We have experimental support for benchmarks, see the Makefile. But our tools are not optimized for speed. See the Makefile recipe for test.

