################################################################################
#
# nginx-lua
#
################################################################################

NGINX_LUA_VERSION = v0.10.13
NGINX_LUA_SITE = $(call github,openresty,lua-nginx-module,$(NGINX_LUA_VERSION))
NGINX_LUA_LICENSE = BSD-2-Clause
NGINX_LUA_DEPENDENCIES = luajit

$(eval $(generic-package))
