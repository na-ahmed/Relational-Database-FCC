# Bash Scripting Programs
This repository contains five simple yet useful programs written in Bash to practice and demonstrate basic scripting skills. These scripts are beginner-friendly and cover a range of operations such as user interaction, countdowns, random number generation, and running multiple scripts together.

## Table of Contents
1. [Programs Overview](#programs-overview)
2. [How to Use](#how-to-use)
3. [Requirements](#requirements)
4. [Program Descriptions](#program-descriptions)
5. [References](#references)

## Programs Overview
This repository consists of the following Bash scripts:
1. [questionnaire.sh](#1-questionnairesh): Interactively asks the user for their name, location, and favorite coding website, then provides a customized response.
2. [countdown.sh](#2-countdownsh): Takes a positive integer as an argument and counts down to zero with a 1-second delay between numbers.
3. [bingo.sh](#3-bingosh): Generates a random Bingo number (between 1 and 75) and announces the corresponding Bingo column (B, I, N, G, O).
4. [fortune.sh](#4-fortunesh): Acts as a fortune teller by giving random responses to a yes/no question provided by the user.
5. [five.sh](#5-fivesh): A meta-script that runs all four of the above scripts in sequence.

## How to Use
1. Clone the repository:<br>
   `git clone https://github.com/na-ahmed/Bash-Scripting-Programs.git`
2. Navigate to the repository directory:<br>
   `cd Bash-Scripting-Programs`
3. Make the scripts executable:<br>
   `chmod +x *.sh`
4. Run any of the individual scripts:<br>
   `./questionnaire.sh`<br>
   `./countdown.sh`<br>
   `./bingo.sh`<br>
   `./fortune.sh`<br>
5. Alternatively, you can run all scripts at once using:<br>
   `./five.sh`
## Requirements
<ul>
<li>A Unix-based operating system (Linux, macOS, or WSL for Windows).</li>
<li>Bash shell (installed by default on most Unix systems).</li>
</ul>

## Program Descriptions
### 1. [questionnaire.sh](/questionnaire.sh)
An interactive script that asks the user a series of questions and prints a custom message based on their inputs. Great for practicing user input handling in Bash.

### 2. [countdown.sh](/countdown.sh)
This script takes a positive integer as an argument and counts down from that number to zero, with a one-second pause between each number. It demonstrates the use of loops, conditional statements, and argument handling in Bash.

### 3. [bingo.sh](/bingo.sh)
A simple Bingo number generator that outputs a random number between 1 and 75 and displays it along with the corresponding Bingo column (B, I, N, G, or O). This script uses random number generation and conditionals for output formatting.

### 4. [fortune.sh](/fortune.sh)
A fun script that acts like a fortune teller. The user inputs a yes/no question, and the script provides a random answer from a set of predefined responses. It showcases user input handling and working with random values in arrays.

### 5. [five.sh](/five.sh)
A meta-script designed to run all the other scripts in this repository sequentially. Useful for executing all functionalities at once.

## References
<ul>
   <li>This project was developed using <a href="https://gitpod.io">Gitpod</a>, an online IDE that provides a streamlined development environment.</li>
   <li>The Bash scripting concepts were learned and applied using the <a href="https://www.freecodecamp.org/learn/relational-database/learn-bash-scripting-by-building-five-programs/build-five-programs">FreeCodeCamp Bash Scripting Course</a>.</li>
</ul>
