###############################################################################
#
# redland - http://download.librdf.org/source/redland-1.0.9.tar.gz
#
###############################################################################
REDLAND_VERSION = 1.0.14
REDLAND_SOURCE = redland-$(REDLAND_VERSION).tar.gz
REDLAND_SITE = http://download.librdf.org/source

REDLAND_MAKE_ENV = $(HOST_DIR)/usr/bin:PATH=$(PATH)
REDLAND_DEPENDENCIES = raptor2 rasqal
REDLAND_INSTALL_STAGING = YES
REDLAND_INSTALL_TARGET = NO

define REDLAND_CONFIGURE_CMDS
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

define REDLAND_BUILD_CMDS
        $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define REDLAND_INSTALL_STAGING_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define REDLAND_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

