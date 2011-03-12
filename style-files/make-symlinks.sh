#!/bin/bash
git update-index --assume-unchanged *.{sty,dtx,tex,cmap,fd,ins}
for i in *; do if [ -f ../../../Style\ Files/$i ]; then echo $i; ln -sf ../../../Style\ Files/$i ./; fi; done
