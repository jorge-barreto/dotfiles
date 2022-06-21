#!/bin/bash

set -e;

top=`git rev-parse --show-toplevel`

cp "$top/.inputrc" "~/.inputrc"