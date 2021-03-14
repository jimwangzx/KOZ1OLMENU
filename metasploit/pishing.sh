#! /bin/bash
echo "
██████╗ ██╗███████╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
██╔══██╗██║██╔════╝██║  ██║██║████╗  ██║██╔════╝ 
██████╔╝██║███████╗███████║██║██╔██╗ ██║██║  ███╗
██╔═══╝ ██║╚════██║██╔══██║██║██║╚██╗██║██║   ██║
██║     ██║███████║██║  ██║██║██║ ╚████║╚██████╔╝
╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
                                                 
"
echo -e "1. KALI LINUX \n2. KALI LINUX ARM"
while true
do
 read -r -p "Which system are you using ? - " input
 
 case $input in
     [1][eE][sS]|[1])
  echo "Starting script... "
  cd /home/kali/Desktop/KOZ1OLMENU/Phisher
  ./Phisher.sh
  
  break
 ;;
     [2][oO]|[2])
   echo "Starting script... "
   cd /home/kali/Desktop/KOZ1OLMENU/Phisher
   mv ngrok > ngrok2
   sudo rm ngrok
   mv ngrok_arm > ngrok
   sudo rm ngrok_arm
   ./Phisher.sh
   mv ngrok > ngrok_arm
   mv ngrok2 > ngrok
   sudo rm ngrok2
   sudo rm ngrok
 
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
  cd ..
  cd metasploit
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