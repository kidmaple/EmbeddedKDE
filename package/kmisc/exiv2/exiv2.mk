###############################################################################
#
# exiv2 - http://www.exiv2.org/exiv2-0.22.tar.gz
#
###############################################################################
EXIV2_VERSION = 0.22
EXIV2_SOURCE = exiv2-$(EXIV2_VERSION).tar.gz
EXIV2_SITE = http://www.exiv2.org
EXIV2_DEPENDENCIES = 
EXIV2_INSTALL_STAGING = YES
EXIV2_INSTALL_TARGET = NO

define EXIV2_CONFIGURE_CMDS
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

define EXIV2_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define EXIV2_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define EXIV2_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

