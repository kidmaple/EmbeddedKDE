#############################################################
#
# akonadi - http://kde-mirror.freenux.org/stable/akonadi/src/akonadi-1.6.0.tar.bz2
#	  - http://mirrors.isc.org/pub/kde/stable/akonadi/src/akonadi-1.6.0.tar.bz2
#############################################################
AKONADI_VERSION = v1.6.0
AKONADI_SITE = git://anongit.kde.org/akonadi
AKONADI_AUTORECONF = NO

AKONADI_EXTERNAL_BUILD = YES
AKONADI_INSTALL_STAGING = YES
AKONADI_INSTALL_TARGET = NO

AKONADI_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
AKONADI_CONF_OPT = -DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
		-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 

#AKONADI_DEPENDENCIES = qt automoc4 boost soprano kdelibs libgd libice libx11 libxau libxcb libxdmcp libxext libxslt qimageblitz
AKONADI_DEPENDENCIES = qt automoc4 boost soprano sqlite

$(eval $(call CMAKETARGETS))


