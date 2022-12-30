#!/bin/sh


echo "Enter a pkg name "
echo "                 "

read i
paru -G "$i"
cd "$i"
paru -U --sign
rm -rf /src /pkg

echo "#######################"
echo "         Done!         "
echo "#######################"
