#!/bin/bash

# Setup the PSQL variable
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Prompt the user for a username
echo -n "Enter your username: "
read USERNAME


