## :rocket: Ora.sh - Modern Bash Terminal Spinner
[![Bash](https://img.shields.io/badge/language-Bash-green.svg)](https://github.com/kahkhang/ora.sh) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/kahkhang/ora.sh/master/LICENSE) [![Twitter](https://img.shields.io/twitter/url/https/github.com/kahkhang/ora.sh.svg?style=social)](https://twitter.com/intent/tweet?text=%23ora.sh%20rocks%21&url=%5Bobject%20Object%5D)

Ora.sh is a dependency-free elegant terminal spinner.

![](ora.gif)

### Usage
```sh
spinner [function_name] [output_variable (Optional)]
```

### Example

```sh
source ora.sh

task_1() {
  sleep 2
  echo "ora.sh is"
}

task_2() {
  sleep 2
  echo "awesome"
}

stty -echo && tput civis
spinner "Task 1" task_1 output1
spinner "Task 2" task_2 output2
tput el

echo "Task 1's output: $output1"
echo "Task 2's output: $output2"
tput cnorm && stty echo

```
