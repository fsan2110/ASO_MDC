#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/03_functions/01_simple_function.sh"

test_case "prueba principal" \
  "$SCRIPT" \
  "*Bienvenido $(whoami), este mensaje fue definido en una función.
Adios $(whoami), este mensaje no fue definido en una función." \
  0

summary || exit 1