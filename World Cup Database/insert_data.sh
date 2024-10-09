#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
# TRUNCATE tables for testing purpose
$PSQL "TRUNCATE TABLE games, teams"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Add teams 
  if [[ $WINNER != "winner" ]]
    then
      # Query the team name to see if it exists in the table
      WINNER_QUERY=$($PSQL "SELECT * FROM teams WHERE name = '$WINNER'")
      if [[ -z $WINNER_QUERY ]]
        then
          # Insert the team name 
          INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        fi
  fi
  if [[ $OPPONENT != "opponent" ]]
    then
      # Query the team name to see if it exists in the table
      OPPONENT_QUERY=$($PSQL "SELECT * FROM teams WHERE name = '$OPPONENT'")
      if [[ -z $OPPONENT_QUERY ]]
        then
          # Insert the team name 
          INSERT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        fi
  fi
  if [[ $YEAR != "year" ]]
    then
      # Obtain the winner_id and opponent_id and save them to two different variables
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
      # INSERT rows into games table
      INSERT_IN_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")
      
  fi
done