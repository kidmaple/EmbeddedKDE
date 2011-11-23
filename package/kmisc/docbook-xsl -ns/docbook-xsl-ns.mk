###############################################################################
#
# docbook-xsl-ns - http://sunet.dl.sourceforge.net/project/docbook/docbook-xsl-ns/1.76.1/docbook-xsl-ns-1.76.1.tar.bz2
#
###############################################################################
DOCBOOK_XSL_NS_VERSION = 1.76.1
DOCBOOK_XSL_NS_SOURCE = docbook-xsl-ns-$(DOCBOOK_XSL_NS_VERSION).tar.bz2
DOCBOOK_XSL_NS_SITE = http://sunet.dl.sourceforge.net/project/docbook/docbook-xsl-ns/$(DOCBOOK_XSL_NS_VERSION)

#DOCBOOK_XSL_NS_DEPENDENCIES =
DOCBOOK_XSL_NS_INSTALL_STAGING = YES
DOCBOOK_XSL_NS_INSTALL_TARGET = NO

define DOCBOOK_XSL_NS_CONFIGURE_CMDS
	echo "Don't need to configure"
endef

define DOCBOOK_XSL_NS_BUILD_CMDS
        echo "Don't need to build"
endef

define DOCBOOK_XSL_NS_INSTALL_STAGING_CMDS
	( cd $(@D); \
		mkdir -p $(STAGING_DIR)/usr/share/xsl/docbook-xsl-ns/ && \
		cp -r ./* $(STAGING_DIR)/usr/share/xsl/docbook-xsl-ns/ \
	)
endef

define DOCBOOK_XSL_NS_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

