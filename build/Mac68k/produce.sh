#!/bin/bash

. ../config.sh

rm  MAC68k_queens_footsteps_it.zip
zip -r MAC68k_queens_footsteps_it.zip "I passi della regina.dsk"
cp MAC68k_queens_footsteps_it.zip $ditdir
