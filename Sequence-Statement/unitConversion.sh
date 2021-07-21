#!/bin/bash -x

inches=42
val=12

feet=$(awk 'BEGIN {printf "%.3f\n", 42 / 12}')
feet1=$(awk 'BEGIN {printf "%.3f\n", '$inches' / '$val'}')

echo 42 in = $feet ft
echo 42 in = $feet1 ft


