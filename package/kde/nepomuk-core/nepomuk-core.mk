#############################################################
#
# nepomuk_core - http://anongit.kde.org/nepomuk_core-core/nepomuk_core-core-latest.tar.gz
#
#############################################################
NEPOMUK_CORE_VERSION = v4.7.2
NEPOMUK_CORE_SITE = git://anongit.kde.org/nepomuk_core-core

NEPOMUK_CORE_EXTERNAL_BUILD = YES
NEPOMUK_CORE_INSTALL_STAGING = YES
NEPOMUK_CORE_INSTALL_TARGET = NO
NEPOMUK_CORE_DEPENDENCIES = qt

#NEPOMUK_CORE_CONF_ENV =
NEPOMUK_CORE_CONF_OPT = -DDOXYGEN_EXECUTABLE="/usr/bin/doxygen"

$(eval $(call CMAKETARGETS))


