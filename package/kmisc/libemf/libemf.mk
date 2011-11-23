###############################################################################
#
# libemf - http://heanet.dl.sourceforge.net/project/libemf/libemf/1.0.4/libEMF-1.0.4.tar.gz
#
###############################################################################
LIBEMF_VERSION = 1.0.4
LIBEMF_SOURCE = libEMF-$(LIBEMF_VERSION).tar.gz
LIBEMF_SITE = http://heanet.dl.sourceforge.net/project/libemf/libemf/$(LIBEMF_VERSION)

LIBEMF_DEPENDENCIES = 
LIBEMF_INSTALL_STAGING = YES
LIBEMF_INSTALL_TARGET = NO

define LIBEMF_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--enable-editing \
	)
endef

define LIBEMF_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBEMF_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBEMF_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

