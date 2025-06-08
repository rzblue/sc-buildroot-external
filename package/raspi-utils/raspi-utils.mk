################################################################################
#
# rpi-utils
#
################################################################################

RASPI_UTILS_VERSION = 58e5caa273752a88de064e9cd3ffde4e643baada
RASPI_UTILS_SITE = $(call github,raspberrypi,utils,$(RASPI_UTILS_VERSION))
RASPI_UTILS_INSTALL_STAGING = YES
RASPI_UTILS_LICENSE = BSD-3-Clause
RASPI_UTILS_LICENSE_FILES = LICENCE
RASPI_UTILS_DEPENDENCIES = dtc

$(eval $(cmake-package))
