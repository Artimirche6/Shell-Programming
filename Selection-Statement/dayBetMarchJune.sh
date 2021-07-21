#!/bin/bash -x

date=$1
month=$2

echo Date: $date / $month

if [ $month -le 3 ]
	then
		if [ $date -ge 1 ] && [ $date -lt 20 ]
			then
				echo $date $month "False"
		else
			if [ $date -ge 20 ] && [ $date -le 31 ]
				then
					echo $date $month "True"
			fi
		fi
fi


if [ $month -gt 3 ] && [ $month -le 5 ]
	then
   	if [ $date -ge 1 ] && [ $date -le 31 ]
			then
				echo $date $month "True"
		fi
else
	if [ $month -eq 6 ] && [ $date -le 20 ]
		then 
			echo $date $month "True"
	else
		echo $date $month "False"
	fi
	
fi

	


 
