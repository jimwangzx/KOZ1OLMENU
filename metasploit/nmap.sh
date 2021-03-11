#! /bin/bash
echo "
███╗   ██╗███╗   ███╗ █████╗ ██████╗ 
████╗  ██║████╗ ████║██╔══██╗██╔══██╗
██╔██╗ ██║██╔████╔██║███████║██████╔╝
██║╚██╗██║██║╚██╔╝██║██╔══██║██╔═══╝ 
██║ ╚████║██║ ╚═╝ ██║██║  ██║██║     
╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     
                                     
"
echo -e "1. NMAP IP DISCOVER IN LOCAL NETWORK \n2. NMAP PORT SCANNER"
while true
do
 read -r -p "Which option do you choose ? - " input2
 
 case $input2 in
     [1][eE][sS]|[1])
  echo "Starting script... "
  read -r -p "Input IP range which you want scan (ex.192.168.0.1/24) - " range
  nmap -sn $range
  
  break
 ;;
     [2][oO]|[2])
  echo "Starting script... "
  read -r -p "Input IP adress - " IP
  nmap $IP
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