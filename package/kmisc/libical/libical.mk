###############################################################################
#
# libical - http://switch.dl.sourceforge.net/project/freeassociation/libical/libical-0.47/libical-0.47.tar.gz
#
###############################################################################
LIBICAL_VERSION = 0.47
LIBICAL_SOURCE = libical-$(LIBICAL_VERSION).tar.gz
LIBICAL_SITE = http://switch.dl.sourceforge.net/project/freeassociation/libical/libical-$(LIBICAL_VERSION)
LIBICAL_DEPENDENCIES = 
LIBICAL_INSTALL_STAGING = YES
LIBICAL_INSTALL_TARGET = NO

define LIBICAL_CONFIGURE_CMDS
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

define LIBICAL_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBICAL_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBICAL_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/kde,libical))

