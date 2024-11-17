#!/bin/bash

# Setup the PSQL variable to run PostgreSQL commands
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt the user to enter their username
echo "Enter your username:"
read USERNAME

# Check if the username exists in the database
NAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

# Get the number of games played by the user
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

# Get the user's best game (minimum number of guesses)
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

# If the user does not exist, insert them as a new user
if [[ -z $NAME ]]
then
  # Insert the username into the database
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else 
  # If the user exists, display their stats (games played and best game)
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Generate a random secret number between 1 and 1000
SECRET_NUMBER=$((1 + $RANDOM % 1000))
ATTEMPTS=1  # Initialize the number of attempts
echo "Guess the secret number between 1 and 1000:"

# Start the game loop to get the user's guesses
while read GUESS
  do
    # Validate if the input is a number
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
      then
        echo "That is not an integer, guess again:"  # If not a number, ask again
      else
        # Check if the guess matches the secret number
        if [[ $GUESS -eq $SECRET_NUMBER ]]
          then
            break  # If correct, exit the loop
        else
          # If the guess is too high or too low, give a hint
          if [[ $GUESS -gt $SECRET_NUMBER ]]
            then
              echo -n "It's higher than that, guess again:"
          elif [[ $GUESS -lt $SECRET_NUMBER ]]
            then
              echo -n "It's lower than that, guess again:"
          fi
        fi
    fi
    # Increment the number of attempts
    ATTEMPTS=$(( $ATTEMPTS + 1 ))
done 

# Once the correct guess is made, display the number of attempts
if [[ $ATTEMPTS == 1 ]]
  then
    echo "You guessed it in $ATTEMPTS tries. The secret number was $SECRET_NUMBER. Nice job!"
  else
    echo "You guessed it in $ATTEMPTS tries. The secret number was $SECRET_NUMBER. Nice job!"
fi

# Get the user_id of the user based on their username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# Insert the game result (number of attempts) into the games table
INSERT_GAME=$($PSQL "INSERT INTO games(guesses, user_id) VALUES($ATTEMPTS, $USER_ID)")
