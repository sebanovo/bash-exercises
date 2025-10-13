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

ar=(5 4 3 2 1)
bubbleSort ar
echo ${ar[*]}
