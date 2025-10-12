#! /bin/bash


echo "hola mundo $1 $2"
echo "hola mundo $@"

args=("$@")

echo "Resultado: ${args[0]} - ${args[1]} - ${args[2]}"
