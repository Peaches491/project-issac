#!/bin/bash

mkdir build
mkdir images
mkdir html

printf "Building htex files... "
pandoc --gladtex -S -s -o build/test.htex test.mmd
printf "DONE\n"

printf "Generating GladTeX images... "
gladtex -d ./images/ build/test.htex
printf "DONE\n"

printf "Moving files to ./html directory... "
mv build/*.html ./html
printf "DONE\n"
