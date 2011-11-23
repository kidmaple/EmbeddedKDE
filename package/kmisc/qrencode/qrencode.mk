###############################################################################
#
# qrencode - http://fukuchi.org/works/qrencode/qrencode-3.1.1.tar.bz2
#
###############################################################################
QRENCODE_VERSION = 3.1.1
QRENCODE_SOURCE = qrencode-$(QRENCODE_VERSION).tar.bz2
QRENCODE_SITE = http://fukuchi.org/works/qrencode
QRENCODE_DEPENDENCIES = libpng
QRENCODE_INSTALL_STAGING = YES
QRENCODE_INSTALL_TARGET = NO

define QRENCODE_CONFIGURE_CMDS
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

define QRENCODE_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define QRENCODE_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define QRENCODE_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,qrencode))

