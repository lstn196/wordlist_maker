#!/bin/bash
echo "***wordlist maker***
Copyright (C) 2022 lstn196
made: 04.02.2022"
echo "This script makes a password list from a range of numbers"
while true
do
echo "(to quit press ctrl+c)"
echo "first number of the range:"
read -r a
echo "--------------------------"
clear
echo "last number of range:"
read -r b
if [[ $a == $b ]]
then
clear
echo "please add two different numbers!"
elif [[ $a -gt $b ]]
then
for ((c=b; c<=a; c++))
do
echo $c >> range.txt
done
echo "generated list has been saved as range.txt"
exit 0
else
for ((c=a; c<=b; c++))
do
echo $c >> range.txt
done
echo "generated list has been saved as range.txt"
exit 0
fi
done