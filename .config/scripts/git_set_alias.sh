#!/bin/bash

if [ $# -ne 2 ] ; then
  echo 'set usage: exactly two terms must be passed in as arguments.';
  exit 1;
fi

git config --global alias."$1" "$2" && git explain $1 || echo "Alias not set.";
