###############################################################################
#
# qttools - http://kde.mirror.aussiehq.net.au/stable/qttools/4.5.0/src/qttools-4.5.0.tar.bz2
#
###############################################################################
QTTOOLS_VERSION = 80908a21
QTTOOLS_SITE = git://anongit.kde.org/inqlude
QTTOOLS_EXTERNAL_BUILD = YES
QTTOOLS_INSTALL_STAGING = YES
QTTOOLS_INSTALL_TARGET = NO
QTTOOLS_AUTORECONF = NO
#QTTOOLS_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#QTTOOLS_CONF_OPT = -DBUILD_DEMOS=ON
QTTOOLS_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))


