#!bin/bash

boot_date=$(date)
echo "El sistema se ha iniciado en la fecha: $boot_date  " >> /root/bootlog.txt

#Comprobamos si la hora del sistema esta en formato correcto
timezone=/etc/timezone

if grep -i "Europe" /etc/timezone
then
	echo " " >>/root/bootlog.txt
else
	echo "ERROR EN LA HORA DEL SISTEMA" >>/root/bootlog.txt
fi
