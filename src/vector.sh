#! /bin/bash

# Ordenamiento burbuja
function bubbleSort() {
  local -n ref=$1
  local n=${#ref[@]}
  for (( i = 0; i < n - 1; i++ )); do
    for (( j = 0; j < n - i - 1; j++ )); do
      if (( ref[j] > ref[j+1] )); then
        local temp=${ref[j]}
        ref[j]=${ref[j+1]}
        ref[j+1]=$temp
      fi
    done
  done
}

# ar=(5 4 3 2 1)
# bubbleSort ar
# echo ${ar[*]}
