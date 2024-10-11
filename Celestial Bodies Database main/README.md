# Celestial-Bodies-Database
## Overview
This project contains SQL scripts for creating and managing a PostgreSQL database called Universe. It is designed to demonstrate a practical understanding of relational databases, table relationships, primary and foreign keys, and CRUD (Create, Read, Update, Delete) operations. The database models the universe with entities like comets, galaxies, moons, planets, and stars. Each entity has relationships that reflect the natural structure of the universe.

## Database Structure
The Universe database consists of the following tables:
<ul>
  <li>Comet: Stores information about various comets and their primary elements.</li>
  <li>Galaxy: Holds data about galaxies, including the number of stars, planets, and their size in light-years.</li>
  <li>Moon: Contains details about moons, including their orbital period and associated planet.</li>
  <li>Planet: Includes planetary data such as the number of moons, orbital period, and whether the planet supports life.</li>
  <li>Star: Stores information on stars, their age, and the galaxy they belong to.</li>
</ul>

## Relationships
<ul>
  <li>A star belongs to a galaxy (foreign key: <code>galaxy_id</code>).</li>
  <li>A planet orbits a star (foreign key: <code>star_id</code> ).</li>
  <li>A moon orbits a planet (foreign key: <code>planet_id</code> ).</li>
</ul>

## CRUD Operations
This repository demonstrates the following CRUD operations:
<ul>
  <li>Create: Insert statements to populate the tables with data about comets, galaxies, stars, planets, and moons.</li>
  <li>Read: Use of SELECT queries to retrieve data from the tables.</li>
  <li>Update: Modifying existing records in the database.</li>
  <li>Delete: Removing records from the tables.</li>
</ul>

## Installation
1. Ensure you have PostgreSQL installed.
2. Clone this repository.
3. Use the provided SQL script (universe.sql) to create the database and tables:<br>
   `psql -U [username] -f universe.sql`
4. Connect to the universe database:<br>
   `\c universe`
   
## Usage
The SQL script creates the necessary tables and populates them with sample data. You can run queries on the database to explore the universe of comets, galaxies, planets, moons, and stars.

## References
<ul>
   <li>This project was developed using <a href="https://gitpod.io">Gitpod</a>, an online IDE that provides a streamlined development environment.</li>
   <li>The relational database concepts were learned and applied using the <a href="https://www.freecodecamp.org/learn/relational-database/build-a-celestial-bodies-database-project/build-a-celestial-bodies-database">FreeCodeCamp Build a Celestial Bodies Database</a>.</li>
</ul>
