###############################################################################
#
# polkit-kde-1 - http://kde.mirror.aussiehq.net.au/stable/apps/KDE4.x/admin/polkit-kde-1-0.95.1.tar.bz2
#
###############################################################################
POLKIT_KDE_1_VERSION = 0.95.1
POLKIT_KDE_1_SOURCE = polkit-kde-1-$(POLKIT_KDE_1_VERSION).tar.bz2
POLKIT_KDE_1_SITE = http://kde.mirror.aussiehq.net.au/stable/apps/KDE4.x/admin
POLKIT_KDE_1_INSTALL_STAGING = YES
POLKIT_KDE_1_INSTALL_TARGET = NO
POLKIT_KDE_1_AUTORECONF = NO
#POLKIT_KDE_1_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
POLKIT_KDE_1_CONF_OPT = -DCMAKE_MODULE_PATH=$(STAGING_DIR)/usr/share/apps/cmake/modules
POLKIT_KDE_1_DEPENDENCIES = qt automoc4 qimageblitz polkit-qt-1

$(eval $(call CMAKETARGETS,package,polkit-kde-1))


