#!/bin/sh
#
# An example hook script to verify what is about to be committed.
# Called by git-commit with no arguments.  The hook should
# exit with non-zero status after issuing an appropriate message if
# it wants to stop the commit.
#
# To enable this hook, rename this file to "pre-commit".

if [[ "`uname`" =~ CYGWIN ]]
then
	if [ $(git diff --cached --name-only | egrep -v '\.(bat|py|sh|exe)' | wc -l) -gt 0 ]
	then
		git diff --cached --name-only --diff-filter=ACMRTUXB | egrep -v '\.(bat|py|sh|exe)' | xargs -d"\n" chmod 664
		git diff --cached --name-only --diff-filter=ACMRTUXB | egrep -v '\.(bat|py|sh|exe)' | xargs -d"\n" git update-index --chmod=-x 
	#	git diff --cached --name-only | egrep -v '\.(bat|py|sh|exe)' | xargs -d"\n" git add
	fi
else
	echo `uname`
fi
