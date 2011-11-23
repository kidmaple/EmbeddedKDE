###############################################################################
#
#
# hspell - http://hspell.sourceforge.net/hspell-1.1.tar.gz
#
#
###############################################################################
HSPELL_VERSION = 1.1
HSPELL_SOURCE = hspell-$(HSPELL_VERSION).tar.gz
HSPELL_SITE = http://hspell.sourceforge.net
#HSPELL_DEPENDENCIES =
HSPELL_INSTALL_STAGING = YES
HSPELL_INSTALL_TARGET = NO

define HSPELL_CONFIGURE_CMDS
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

define HSPELL_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define HSPELL_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define HSPELL_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))
$(eval $(call GENTARGETS,host))

