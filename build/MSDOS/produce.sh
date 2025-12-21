#!/bin/bash

. ../config.sh

rm  MSDOS_Queens_it.zip
zip -r MSDOS_Queens_it.zip QUEENS.EXE QUEENSN.EXE
cp MSDOS_Queens_it.zip $ditdir
