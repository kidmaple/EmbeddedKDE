###############################################################################
#
#
# fam - http://oss.sgi.com/projects/fam/download/stable/fam-2.7.0.tar.gz
#
#
###############################################################################
FAM_VERSION = 2.7.0
FAM_SOURCE = fam-$(FAM_VERSION).tar.gz
FAM_SITE = http://oss.sgi.com/projects/fam/download/stable
#FAM_DEPENDENCIES =
FAM_INSTALL_STAGING = YES
FAM_INSTALL_TARGET = NO

define FAM_CONFIGURE_CMDS
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

define FAM_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define FAM_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define FAM_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,fam))

