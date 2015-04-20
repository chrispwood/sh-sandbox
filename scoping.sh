#!/bin/bash

foo() {

  echo "local vars can be redefined without penalty:"
  local blah="bar"
  echo "initial blah: $blah"
  local blah="bar2"
  echo "redefined blah: $blah"

  if [ 0 -ne 1 ]; then
    local fn_scoping="nothing"
  fi

  echo "local vars are scoped to the calling function: ${fn_scoping}"
}

foo
echo "note that local vars aren't accessible outside of their " \
     "functional scope. Blah is $blah"
