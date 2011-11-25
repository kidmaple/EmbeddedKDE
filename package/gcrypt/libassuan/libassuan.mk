###############################################################################
#
# libassuan - http://mirrors.dotsrc.org/gcrypt/libassuan/libassuan-2.0.2.tar.bz2
#
###############################################################################
LIBASSUAN_VERSION = 2.0.2
LIBASSUAN_SOURCE = libassuan-$(LIBASSUAN_VERSION).tar.bz2
LIBASSUAN_SITE = http://mirrors.dotsrc.org/gcrypt/libassuan
LIBASSUAN_DEPENDENCIES =
LIBASSUAN_INSTALL_STAGING = YES
LIBASSUAN_INSTALL_TARGET = NO

define LIBASSUAN_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--with-gpg-error-prefix=$(STAGING_DIR)/usr \
	)
endef

define LIBASSUAN_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBASSUAN_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBASSUAN_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/gcrypt,libassuan))

