#! /bin/bash
# MAIN MENU
spinner=( '|' '/' '-' '\')

spin(){
    echo -n "Sprawdzam dostępność aktualizacji"
    for i in "${spinner[@]}"
    do
        echo -ne "."
        sleep 0.2
        done
}
echo "$(tput setaf 3)
   ____________  _______ ______  _____  __  __ _____ ____ _______  __ 
  / __/ ___/ _ \/  _/ _ /_  __/ / _ \ \/ / / //_/ _ /_  /<  / __ \/ / 
 _\ \/ /__/ , __/ // ___// /   / _  |\  / / ,< / // // /_/ / /_/ / /__
/___/\___/_/|_/___/_/   /_/   /____/ /_/ /_/|_|\___//___/_/\____/____/

"
spin
git pull
clear
echo "$(tput setaf 3)
   ____________  _______ ______  _____  __  __ _____ ____ _______  __ 
  / __/ ___/ _ \/  _/ _ /_  __/ / _ \ \/ / / //_/ _ /_  /<  / __ \/ / 
 _\ \/ /__/ , __/ // ___// /   / _  |\  / / ,< / // // /_/ / /_/ / /__
/___/\___/_/|_/___/_/   /_/   /____/ /_/ /_/|_|\___//___/_/\____/____/

"
echo "IF YOU CAN'T FIND VULNERABILITY YOU MUST MAKE IT !!!"
echo "Which option do you choose ?"
echo -e "1. METASPLOIT LOW DETACTION WINDOWS PAYLOAD \n2. METASPLOIT EXE PAYLOAD INJECT\n3. DOS SCRIPT \n4. NMAP TOOL \n5. PHISHING TOOL \n6. MAC CHANGER \n7. START NGROK"
echo "If you want stop script click ctrl+c"
while true
do
 read -r -p "Which option do you choose ? - " input
 
 case $input in
     [1][eE][sS]|[1])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./metasploit_bat_shell.sh
 break
 ;;
     [2][oO]|[2])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./metasploit_exe_injection.sh
 break
 ;;
     [3][oO]|[3])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./DOS.sh
  break
 ;;
     [4][oO]|[4])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./nmap.sh
  break
 ;;
     [5][oO]|[5])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  ./pishing.sh
  break
 ;;
     [6][oO]|[6])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  ./macchanger.sh
 break
 ;;
     [7][oO]|[7])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  ./servicengrok.sh
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done