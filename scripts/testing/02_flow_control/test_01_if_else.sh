#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/02_flow_control/01_if_else.sh"

test_case "número menor" \
  "echo -e \"4\n\" | $SCRIPT" \
  "*es menor que 10.*" \
  0

test_case "número mayor" \
  "echo -e \"12\n\" | $SCRIPT" \
  "*es mayor que 10.*" \
  0

test_case "número igual" \
  "echo -e \"10\n\" | $SCRIPT" \
  "Son el mismo número." \
  0

summary || exit 1