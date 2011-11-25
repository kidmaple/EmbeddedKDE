###############################################################################
#
# gpgme - ftp://ftp.gnupg.org/gcrypt/gpgme/gpgme-1.3.1.tar.bz2
#
###############################################################################
GPGME_VERSION = 1.3.1
GPGME_SOURCE = gpgme-$(GPGME_VERSION).tar.bz2
GPGME_SITE = http://mirrors.dotsrc.org/gcrypt/gpgme
GPGME_DEPENDENCIES = gnupg
GPGME_INSTALL_STAGING = YES
GPGME_INSTALL_TARGET = NO

define GPGME_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--disable-gpg-test \
		--disable-gpgsm-test \
		--disable-gpgconf-test \
		--disable-g13-test \
		--without-pth-test \
		--without-g13 \
		--with-gpg-error-prefix=$(STAGING_DIR)/usr \
		--with-libassuan-prefix=$(STAGING_DIR)/usr \
		--with-gpg-version=2.0.18 \
		--with-gpgsm-version=2.0.18 \
		--with-gpgconf-version=2.0.18 \
		--with-gpg=$(STAGING_DIR)/usr \
		--with-gpgsm=$(STAGING_DIR)/usr \
		--with-gpgconf=$(STAGING_DIR)/usr \
	)
endef

define GPGME_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define GPGME_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define GPGME_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

