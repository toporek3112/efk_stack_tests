#!/bin/bash

input="/home/karol/Documents/Projects/efk_stack_tests/partymaster_logs/$1"
output="/home/karol/Documents/Projects/efk_stack_tests/partymaster_logs/$2"
while IFS= read -r line
do
  echo "$line" >> $output
  sleep 0.2
done < "$input"
