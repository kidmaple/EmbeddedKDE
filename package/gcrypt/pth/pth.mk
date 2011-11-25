###############################################################################
#
# pth - http://mirrors.dotsrc.org/ftp.gnu.org/pub/gnu/pth/pth-2.0.7.tar.gz
#
###############################################################################
PTH_VERSION = 2.0.7
PTH_SOURCE = pth-$(PTH_VERSION).tar.gz
PTH_SITE = http://mirrors.dotsrc.org/gnu/pth
PTH_DEPENDENCIES =
PTH_INSTALL_STAGING = YES
PTH_INSTALL_TARGET = NO

define PTH_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--enable-tests \
	)
endef

define PTH_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define PTH_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define PTH_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/gcrypt,pth))

