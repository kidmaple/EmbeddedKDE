###############################################################################
#
# libksda - http://mirrors.dotsrc.org/gcrypt/libksba/libksba-1.2.0.tar.bz2
#
###############################################################################
LIBKSDA_VERSION = 1.2.0
LIBKSDA_SOURCE = libksba-$(LIBKSDA_VERSION).tar.bz2
LIBKSDA_SITE = http://mirrors.dotsrc.org/gcrypt/libksba
LIBKSDA_DEPENDENCIES = libgpg-error
LIBKSDA_INSTALL_STAGING = YES
LIBKSDA_INSTALL_TARGET = NO

define LIBKSDA_CONFIGURE_CMDS
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

define LIBKSDA_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBKSDA_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBKSDA_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/gcrypt,libksda))

