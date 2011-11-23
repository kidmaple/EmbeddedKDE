#############################################################
#
# dbusmenu-qt 
#
#############################################################
DBUSMENU_QT_VERSION = 0.9.0.kde
DBUSMENU_QT_SITE = git://gitorious.org/dbusmenu/dbusmenu-qt.git

DBUSMENU_QT_AUTORECONF = NO
DBUSMENU_QT_EXTERNAL_BUILD = YES
DBUSMENU_QT_INSTALL_STAGING = YES
DBUSMENU_QT_INSTALL_TARGET = NO

#DBUSMENU_QT_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
DBUSMENU_QT_CONF_OPT = -Wno-dev \
	-DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
	-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 

DBUSMENU_QT_DEPENDENCIES = qt qjson

$(eval $(call CMAKETARGETS))

