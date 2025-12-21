#!/bin/bash

. ../config.sh

cp ../readme.txt .


rm  PET_Queens_it.zip
zip -r PET_Queens_it.zip PET40 PET80 readme.txt notes_PET.txt
cp PET_Queens_it.zip $ditdir