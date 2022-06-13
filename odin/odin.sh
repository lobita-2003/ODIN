#!/bin/bash

rojo='\033[31m'
verde='\033[32m'
verpar='\033[5;32m'
blanco='\033[37m'
fin='\033[0m'

dl=$(echo -e "${rojo}@${verde}--${rojo}>${fin}")


echo ""
echo -e "${rojo}==============================================="
echo -e "${rojo}||${fin} ${verpar}       ██████╗ ██████╗ ██╗███╗   ██╗${fin}      ${rojo}||${fin}"
echo -e "${rojo}||${fin} ${verpar}      ██╔═══██╗██╔══██╗██║████╗  ██║${fin}      ${rojo}||${fin}"
echo -e "${rojo}||${fin} ${verpar}      ██║   ██║██║  ██║██║██╔██╗ ██║${fin}      ${rojo}||${fin}"
echo -e "${rojo}||${fin} ${verpar}      ██║   ██║██║  ██║██║██║╚██╗██║${fin}      ${rojo}||${fin}"
echo -e "${rojo}||${fin} ${verpar}      ╚██████╔╝██████╔╝██║██║ ╚████║${fin}      ${rojo}||${fin}"
echo -e "${rojo}||${fin} ${verpar}       ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝${fin}      ${rojo}||${fin}"
echo -e "${rojo}==============================================="
echo -e "||  ${rojo}[${blanco}1${rojo}]${verde}-${rojo}{${blanco}INFORMACIÓN DIRECCION IP${rojo}}           ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}2${rojo}]${verde}-${rojo}{${blanco}GEOLOCALIZACIÓN${rojo}}                    ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}3${rojo}]${verde}-${rojo}{${blanco}RUTA DE CONEXION${rojo}}                   ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}4${rojo}]${verde}-${rojo}{${blanco}ANALISIS DE PUERTOS${rojo}}                ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}5${rojo}]${verde}-${rojo}{${blanco}SERVIDORES ASOCIADOS${rojo}}               ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}6${rojo}]${verde}-${rojo}{${blanco}SALIR${rojo}}                              ||"
echo -e "===============================================${blanco}"
echo -e "${rojo}||${fin}             ELIGA UNA OPCION              ${rojo}||${fin}"
echo -e "${rojo}||${fin}${verde}-------------------------------------------${fin}${rojo}||${fin}"
read -p "$dl " opcion
echo -e "${rojo}===============================================${blanco}"
case $opcion in
    [1])
       bash ipinfo.sh;;
    [2])
       bash geo-map.sh;;
    [3])
       bash ruta.sh;;
    [4])
       bash puertos.sh;;
    [5])
       bash asociados.sh;;
    [6])
       exit;;
    [*])
       exit;;
esac
