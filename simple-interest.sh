#!/bin/bash
# This script calculates simple interest

# Inputs: principal amount, rate, time

if [ $# -ne 3 ]; then
  echo "Usage: ./simple-interest.sh principal rate time"
  exit 1
fi

principal=$1
rate=$2
time=$3

# Calculate simple interest: (principal * rate * time) / 100

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Simple Interest is: $interest"
