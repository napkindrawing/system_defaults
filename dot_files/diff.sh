#!/bin/bash

for f in `find .[a-z]* -type f`; do 
    diff -u $f ~/$f
done
