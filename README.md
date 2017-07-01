## Bash terminal spinner
Ora.sh is a dependency-free elegant terminal spinner.

### Example

```sh
source ora.sh

task_1() {
  echo "output1"
  sleep 5
  echo "output2"
}

task_2() {
  echo "output1"
  sleep 5
  echo "output2"
}

stty -echo
tput civis

spinner "Task 1" task_1 output1
spinner "Task 2" task_2 output2
tput el

echo "Output1: $output1"
echo "Output2: $output2"

tput cnorm
stty echo
```
