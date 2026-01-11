#!/bin/bash


# All names of the tools used for accessing the disk images in the different
# platforms are defined in a single config file in the parent directory:
. ../config.sh

# Assemble the disk image
cp dsk/prodos.po ./queens_it.po
java -jar $acjarfile -as ./queens_it.po QUEENS.SYSTEM < queens_it.bin
java -jar $acjarfile -p ./queens_it.po EM.DRV 0 < dsk/a2e.auxmem.emd
java -jar $acjarfile -p ./queens_it.po TEXT.DAT 0 < text_it.dat

cp ../readme.txt .

rm  AppleIIe_Queens_IT.zip
zip -r AppleIIe_Queens_IT.zip queens_it.po readme.txt note_Apple2e.txt
cp AppleIIe_Queens_IT.zip $ditdir
