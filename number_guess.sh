#!/bin/bash

# Setup the PSQL variable
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt the user for a username
echo "Enter your username:"
read USERNAME

USER_EXISTS=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $USER_EXISTS]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USER_EXISTS! It looks like this is your first time here."
else 
  echo "Welcome back, $USER_EXISTS! You have played <games_played> games, and your best game took <best_game> guesses."
fi

SECRET_NUMBER=$((1 + $RANDOM % 1000))
ATTEMPTS=1
echo "Guess the secret number between 1 and 1000:"

while read NUM
  do
    if [[ ! $NUM =~ ^[0-9]+$ ]]
      then
        echo "That is not an integer, guess again:"
      else
      if [[ $NUM -eq $SECRET_NUMBER ]]
        then
          break;
        else
        if [[ $NUM -gt $SECRET_NUMBER ]]
          then
            echo -n "It's higher than that, guess again:"
        elif [[ $NUM -lt $SECRET_NUMBER ]]
          then
            echo -n "It's lower than that, guess again:"
        fi
      fi
    fi
    ATTEMPTS=$(( $ATTEMPTS + 1 ))
done 

if [[ $ATTEMPTS == 1 ]]
  then
    echo "You guessed it in $ATTEMPTS tries. The secret number was $SECRET_NUMBER. Nice job!"
  else
    echo "You guessed it in $ATTEMPTS tries. The secret number was $SECRET_NUMBER. Nice job!"
fi