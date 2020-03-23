#!/bin/bash
echo "Welecome to Arithmatic Computation and Sorting Programming"

echo "Enter THREE Number"
read number1
read number2
read number3
compute=$(($number3+$number1/$number2))
echo "Compute:" $number3 "+" $number1 "/" $number2 "=" $compute

