#!/bin/bash

echo "--- CASIO DIGITAL ---"
echo "1 - Suma."
echo "2 - Resta."
echo "3 - Multiplicacion."
echo "4 - Division."

#lee la opcion del usuario
read -p "Selecciona una opcion: " opcion_operacion
echo "Opcion seleccionada:  $opcion_operacion"

#lee el primer numero
read -p "Ingrese su primer numero: " primer_numero
#lee el segundo
read -p "Ingrese su segundo numero: " segundo_numero

#dependiendo la opcion ingresada por el usuario, realiza cierta operacion
case $opcion_operacion in
    1) 
        resultado=$((primer_numero + segundo_numero)) 
        echo "La suma da como resultado: $resultado"
        ;;
    2)
        resultado=$((primer_numero - segundo_numero)) 
        echo "La resta da como resultado: $resultado"
        ;;
    3)
        resultado=$((primer_numero * segundo_numero)) 
        echo "La multiplicacion da como resultado: $resultado"
        ;;
    4)
        if [ "$segundo_numero" -ne 0 ]; then
            resultado=$((primer_numero / segundo_numero))
            echo "La division da como resultado: $resultado"
        else
            echo "ERROR. El segundo numero es menor o igual a 0. Por favor ingrese un numero mas alto."
        fi
        ;;
    *) 
        echo "Por favor, seleccione una opcion valida."
        ;;
esac




