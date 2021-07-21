#!/bin/bash -x

read -p "Enter the Year : " y

x=4

a=$(($y%$x))

if [ $a -eq 0 ]
then 
	echo "$y is a Leap Year"
else 
	echo "$y is not a Leap Year"
fi
