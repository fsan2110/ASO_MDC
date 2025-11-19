#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/01_basics/06_errors.sh"

test_case "opciones de set correctas" \
  "$SCRIPT" \
  "+ set -e
+ set -u*" \
  0

test_case "if correcto" \
  "$SCRIPT" \
  "*usuario raíz.*" \
  0

test_case "echo funcional" \
  "$SCRIPT" \
  "*Eureka*" \
  0

summary || exit 1