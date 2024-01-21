#!/bin/bash

## set -e

## set -x

reset

clear

echo "doing the work";

find . -iname "*.md" -exec bash -c 'f="$1"; mv "$f" "${f/44/40}"' - {} \;

ls
