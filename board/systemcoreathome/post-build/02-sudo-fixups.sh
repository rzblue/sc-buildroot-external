#!/bin/bash

# Disable pam_wheel module for sudo
sed -i '/^\s*auth\s\+required\s\+pam_wheel/s/^/# /' "${TARGET_DIR}"/etc/pam.d/sudo

# Enable NOPASSWD for sudo group
# Match lines that start with '%sudo' and end with ') ALL', replace ALL at EOL with NOPASSWD: ALL
sed -i '/^%sudo.\+)\s\+ALL\s*$/s/ALL\s*$/NOPASSWD: ALL/' "${TARGET_DIR}"/etc/sudoers
