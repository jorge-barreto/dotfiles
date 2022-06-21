#!/usr/bin/env bash

# find directory where this install file is
SOURCE="${BASH_SOURCE[0]:-$0}";
while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname -- "$SOURCE"; )" &> /dev/null && pwd 2> /dev/null; )";
  SOURCE="$( readlink -- "$SOURCE"; )";
  [[ $SOURCE != /* ]] && SOURCE="${DIR}/${SOURCE}"; # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname -- "$SOURCE"; )" &> /dev/null && pwd 2> /dev/null; )";
# https://stackoverflow.com/a/246128/12104304

set -e;

top=`git rev-parse --show-toplevel`

cp "$top/.inputrc" ~
cp "$top/.gitconfig" ~