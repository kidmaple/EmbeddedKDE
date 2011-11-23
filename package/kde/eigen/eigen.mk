###############################################################################
#
# eigen - http://bitbucket.org/eigen/eigen/get/3.0.3.tar.bz2
#
###############################################################################
EIGEN_VERSION = 3.0.3
EIGEN_SOURCE = $(EIGEN_VERSION).tar.bz2
EIGEN_SITE = http://bitbucket.org/eigen/eigen/get

EIGEN_EXTERNAL_BUILD = YES
EIGEN_INSTALL_STAGING = YES
EIGEN_INSTALL_TARGET = NO
EIGEN_DEPENDENCIES = fftw

#EIGEN_CONF_ENV =
#EIGEN_CONF_OPT = -DDOXYGEN_EXECUTABLE="/usr/bin/doxygen"

$(eval $(call CMAKETARGETS))


