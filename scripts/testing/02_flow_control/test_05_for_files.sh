#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/02_flow_control/05_for_files.sh"

# carpeta temporal para probar el script
mkdir 05_for_files.tmp
cd 05_for_files.tmp
mkdir directorio
touch fichero


test_case "muestra los directorios correctos" \
  "$SCRIPT" \
  "*directorio es un directorio*" \
  0

test_case "muestra los ficheros correctos" \
  "$SCRIPT" \
  "*fichero 0*" \
  0

# TODO borra la carpeta temporal


summary || exit 1