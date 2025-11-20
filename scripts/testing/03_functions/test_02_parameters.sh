#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/03_functions/02_parameters.sh"

test_case "mañana" \
  "$SCRIPT mañana" \
  "Buenos días $(whoami), hay que trabajar.*" \
  0

  test_case "tarde" \
  "$SCRIPT tarde" \
  "Buenas tardes $(whoami), sigue con los scripts.*" \
  0

  test_case "noche" \
  "$SCRIPT noche" \
  "Buenas noches $(whoami), a dormir.*" \
  0

  test_case "valor erróneo" \
  "$SCRIPT día" \
  "Error: valor erróneo en el parámetro*" \
  1

  test_case "contador de argumentos" \
  "$SCRIPT noche" \
  "*La función ha recibido 2 argumentos." \
  0

summary || exit 1