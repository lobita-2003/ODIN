#/bin/bash

rojo='\033[31m'
verde='\033[32m'
verpar='\033[5;32m'
blanco='\033[37m'
fin='\033[0m'
dl=$(echo -e "${rojo}@${verde}--${rojo}>${fin}")


echo -e "${rojo}===============================================${fin}"
echo -e "${rojo}||  [${blanco}1${rojo}]${verde}-${rojo}{${blanco}BÁSICO${rojo}}                             ||"
echo -e "||${verde}-------------------------------------------${rojo}||"
echo -e "||  ${rojo}[${blanco}2${rojo}]${verde}-${rojo}{${blanco}EXTENDIDO${rojo}}                          ||"
echo -e "===============================================${blanco}"
echo -e "${rojo}||${fin}             ELIGA UNA OPCION              ${rojo}||${fin}"
echo -e "${rojo}||${fin}${verde}-------------------------------------------${fin}${rojo}||${fin}"
read -p "$dl " opcion
case $opcion in
    [1])
echo -e "${rojo}===============================================${fin}"
echo -e "${rojo}||${fin}         ${blanco}INTRODUZCA NOMBRE DE DOMINIO${fin}      ${rojo}||${fin}" 
echo -e "${rojo}||${fin}${verde}-------------------------------------------${fin}${rojo}||${fin}"
read -p "$dl " direccion
echo -e "${rojo}===============================================${fin}"


traceroute $direccion | cut -d "(" -f 2 | cut -d ")" -f 1 | grep -v "*";;

    [2])
echo -e "${rojo}===============================================${fin}"
echo -e "${rojo}||${fin}         ${blanco}INTRODUZCA NOMBRE DE DOMINIO${fin}      ${rojo}||${fin}" 
echo -e "${rojo}||${fin}${verde}-------------------------------------------${fin}${rojo}||${fin}"
read -p "$dl " direccion
echo -e "${rojo}===============================================${fin}"

traceroute $direccion ;;

    [*])
       exit;;

esac

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
        bash ruta.sh ;;
    [2])
       bash odin.sh;;
    [3])
       exit;;
    [*])
       exit;;
esac
