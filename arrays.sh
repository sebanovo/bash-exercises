#! /bin/bash

names=( "jon" "mark" "james")

echo ${names[*]} # muestra todos los elementos
echo ${names[@]} # muestra todos los elementos
echo ${!names[*]} # muestra los indices
echo ${#names[*]} # muestra la cantidad de elementos

numbers=( 1 2 3 4 )

echo ${numbers[*]} # muestra todos los elementos

longitud=${#names[@]}

echo "ultimo ${names[${longitud} - 1]}"


for name in ${names[*]} 
do
  echo "mi nombre es: $name"
done



# append
names[${longitud}]="bob"
names+=("bob2" "bob3")  # otra forma

echo ${names[*]}