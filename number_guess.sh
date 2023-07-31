#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=game -t --no-align -c"

echo "Enter your username:"
read USERNAME

USER_FOUND=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")

if [[ -z $USER_FOUND ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  IFS='|' read USERNAME GAMES_PLAYED BEST_GUESS <<< $USER_FOUND
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
fi

echo "Guess the secret number between 1 and 1000:"
NUMBER=$(($RANDOM % 1000 + 1))

read INPUT

I=1

while [[ $INPUT -ne $NUMBER ]]
do
  re='^[0-9]+$'
  if ! [[ $INPUT =~ $re ]]
  then
    echo "That is not an integer, guess again: "
  elif [[ $INPUT -lt $NUMBER  ]]
  then
    echo "It's higher than that, guess again:"
  else
    echo "It's lower than that, guess again:"
  fi

  read INPUT
  ((I++))
done

echo "You guessed it in $I tries. The secret number was $NUMBER. Nice job!"

if [[ -z $USER_FOUND ]]
then
RESULT=$($PSQL "INSERT INTO users(username,games_played,best_guesses) VALUES('$USERNAME',1,$I);")
else

  if [[ $BEST_GUESS -gt $I ]]
  then
    BEST_GUESS=$I
  fi

  ((GAMES_PLAYED++))

  RESULT=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED, best_guesses=$BEST_GUESS WHERE username='$USERNAME'")
fi
