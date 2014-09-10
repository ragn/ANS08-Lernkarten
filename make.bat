@echo off


if "%1" == "" GOTO build

if "%1" == "build" GOTO build

if "%1" == "init" GOTO init



:init
	git submodule init
GOTO exit



:build
	pdflatex --include-directory=lib/kartei lernkarten.tex
	pdflatex --include-directory=lib/kartei lernkarten.tex
GOTO clean


	
:clean
	git clean -fx
GOTO exit



:commit
	git add .
	git commit	
GOTO exit

:exit
