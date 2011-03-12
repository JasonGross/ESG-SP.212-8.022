#!/bin/bash
git update-index --assume-unchanged *
git update-index --no-assume-unchanged *.sh
for i in *; do if [ -f ../../../Style\ Files/$i ]; then echo $i; ln -sf ../../../Style\ Files/$i ./; fi; done
