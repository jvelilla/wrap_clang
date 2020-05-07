#!/bin/sh
# Pre processing script
#Delete generated code
echo Removing generated code.
rm Index_cpp.h
rm -r generated_wrapper
cd C/
rm -r spec
