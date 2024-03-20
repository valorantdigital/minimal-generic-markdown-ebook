#!/bin/bash

##

set -e

set -x

##

reset

clear

##

echo
echo "deploying markdown files to PDF book"
echo

cd ..

mkdocs build 

##
