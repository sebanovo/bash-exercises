#! /bin/bash

echo "Enter your name"
read input1

echo "Repeat your lastname"
read input2


result="$input1 is $input2"
echo $result

echo ${input1,,} # convertirlo a minuscula

echo ${input1^^} # convertirlo a mayusculas 

echo ${input1,,[AEIOU]} # convierte e minusculas las vocales
echo ${input1^^[aeiou]} # convierte e MAYUSCULAS las vocales