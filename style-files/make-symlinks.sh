#!/bin/bash
# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname "$SCRIPT"`

pushd $SCRIPTPATH
git update-index --assume-unchanged *
git update-index --no-assume-unchanged *.sh
for i in *; do if [ -f ../../../Style\ Files/$i ]; then echo $i; ln -sf ../../../Style\ Files/$i ./; fi; done
popd
