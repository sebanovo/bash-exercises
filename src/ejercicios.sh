#! /bin/bash

# Calcular el factorial de un número n!
function factorialIterativo() {
  f=1
  for(( i=1; i <= $1; i++ ))
  do
    f=$(( f * i ))
  done
  echo $f
}

# for (( i=1; i<=10; i++ ))
# do
#   echo "$i! = $(factorialIterativo $i)"
# done

function factorialRecursivo() {
  if (( $1 == 0 || $1 == 1)) 
  then
    echo 1
  else 
    echo $(( $1 * $(factorialRecursivo $(( $1 -1 ))) ))
  fi
}

# for ((i=1;i<=10;i++))
# do
#   echo "$i! = $(factorialRecursivo $i)"
# done

# Calcular el fibonacci de un número fibonacci(n)
function fibonacciIterativo() {
  fibb=(0 1)
  if (($1 == 1)) 
  then
    echo ${fibb[0]}
    return
  fi
  if (($1 == 2))
  then 
    echo ${fibb[1]}
    return
  fi
  for (( i=2; i < $1; i++ ))
  do
    fibb[$i]=$(( ${fibb[$(( i - 1 ))]} + ${fibb[$(( i - 2 ))]} ))
  done
  echo ${fibb[$(($1 - 1))]}
}

# for (( i=1;i<=10;i++ ))
# do
#   echo "$i = $(fibonacciIterativo $i)"
# done

function fibonacciRecursivo() {
  if (($1 == 1)) 
  then 
    echo 0
    return
  fi
  if (($1 == 2)) 
  then 
    echo 1
    return
  fi
  echo $(( $(fibonacciRecursivo $(( $1 - 1 ))) + $(fibonacciRecursivo $(( $1 - 2 ))) ))
}

# for (( i=1;i<=10;i++ ))
# do
#   echo "$i = $(fibonacciRecursivo $i)"
# done


# Ordenamiento burbuja
function bubbleSort() {
  local -n ref=$1
  local n=${#ref[@]}
  for (( i = 0; i < n - 1; i++ )); do
    for (( j = 0; j < n - i - 1; j++ )); do
      if (( ref[j] > ref[j+1] )); then
        temp=${ref[j]}
        ref[j]=${ref[j+1]}
        ref[j+1]=$temp
      fi
    done
  done
}

# ar=(5 4 3 2 1)
# bubbleSort ar
# echo ${ar[*]}

# función para invertir un número
function invertir() {
  n=$1
  result=0
  while (( n > 0 )) 
  do
    digit=$((n % 10))
    result=$((result * 10 + digit))
    n=$((n / 10))
  done
  echo $result
}

# función para sumar los digitos de un número
function sumarDigitos() {
  n=$1
  suma=0
  while (( n > 0 ))
  do
    digit=$((n % 10))
    suma=$((suma + digit))
    n=$((n / 10))
  done
  echo $suma
}

# echo $(sumarDigitos 12345) 

# función para sumar los digitos pares de un número
function sumarDigitosPares() {
  n=$1
  suma=0
  while (( n > 0 ))
  do
    digit=$((n % 10))
    if (( digit % 2 == 0)) 
    then
      suma=$((suma + digit))
    fi 
    n=$((n / 10))
  done
  echo $suma
}

# echo $(sumarDigitosPares 12345)

# función para sumar los digitos pares de un número
function sumarDigitosImpares() {
  n=$1
  suma=0
  while (( n > 0 ))
  do
    digit=$((n % 10))
    if (( digit % 2 != 0)) 
    then
      suma=$((suma + digit))
    fi 
    n=$((n / 10))
  done
  echo $suma
}

function menorDigito() {
  n=$1
  menor=$(( n % 10))
  while (( n > 0 ))
  do
    actual=$((n % 10))
    if ((actual < menor))
    then
      menor=$actual
    fi
    n=$((n / 10))
  done
  echo $menor
}

# echo $(menorDigito 12345)

function mayorDigito() {
  n=$1
  mayor=$(( n % 10))
  while (( n > 0 ))
  do
    actual=$((n % 10))
    if ((actual > mayor))
    then
      mayor=$actual
    fi
    n=$((n / 10))
  done
  echo $mayor
}

# echo $(mayorDigito 12345)

function eliminarDigitosPares() {
  n=$1
  result=0
  while (( n > 0 ))
  do
    digit=$((n % 10))
    if ((digit % 2 != 0))
    then
      result=$(( result * 10 + digit ))
    fi
    n=$(( n / 10 ))
  done
  echo $(invertir $result)
}

# echo $(eliminarDigitosPares 12345)

function eliminarDigitosImpares() {
  n=$1
  result=0
  while (( n > 0 ))
  do
    digit=$((n % 10))
    if ((digit % 2 == 0))
    then
      result=$(( result * 10 + digit ))
    fi
    n=$(( n / 10 ))
  done
  echo $(invertir $result)
}

# echo $(eliminarDigitosImpares 12345)


function repetirNumero() {
  n=$1 # numero
  veces=$2 # veces
  result=0
  while (( n > 0 ))
  do
    digit=$(( n % 10 ))
    for (( i=0; i < veces; i++ ))
    do
      result=$((result * 10 + digit))
    done
    n=$(( n / 10 ))
  done
  echo $(invertir $result)
}

# echo $(repetirNumero 12345 3) # no aumentar mucho los digitos

