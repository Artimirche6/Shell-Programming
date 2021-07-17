#!/bin/bash -x

#constant
isFullTime=1
isPartTime=2
empRatePerHr=20

#variable
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
