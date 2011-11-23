###############################################################################
#
# strigiclient - http://www.vandenoever.info/software/libstream/libstream-0.7.5.tar.bz2
#
###############################################################################
STRIGICLIENT_VERSION = b2447cc3
STRIGICLIENT_SITE = git://anongit.kde.org/strigiclient

STRIGICLIENT_EXTERNAL_BUILD = YES
STRIGICLIENT_INSTALL_STAGING = YES
STRIGICLIENT_INSTALL_TARGET = NO
STRIGICLIENT_AUTORECONF = NO
#STRIGICLIENT_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#STRIGICLIENT_CONF_OPT = -DBUILD_DEMOS=ON
STRIGICLIENT_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))


