# wrap_clang
`wrap_clang` is an Eiffel binding of [Clang-C API](https://clang.llvm.org/) 
using [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.

## Requirements 


*  [WrapC](https://github.com/eiffel-wrap-c/WrapC) tool.
*  [Clang C API](https://clang.llvm.org/).
Quirc is a C library for scanning QR codes.

## Download and  Install

### Linux


### Windows
Get the pre-built LLVM/clang binaries on Zig's github page:https://github.com/ziglang/zig/wiki/Building-Zig-on-Windows


## Status

Work in progress


## Examples

### How to compile the C library glue code.

Before to use the examples you will need to compile the C glue code, go to 

	`library/generated_wrapper/c/src` 

and run

	`finish_freezing --library`

It will copy the C lib `eif_libclang.a` or `eif_libclang.lib` under the library root `$ECF_CONFIG_PATH/C/spec/$(ISE_PLATFORM)/lib/`

