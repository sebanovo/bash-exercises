#! /bin/bash
# Calcular el factorial de un número n!
function factorialIterativo() {
  local f=1
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
  local fibb=(0 1)
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

# función para invertir un número
function invertir() {
  local n=$1
  local result=0
  while (( n > 0 )) 
  do
    local digit=$((n % 10))
    result=$((result * 10 + digit))
    n=$((n / 10))
  done
  echo $result
}

# echo $(invertir 12345)

# función para sumar los digitos de un número
function sumarDigitos() {
  local n=$1
  local suma=0
  while (( n > 0 ))
  do
    local digit=$((n % 10))
    suma=$((suma + digit))
    n=$((n / 10))
  done
  echo $suma
}

# echo $(sumarDigitos 12345) 

# función para sumar los digitos pares de un número
function sumarDigitosPares() {
  local n=$1
  local suma=0
  while (( n > 0 ))
  do
    local digit=$((n % 10))
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
  local n=$1
  local suma=0
  while (( n > 0 ))
  do
    local digit=$((n % 10))
    if (( digit % 2 != 0)) 
    then
      suma=$((suma + digit))
    fi 
    n=$((n / 10))
  done
  echo $suma
}

# echo $(sumarDigitosImpares 12345) 

function menorDigito() {
  local n=$1
  local menor=$(( n % 10))
  while (( n > 0 ))
  do
    local actual=$((n % 10))
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
  local n=$1
  local mayor=$(( n % 10))
  while (( n > 0 ))
  do
    local actual=$((n % 10))
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
  local n=$1
  local result=0
  while (( n > 0 ))
  do
    local digit=$((n % 10))
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
  local n=$1
  local result=0
  while (( n > 0 ))
  do
    local digit=$((n % 10))
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
  local n=$1 # numero
  local veces=$2 # veces
  local result=0
  while (( n > 0 ))
  do
    local digit=$(( n % 10 ))
    for (( i=0; i < veces; i++ ))
    do
      result=$((result * 10 + digit))
    done
    n=$(( n / 10 ))
  done
  echo $(invertir $result)
}

# echo $(repetirNumero 12345 3) # no aumentar mucho los digitos

# ordenar un número por burbuja
function burbujear()
{
  local -n x=$1
  if ((x < 10))
  then
    return
  fi 

  local d=$(( x % 10 ))
  x=$(( x / 10 ))
  burbujear $1
  if (( x % 10 <= d))
  then
    x=$(( x * 10 + d ))
  else 
    local z=$(( x % 10 ))
    x=$(( x / 10 ))
    x=$(( (x * 10 + d) * 10 + z))
  fi
}

function bubbleSort()
{
  local -n x=$1
  if (( x < 10 ))
  then 
    return
  fi
  burbujear $1
  local ultimoDigito=$(( x % 10 ))
  x=$(( x / 10 ))
  bubbleSort $1
  x=$(( x * 10 + ultimoDigito ))
} 

# num=57374271
# bubbleSort num
# echo $num
