###############################################################################
#
# strigi - http://www.vandenoever.info/software/strigi/strigi-0.7.5.tar.bz2
#
###############################################################################
STRIGI_VERSION = v0.7.5
STRIGI_SITE = git://anongit.kde.org/strigi

STRIGI_EXTERNAL_BUILD = YES
STRIGI_INSTALL_STAGING = YES
STRIGI_INSTALL_TARGET = NO
STRIGI_AUTORECONF = NO
#STRIGI_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#STRIGI_CONF_OPT = -DBUILD_DEMOS=ON
STRIGI_DEPENDENCIES = qt boost host-extra-cmake

$(eval $(call CMAKETARGETS))


