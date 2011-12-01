###############################################################################
#
# okular - http://bitbucket.org/eigen/eigen/get/2.0.16.tar.bz2
#
###############################################################################
OKULAR_VERSION = v4.7.3
OKULAR_SITE = git://anongit.kde.org/okular

OKULAR_EXTERNAL_BUILD = YES
OKULAR_INSTALL_STAGING = YES
OKULAR_INSTALL_TARGET = NO
#OKULAR_OPT_DEPENDENCIES = libepub libchm djvulibre libspectre xpdf?
OKULAR_DEPENDENCIES = tiff poppler qimageblitz qca2

#OKULAR_CONF_ENV =
OKULAR_CONF_OPT = \
	-DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
	-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml"

$(eval $(call CMAKETARGETS))


