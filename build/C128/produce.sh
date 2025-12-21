#!/bin/bash

. ../config.sh

$c1541command -attach QUEENS_C128_IT.d64 -delete c128-queen1
$c1541command -attach QUEENS_C128_IT.d64 -delete c128-queen2
$c1541command -attach QUEENS_C128_IT.d64 -delete c128-queen3

$c1541command -attach QUEENS_C128_IT.d64 -delete splash.cpr

$c1541command -attach QUEENS_C128_IT.d64 -write C128-queen1.prg c128-queen1
$c1541command -attach QUEENS_C128_IT.d64 -write C128-queen2.prg c128-queen2
$c1541command -attach QUEENS_C128_IT.d64 -write C128-queen3.prg c128-queen3

$c1541command -attach QUEENS_C128_IT.d64 -write splash.cpr splash.cpr

cp ../readme.txt .

rm  C128_Queens_it.zip
zip -r C128_Queens_it.zip QUEENS_C128_IT.d64 readme.txt notes_C128.txt
cp C128_Queens_it.zip $ditdir