Disk Usage Monitor Script

This project is a simple bash script written to monitor disk usage on a Linux/macOS system. The script uses basic Linux commands like df, grep, awk, and sed to check how much disk space is being used by each partition. A threshold value is defined in the script, and if the disk usage of any partition goes above that limit, an alert message is generated. Otherwise, an OK status is logged.

The purpose of this script is to understand shell scripting basics such as variables, loops, conditional statements, and command pipelines. The output is stored in a log file named report.log so that disk usage can be tracked over time. This project is beginner-friendly and useful for learning real-world system monitoring concepts.

Run ___

chmod +x organize.sh
./organize.sh
