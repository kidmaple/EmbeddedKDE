###############################################################################
#
# libiodbc - http://www.iodbc.org/downloads/iODBC/libiodbc-3.52.7.tar.gz
#
###############################################################################
LIBIODBC_VERSION = 3.52.7
LIBIODBC_SOURCE = libiodbc-$(LIBIODBC_VERSION).tar.gz
LIBIODBC_SITE = http://www.iodbc.org/downloads/iODBC
#LIBIODBC_DEPENDENCIES = libpng
LIBIODBC_INSTALL_STAGING = YES
LIBIODBC_INSTALL_TARGET = NO

define LIBIODBC_CONFIGURE_CMDS
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

define LIBIODBC_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LIBIODBC_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LIBIODBC_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/kde,libiodbc))

