###############################################################################
#
# redland-bindings - http://download.librdf.org/source/redland-bindings-1.0.9.tar.gz
#
###############################################################################
REDLAND_BINDINGS_VERSION = 1.0.9
REDLAND_BINDINGS_SOURCE = redland-bindings-$(REDLAND_BINDINGS_VERSION).tar.gz
REDLAND_BINDINGS_SITE = http://download.librdf.org/source
#REDLAND_BINDINGS_DEPENDENCIES = libpng
REDLAND_BINDINGS_INSTALL_STAGING = YES
REDLAND_BINDINGS_INSTALL_TARGET = NO

define REDLAND_BINDINGS_CONFIGURE_CMDS
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

define REDLAND_BINDINGS_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define REDLAND_BINDINGS_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define REDLAND_BINDINGS_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/kde,redland-bindings))

