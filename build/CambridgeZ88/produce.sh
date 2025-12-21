#!/bin/bash

. ../config.sh

rm  Z88_Queens_it.zip

cp ../readme.txt .


rm -r Z88_Queens_it
mkdir Z88_Queens_it
mkdir Z88_Queens_it/epr
mkdir Z88_Queens_it/app
mkdir Z88_Queens_it/bas

cp readme.txt Z88_Queens_it
cp notes_z88.txt Z88_Queens_it

# .epr files are for emulators
cp TQF1.epr Z88_Queens_it/epr
cp TQF2.epr Z88_Queens_it/epr
cp TQF3.epr Z88_Queens_it/epr

# .app files for installing application in RAM
cp TQF1.ap* Z88_Queens_it/app
cp TQF2.ap* Z88_Queens_it/app
cp TQF3.ap* Z88_Queens_it/app

# .BAS files for the BBC basic
cp TQF1.BAS Z88_Queens_it/bas
cp TQF2.BAS Z88_Queens_it/bas
cp TQF3.BAS Z88_Queens_it/bas


zip -r Z88_Queens_it.zip Z88_Queens_it
cp Z88_Queens_it.zip $ditdir