#! /bin/bash

echo "crea el nombre de la carpeta"
read folder

if [ -d $folder ] # verificar si folder existe
then 
  echo "El directorio $folder existe"
else 
  echo "El directorio $folder no existe"
fi

echo "crea el nombre del  archivo"
read file 

if [ -f $file ] # verificar si el archivo existe
then 
  echo "Escribe tu contenido"
  read contenido
  echo $contenido >> $file # append al archivo
else 
  echo "El archivo $file no existe"
fi