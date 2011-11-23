###############################################################################
#
# openexr - http://download.savannah.nongnu.org/releases/openexr/openexr-1.7.0.tar.gz
#
###############################################################################
OPENEXR_VERSION = 1.7.0
OPENEXR_SOURCE = openexr-$(OPENEXR_VERSION).tar.gz
OPENEXR_SITE = http://download.savannah.nongnu.org/releases/openexr
OPENEXR_DEPENDENCIES = ilmbase
OPENEXR_INSTALL_STAGING = YES
OPENEXR_INSTALL_TARGET = NO

define OPENEXR_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--disable-ilmbasetest \
		--disable-imfexamples \
		--disable-imffuzztest \
		--with-ilmbase-prefix=$(STAGING_DIR)/usr \
		--with-pkg-config=$(HOST_DIR)/usr/bin/pkg-config \
	)
endef

define OPENEXR_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define OPENEXR_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define OPENEXR_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

