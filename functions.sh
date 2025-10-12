#! /bin/bash

function sayhello(){
  echo "hola mundo"
}

function add(){
  echo $(( $1 + $2 )) 
}

echo $(add 1 2)