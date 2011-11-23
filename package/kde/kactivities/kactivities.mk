#############################################################
#
# kactivities - http://anongit.kde.org/kactivities-core/kactivities-core-latest.tar.gz
#
#############################################################
KACTIVITIES_VERSION = v4.7.1
KACTIVITIES_SITE = git://anongit.kde.org/kactivities

KACTIVITIES_INSTALL_STAGING = YES
KACTIVITIES_INSTALL_TARGET = NO
KACTIVITIES_DEPENDENCIES = qt

#KACTIVITIES_CONF_ENV =
#KACTIVITIES_CONF_OPT = -DDOXYGEN_EXECUTABLE="/usr/bin/doxygen"

$(eval $(call CMAKETARGETS))


