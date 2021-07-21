#!/bin/bash -x

date=$1
month=$2
year=$3

echo Date: $date / $month / $year

y=$(($year-(14-$month)/12))
x=$(($y+$y/4-$y/100+$y/400))
m=$(($month+12*((14-$month)/12)-2))
d=$((($date+$x+31*$m/12)%7))

if [ $d -eq 1 ]
	then
		echo "MONDAY"
else	
if [ $d -eq 2 ]
   then
      echo "TUESDAY"
else 
if [ $d -eq 3 ]
   then
      echo "WEDNESDAY"
else
if [ $d -eq 4 ]
   then
      echo "THURSDAY"
else
if [ $d -eq 5 ]
   then
      echo "FRIDAY"
else
if [ $d -eq 6 ]
   then
      echo "SATURDAY"
else
if [ $d -eq 7 ]
   then
      echo "SUNDAY"
else
	echo "INVALID DATE"
fi
fi
fi
fi
fi
fi
fi
