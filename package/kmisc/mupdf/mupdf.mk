###############################################################################
#
#
# MuPdf - http://www.mupdf.com/download/mupdf-0.9-source.tar.gz
#
#
###############################################################################
MUPDF_VERSION = 0.9
MUPDF_SOURCE = mupdf-$(MUPDF_VERSION)-source.tar.gz
MUPDF_SITE = http://www.mupdf.com/download

#MUPDF_OPT_DEPENDENCIES = jbig2dec
MUPDF_DEPENDENCIES = freetype jpeg zlib openjpeg
MUPDF_INSTALL_STAGING = YES
MUPDF_INSTALL_TARGET = NO

define MUPDF_CONFIGURE_CMDS
	@echo no configuring ...
endef

define MUPDF_BUILD_CMDS
        $(MAKE) CC=$(TARGET_CC) AR=$(TARGET_AR) -C $(@D)
endef

define MUPDF_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define MUPDF_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

