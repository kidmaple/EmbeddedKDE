###############################################################################
#
# polkit-qt-1 - http://kde.mirror.aussiehq.net.au/stable/apps/KDE4.x/admin/polkit-qt-1-0.99.0.tar.bz2
#
###############################################################################
POLKIT_QT_1_VERSION = v0.99.0
POLKIT_QT_1_SITE = git://anongit.kde.org/polkit-qt-1

POLKIT_QT_1_EXTERNAL_BUILD = YES
POLKIT_QT_1_INSTALL_STAGING = YES
POLKIT_QT_1_INSTALL_TARGET = NO
POLKIT_QT_1_AUTORECONF = NO

#POLKIT_QT_1_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
POLKIT_QT_1_CONF_OPT = -Wno-dev

POLKIT_QT_1_DEPENDENCIES = qt automoc4 qimageblitz polkit

$(eval $(call CMAKETARGETS))


