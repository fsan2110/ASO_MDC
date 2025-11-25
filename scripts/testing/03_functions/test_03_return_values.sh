#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/03_functions/03_return_values.sh"

test_case "numero par" \
  "echo \"12\" | $SCRIPT" \
  "*12 es par*" \
  0

test_case "numero impar" \
  "echo \"13\" | $SCRIPT" \
  "*13 es impar*" \
  0

summary || exit 1