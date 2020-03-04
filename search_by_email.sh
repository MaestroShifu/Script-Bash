#!/bin/bash

# get Url attack
echo "Ingresa la url que deseas filtrar emails"
read url

wget $url

# Extrae todos los correos que existan en la pagina -E -> Realizar expresiones regulares / -o imprimir solo los que cumplan con lo requerido
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" ${url##*/} > "email_by_"${url##*/}.txt
rm ${url##*/}

echo "Filtrado completo por email: "

cat "email_by_"${url##*/}.txt

# Create by MaestroShifu