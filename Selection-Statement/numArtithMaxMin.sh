#!/bin/bash -x

read -p " Enter the value of a : " a
read -p " Enter the value of b : " b
read -p " Enter the value of c : " c

w=$(($a+$b*$c))
x=$(($a%$b+$c))
y=$(($c+$a/$b))
z=$(($a*$b+$c))


echo $w $x $y $z

if [ $digit1 -gt $digit2 ] && [ $digit1 -gt $digit3 ]
   then
      echo "$digit1 is greater than $digit2 and $digit3"
      Max=$digit1

elif [ $digit2 -gt $digit1 ] && [ $digit2 -gt $digit3 ]
   then
      echo "$digit2 is greater than $digit1 and $digit3"
      Max=$digit2

else
   echo "$digit3 is greater than $digit1 and $digit2"
   Max=$digit3
fi

