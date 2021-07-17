#!/bin/bash -x

echo 1 ft = 12 in
inches=42
feet=$((inches/12))
leftover=$((inches%12))

echo 42 in = $feet ft and $leftover in
