#!/bin/bash
# Absolute path to this script. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in. /home/user/bin
SCRIPTPATH=`dirname "$SCRIPT"`
TESTFILE=SP_212-8_022_Spring_2011_Problem_Set_07.tex
FILESNEEDED=""
RELSTYLEPATH=style-files
STYLEPATH=$SCRIPTPATH/$RELSTYLEPATH
RELREQUIREDFILES="mhsetup.sty siunitx.sty expl3.sty l3basics.sty l3box.sty l3clist.sty l3expan.sty l3file.sty l3fp.sty l3int.sty l3io.sty l3keys2e.sty l3keys.sty l3keyval.sty l3luatex.sty l3msg.sty l3names.sty l3precom.sty l3prg.sty l3prop.sty l3quark.sty l3seq.sty l3skip.sty l3tl.sty l3token.sty l3toks.sty l3tp.sty l3xref.sty xparse.sty"

pushd "$SCRIPTPATH" 1>/dev/null

for i in $RELREQUIREDFILES
do
        ln -sf $RELSTYLEPATH/$i ./
done


rm -rf /tmp/esg-tex
mkdir /tmp/esg-tex

cp -L "$TESTFILE" esg8022pset.cls *.{sty,cmap,fd,def} ps*.{png,pdf}  /tmp/esg-tex/ 2>/dev/null

pushd /tmp/esg-tex 1>/dev/null

CURFILE=$(pdflatex -interaction=nonstopmode "$TESTFILE" | grep -m 1 "LaTeX Error: File" | grep -o \`.*\' | sed s/\`// | sed s/\'//)
while [ "$CURFILE" != "" ]
do
        echo I need $CURFILE
        FILESNEEDED="$FILESNEEDED $CURFILE"
        cp -L "$STYLEPATH/$CURFILE" ./
        CURFILE="$(pdflatex -interaction=nonstopmode "$TESTFILE" | grep -m 1 "LaTeX Error: File" | grep -o \`.*\' | sed s/\`// | sed s/\'//)"
done

popd 1>/dev/null


git reset
for i in $FILESNEEDED
do
        ln -s $RELSTYLEPATH/$i ./
        git add $i
done
git commit -m "Automated adding of style files."



popd 1>/dev/null

#rm -rf /tmp/esg-tex
