#!/bin/bash

. ../config.sh

$pp/gfx2crtc/png2crtc loading.png loading 7 0
$pp/dump-pal.py loading.png pal

rm queen2 queen3
mv queen2.cpc queen2
mv queen3.cpc queen3


rm CPC_Queens_it.dsk
$pp/iDSK/idsk CPC_Queens_it.dsk -n
$pp/iDSK/idsk CPC_Queens_it.dsk -i disc.bas -f -t 1 -c c000
$pp/iDSK/idsk CPC_Queens_it.dsk -i loading -t 1 -c c000 -f
$pp/iDSK/idsk CPC_Queens_it.dsk -i pal -f -t 1 -c a000
$pp/iDSK/idsk CPC_Queens_it.dsk -i CPCqueen.cpc -f
$pp/iDSK/idsk CPC_Queens_it.dsk -i queen2 -f
$pp/iDSK/idsk CPC_Queens_it.dsk -i queen3 -f


rm  CPC_Queens_it.zip
zip -r CPC_Queens_it.zip CPC_Queens_it.dsk

cp CPC_Queens_it.zip $ditdir
