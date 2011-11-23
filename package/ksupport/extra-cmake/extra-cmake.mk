#############################################################
#
# extra-cmake - http://anongit.kde.org/extra-cmake-modules/extra-cmake-modules-latest.tar.gz
#
#############################################################
EXTRA_CMAKE_VERSION = ec87f70b
EXTRA_CMAKE_SITE = git://anongit.kde.org/extra-cmake-modules
EXTRA_CMAKE_INSTALL_STAGING = YES
EXTRA_CMAKE_INSTALL_TARGET = NO
#EXTRA_CMAKE_CONF_OPT = -DBUILD_DEMOS=ON
#EXTRA_CMAKE_DEPENDENCIES = 

$(eval $(call CMAKETARGETS))
$(eval $(call CMAKETARGETS,host))

