#!/bin/bash

. ../config.sh

# Prepare files with a loader for the cas directory

$mkcas --name queen MSX_The_Queen_s_Footsteps_it/cas/tqf1.cas ascii loader/loader.bas
$mkcas --add --name loading --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/cas/tqf1.cas binary loader/loader.bin
$mkcas --add --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/cas/tqf1.cas custom-header tqf1

$mkcas --name queen MSX_The_Queen_s_Footsteps_it/cas/tqf2.cas ascii loader/loader.bas
$mkcas --add --name loading --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/cas/tqf2.cas binary loader/loader.bin
$mkcas --add --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/cas/tqf2.cas custom-header tqf2

$mkcas --name queen MSX_The_Queen_s_Footsteps_it/cas/tqf3.cas ascii loader/loader.bas
$mkcas --add --name loading --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/cas/tqf3.cas binary loader/loader.bin
$mkcas --add --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/cas/tqf3.cas custom-header tqf3


# Copy file without header
cp tqf1.cas MSX_The_Queen_s_Footsteps_it/no_loader
cp tqf2.cas MSX_The_Queen_s_Footsteps_it/no_loader
cp tqf3.cas MSX_The_Queen_s_Footsteps_it/no_loader

# Prepare a single cas file
$mkcas --name queen MSX_The_Queen_s_Footsteps_it/single_cas/tqf.cas ascii loader/loader.bas
$mkcas --add --name loading --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/single_cas/MSXqueens.cas binary loader/loader.bin
$mkcas --add --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/single_cas/MSXqueens.cas custom-header tqf1
$mkcas --add --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/single_cas/MSXqueens.cas custom-header tqf2
$mkcas --add --addr 0x8000 --exec 0x8000 MSX_The_Queen_s_Footsteps_it/single_cas/MSXqueens.cas custom-header tqf3

# Copy the ROM files
#cp tqf1r.rom MSX_The_Queen_s_Footsteps_it/rom
#cp tqf2r.rom MSX_The_Queen_s_Footsteps_it/rom
#cp tqf3r.rom MSX_The_Queen_s_Footsteps_it/rom

rm  MSX_Queens_it.zip
zip -r MSX_Queens_it.zip MSX_The_Queen_s_Footsteps_it
cp MSX_Queens_it.zip $ditdir