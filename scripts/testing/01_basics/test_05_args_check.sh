#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/01_basics/05_args_check.sh"

test_case "suma positiva" \
  "$SCRIPT 7 8" \
  "Suma -> 15" \
  0

test_case "suma con negativos" \
  "$SCRIPT -3 10" \
  "Suma -> 7" \
  0

test_case "faltan argumentos" \
  "$SCRIPT 7" \
  "Uso: * numero1 numero2*" \
  1

test_case "no numéricos" \
  "$SCRIPT abc 3" \
  "Error: solo se admiten valores numéricos." \
  2

test_case "uno numérico y el otro no" \
  "$SCRIPT 5 hola" \
  "Error: solo se admiten valores numéricos." \
  2

summary || exit 1