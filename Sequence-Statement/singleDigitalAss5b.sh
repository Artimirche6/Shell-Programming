#!/bin/bash -x

feet1=60
feet2=40

feet=$(($feet1*$feet2))
echo Result in FeetResult in Feet :: $feet ft 

meter=$(awk 'BEGIN {printf "%.3f\n", '$feet' / 3.281}')
echo Rectangular plot of 60 feet x 40 feet in meter :: $meter m 

