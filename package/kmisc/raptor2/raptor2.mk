###############################################################################
#
# raptor2 - http://download.librdf.org/source/raptor2-2.0.4.tar.gz
#
###############################################################################
RAPTOR2_VERSION = 2.0.4
RAPTOR2_SOURCE = raptor2-$(RAPTOR2_VERSION).tar.gz
RAPTOR2_SITE = http://download.librdf.org/source

RAPTOR2_DEPENDENCIES = libxslt libxml2 expat
RAPTOR2_INSTALL_STAGING = YES
RAPTOR2_INSTALL_TARGET = NO

define RAPTOR2_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--with-sysroot=$(STAGING_DIR)/usr \
		--without-html-dir \
		--disable-gtk-doc \
		--disable-gtk-doc-html \
		--disable-gtk-doc-pdf \
	)
endef

define RAPTOR2_BUILD_CMDS
        $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define RAPTOR2_INSTALL_STAGING_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define RAPTOR2_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

