#############################################################
#
# poppler-data - http://poppler.freedesktop.org/poppler-data-0.4.5.tar.gz
#
#############################################################
POPPLER_DATA_VERSION = 0.4.5
POPPLER_DATA_SOURCE = poppler-data-$(POPPLER_DATA_VERSION).tar.gz
POPPLER_DATA_SITE = http://poppler.freedesktop.org

POPPLER_DATA_EXTERNAL_BUILD = YES
POPPLER_DATA_INSTALL_STAGING = YES
POPPLER_DATA_INSTALL_TARGET = NO
#POPPLER_DATA_DEPENDENCIES =
#POPPLER_DATA_CONF_ENV =
#POPPLER_DATA_CONF_OPT = -DDOXYGEN_EXECUTABLE="/usr/bin/doxygen"

$(eval $(call CMAKETARGETS))


