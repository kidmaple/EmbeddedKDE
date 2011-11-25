###############################################################################
#
# libgpg-error - http://mirrors.dotsrc.org/gcrypt/libgpg-error/libgpg-error-1.10.tar.bz2
#
###############################################################################
LIBGPG_ERROR_VERSION = 1.10
LIBGPG_ERROR_SOURCE = libgpg-error-$(LIBGPG_ERROR_VERSION).tar.bz2
LIBGPG_ERROR_SITE = http://mirrors.dotsrc.org/gcrypt/libgpg-error
LIBGPG_ERROR_DEPENDENCIES =
LIBGPG_ERROR_INSTALL_STAGING = YES
LIBGPG_ERROR_INSTALL_TARGET = NO

define LIBGPG_ERROR_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
	)
endef

define LIBGPG_ERROR_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBGPG_ERROR_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBGPG_ERROR_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/gcrypt,libgpg-error))

