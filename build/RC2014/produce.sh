#!/bin/bash

. ../config.sh

cp RC2014queens1.ihx RC2014_The_Queen_s_Footsteps_it
cp RC2014queens2.ihx RC2014_The_Queen_s_Footsteps_it
cp RC2014queens3.ihx RC2014_The_Queen_s_Footsteps_it

rm  RC2014_Queens_it.zip
zip -r RC2014_Queens_it.zip RC2014_The_Queen_s_Footsteps_it


cp RC2014_Queens_it.zip $ditdir
