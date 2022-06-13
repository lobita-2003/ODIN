#!/bin/bash

rojo='\033[31m'
verde='\033[32m'
verpar='\033[5;32m'
blanco='\033[37m'
fin='\033[0m'

dl=$(echo -e "${rojo}@${verde}--${rojo}>${fin}")

echo -e "${rojo}||${fin}  INTRODUZCA UN NOMBRE DE DOMINIO O IPv4   ${rojo}||${fin}" 
echo -e "${rojo}||${verde}-------------------------------------------${rojo}||${fin}"
read -p "$dl " pag

ip=$(ping $pag -c1| grep "PING"| cut -d "(" -f 2 | cut -d ")" -f 1) 


echo -e "${rojo}===============================================${fin}"

cor=$(curl ipinfo.io/$ip | jq .loc)

echo "$cor"

firefox -new-tab https://www.google.es/maps/?q=$cor

sleep 5
echo -e "${rojo}===============================================${fin}"
echo -e "${rojo}||  [${blanco}1${rojo}]${verde}-${rojo}{${blanco}CONTINUAR${rojo}}                          ||"
echo -e "||${verde}-------------------------------------------${rojo}||" 
echo -e "||  ${rojo}[${blanco}2${rojo}]${verde}-${rojo}{${blanco}ODIN${rojo}}                               ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}3${rojo}]${verde}-${rojo}{${blanco}SALIR${rojo}}                              ||"
echo -e "===============================================${blanco}"
echo -e "${rojo}||${fin}             ELIGA UNA OPCION              ${rojo}||${fin}" 
echo -e "${rojo}||${fin}${verde}-------------------------------------------${fin}${rojo}||${fin}"
read -p "$dl " opcion 
case $opcion in 
    [1])
        echo -e "${rojo}===============================================${fin}"
        bash geo-map.sh ;;
    [2])
       bash odin.sh;;
    [3])
       exit;;
esac
