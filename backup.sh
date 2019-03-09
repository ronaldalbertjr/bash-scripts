#!/bin/bash
echo "Programa de backup"
#Autor: Ronald Albert
#DATA: 07/03/2019

backup_time=`date +%d-%b-%y` 
destino=$2-$backup_time.tar.gz
origem=$1

tar cpfz $destino $origem

for D in $(find . -type f -name "*.tar.gz" -ctime +3); do
	rm -rf $D
done
