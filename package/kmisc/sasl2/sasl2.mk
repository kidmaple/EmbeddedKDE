###############################################################################
#
# sasl2 - http://ftp.andrew.cmu.edu/pub/cyrus-mail/cyrus-sasl-2.1.25.tar.gz
#
###############################################################################
SASL2_VERSION = 2.1.25
SASL2_SOURCE = cyrus-sasl-$(SASL2_VERSION).tar.gz
SASL2_SITE = http://ftp.andrew.cmu.edu/pub/cyrus-mail
#SASL2_DEPENDENCIES = libpng
SASL2_INSTALL_STAGING = YES
SASL2_INSTALL_TARGET = NO

define SASL2_CONFIGURE_CMDS
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

define SASL2_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define SASL2_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define SASL2_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,sasl2))

