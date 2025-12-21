#!/bin/bash

. ../config.sh

# java -jar $acjarfile -dos140 The_Queen_s_Footsteps.dsk
# blank.dsk contains DOS 3.3 in the boot sectors.
cp blank.dsk IPassiDellaRegina.dsk
java -jar $acjarfile -p  IPassiDellaRegina.dsk HELLO A < AppleII_The_Queen_s_Footsteps/HELLO
java -jar $acjarfile -as IPassiDellaRegina.dsk queens1 < AppleII_The_Queen_s_Footsteps/queens1
java -jar $acjarfile -as IPassiDellaRegina.dsk queens2 < AppleII_The_Queen_s_Footsteps/queens2
java -jar $acjarfile -as IPassiDellaRegina.dsk queens3 < AppleII_The_Queen_s_Footsteps/queens3


rm  AppleII_Queens_it.zip
zip -r AppleII_Queens_it.zip IPassiDellaRegina.dsk
cp AppleII_Queens_it.zip $ditdir