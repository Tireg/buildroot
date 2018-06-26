################################################################################
#
# zfs
#
################################################################################

ZFS_VERSION = 7637ef8d235f34876c8600e3006e0bb9763b24d8
ZFS_SITE = git://github.com/zfsonlinux/zfs
ZFS_SITE_METHOD = git
ZFS_LICENSE = CDDL
ZFS_LICENSE_FILES = LICENSE
ZFS_AUTORECONF = YES
ZFS_INSTALL_STAGING = YES
ZFS_CONF_OPTS = \
	--with-config=user \
	--with-linux="$(LINUX_DIR)" \
	--with-spl="$(SPL_DIR)" \
	--with-tirpc=no
ZFS_DEPENDENCIES = zlib util-linux openssl # libtirpc
ZFS_MODULE_SUBDIRS = module


$(eval $(kernel-module))
$(eval $(autotools-package))
