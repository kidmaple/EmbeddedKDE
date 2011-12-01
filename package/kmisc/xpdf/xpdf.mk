###############################################################################
#
#
# xpdf - ftp://ftp.foolabs.com/pub/xpdf/xpdf-3.03.tar.gz
#
#
###############################################################################
XPDF_VERSION = 3.03
XPDF_SOURCE = xpdf-$(XPDF_VERSION).tar.gz
XPDF_SITE = ftp://ftp.foolabs.com/pub/xpdf

#XPDF_OPT_DEPENDENCIES = motif (http://www.openmotif.org/)
XPDF_DEPENDENCIES = freetype
XPDF_INSTALL_STAGING = YES
XPDF_INSTALL_TARGET = NO

define XPDF_CONFIGURE_CMDS
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

define XPDF_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define XPDF_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define XPDF_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

