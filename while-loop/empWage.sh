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

while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))

	empCheck=$((RANDOM%3))
	case $empCheck in
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

totalEmpHrs=$(($totalEmpHrs+$empHrs))
done 

totalSalary=$(($totalEmpHrs*$empRatePerHr))

