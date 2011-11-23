###############################################################################
#
# libgsf - http://ftp.acc.umu.se/pub/GNOME/sources/libgsf/1.14/libgsf-1.14.4.tar.gz
#
###############################################################################
LIBGSF_VERSION = 1.14.4
LIBGSF_SOURCE = libgsf-$(LIBGSF_VERSION).tar.gz
LIBGSF_SITE = http://ftp.acc.umu.se/pub/GNOME/sources/libgsf/1.14
LIBGSF_DEPENDENCIES = 
LIBGSF_INSTALL_STAGING = YES
LIBGSF_INSTALL_TARGET = NO

define LIBGSF_CONFIGURE_CMDS
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

define LIBGSF_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBGSF_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBGSF_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

