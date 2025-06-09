#!/bin/bash

# Disable systemd's consistent network interface naming

ln -fs /dev/null "${TARGET_DIR}"/etc/systemd/network/99-default.link
