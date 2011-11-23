###############################################################################
#
# qtdata - http://kde.mirror.aussiehq.net.au/stable/qtdata/4.5.0/src/qtdata-4.5.0.tar.bz2
#
###############################################################################
QTDATA_VERSION = e5312a19
QTDATA_SITE = git://anongit.kde.org/inqlude-data
QTDATA_EXTERNAL_BUILD = YES
QTDATA_INSTALL_STAGING = YES
QTDATA_INSTALL_TARGET = NO
QTDATA_AUTORECONF = NO
#QTDATA_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#QTDATA_CONF_OPT = -DBUILD_DEMOS=ON
QTDATA_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))


