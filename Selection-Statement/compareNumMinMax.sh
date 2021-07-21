#!/bin/bash -x

digit1=$(((RANDOM%899)+100))

digit2=$(((RANDOM%899)+100))

digit3=$(((RANDOM%899)+100))

if [ $digit1 -gt $digit2 ] && [ $digit1 -gt $digit3 ]  
   then
      echo "$digit1 is greater than $digit2 and $digit3"
		Max=$digit1
else
	if [ $digit2 -gt $digit3 ]
		then
			echo "$digit2 is greater than $digit1 and $digit3"
	      Max=$digit2
		else 	
			echo "$digit3 is greater than $digit2 and $digit3"
	      Max=$digit3
	fi
fi
	
if [ $digit1 -lt $digit2 ] && [ $digit1 -lt $digit3 ]
   then
      echo "$digit1 is Less than $digit2 and $digit3"
		Min=$digit1
else
   if [ $digit2 -lt $digit3 ]
      then
         echo "$digit2 is Less than $digit1 and $digit3"
         Min=$digit2
      else
         echo "$digit3 is Less than $digit2 and $digit3"
         Min=$digit3
   fi
fi
