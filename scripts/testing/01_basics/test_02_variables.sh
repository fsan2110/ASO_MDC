#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/01_basics/02_variables.sh"

test_case "saludo con curso" \
  "$SCRIPT" \
  "Soy $(echo $USER) de Segundo de ASIR.*" \
  0

test_case "fecha" \
  "$SCRIPT" \
  "*Hoy es $(date)*" \
  0

test_case "directorio" \
  "$SCRIPT" \
  "*Estoy trabajando en el directorio $(pwd)." \
  0

summary || exit 1