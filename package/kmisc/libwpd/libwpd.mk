###############################################################################
#
# libwpd - http://kent.dl.sourceforge.net/project/libwpd/libwpd/libwpd-0.9.3/libwpd-0.9.3.tar.gz
#
###############################################################################
LIBWPD_VERSION = 0.9.3
LIBWPD_SOURCE = libwpd-$(LIBWPD_VERSION).tar.gz
LIBWPD_SITE = http://kent.dl.sourceforge.net/project/libwpd/libwpd/libwpd-$(LIBWPD_VERSION)

LIBWPD_DEPENDENCIES = 
LIBWPD_INSTALL_STAGING = YES
LIBWPD_INSTALL_TARGET = NO

define LIBWPD_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--with-stream \
	)
endef

define LIBWPD_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBWPD_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBWPD_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

