#! /bin/bash
spinner=( '|' '/' '-' '\')

spin(){
    echo -n "Installing"
    for i in "${spinner[@]}"
    do
        echo -ne "."
        sleep 0.2
        done
}
echo "
   _____  _______________   __   __ 
  /  _/ |/ / __/_  __/ _ | / /  / / 
 _/ //    /\ \  / / / __ |/ /__/ /__
/___/_/|_/___/ /_/ /_/ |_/____/____/  (_) (_) (_)

"
spin
cd ..
sudo mv KOZ1OLMENU /home/kali/Desktop
sudo chmod +x /home/kali/Desktop/KOZ1OLMENU/metasploit/metasploit_exe_injection.sh
sudo chmod +x /home/kali/Desktop/KOZ1OLMENU/metasploit/metasploit_bat_shell.sh
sudo chmod +x /home/kali/Desktop/KOZ1OLMENU/K0Z1OLMENU.sh
sudo chmod +x /home/kali/Desktop/KOZ1OLMENU/metasploit/DOS.sh
sudo chmod +x /home/kali/Desktop/KOZ1OLMENU/metasploit/nmap.sh
cd /home/kali/Desktop/KOZ1OLMENU
git clone https://github.com/trustedsec/unicorn.git
clear
while true
do
 read -r -p "Do you want start script ? [Y/n] " input
 
 case $input in
     [yY][eE][sS]|[yY])
 clear
 sudo ./K0Z1OLMENU.sh
 break
 ;;
     [nN][oO]|[nN])
 echo "Installation complete !"
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done