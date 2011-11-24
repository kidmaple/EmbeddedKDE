###############################################################################
#
# oscaf - http://sourceforge.net/projects/oscaf/files/shared-desktop-ontologies-0.8.0.tar.bz2
#
###############################################################################
OSCAF_VERSION = 0.8.0
OSCAF_SOURCE = shared-desktop-ontologies-$(OSCAF_VERSION).tar.bz2
OSCAF_SITE = http://sourceforge.net/projects/oscaf/files

OSCAF_EXTERNAL_BUILD = YES
OSCAF_INSTALL_STAGING = YES
OSCAF_INSTALL_TARGET = NO
OSCAF_AUTORECONF = NO
#OSCAF_CONF_ENV =
#OSCAF_CONF_OPT = # !!! Can't keep this: -DCMAKE_INSTALL_PREFIX=$(STAGING_DIR)/usr
#OSCAF_DEPENDENCIES = docbook-xsl-ns

$(eval $(call CMAKETARGETS))


