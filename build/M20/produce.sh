#!/bin/bash

. ../config.sh

$m20command M20_Queens_it.img rm splash.cpr
$m20command M20_Queens_it.img rm q1.cmd
$m20command M20_Queens_it.img rm q2.cmd
$m20command M20_Queens_it.img rm q3.cmd

$m20command M20_Queens_it.img put q1.cmd
$m20command M20_Queens_it.img put q2.cmd
$m20command M20_Queens_it.img put q3.cmd

$m20command M20_Queens_it.img put M20splash/splash.cpr

rm  M20_Queens_it.zip
zip -r M20_Queens_it.zip M20_Queens_it.img
cp M20_Queens_it.zip $ditdir