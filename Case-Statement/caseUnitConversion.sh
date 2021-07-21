#!/bin/bash -x

read -p " Enter the value to convert Feet into Inches : " feet 
inch=$(($feet*12))
echo " Feet to Inch :: $feet ft = $inch in"

read -p "Enter the value to convert Feet into Meter : " feet1
meter=$(awk 'BEGIN {printf "%.3f\n", '$feet1' / 3.281}')
echo " Feet to Meter :: $feet ft = $meter m"

read -p "Enter the value to convert inch into feet : " inch
feet2=$(awk 'BEGIN {printf "%.3f\n", '$inch' / 12}')
echo " Inch to Feet :: $inch in = $feet2 ft"

read -p "Enter the value to convert meter into feet : " meter1
feet3=$(awk 'BEGIN {printf "%.3f\n", '$meter1' * 3.281}')
echo " Meter to Feet :: $meter1 m = $feet3 ft" 
