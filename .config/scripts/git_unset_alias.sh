#!/bin/bash

if [ $# -ne 1 ] ; then
  echo 'unset usage: exactly one term must be passed in as an argument.';
  exit 1;
fi

git config --global --unset alias."$1";