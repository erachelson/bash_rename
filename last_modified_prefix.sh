#!/bin/bash

for file in *.MOV; do
	prefix=`stat -c %y $file | awk -F " " '{print $1}'`
	mv $file $prefix" - "$file
done;

