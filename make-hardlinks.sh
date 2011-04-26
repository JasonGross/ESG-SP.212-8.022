#!/bin/bash
# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname "$SCRIPT"`

pushd "$SCRIPTPATH"
git update-index --assume-unchanged *.sty
git update-index --assume-unchanged *.cmap
git update-index --assume-unchanged *.def
git update-index --assume-unchanged *.fd
for i in *.{sty,cmap,def}; do if [ -f "style-files/$i" ]; then echo $i; ln -f "style-files/$i" ./; fi; done

#cd style-files
#git update-index --assume-unchanged *
#git update-index --no-assume-unchanged *.sh
#for i in *; do if [ -f ../../../Style\ Files/$i ]; then echo $i; ln -f ../../../Style\ Files/$i ./; fi; done
popd
