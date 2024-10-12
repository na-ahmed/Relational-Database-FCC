#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
# You should delete the non existent element, whose atomic_number is 1000, from the two tables
  DELETE_PROPERTIES_1000=$($PSQL "DELETE FROM properties WHERE atomic_number=1000;")
  DELETE_ELEMENTS_1000=$($PSQL "DELETE FROM elements WHERE atomic_number=1000;")
  echo "$DELETE_PROPERTIES_1000"
  echo "$DELETE_ELEMENTS_1000"
  
  # Your properties table should not have a type column
  DELETE_PROPERTIES_TYPE=$($PSQL "ALTER TABLE properties DROP COLUMN type;")
  echo "$DELETE_PROPERTIES_TYPE"