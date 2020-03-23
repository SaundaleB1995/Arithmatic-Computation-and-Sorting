#!/bin/bash
echo "Welecome to Arithmatic Computation and Sorting Programming"

echo "Enter THREE Number"
read number1
read number2
read number3
compute=$(($number1*$number2+$number3))
echo "Compute:" $number1 "*" $number2 "+" $number3 "=" $compute
