#!/usr/bin/env bash

echo "Welcome to the basic calculator!"
echo "Welcome to the basic calculator!" >> ./operation_history.txt

while true
do
  echo "Enter arithmetic operation or type 'quit' to quit:"
  echo "Enter arithmetic operation or type 'quit' to quit:" >> ./operation_history.txt

  read -r input
  echo "$input" >> ./operation_history.txt
  if [ "$input" = "quit" ]; then
    break
  fi

  re="^-?[0-9]+(\.[0-9]+)?\s+[-+*/^]\s+-?[0-9]+(\.[0-9]+)?$"
  if [[ "$input" =~ $re ]]; then
    arithmetic_result=$(echo "scale=2; $input" | bc -l)
    echo "$arithmetic_result"
    echo "$arithmetic_result" >> ./operation_history.txt
  else
    echo "Operation check failed!"
    echo "Operation check failed!" >> ./operation_history.txt
  fi
done

echo "Goodbye!"
