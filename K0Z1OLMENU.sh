#! /bin/bash
# MAIN MENU
echo "
   ____________  _______ ______  _____  __  __ _____ ____ _______  __ 
  / __/ ___/ _ \/  _/ _ /_  __/ / _ \ \/ / / //_/ _ /_  /<  / __ \/ / 
 _\ \/ /__/ , __/ // ___// /   / _  |\  / / ,< / // // /_/ / /_/ / /__
/___/\___/_/|_/___/_/   /_/   /____/ /_/ /_/|_|\___//___/_/\____/____/

"
echo "IF YOU CAN'T FIND VULNERABILITY YOU MUST MAKE IT !!!"
echo "Which option do you choose ?"
echo -e "1. METASPLOIT LOW DETACTION WINDOWS PAYLOAD \n2. METASPLOIT EXE PAYLOAD INJECT\n3. DOS SCRIPT"
read ODPOWIEDZ
if [ $ODPOWIEDZ == "1" ]
then
  echo "Uruchamiam wybrany skrypt... "
  sleep 3
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./metasploit_bat_shell.sh
fi
if [ $ODPOWIEDZ == "2" ]
then
  echo "Uruchamiam wybrany skrypt... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./metasploit_exe_injection.sh
fi
if [ $ODPOWIEDZ == "3" ]
then
  echo "Uruchamiam wybrany skrypt... "
  cd /home/kali/Desktop/KOZ1OLMENU/metasploit
  sudo ./DOS.sh
fi