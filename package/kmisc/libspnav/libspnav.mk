###############################################################################
#
# libspnav - http://kent.dl.sourceforge.net/project/libspnav/libspnav/libspnav-0.2.2/libspnav-0.2.2.tar.gz
#
###############################################################################
LIBSPNAV_VERSION = 0.2.2
LIBSPNAV_SOURCE = libspnav-$(LIBSPNAV_VERSION).tar.gz
LIBSPNAV_SITE = http://kent.dl.sourceforge.net/project/libspnav/libspnav/libspnav-$(LIBSPNAV_VERSION)

LIBSPNAV_DEPENDENCIES =
LIBSPNAV_INSTALL_STAGING = YES
LIBSPNAV_INSTALL_TARGET = YES

define LIBSPNAV_CONFIGURE_CMDS
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

define LIBSPNAV_BUILD_CMDS
        $(MAKE) CC=$(TARGET_CC) AR=$(TARGET_AR) -C $(@D)
endef

define LIBSPNAV_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBSPNAV_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(call GENTARGETS))

