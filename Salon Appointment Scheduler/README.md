# Salon Appointment Scheduler
This project is a command-line based salon appointment scheduling system built using Bash and PostgreSQL. It allows customers to schedule appointments for various services offered by the salon.

## Features
<li>Allows customers to book appointments for available services.</li>
<li>Automatically adds new customers if their phone number is not found in the database.</li>
<li>Outputs a confirmation message with the service name, appointment time, and customer name.</li>

## Database Setup
**Restore the Database:** To set up the database, simply run the `salon.sql` file included in the repository. This will automatically recreate the database, tables, and any initial data (such as services). <br>
`psql -U postgres < salon.sql`

## Script Functionality
The salon.sh script creates customer appointments. Here's how it works:
<li>Displays a numbered list of services to the user.</li>
<li>Prompts for the user's phone number to check if they are an existing customer.</li>
<li>If the customer is not in the database, prompts for their name and adds them as a new customer.</li>
<li>Prompts the user to schedule an appointment by choosing a service and entering the desired time.</li>
<li>Stores the appointment in the appointments table and confirms the booking with the customer.</li>

## Example Usage:
`./salon.sh`
<li>The user is prompted to select a service, enter their phone number, name (if new), and a time for the appointment.</li>
<li>Upon success, the script outputs a message like:</li>
  &emsp; <code>I have put you down for a Cut at 10:30, John.</code>

## How to Run the Project
1. Clone the repository: <br>
`git clone https://github.com/yourusername/salon-appointment-scheduler.git`
2. Make the `salon.sh` script executable: <br>
`chmod +x salon.sh`
3. Run the script: <br>
`./salon.sh`

## Example Output
For example outputs of a passing script, refer to the `examples.txt` file in the repository.

## References
<li>This project was developed using <a href="https://gitpod.io">Gitpod</a>, an online IDE that provides a streamlined development environment.</li>
<li>The Bash scripting and PostgreSQL/SQL concepts were learned and applied using the <a href="https://www.freecodecamp.org/learn/relational-database/build-a-salon-appointment-scheduler-project/build-a-salon-appointment-scheduler">FreeCodeCamp Salon Appointment Scheduler</a>.</li>
