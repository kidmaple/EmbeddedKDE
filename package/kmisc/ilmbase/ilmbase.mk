###############################################################################
#
# ilmbase - http://download.savannah.nongnu.org/releases/openexr/ilmbase-1.0.2.tar.gz
#
###############################################################################
ILMBASE_VERSION = 1.0.2
ILMBASE_SOURCE = ilmbase-$(ILMBASE_VERSION).tar.gz
ILMBASE_SITE = http://download.savannah.nongnu.org/releases/openexr
ILMBASE_DEPENDENCIES = 
ILMBASE_INSTALL_STAGING = YES
ILMBASE_INSTALL_TARGET = NO

define ILMBASE_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--disable-osx-arch \
		--disable-osx-sdk \
		--disable-osx-universal-binaries \
	)
endef

define ILMBASE_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define ILMBASE_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define ILMBASE_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

