# World Cup Database
This project is a part of the FreeCodeCamp Relational Database Certification. The goal of this project is to build a PostgreSQL database to store World Cup match data and write queries to analyze the data.
## Project Structure
<li>worldcup.sql: SQL file that contains the database schema and seed data for World Cup matches and teams.</li>
<li>queries.sh: Bash script that runs a series of SQL queries to analyze the World Cup data.</li>
<li>insert_data.sh: Bash script that reads from <code>games.csv</code>, processes the data, and inserts it into the PostgreSQL database.</li>
<li>games.csv: CSV file containing World Cup match data from 2014 and 2018, which is inserted into the database using <code>insert_data.sh</code>.</li>

## SQL Queries Overview
Here are the types of queries included in the queries.sh script:
1. Total number of goals scored by winning teams.
2. Total number of goals scored in all games combined.
3. Average number of goals by winning teams.
4. Most goals scored by a single team in a match.
5. List of teams that participated in the 2014 'Eighth-Final' round.
6. List of unique winning team names.
7. Year and name of all the World Cup champions.
8. Teams whose name starts with 'Co'.

## Prerequisites
To run this project, you will need the following installed on your machine:
<li>PostgreSQL (version 12 or higher)</li>
<li>Bash (for running shell scripts)</li>

## References
<li>This project was developed using <a href="https://gitpod.io">Gitpod</a>, an online IDE that provides a streamlined development environment.</li>
   <li>The Bash scripting concepts were learned and applied using the <a href="https://www.freecodecamp.org/learn/relational-database/build-a-world-cup-database-project/build-a-world-cup-database">FreeCodeCamp World Cup Database Course</a>.</li>
