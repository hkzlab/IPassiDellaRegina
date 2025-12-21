#!/bin/bash

. ../config.sh

cp ../readme.txt Atari_I_Passi_Della_Regina
cp notes_Atari.txt Atari_I_Passi_Della_Regina

$ataritools AtariQueens_it.atr rm queens1.com
$ataritools AtariQueens_it.atr rm queens2.com
$ataritools AtariQueens_it.atr rm queens3.com

$ataritools AtariQueens_it.atr put Atari_I_Passi_Della_Regina/queens1.xex queens1.com
$ataritools AtariQueens_it.atr put Atari_I_Passi_Della_Regina/queens2.xex queens2.com
$ataritools AtariQueens_it.atr put Atari_I_Passi_Della_Regina/queens3.xex queens3.com

cp AtariQueens_it.atr Atari_I_Passi_Della_Regina

rm  Atari_Queens_it.zip
zip -r Atari_Queens_it.zip Atari_I_Passi_Della_Regina
cp Atari_Queens_it.zip $ditdir