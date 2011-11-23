###############################################################################
#
# docbook-xml - http://www.oasis-open.org/docbook/xml/4.2/docbook-xml-4.2.zip
#
###############################################################################
DOCBOOK_XML_VERSION = 4.2
DOCBOOK_XML_SOURCE = docbook-xml-$(DOCBOOK_XML_VERSION).tar.bz2
DOCBOOK_XML_SITE = http://www.oasis-open.org/docbook/xml/$(DOCBOOK_XML_VERSION)

#DOCBOOK_XML_DEPENDENCIES =
DOCBOOK_XML_INSTALL_STAGING = YES
DOCBOOK_XML_INSTALL_TARGET = NO

define DOCBOOK_XML_CONFIGURE_CMDS
	echo "Don't need to configure"
endef

define DOCBOOK_XML_BUILD_CMDS
        echo "Don't need to build"
endef

define DOCBOOK_XML_INSTALL_STAGING_CMDS
	( cd $(@D); \
		mkdir -p $(STAGING_DIR)/usr/share/xml/docbook/${DOCBOOK_XML_VERSION} && \
		cp -r ./* $(STAGING_DIR)/usr/share/xml/docbook/${DOCBOOK_XML_VERSION}/ \
	)
endef

define DOCBOOK_XML_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

