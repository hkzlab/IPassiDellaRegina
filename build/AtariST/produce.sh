#!/bin/bash

. ../config.sh

rm  AtariST_Queens_it.zip

cp ../readme.txt .

zip -r AtariST_Queens_it.zip tqf40.tos tqf80.tos readme.txt notes_AtariST.txt

cp AtariST_Queens_it.zip $ditdir
