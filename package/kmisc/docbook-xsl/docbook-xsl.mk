###############################################################################
#
# docbook-xml - http://www.oasis-open.org/docbook/xml/4.2/docbook-xml-4.2.zip
#
###############################################################################
DOCBOOK_XSL_VERSION = 1.76.1
DOCBOOK_XSL_SOURCE = docbook-xsl-$(DOCBOOK_XSL_VERSION).tar.bz2
DOCBOOK_XSL_SITE = http://www.oasis-open.org/docbook/xml/$(DOCBOOK_XSL_VERSION)

#DOCBOOK_XSL_DEPENDENCIES =
DOCBOOK_XSL_INSTALL_STAGING = YES
DOCBOOK_XSL_INSTALL_TARGET = NO

define DOCBOOK_XSL_CONFIGURE_CMDS
	echo "Don't need to configure"
endef

define DOCBOOK_XSL_BUILD_CMDS
        echo "Don't need to build"
endef

define DOCBOOK_XSL_INSTALL_STAGING_CMDS
	( cd $(@D); \
		mkdir -p $(STAGING_DIR)/usr/share/xsl/docbook/ && \
		cp -r ./* $(STAGING_DIR)/usr/share/xsl/docbook/ \
	)
endef

define DOCBOOK_XSL_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

