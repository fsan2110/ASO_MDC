#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/01_basics/04_args.sh"

test_case "varios argumentos" \
  "$SCRIPT 1 2 3" \
  "Error: solo se admiten dos argumentos de línea." \
  0

test_case "nombre del script" \
  "$SCRIPT 2 3" \
  "Nombre del script -> *" \
  0

test_case "argumentos 7 y 8" \
  "$SCRIPT 7 8" \
  "*Primer valor -> 7
Segundo valor -> 8*" \
  0

test_case "resultado correcto" \
  "$SCRIPT 7 8" \
  "*Suma -> 15" \
  0

summary || exit 1