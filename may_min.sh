#!/bin/bash
#preguntar directorio
echo -n "Introduzca una ruta (Enter ruta actual)"
read -r pathName

#asegurarse la ruta existe
if [ ! -d "$pathName" ]
	then
	echo "La ruta $pathName no existe"
	pahtName="."
fi

cd "$pathName"
#convertir mayusculas a minusculas (comando tr)
for i in $(ls)
do
	if [ -f "$i" ]
	then
		newName=$(echo tr '[A-Z]' '[a-z]')
		echo $newName
		mv $i $newName
	fi
done