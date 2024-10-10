#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon -t -c"

echo -e "\n~~~~~ Salon ~~~~~\n"
MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "$1"
  fi 
  echo -e "Services we offer:"
  LIST_SERVICES=$($PSQL "SELECT service_id, name FROM services")
  echo "$LIST_SERVICES" | while read SERVICE_ID BAR SERVICE
  do
    ID=$(echo $SERVICE_ID | sed 's/ //g')
    NAME=$(echo $SERVICE | sed 's/ //g')
    echo "$ID) $NAME"
  done
  echo "0) EXIT"
  echo -e "\nSelect a service by service number"
  read SERVICE_ID_SELECTED
  SERVICE_SELECTED=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")
  case $SERVICE_ID_SELECTED in
    [1-3]) BOOK_APPOINTMENT ;;
    0) EXIT ;;
    *) MAIN_MENU "Please select a valid option" ;;
  esac

}
BOOK_APPOINTMENT() {
  echo -e "\nWhat is your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  if [[ -z $CUSTOMER_ID ]]
    then
      echo "What's your name?"
      read CUSTOMER_NAME
      NEW_CUSTOMER_QUERY=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
  fi
  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  echo "What time would you like the appointment?"
  read SERVICE_TIME
  NEW_APPOINTMENT_QUERY=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$CUSTOMER_ID', '$SERVICE_ID_SELECTED', '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_SELECTED at $SERVICE_TIME, $CUSTOMER_NAME."
}
EXIT() {
  echo -e "\n~~ Thank you for visiting! ~~\n"
}
MAIN_MENU


