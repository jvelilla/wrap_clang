# wrap_clang
`wrap_clang` is an Eiffel binding of [Clang-C API](https://clang.llvm.org/) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

## Requirements 


*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Clang C API](https://clang.llvm.org/).
LibClang is a stable high level C interface to clang.
https://clang.llvm.org/docs/index.html#using-clang-as-a-library

## Download and  Install

### Linux

	ckpg install llvm[clang]

### Windows
Get the pre-built LLVM/clang binaries on Zig's github page:https://github.com/ziglang/zig/wiki/Building-Zig-on-Windows
or using vckpg 

	vckpg install llvm[clang]:x64-windows

## Status

Work in progress


## Examples

* [Clang example Parser](examples/01_example)    	`Shows how to use the Clang Parser API`.
* [Clang example Tokenizer](examples/02_example)  	`Shows how to use create a Tokenizer with Clang API`.
* [Clang example AST visitor](examples/03_example)  `Shows an AST Vistor example with Clang API.`.

### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	`library/generated_wrapper/c/src` 

and run

	`finish_freezing --library`

It will copy the C lib `eif_libclang.a` or `eif_libclang.lib` under the library root `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`

