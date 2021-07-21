#!/bin/bash -x

read -p "Enter the num a : " a
read -p "Enter the num b : " b
read -p "Enter the num c : " c

w=$(($a+$b*$c))
x=$(($a%$b+$c))
y=$(($c+$a/$b))
z=$(($a*$b+$c))


if [ $w -gt $x ] && [ $w -gt $y ] && [ $w -gt $z ] 
   then
      Max=$w
elif [ $x -gt $w ] && [ $x -gt $y ] && [ $x -gt $z ]	
	then
		Max=$x
elif [ $y -gt $w ] && [ $y -gt $x ] && [ $y -gt $z ]
   then
     	Max=$y
else 	
	Max=$z
fi

	
if [ $w -lt $x ] && [ $w -lt $y ] && [ $w -lt $z ]
   then
      Min=$w
elif [ $x -lt $w ] && [ $x -lt $y ] && [ $x -lt $z ]
   then
       Min=$x
elif [ $y -lt $w ] && [ $y -lt $x ] && [ $y -lt $z ]
    then
       Min=$y
else
   Min=$z
fi
