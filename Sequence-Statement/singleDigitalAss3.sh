#!/bin/bash -x



digit1=$(((RANDOM%6)+1))
echo $digit1
digit2=$(((RANDOM%6)+1))
echo $digit2

Echo "Result : " $(($digit1+$digit2))

