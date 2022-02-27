#!/bin/bash

free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}'


#show active logged user details
function line(){
	echo "*************************************************"
}

echo "Your username : $(echo $USER)"
line # call function

echo "Current date and time : $(date)"
line

echo "Currently logged on users:"
who
line
