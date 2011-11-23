###############################################################################
#
#
# hupnp - http://nchc.dl.sourceforge.net/project/hupnp/hupnp/herqq-1.0.0.zip
#
#
###############################################################################
HUNPN_VERSION = 1.0.0
HUNPN_SOURCE = herqq-$(HUNPN_VERSION).tar.bz2
HUNPN_SITE = http://nchc.dl.sourceforge.net/project/hupnp/hupnp

HUNPN_CONF_ENV = $(TARGET_CONFIGURE_OPTS)
#HUNPN_DEPENDENCIES =
HUNPN_INSTALL_STAGING = YES
HUNPN_INSTALL_TARGET = NO

define HUNPN_CONFIGURE_CMDS
	(cd $(@D); \
	 $(STAGING_DIR)/usr/bin/qmake -spec $(BUILD_DIR)/qt-4.7.4/mkspecs/qws/linux-arm-g++ -o Makefile herqq.pro; \
	 $(STAGING_DIR)/usr/bin/qmake \
	)
endef

define HUNPN_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define HUNPN_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define HUNPN_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

