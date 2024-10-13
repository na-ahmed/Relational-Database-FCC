#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

echo -e "\nNumber Guessing Game\n"

# Function to run the game
GAME() {
  TRIES=0
  SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

  echo "Guess the secret number between 1 and 1000:"
  read USER_GUESS

  # Loop until the user guesses the correct number
  until [[ $USER_GUESS == $SECRET_NUMBER ]]
  do
    # Check if the input is a valid integer
    if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    else
      # Check if the guess is higher or lower than the secret number
      if [[ $USER_GUESS -lt $SECRET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
      else
        echo "It's lower than that, guess again:"
      fi
      ((TRIES++)) # Increment guess count
    fi
    read USER_GUESS
  done

  ((TRIES++)) # Increment for the correct guess
 
}

# Get the username
echo "Enter your username:"
read NAME

# Check if the user exists in the 'users' table
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$NAME'")

# If the user does not exist, insert them
if [[ -z $USER_ID ]]
then
  # Insert the new user
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$NAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$NAME'")
  echo "Welcome, $NAME! It looks like this is your first time here."
else
  # Existing user: get game stats
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guess) FROM games WHERE user_id = $USER_ID")
  
  echo "Welcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Run the game
GAME

# Insert the game result into the 'games' table
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, secret_number, number_of_guess) VALUES($USER_ID, $SECRET_NUMBER, $TRIES)")
if [[ $USER_GUESS == $SECRET_NUMBER ]]
  then
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
    exit
  fi
