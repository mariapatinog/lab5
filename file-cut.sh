#!/bin/bash

entrada=$1
salida=$2
numerolinea=0

cat $entrada | while read linea
do
	let numerolinea=$numerolinea+1
	if test $(($numerolinea % 27)) -eq 0; then
		echo "#$numerolinea : $linea"
	fi
done > $salida;

