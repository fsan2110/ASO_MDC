#!/bin/bash

test-counter() {
# almacena la salida del script
output=$(echo "$2" | scripts/02_flow_control/06_while_counter.sh)
# si el código y la salida son correctos
if [[ $? -eq $1 && $output == *"$3"* ]]; then
	echo "Prueba superada"
else
	echo "ERROR: prueba no superada"
	exit 1
fi
}

# Prueba de argumento vacío
test-counter 1 " " "Error: escriba un número natural (1,2,3...)"

# Prueba normal
test-counter 0 "4" "Contador finalizado. Se han mostrado 4 números."
