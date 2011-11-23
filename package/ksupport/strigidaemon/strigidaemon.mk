###############################################################################
#
# strigidaemon - http://www.vandenoever.info/software/libstream/libstream-0.7.5.tar.bz2
#
###############################################################################
STRIGIDAEMON_VERSION = f2b3f47a
STRIGIDAEMON_SITE = git://anongit.kde.org/strigidaemon

STRIGIDAEMON_EXTERNAL_BUILD = YES
STRIGIDAEMON_INSTALL_STAGING = YES
STRIGIDAEMON_INSTALL_TARGET = NO
STRIGIDAEMON_AUTORECONF = NO
#STRIGIDAEMON_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#STRIGIDAEMON_CONF_OPT = -DBUILD_DEMOS=ON
STRIGIDAEMON_DEPENDENCIES = qt dbus fam libxml2 

$(eval $(call CMAKETARGETS))


