###############################################################################
#
# gpa - http://mirrors.dotsrc.org/gcrypt/alpha/gpa/gpa-0.7.5.tar.bz2
#
###############################################################################
GPA_VERSION = 0.7.5
GPA_SOURCE = gpa-$(GPA_VERSION).tar.bz2
GPA_SITE = http://mirrors.dotsrc.org/gcrypt/alpha/gpa
GPA_DEPENDENCIES = 
GPA_INSTALL_STAGING = YES
GPA_INSTALL_TARGET = NO

define GPA_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--disable-gtktest \
		--with-gpgme-prefix=$(STAGING_DIR)/usr \
		--without-libintl-prefix \
		--with-libiconv-prefix=$(STAGING_DIR)/usr \
	)
endef

define GPA_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define GPA_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define GPA_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/gcrypt,gpa))

