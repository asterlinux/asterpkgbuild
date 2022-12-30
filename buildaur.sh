#!/bin/sh

echo "##############################"
echo "Enter an pkg name to Download "
echo "##############################"

while read i;
	echo $i;
	paru -G $i;
	cd $i;
	echo "Building Pkg";
	paru -U --sign;
	rm -rf src/ pkg/
	end < packges.txt

