#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/02_flow_control/06_while_counter.sh"

test_case "entrada no válida" \
  "echo -e \"-7\" | $SCRIPT" \
  "Error: escriba un número natural (1,2,3...)" \
  1

test_case "muestra contador" \
  "echo -e \"1\" | $SCRIPT" \
  "*Contador finalizado. Se han mostrado 1 números." \
  0

summary || exit 1