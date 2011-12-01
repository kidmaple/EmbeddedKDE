###############################################################################
#
#
# lcms2 - http://switch.dl.sourceforge.net/project/lcms/lcms/2.2/lcms2-2.2.tar.gz
#
#
###############################################################################
LCMS2_VERSION = 2.2
LCMS2_SOURCE = lcms2-$(LCMS2_VERSION).tar.gz
LCMS2_SITE = http://switch.dl.sourceforge.net/project/lcms/lcms/$(LCMS2_VERSION)
LCMS2_DEPENDENCIES = jpeg tiff
LCMS2_INSTALL_STAGING = YES
LCMS2_INSTALL_TARGET = NO

define LCMS2_CONFIGURE_CMDS
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

define LCMS2_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LCMS2_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LCMS2_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

