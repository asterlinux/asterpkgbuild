#!/bin/sh

pkg = 

paru -G $pkg

cd "$input"

echo "Building Pkg "

paru -U --sign


