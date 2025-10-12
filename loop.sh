#! /bin/bash

number=1

while [ $number -le 10 ] # tiene que ser true para que entre
do 
  echo $number
  number=$(( number + 1 ))
done

number=1
until [ $number -ge 10 ] # tiene que ser false para que entre
do 
  echo $number
  number=$(( number + 1 ))
done

for i in {0..100..10} 
do 
  echo $i
done

for (( i=0; i < 10; i++ ))
do 
  echo $i
done