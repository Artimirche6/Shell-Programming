#!/bin/bash -x

#constant
isFullTime=1
isPartTime=2
empRatePerHr=20
numOfWorkingDays=7
maxHrsInMonth=20

#variable
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
      $isFullTime)
         empHrs=8
      ;;
      $isPartTime)
         empHrs=4
      ;;
      *)
         empHrs=0
      ;;
   esac
	echo $empHrs
}


while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))

	empCheck=$((RANDOM%3))
	workHours="$( getWorkingHours $empCheck )"

	totalEmpHrs=$(($totalEmpHrs+$workHours))
done 

totalSalary=$(($totalEmpHrs*$empRatePerHr))

