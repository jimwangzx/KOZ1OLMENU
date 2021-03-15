#! /bin/bash
echo "$(tput setaf 3)
 ███▄    █   ▄████  ██▀███   ▒█████   ██ ▄█▀
 ██ ▀█   █  ██▒ ▀█▒▓██ ▒ ██▒▒██▒  ██▒ ██▄█▒ 
▓██  ▀█ ██▒▒██░▄▄▄░▓██ ░▄█ ▒▒██░  ██▒▓███▄░ 
▓██▒  ▐▌██▒░▓█  ██▓▒██▀▀█▄  ▒██   ██░▓██ █▄ 
▒██░   ▓██░░▒▓███▀▒░██▓ ▒██▒░ ████▓▒░▒██▒ █▄
░ ▒░   ▒ ▒  ░▒   ▒ ░ ▒▓ ░▒▓░░ ▒░▒░▒░ ▒ ▒▒ ▓▒
░ ░░   ░ ▒░  ░   ░   ░▒ ░ ▒░  ░ ▒ ▒░ ░ ░▒ ▒░
   ░   ░ ░ ░ ░   ░   ░░   ░ ░ ░ ░ ▒  ░ ░░ ░ 
         ░       ░    ░         ░ ░  ░  ░   
                                            
"
echo -e "1. KALI LINUX \n2. KALI LINUX ARM"
while true
do
 read -r -p "Which system are you using ? - " input
 
 case $input in
     [1][eE][sS]|[1])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/ngrok
  sleep 2
  clear
  read -r -p "Which service do you want use ? (ex. tcp/http) - " input1
  read -r -p "Which port do you want use for this service ? - " input2
  gnome-terminal --window --title=NGROK -- ./ngrok $input1 $input2
  cd ..
  sudo ./K0Z1OLMENU.sh

  break
 ;;
     [2][oO]|[2])
   echo "Starting script... "
   cd /home/kali/Desktop/KOZ1OLMENU/ngrok
   sleep 2
   clear
   read -r -p "Which service do you want use ? (ex. tcp/http) - " input3
   read -r -p "Which port do you want use for this service ? - " input4
   gnome-terminal --window --title=NGROK -- ./ngrok $input3 $input4
   cd ..
   ./K0Z1OLMENU.sh
  break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done