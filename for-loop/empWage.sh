#!/bin/bash -x

#constant
isFullTime=1
isPartTime=2
empRatePerHr=20
numOfWorkingDays=20

#variable
totalSalary=0

for (( day=1; day<=$numOfWorkingDays; day++))
do
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

wage=$(($empHrs*$empRatePerHr))
totalSalary=$(($totalSalary+$wage))
done
