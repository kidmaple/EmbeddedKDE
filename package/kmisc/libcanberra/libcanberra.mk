###############################################################################
#
# libcanberra - http://0pointer.de/lennart/projects/libcanberra/libcanberra-0.28.tar.gz
#
###############################################################################
LIBCANBERRA_VERSION = 0.28
LIBCANBERRA_SOURCE = libcanberra-$(LIBCANBERRA_VERSION).tar.gz
LIBCANBERRA_SITE = http://0pointer.de/lennart/projects/libcanberra
LIBCANBERRA_DEPENDENCIES = libtool libvorbis freerdp
LIBCANBERRA_INSTALL_STAGING = YES
LIBCANBERRA_INSTALL_TARGET = NO

define LIBCANBERRA_CONFIGURE_CMDS
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

define LIBCANBERRA_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBCANBERRA_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBCANBERRA_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/kde,libcanberra))

