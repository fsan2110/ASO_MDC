#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/02_flow_control/04_menu_loop.sh"

test_case "muestra menú" \
  "echo -e \"4\n\" | $SCRIPT" \
  "1) Mostrar fecha actual*2) Mostrar usuario actual*3) Mostrar el directorio actual*4) Salir*" \
  0

test_case "muestra fecha" \
  "echo -e \"1\n4\n\" | $SCRIPT" \
  "*$(date)*" \
  0

test_case "muestra el usuario" \
  "echo -e \"2\n4\n\" | $SCRIPT" \
  "*$(whoami)*" \
  0

test_case "muestra el directorio actual" \
  "echo -e \"3\n4\n\" | $SCRIPT" \
  "*$(pwd)*" \
  0

test_case "salida del programa" \
  "echo -e \"4\n\" | $SCRIPT" \
  "*Saliendo del programa. ¡Adios!" \
  0

test_case "entrada no válida" \
  "echo -e \"abc\n4\n\" | $SCRIPT" \
  "*Opción no válida.*" \
  0

summary || exit 1