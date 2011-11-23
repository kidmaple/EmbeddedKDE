###############################################################################
#
# kdeworkspace - http://kde.mirror.aussiehq.net.au/stable/4.7.1/src/kde-workspace-4.7.1.tar.bz2
#
###############################################################################
KDEWORKSPACE_VERSION = 4.7.1
KDEWORKSPACE_SOURCE = kde-workspace-$(KDEWORKSPACE_VERSION).tar.bz2
KDEWORKSPACE_SITE = http://kde.mirror.aussiehq.net.au/stable/$(KDEWORKSPACE_VERSION)/src
KDEWORKSPACE_BUILDDIR = $(KDEWORKSPACE_DIR)/build
#KDEWORKSPACE_MAKE_ENV = 
KDEWORKSPACE_INSTALL_STAGING = YES
KDEWORKSPACE_INSTALL_TARGET = NO
KDEWORKSPACE_AUTORECONF = NO
#KDEWORKSPACE_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
KDEWORKSPACE_CONF_OPT = -DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
		-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 

#KDEWORKSPACE_DEPENDENCIES = qt attica phonon qca2 qimageblitz soprano strigi pcre
KDEWORKSPACE_DEPENDENCIES = qt attica avahi aspell akonadi dbusmenu_qt enchant host-hspell automoc4 phonon fam jasper \
		qimageblitz soprano strigi pcre libungif jpeg libpng libxslt kdelibs

$(eval $(call CMAKETARGETS,package,kdeworkspace))


