#!/bin/bash
cy='\033[36;1m' 
me='\033[31;1m' 
pu='\033[37;1m' 
ku='\033[33;1m'
i='\033[32;1m' 
pur='\033[35;1m' 
cl='\033[40;1m'
clear
echo -e "$ku
    ____           __        _____                      
   /  _/___  _____/ /_____ _/ / (_)___  ____ _          
   / // __ \/ ___/ __/ __ `/ / / / __ \/ __ `/          
 _/ // / / (__  ) /_/ /_/ / / / / / / / /_/ / _ _ _ _ _ 
/___/_/ /_/____/\__/\__,_/_/_/_/_/ /_/\__, (_|_|_|_|_|_)
                                     /____/             

"

echo ""
echo -e "$cl --//Installing required Packages--//--"
sleep 3
apt upgrade
pkg update
pkg install nmap
echo -e $i"\t\t["$bi"�"$i"]"$me"-------------------------------------------"$i"["$bi"�"$i"]"
echo -e $i"\t\t |"$cy"         Packages Successfully Installed   "$i"  |"
echo -e $i"\t\t |"$me"---------------------------------------------"$i"|"
echo ""
echo -e "\e[94mPress enter to continue with installation  \e[0m" 
read -p '' userinput1;
echo -e "$cl Follow me on github to finish installation......"
xdg-open https://github.com/TermuxHackz
sleep 5
echo ""
echo -e "\e[0;92m Installation Successfully Completed"
echo -e $cy"You can now run (bash recon.sh) or (./recon.sh)"
exit 1











