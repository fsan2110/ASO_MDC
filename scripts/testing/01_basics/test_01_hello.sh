#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/01_basics/01_hello.sh"

test_case "contiene usuario" \
  "$SCRIPT" \
  "Usuario actual -> $(whoami)*" \
  0

test_case "contiene directorio de trabajo" \
  "$SCRIPT" \
  "*Directorio de trabajo en uso -> $(echo $PWD)*" \
  0

test_case "contiene fecha" \
  "$SCRIPT" \
  "*Fecha actual -> $(date)" \
  0

summary || exit 1