#!/bin/bash -x

echo 1 ft = 12 in

inches=42
val=12

feet=$((inches/12))
leftover=$((inches%12))

echo 42 in = $feet ft and $leftover in

feet=$(awk 'BEGIN {printf "%.3f\n", 42 / 12}')
feet1=$(awk 'BEGIN {printf "%.3f\n", '$inches' / '$val'}')

echo 42 in = $feet ft
echo 42 in = $feet1 ft

