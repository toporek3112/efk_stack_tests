#!/bin/bash

input="/home/karol/Documents/Projects/efk_stack_tests/partymaster_logs/application.log"
output="/home/karol/Documents/Projects/efk_stack_tests/partymaster_logs/application.out.log"
while IFS= read -r line
do
  echo "$line" >> $output
  sleep 0.1
done < "$input"
