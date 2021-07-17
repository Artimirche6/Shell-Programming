#!/bin/bash -x

feet1=60
feet2=40

meters1=$(($feet1*3))
meters2=$(($feet2*3))

meters=$(($meters1*$meters2))

echo " Rectangular plot of 60 feet * 40 feet in meter :: " $meters 

