OPENJDK_BIN_AARCH64_VERSION = 21.0.7+6
OPENJDK_BIN_AARCH64_SITE = https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.7%2B6
OPENJDK_BIN_AARCH64_SOURCE = OpenJDK21U-jre_aarch64_linux_hotspot_21.0.7_6.tar.gz
OPENJDK_BIN_AARCH64_LICENSE = GPL-2.0-with-classpath-exception 
OPENJDK_BIN_AARCH64_LICENSE_FILES = NOTICE legal/java.base/LICENSE

OPENJDK_BIN_AARCH64_INSTALL_BASE = /usr/lib/jvm

define OPENJDK_BIN_AARCH64_INSTALL_TARGET_CMDS
mkdir -p $(TARGET_DIR)$(OPENJDK_BIN_AARCH64_INSTALL_BASE)
cp -dpfr $(@D)/* $(TARGET_DIR)$(OPENJDK_BIN_AARCH64_INSTALL_BASE)
ln -snf -t $(TARGET_DIR)/usr/bin $(TARGET_DIR)$(OPENJDK_BIN_AARCH64_INSTALL_BASE)/bin/*
endef

$(eval $(generic-package))
