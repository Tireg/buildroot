################################################################################
#
# nginx-devel-kit
#
################################################################################

NGX_DEVEL_KIT_VERSION = v0.3.0
NGX_DEVEL_KIT_SITE = $(call github,simplresty,ngx_devel_kit,$(NGX_DEVEL_KIT_VERSION))
NGX_DEVEL_KIT_LICENSE = BSD-3-Clause
NGX_DEVEL_KIT_LICENSE_FILES = LICENSE

$(eval $(generic-package))
