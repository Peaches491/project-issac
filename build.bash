#!/bin/bash

mkdir build
mkdir images
mkdir html

printf "Building htex files... "
pandoc --gladtex --table-of-contents -H includes/main.header -A includes/body_end.content -t html5 -o build/test.htex src/test.mmd
printf "DONE\n"

printf "Generating GladTeX images... "
gladtex -d ./images/ build/test.htex
printf "DONE\n"

printf "Moving files to ./html directory... "
mv build/*.html ./webroot
printf "DONE\n"
