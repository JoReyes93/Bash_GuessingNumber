#!/bin/bash

# coder: Joseph Reyes

clear

number=$(( $RANDOM % 100 ))
tries=7

echo "You have ${tries} tries to guess the secret number!"

for (( i=tries; i>0; i-- ))
do
  echo ""
  echo "You have ${i} tries left"
  read -p "Enter a number: " n

  if [ "$n" == "$number" ]
  then
    echo "Well done!, you guessed the secret number in $(( $tries - $i + 1 )) times"
    break
  elif [ "$n" -gt "$number" ]
  then
    echo "The number given is greater than the secret number"
  else
    echo "The number given is less than the secret number"
  fi

  if [ "$i" == 1 ]
  then
    sleep 2
    echo ""
    echo "Game Over! You lose"
    echo "The secret number was ${number}"
    break
  fi
done

