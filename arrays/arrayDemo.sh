#!/bin/bash -x

counter=0
Fruits[((counter++))]="Mango"
Fruits[((counter++))]="Orange"
Fruits[((counter++))]=100

Names=( abc 78 xyz 333 pqr mno 4567 )

echo ${Fruits[@]}
echo ${Names[*]}
