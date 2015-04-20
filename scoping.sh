#!/bin/bash

foo() {

  local blah="bar"
  echo $blah
  local blah="bar2"
  echo $blah

  if [ 0 -ne 1 ]; then
    local stuff="nothing"
  fi

  echo "stuff: ${stuff}"
}

echo "blah: $blah"
foo
