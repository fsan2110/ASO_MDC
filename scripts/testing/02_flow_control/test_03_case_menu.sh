#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/02_flow_control/03_case_menu.sh"

test_case "muestra fecha" \
  "echo -e \"1\n\" | $SCRIPT" \
  "*$(date)" \
  0

test_case "muestra el usuario" \
  "echo -e \"2\n\" | $SCRIPT" \
  "*$(whoami)" \
  0

test_case "salir del programa" \
  "echo -e \"3\n\" | $SCRIPT" \
  "*Saliendo del programa. ¡Adios!" \
  0

test_case "entrada no válida" \
  "echo -e \"abc\n\" | $SCRIPT" \
  "*Opción no válida." \
  0

summary || exit 1