###############################################################################
#
# kde-runtime - http://kde.mirror.aussiehq.net.au/stable/4.4.5/src/kde-runtime-4.4.5.tar.bz2
#
###############################################################################
KDE_RUNTIME_VERSION = 4.7.1
KDE_RUNTIME_SOURCE = kde-runtime-$(KDE_RUNTIME_VERSION).tar.bz2
KDE_RUNTIME_SITE = http://kde.mirror.aussiehq.net.au/stable/$(KDE_RUNTIME_VERSION)/src
#KDE_RUNTIME_SUBDIR
KDE_RUNTIME_BUILDDIR = $(KDE_RUNTIME_DIR)/build
#KDE_RUNTIME_MAKE_ENV = 
KDE_RUNTIME_INSTALL_STAGING = YES
KDE_RUNTIME_INSTALL_TARGET = NO
KDE_RUNTIME_AUTORECONF = NO
#KDE_RUNTIME_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
KDE_RUNTIME_CONF_OPT = \
	-DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
	-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 

#KDE_RUNTIME_DEPENDENCIES = qt attica phonon qca2 qimageblitz soprano strigi pcre
KDE_RUNTIME_DEPENDENCIES = qt libcanberra attica avahi aspell akonadi dbusmenu_qt enchant host-hspell automoc4 phonon fam jasper \
		qimageblitz soprano strigi pcre libungif jpeg libpng libxslt polkit polkit-qt-1 polkit-kde-agent-1 kdeworkspace nepomuk

$(eval $(call CMAKETARGETS,package,kde-runtime))


