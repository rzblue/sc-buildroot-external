################################################################################
#
# rpi-utils
#
################################################################################

RPI_UTILS_VERSION = 58e5caa273752a88de064e9cd3ffde4e643baada
RPI_UTILS_SITE = $(call github,raspberrypi,utils,$(RPI_UTILS_VERSION))
RPI_UTILS_INSTALL_STAGING = YES
RPI_UTILS_LICENSE = BSD-3-Clause
RPI_UTILS_LICENSE_FILES = LICENCE
RPI_UTILS_DEPENDENCIES = dtc

$(eval $(cmake-package))
