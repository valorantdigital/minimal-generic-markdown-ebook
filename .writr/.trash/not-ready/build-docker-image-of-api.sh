#!/bin/bash

##

set -e

set -x

##

reset

clear

##

docker system prune -a -f

##

git stash

git reset --hard

git pull

##

reset

clear

##

echo
echo "*** "
echo "*** Docker Image Build START: textformatdashboard.online/text-format-dashboard-api-java"
echo "*** "
echo

docker build -t textformatdashboard.online/text-format-dashboard-api-java .

## 

reset

clear

##

echo
echo "*** "
echo "*** Docker Image Build COMPLETE: textformatdashboard.online/text-format-dashboard-api-java"
echo "*** "
echo
