#!/bin/bash
source "scripts/testing/base_test.sh"
SCRIPT="scripts/02_flow_control/02_elif.sh"

test_case "valor no válido" \
  "echo -e \"-4\n\" | $SCRIPT" \
  "Introduzca un número del 0 al 10." \
  1

test_case "nota suspensa" \
  "echo -e \"4\n\" | $SCRIPT" \
  "*Suspenso*" \
  0

test_case "nota aprobada" \
  "echo -e \"5\n\" | $SCRIPT" \
  "*Aprobado*" \
  0

test_case "nota buena" \
  "echo -e \"6\n\" | $SCRIPT" \
  "*Bien*" \
  0

test_case "nota notable" \
  "echo -e \"8\n\" | $SCRIPT" \
  "*Notable*" \
  0

test_case "nota sobresaliente" \
  "echo -e \"10\n\" | $SCRIPT" \
  "*Sobresaliente*" \
  0

summary || exit 1