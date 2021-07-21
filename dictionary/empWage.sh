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

declare -A empDailyWage

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


function calculateDailyWage
{
	local workHours=$1
	wage=$(($workHours*empRatePerHr))
	echo $wage
}


while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))

	empCheck=$((RANDOM%3))
	workHours="$( getWorkingHours $empCheck )"
	
	totalEmpHrs=$(($totalEmpHrs+$workHours))
	empDailyWage[$totalWorkingDays]="$( calculateDailyWage $workHours )"
done 

totalSalary=$(($totalEmpHrs*$empRatePerHr))
echo "Daily Wage :: " ${empDailyWage[@]}
echo "Day - " ${!empDailyWage[*]}
