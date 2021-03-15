#! /bin/bash
spinner=( '|' '/' '-' '\')

spin(){
    echo -n "Changing MAC ADRESS"
    for i in "${spinner[@]}"
    do
        echo -ne "."
        sleep 0.2
        done
}
echo "$(tput setaf 3)

 ███▄ ▄███▓ ▄▄▄      ▄████▄   ▄████▄   ██░ ██  ▄▄▄      ███▄    █   ▄████ ▓█████  ██▀███  
▓██▒▀█▀ ██▒▒████▄   ▒██▀ ▀█  ▒██▀ ▀█  ▓██░ ██▒▒████▄    ██ ▀█   █  ██▒ ▀█▒▓█   ▀ ▓██ ▒ ██▒
▓██    ▓██░▒██  ▀█▄ ▒▓█    ▄ ▒▓█    ▄ ▒██▀▀██░▒██  ▀█▄ ▓██  ▀█ ██▒▒██░▄▄▄░▒███   ▓██ ░▄█ ▒
▒██    ▒██ ░██▄▄▄▄██▒▓▓▄ ▄██▒▒▓▓▄ ▄██▒░▓█ ░██ ░██▄▄▄▄██▓██▒  ▐▌██▒░▓█  ██▓▒▓█  ▄ ▒██▀▀█▄  
▒██▒   ░██▒ ▓█   ▓██▒ ▓███▀ ░▒ ▓███▀ ░░▓█▒░██▓ ▓█   ▓██▒██░   ▓██░░▒▓███▀▒░▒████▒░██▓ ▒██▒
░ ▒░   ░  ░ ▒▒   ▓▒█░ ░▒ ▒  ░░ ░▒ ▒  ░ ▒ ░░▒░▒ ▒▒   ▓▒█░ ▒░   ▒ ▒  ░▒   ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
░  ░      ░  ▒   ▒▒ ░ ░  ▒     ░  ▒    ▒ ░▒░ ░  ▒   ▒▒ ░ ░░   ░ ▒░  ░   ░  ░ ░  ░  ░▒ ░ ▒░
░      ░     ░   ▒  ░        ░         ░  ░░ ░  ░   ▒     ░   ░ ░ ░ ░   ░    ░     ░░   ░ 
       ░         ░  ░ ░      ░ ░       ░  ░  ░      ░  ░        ░       ░    ░  ░   ░     
                    ░        ░                                                            
"
echo -e "1. MACCHANGER WITH RANDOM MAC ADRESS \n2. MACCHANGER WITH SPECYFIC MAC ADRESS"
while true
do
 read -r -p "Which option do you want to choose? - " ODPOWIEDZ
 
 case $ODPOWIEDZ in
     [1][eE][sS]|[1])
  ifconfig
  read -r -p "For which interface you want change mac adress ? (ex.eth0, wlan0) - " interface
  spin
  sudo ifconfig $interface down
  macchanger -r $interface
  sudo ifconfig $interface up
  echo "MAC ADRESS CHANGED !"
  cd /home/kali/Desktop/KOZ1OLMENU
  break
  ;;
     [2][eE][sS]|[2])
  ifconfig
  read -r -p "For which interface you want change mac adress ? (ex.eth0, wlan0) - " interface
  read -r -p "Enter you mac adress (ex. XX:XX:XX:XX:XX:XX) - " mac
  spin
  sudo ifconfig $interface down
  macchanger --mac $mac $interface
  sudo ifconfig $interface up
  echo "MAC ADRESS CHANGED !"
  cd /home/kali/Desktop/KOZ1OLMENU
  break
        ;;
     *)
 echo "Invalid input..."
 ;;
  esac
done 
while true
do
 read -r -p "Do you want start script again ? (y/n) - " start
 
 case $start in
     [yY][eE][sS]|[yY])
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