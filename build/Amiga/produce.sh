#!/bin/bash

. ../config.sh


echo "Copy Amiga files"

outputfile="AMIqueen.adf"

rm $outputfile
$xdftoolcommand $outputfile format "The Queen's Footsteps"
$xdftoolcommand $outputfile boot install boot1x
$xdftoolcommand $outputfile makedir C
$xdftoolcommand $outputfile makedir S
$xdftoolcommand $outputfile makedir libs
$xdftoolcommand $outputfile write disk.info /

$xdftoolcommand $outputfile write AMIqueen /
$xdftoolcommand $outputfile write AMIqueens.info /
$xdftoolcommand $outputfile write AMIqueens /




$xdftoolcommand $outputfile write loader C/
$xdftoolcommand $outputfile write startup-sequence S/

zip -r AMIqueen_it.zip $outputfile
cp AMIqueen_it.zip $ditdir