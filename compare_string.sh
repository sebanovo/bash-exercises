#! /bin/bash

echo "Enter your password"
read input1

echo "Repeat your password"
read input2

echo "$input1 $input2"

if [ $input1 == $input2 ]
then 
  echo "password correcta"
else 
  echo "password incorrecta"
fi
