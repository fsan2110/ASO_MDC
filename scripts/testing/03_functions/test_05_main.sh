#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/03_functions/05_main.sh"

# copia la biblioteca al directorio de trabajo
cp scripts/03_functions/05_library.sh .

test_case "muestra fecha" \
  "echo -e \"1\n4\" | $SCRIPT " \
  "*Fecha actual: $(date)*" \
  0

test_case "muestra usuario" \
  "echo -e \"2\n4\" | $SCRIPT " \
  "*Usuario actual: $(whoami)*" \
  0

test_case "muestra el uso de la raíz" \
  "echo -e \"3\n4\" | $SCRIPT " \
  "*Espacio en disco:*$(df -h /)" \
  0

test_case "salir del menu" \
  "echo -e \"4\" | $SCRIPT " \
  "*Saliendo...*" \
  0

test_case "opción erronea" \
  "echo -e \"abc\n4\" | $SCRIPT " \
  "*Opción no válida*" \
  0

rm 05_library.sh

summary || exit 1