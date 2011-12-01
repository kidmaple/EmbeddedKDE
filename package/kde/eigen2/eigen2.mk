###############################################################################
#
# eigen3 - http://bitbucket.org/eigen/eigen/get/3.0.3.tar.bz2
# eigen2 - http://bitbucket.org/eigen/eigen/get/2.0.16.tar.bz2
#
###############################################################################
EIGEN2_VERSION = 2.0.16
EIGEN2_SOURCE = $(EIGEN2_VERSION).tar.bz2
EIGEN2_SITE = http://bitbucket.org/eigen/eigen/get

EIGEN2_EXTERNAL_BUILD = YES
EIGEN2_INSTALL_STAGING = YES
EIGEN2_INSTALL_TARGET = NO
EIGEN2_DEPENDENCIES =

#EIGEN2_CONF_ENV =
#EIGEN2_CONF_OPT = -DDOXYGEN_EXECUTABLE="/usr/bin/doxygen"

$(eval $(call CMAKETARGETS))


