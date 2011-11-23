###############################################################################
#
#
# jasper - http://www.ece.uvic.ca/~mdadams/jasper/software/jasper-1.900.1.zip
#          http://www.ece.uvic.ca/~frodo/jasper/software/jasper-1.900.1.zip
#
###############################################################################
JASPER_VERSION = 1.900.1
JASPER_SOURCE = jasper-$(JASPER_VERSION).tar.bz2
JASPER_SITE = http://www.ece.uvic.ca/~mdadams/jasper/software
#JASPER_DEPENDENCIES =
JASPER_INSTALL_STAGING = YES
JASPER_INSTALL_TARGET = NO

define JASPER_CONFIGURE_CMDS
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

define JASPER_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define JASPER_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define JASPER_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,jasper))

