#!/bin/bash

for file in *.JPG; do
	prefix=`identify -format "%[EXIF:DateTimeOriginal]" $file | awk -F " " '{print $1}' | awk -F ":" '{print $1"-"$2"-"$3}'`
	mv $file $prefix" - "$file
done;

