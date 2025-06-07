#!/bin/bash
set -e

BOARD_DIR="$(dirname $0)"
for script in "${BOARD_DIR}"/post-build/*; do
  echo "Running $script"
  if [ -f $script ]; then
    "$script" $@
  fi;
done
