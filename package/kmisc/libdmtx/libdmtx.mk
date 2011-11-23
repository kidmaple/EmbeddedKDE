###############################################################################
#
#
# libdmtx - http://sourceforge.net/projects/libdmtx/files/libdmtx/0.7.4/libdmtx-0.7.4.tar.bz2/download
#
#
###############################################################################
LIBDMTX_VERSION = 0.7.4
LIBDMTX_SOURCE = libdmtx-$(LIBDMTX_VERSION).tar.bz2
LIBDMTX_SITE = http://sourceforge.net/projects/libdmtx/files/libdmtx/$(LIBDMTX_VERSION)
#LIBDMTX_DEPENDENCIES =
LIBDMTX_INSTALL_STAGING = YES
LIBDMTX_INSTALL_TARGET = NO

define LIBDMTX_CONFIGURE_CMDS
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

define LIBDMTX_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBDMTX_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBDMTX_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,libdmtx))

