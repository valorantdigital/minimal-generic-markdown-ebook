#!/bin/bash

##

set -e

set -x

##

reset

clear

##

echo
echo "installing the mkdocs with Aptitude"
echo

apt-get update

apt-get install -y mkdocs

##

echo
echo "installing the mkdocs with pdf plugin situation"
echo

pip install mkdocs-with-pdf

##
