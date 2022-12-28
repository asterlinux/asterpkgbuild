#!/bin/sh

echo "##############################"
echo "Enter an pkg name to Download "
echo "##############################"

read input

paru -G "$input"

cd "$input"

echo "Building Pkg "

paru -U


