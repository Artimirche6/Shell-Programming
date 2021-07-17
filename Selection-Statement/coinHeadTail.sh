#!/bin/bash -x

coinFlip=$(((RANDOM%2)+1))
Head=1
Tail=2

if [ $coinFlip -eq $Head ]
	then 
		echo HEADS
	else
		echo TAILS	
fi
