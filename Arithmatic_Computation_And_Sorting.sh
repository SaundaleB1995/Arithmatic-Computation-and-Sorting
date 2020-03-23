#!/bin/bash
echo "Welecome to Arithmatic Computation and Sorting Programming"

echo "Enter THREE Number"
read number1
read number2
read number3
compute1=$(($number1+$number2*$number3))
echo "Compute:" $number1 "+" $number2 "*" $number3 "=" $compute1

compute2=$(($number1*$number2+$number3))
echo "Compute:" $number1 "+" $number2 "*" $number3 "=" $compute2

compute3=$(($number3+$number1/$number2))
echo "Compute:" $number3 "+" $number1 "/" $number2 "=" $compute3

compute4=$(($number1%$number2+$number3))
echo "Compute:" $number1 "%" $number2 "+" $number3 "=" $compute4

declare -A Result 
Result[1]=$compute1
Result[2]=$compute2
Result[3]=$compute3
Result[4]=$compute4

echo "Result 1=" ${Result[1]}
echo "Result 2=" ${Result[2]}
echo "Result 3=" ${Result[3]}
echo "Result 4=" ${Result[4]}

counter=0
computeResult[((counter++))]=${Result[@]}
echo "["${computeResult[@]}"]"

noOfResult=4
for (( i=0 ; i<=$noOfResult ; i++ ))
do
         computeResult[$i]=${Result["$i"]}
done

for (( i=0 ; i<=$noOfResult ; i++ ))
do
        for (( j=$((i+1)) ; j<=$noOfResult ; j++ ))
        do
            if [[ ${computeResult[$i]} -gt ${computeResult[$j]} ]]
            then
              temp=${computeResult[$i]}
              computeResult[$i]=${computeResult[$j]}
               computeResult[$j]=$temp
            fi
        done
done
echo ${computeResult[@]}
