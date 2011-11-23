#############################################################
#
# grantlee - http://downloads.grantlee.org/grantlee-0.1.9.tar.gz
#
#############################################################
GRANTLEE_VERSION = v0.1.9
GRANTLEE_SITE = git://gitorious.org/grantlee/grantlee.git

GRANTLEE_EXTERNAL_BUILD = YES
GRANTLEE_INSTALL_STAGING = YES
GRANTLEE_INSTALL_TARGET = NO
GRANTLEE_DEPENDENCIES = qt

#GRANTLEE_CONF_ENV =
#GRANTLEE_CONF_OPT = -DDOXYGEN_EXECUTABLE="/usr/bin/doxygen"

$(eval $(call CMAKETARGETS))


