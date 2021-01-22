#!/bin/bash

if [ $# -ne 1 ] ; then
  echo 'explain usage: exactly one search term must be passed in as an argument.';
  exit 1;
fi


EXPLAIN=`git config --list | grep alias."$1"=`;

if [ -z "$EXPLAIN" ] ; then
  echo $'Alias not found: '$1;
  exit 1;
fi

echo "$EXPLAIN";
