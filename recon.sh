#!/bin/bash

if [ -z "$1" ]
then
        echo -e "\e[1;40m Usage: ./recon.sh <IP>"
        exit 1
fi
cy='\033[36;1m' 
me='\033[31;1m' 
pu='\033[37;1m' 
ku='\033[33;1m'
i='\033[32;1m' 
pur='\033[35;1m' 
echo -e "$i Please wait while tool sets up environment........."
sleep 5
echo -e "$cy =====[Environment Setup Complete]====="
sleep 3
clear
echo -e "$cy  
_____                      
|  __ \                     
| |__) |___  ___ ___  _ __  
|  _  // _ \/ __/ _ \| '_ \ 
| | \ \  __/ (_| (_) | | | |
|_|  \_\___|\___\___/|_| |_|
              ====[v1.0]====                           
"                           
echo -e "$me Author: AnonyminHack5"
echo -e "$pu Github: https://github.com/TermuxHackz"
echo -e "$ku Hacker: WhiteHat"
echo -e "$i Group: Termux Android Hackers"

echo ""
printf "\n----- NMAP -----\n\n" > results.txt

echo "Running Nmap..."
nmap $1 | tail -n +5 | head -n -3 >> results.txt

while read line
do
        if [[ $line == *open* ]] && [[ $line == *http* ]]
        then
                echo "Running Gobuster..."
                gobuster dir -u $1 -w /usr/share/wordlists/dirb/common.txt -qz > temp1

        echo "Running WhatWeb..."
        whatweb $1 -v > temp2
        fi
done < results.txt

if [ -e temp1 ]
then
        printf "\n----- DIRS -----\n\n" >> results.txt
        cat temp1 >> results.txt
        rm temp1
fi

if [ -e temp2 ]
then
    printf "\n----- WEB -----\n\n" >> results.txt
        cat temp2 >> results.txt
        rm temp2
fi

cat results.txt