###############################################################################
#
# strigiutils - http://www.vandenoever.info/software/libstream/libstream-0.7.5.tar.bz2
#
###############################################################################
STRIGIUTILS_VERSION = b2eb9850
STRIGIUTILS_SITE = git://anongit.kde.org/strigiutils

STRIGIUTILS_EXTERNAL_BUILD = YES
STRIGIUTILS_INSTALL_STAGING = YES
STRIGIUTILS_INSTALL_TARGET = NO
STRIGIUTILS_AUTORECONF = NO
#STRIGIUTILS_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#STRIGIUTILS_CONF_OPT = -DBUILD_DEMOS=ON
STRIGIUTILS_DEPENDENCIES = qt libstreams

$(eval $(call CMAKETARGETS))


