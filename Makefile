#***********************************************************
#
# Filename : Makefile
#
# Function : Compile the latex files
#
# Author : XingzhongLi
#
# Date : 2018/11
#
#***********************************************************

Name := Layered_to_grid
Reader := evince
Compiler := xelatex

Src := $(Name).tex
PDF := $(Name).pdf

.PHONY: read clean

all : latex clean read

latex :
	$(Compiler) $(Src)
	$(Compiler) $(Src)

read :
	$(Reader) $(PDF)

clean :
	latexmk -c
