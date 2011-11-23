###############################################################################
#
#
# lcms - http://switch.dl.sourceforge.net/project/lcms/lcms/2.2/lcms-2.2.tar.gz
#
#
###############################################################################
LCMS_VERSION = 1.19
LCMS_SOURCE = lcms-$(LCMS_VERSION).tar.gz
LCMS_SITE = http://switch.dl.sourceforge.net/project/lcms/lcms/$(LCMS_VERSION)
LCMS_DEPENDENCIES = jpeg tiff
LCMS_INSTALL_STAGING = YES
LCMS_INSTALL_TARGET = NO

define LCMS_CONFIGURE_CMDS
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

define LCMS_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LCMS_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LCMS_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

