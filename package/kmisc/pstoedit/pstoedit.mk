###############################################################################
#
# pstoedit - http://kent.dl.sourceforge.net/project/pstoedit/pstoedit/3.60/pstoedit-3.60.tar.gz
#
###############################################################################
PSTOEDIT_VERSION = 3.60
PSTOEDIT_SOURCE = pstoedit-$(PSTOEDIT_VERSION).tar.gz
PSTOEDIT_SITE = http://kent.dl.sourceforge.net/project/pstoedit/pstoedit/$(PSTOEDIT_VERSION)

#PSTOEDIT_DEPENDENCIES = libemf
PSTOEDIT_INSTALL_STAGING = YES
PSTOEDIT_INSTALL_TARGET = NO

define PSTOEDIT_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=$(STAGING_DIR)/usr \
		--with-emf \
		--without-magick \
		--without-libplot \
		--without-swf \
	)
endef

define PSTOEDIT_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define PSTOEDIT_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define PSTOEDIT_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

