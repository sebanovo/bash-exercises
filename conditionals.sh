#! /bin/bash

age=10

if [ $age -eq 10 ] 
then 
echo "echo el numero es igual"
elif [ $age -eq 18 ]
then 
echo "eres de 17 años"
else 
echo "el numero no es igual"
fi

age=14

if (( $age > 12 )) && (($age <= 18)) 
then 
echo 'eres adolescente'
fi