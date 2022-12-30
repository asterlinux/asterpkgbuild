#!/bin/fish

echo "##############################"
echo "       Building Pkgs          "
echo "##############################"


while read i;
	for x in $i;
		echo "Building" $x;
		paru -G $x;
		cd $x;
		echo "Building Pkg";
		paru -U --sign;
		rm -rf src/ pkg/;
		mv *pkg.tar.zst* ../packges;
		rm -rf $x;
		cd ..;
		end;
end < packges.txt


echo "###############################"
echo "             Done              "
echo "###############################"
