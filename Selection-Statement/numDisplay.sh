#!/bin/bash -x

read -p "Enter a number 1, 10, 100, 1000....... : " num

if [ $num -eq 1 ]
then
   echo " UNIT "
elif [ $num -eq 10 ]
then
   echo " TEN "
elif [ $num -eq 100 ]
then
   echo " HUNDRED "
elif [ $num -eq 1000 ]
then
   echo " THOUSAND "
elif [ $num -eq 10000 ]
then
   echo " TEN THOUSAND "
elif [ $num -eq 100000 ]
then
   echo " LAKHS "
elif [ $num -eq 1000000 ]
then
   echo " TEN LAKHS "
else
   echo " INVALID NUMBER "
fi

