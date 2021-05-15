#!/usr/bin/env bash
shopt -s globstar
if (( $# > 0 )); then
    printf "formatting file(s) $*"
    echo
    clang-format -i -style=file "$@"
    echo done.
    exit
fi
echo formatting...
clang-format -i -style=file --verbose src/*.c # src
clang-format -i -style=file --verbose src/data/*.h # src/data/
clang-format -i -style=file --verbose src/data/*/*.h # src/data/*/
clang-format -i -style=file --verbose gflib/*.c # gflib
echo done.
