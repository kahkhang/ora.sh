#!/bin/bash

source ora.sh

task_1() {
  sleep 2
  echo "ora.sh is"
}

task_2() {
  sleep 2
  echo "awesome"
}

stty -echo
tput civis

spinner "Task 1" task_1 output1
spinner "Task 2" task_2 output2
tput el

echo "Output: ${CYAN}$output1 $output2${NORMAL}"
tput cnorm
stty echo
