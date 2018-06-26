################################################################################
#
# spl
#
################################################################################

SPL_VERSION = 1149b62d20b7ed9d8ae25d5da7a06213d79b7602
SPL_SITE = git://github.com/zfsonlinux/spl
SPL_SITE_METHOD = git
SPL_LICENSE = GPL-2.0
SPL_LICENSE_FILES = LICENSE
SPL_AUTORECONF = YES
SPL_INSTALL_STAGING = YES
SPL_CONF_OPTS = --with-config=user --with-linux="$(LINUX_DIR)"
SPL_DEPENDENCIES = linux
SPL_MODULE_SUBDIRS = module

#define SPL_BUILD_CMDS
#	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) \
#		-C $(@D)
#endef

#define SPL_INSTALL_TARGET_CMDS
#	$(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) \
#		-C $(@D) install DESTDIR=$(TARGET_DIR)
#endef

#ifeq ($(BR2_LINUX_KERNEL),y)
#WIREGUARD_MODULE_SUBDIRS = src
$(eval $(kernel-module))
#endif

$(eval $(autotools-package))
