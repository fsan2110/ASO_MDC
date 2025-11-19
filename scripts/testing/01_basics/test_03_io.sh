#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/01_basics/03_io.sh"

test_case "nombre y edad válida" \
  "echo -e \"Manuel\n40\" | $SCRIPT" \
  "*Buenas tardes Manuel, le quedan 60 año(s) para llegar a su centenario.*" \
  0

test_case "nombre superior a 100" \
  "echo -e \"Manuel\n120\" | $SCRIPT" \
  "*Felicidades Manuel, usted ya es un centenario con sus 120 años.*" \
  0

test_case "edad vacía" \
  "echo -e \"Manuel\n\n\" | $SCRIPT" \
  "*Rellene ambos valores.*" \
  1

test_case "edad no numérica" \
  "echo -e \"Manuel\nabc\" | $SCRIPT" \
  "*Escriba un número natural en el campo edad.*" \
  0

test_case "edad con espacios" \
  "echo -e \"Manuel\n40abc\" | $SCRIPT" \
  "*Escriba un número natural en el campo edad.*" \
  0

summary || exit 1