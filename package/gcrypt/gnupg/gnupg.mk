###############################################################################
#
# gnupg - http://mirrors.dotsrc.org/gcrypt/gnupg/gnupg-2.0.18.tar.bz2
#
###############################################################################
GNUPG_VERSION = 2.0.18
GNUPG_SOURCE = gnupg-$(GNUPG_VERSION).tar.bz2
GNUPG_SITE = http://mirrors.dotsrc.org/gcrypt/gnupg
GNUPG_DEPENDENCIES = libgcrypt libksda libassuan libcurl libiconv pth
GNUPG_INSTALL_STAGING = YES
GNUPG_INSTALL_TARGET = NO

define GNUPG_CONFIGURE_CMDS
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
		--with-libgcrypt-prefix=$(STAGING_DIR)/usr \
		--with-ksba-prefix=$(STAGING_DIR)/usr \
		--with-libassuan-prefix=$(STAGING_DIR)/usr \
		--with-pth-prefix=$(STAGING_DIR)/usr \
		--with-libiconv-prefix=$(STAGING_DIR)/usr \
		--without-libintl-prefix \
		--with-libcurl=$(STAGING_DIR)/usr \
	)
endef

define GNUPG_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define GNUPG_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define GNUPG_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/gcrypt,gnupg))

