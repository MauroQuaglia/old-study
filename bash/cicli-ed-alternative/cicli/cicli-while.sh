#!/bin/bash

let count=0
while [[ $count -lt 10 ]]; do
  echo -n "$count" # -n sopprime il ritorno a capo
  ((count++))
done      

echo "----------------------------------------------------"

while [[ "$input" != "fine" ]]
do
  echo "Scrivi fine per terminare..."
  read input
done 
