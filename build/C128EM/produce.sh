#!/bin/bash

. ../config.sh

#c1541command=c1541

cp blank.d64 QUEENS_C128_IT.d64

$c1541command -attach QUEENS_C128_IT.d64 -write C128-queen.prg c128-queen
$c1541command -attach QUEENS_C128_IT.d64 -write text_it.dat "text.dat,s"
$c1541command -attach QUEENS_C128_IT.d64 -write extra/c128-ram.emd "em.drv,s"
$c1541command -attach QUEENS_C128_IT.d64 -write splash.cpr "splash.cpr,s"

cp ../readme.txt .

rm  C128_Queens_it.zip
zip -r C128_Queens_it.zip QUEENS_C128_IT.d64 readme.txt notes_C128.txt
cp C128_Queens_it.zip $ditdir
