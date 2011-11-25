###############################################################################
#
# libwpg - http://kent.dl.sourceforge.net/project/libwpg/libwpg/libwpg-0.2.0/libwpg-0.2.0.tar.gz
#
###############################################################################
LIBWPG_VERSION = 0.2.1
LIBWPG_SOURCE = libwpg-$(LIBWPG_VERSION).tar.gz
LIBWPG_SITE = http://kent.dl.sourceforge.net/project/libwpg/libwpg/libwpg-$(LIBWPG_VERSION)
LIBWPG_DEPENDENCIES = libwpd
LIBWPG_INSTALL_STAGING = YES
LIBWPG_INSTALL_TARGET = NO

define LIBWPG_CONFIGURE_CMDS
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

define LIBWPG_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBWPG_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBWPG_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

