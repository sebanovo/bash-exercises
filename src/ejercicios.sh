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

for (( i=1;i<=10;i++ ))
do
  echo "$i = $(fibonacciRecursivo $i)"
done





