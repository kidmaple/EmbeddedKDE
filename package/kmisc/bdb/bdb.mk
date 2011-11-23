###############################################################################
#
# bdb - http://download.oracle.com/berkeley-db/db-5.2.36.tar.gz
#       http://download.oracle.com/berkeley-db/db-4.8.26.tar.gz
###############################################################################
BDB_VERSION = 5.2.36
BDB_SOURCE = db-$(BDB_VERSION).tar.gz
BDB_SITE = http://download.oracle.com/berkeley-db
BDB_DEPENDENCIES = 
BDB_INSTALL_STAGING = YES
BDB_INSTALL_TARGET = NO

define BDB_CONFIGURE_CMDS
	(cd $(@D)/build_unix; rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		../dist/configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
	)
endef

define BDB_BUILD_CMDS
        $(MAKE) -C $(@D)/build_unix
endef

define BDB_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D)/build_unix DESTDIR=$(STAGING_DIR) install
endef

define BDB_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,bdb))

