###############################################################################
#
# rasqal - http://download.librdf.org/source/rasqal-0.9.27.tar.gz
#
###############################################################################
RASQAL_VERSION = 0.9.27
RASQAL_SOURCE = rasqal-$(RASQAL_VERSION).tar.gz
RASQAL_SITE = http://download.librdf.org/source

RASQAL_DEPENDENCIES = pcre libxml2 
RASQAL_INSTALL_STAGING = YES
RASQAL_INSTALL_TARGET = NO

define RASQAL_CONFIGURE_CMDS
	( cd $(@D); rm -rf config.cache; \
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

define RASQAL_BUILD_CMDS
        $(TARGET_CONFIGURE_OPTS) $(RASQAL_MAKE_ENV) $(MAKE) -C $(@D)
endef

define RASQAL_INSTALL_STAGING_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define RASQAL_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

