#!/bin/bash

BASEJOBNAME=kazakov_

function build {
	JOBNAME=$BASEJOBNAME$2
	echo \\setbookformat{$1} > setformat.tex
	xelatex -jobname=$JOBNAME kazakov.tex
	xelatex -jobname=$JOBNAME kazakov.tex
	rm $JOBNAME.aux
	rm $JOBNAME.log
	rm $JOBNAME.out
	rm $JOBNAME.toc
}

build bfIPad ipad
build bfAFourOneside a4_oneside
build bfAFourTwoside a4_twoside
build bfSevenInches ebook
rm setformat.aux
rm setformat.tex
