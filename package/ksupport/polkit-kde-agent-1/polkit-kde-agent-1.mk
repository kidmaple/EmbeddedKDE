###############################################################################
#
# polkit-kde-agent-1 - http://kde.mirror.aussiehq.net.au/stable/apps/KDE4.x/admin/polkit-kde-agent-1-0.99.0.tar.bz2
#
###############################################################################
POLKIT_KDE_AGENT_1_VERSION = 0.99.0
POLKIT_KDE_AGENT_1_SOURCE = polkit-kde-agent-1-$(POLKIT_KDE_AGENT_1_VERSION).tar.bz2
POLKIT_KDE_AGENT_1_SITE = http://kde.mirror.aussiehq.net.au/stable/apps/KDE4.x/admin

POLKIT_KDE_AGENT_1_INSTALL_STAGING = YES
POLKIT_KDE_AGENT_1_INSTALL_TARGET = NO
POLKIT_KDE_AGENT_1_AUTORECONF = NO

#POLKIT_KDE_AGENT_1_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
POLKIT_KDE_AGENT_1_CONF_OPT = \
	-DCMAKE_MODULE_PATH=$(STAGING_DIR)/usr/share/apps/cmake/modules \
	-DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
	-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 		

POLKIT_KDE_AGENT_1_DEPENDENCIES = qt automoc4 qimageblitz

$(eval $(call CMAKETARGETS,package,polkit-kde-agent-1))


