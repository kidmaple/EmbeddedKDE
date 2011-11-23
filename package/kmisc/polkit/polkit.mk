###############################################################################
#
# polkit - http://hal.freedesktop.org/releases/polkit-0.102.tar.gz
#
###############################################################################
POLKIT_VERSION = 0.102
POLKIT_SOURCE = polkit-$(POLKIT_VERSION).tar.gz
POLKIT_SITE = http://hal.freedesktop.org/releases

POLKIT_DEPENDENCIES = linux-pam expat
POLKIT_INSTALL_STAGING = YES
POLKIT_INSTALL_TARGET = NO

define POLKIT_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--without-os-type \
		--with-sysroot=$(STAGING_DIR)/usr \
		--disable-examples \
		--disable-man-pages \
		--disable-gtk-doc \
		--disable-gtk-doc-html \
		--disable-gtk-doc-pdf \
	)
endef

define POLKIT_BUILD_CMDS
        $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)
endef

define POLKIT_INSTALL_STAGING_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define POLKIT_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/kde,polkit))

