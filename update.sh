#!/bin/bash

TIMESTAMP=$(date +"%Y\%m\%d %H:%M:%S")

#echo "first commit"
#git add .
#git commit -m "$TIMESTAMP"
#git remote add origin git@github.com:seifer72/diplom.git
#git push -u origin master 

s
echo "commit $TIMESTAMP"
git config core.autocrlf false
git init

git add .
git commit -m "update $TIMESTAMP"
git push -u origin master


