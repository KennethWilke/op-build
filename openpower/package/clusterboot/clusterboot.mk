################################################################################
#
# clusterboot
#
################################################################################

CLUSTERBOOT_VERSION = db212a9a9629d9aad337337506aebaa2788cf9e5
CLUSTERBOOT_SITE = git://github.com/KennethWilke/clusterboot.git
CLUSTERBOOT_LICENSE = BSD-2c
CLUSTERBOOT_LICENSE_FILES = LICENSE

define CLUSTERBOOT_BUILD_CMDS
	$(MAKE) -C $(@D) all
endef

define CLUSTERBOOT_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(BR2_EXTERNAL)/package/clusterboot/S13clusterboot \
		$(TARGET_DIR)/etc/init.d/

	$(INSTALL) -D -m 0755 $(@D)/clusterbootstrap $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))
