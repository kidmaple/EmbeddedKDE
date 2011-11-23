###############################################################################
#
# libgsl - http://ftp.wayne.edu/pub/gnu/gsl/gsl-1.9.tar.gz
#
###############################################################################
LIBGSL_VERSION = 1.9
LIBGSL_SOURCE = gsl-$(LIBGSL_VERSION).tar.gz
LIBGSL_SITE = http://ftp.wayne.edu/pub/gnu/gsl
LIBGSL_DEPENDENCIES = 
LIBGSL_INSTALL_STAGING = YES
LIBGSL_INSTALL_TARGET = NO

define LIBGSL_CONFIGURE_CMDS
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

define LIBGSL_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBGSL_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBGSL_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

