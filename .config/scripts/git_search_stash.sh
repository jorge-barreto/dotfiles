#!/bin/bash

if [ $# -ne 1 ] ; then
  printf "search-stash usage: exactly one search term must be passed in as an argument.\n";
  exit 1;
fi

STASH_COUNT=`git rev-list --walk-reflogs --count --skip 1 refs/stash`;

for n in `seq ${STASH_COUNT}`
do
  RESULT=$(git stash show -p stash@{${n}} | grep "$1")
  if [ -n "${RESULT}" ] ; then
    echo "${RESULT}"$'\nFound in stash: '${n}$'.\n---\n';
  fi
done;

printf "done\n";
