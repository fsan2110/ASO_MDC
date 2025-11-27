#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/03_functions/04_system_tools.sh"

test_case "muestra fecha" \
  "echo -e \"1\n4\" | $SCRIPT " \
  "*1) Mostrar fecha actual*$(date)*" \
  0

test_case "muestra usuario" \
  "echo -e \"2\n4\" | $SCRIPT " \
  "*2) Mostrar usuario actual*$(echo $USER)*" \
  0

test_case "muestra el uso de la raíz" \
  "echo -e \"3\n4\" | $SCRIPT " \
  "*3) Mostrar espacio en disco*$(df -h /)*" \
  0

test_case "salir del menu" \
  "echo -e \"4\" | $SCRIPT " \
  "*4) Salir*Saliendo del menu...*" \
  0

test_case "opción erronea" \
  "echo -e \"abc\n4\" | $SCRIPT " \
  "*Error: opción inválida*" \
  0

summary || exit 1