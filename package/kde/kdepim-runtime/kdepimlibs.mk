###############################################################################
#
# kdepim-runtime - http://kde.mirror.aussiehq.net.au/stable/4.7.1/src/kdepim-runtime-4.7.1.tar.bz2
#
###############################################################################
KDEPIM_RUNTIME_VERSION = 4.7.1
KDEPIM_RUNTIME_SOURCE = kdepim-runtime-$(KDEPIM_RUNTIME_VERSION).tar.bz2
KDEPIM_RUNTIME_SITE = http://kde.mirror.aussiehq.net.au/stable/$(KDEPIM_RUNTIME_VERSION)/src
KDEPIM_RUNTIME_BUILDDIR = $(KDEPIM_RUNTIME_DIR)/build
#KDEPIM_RUNTIME_MAKE_ENV = 
KDEPIM_RUNTIME_INSTALL_STAGING = YES
KDEPIM_RUNTIME_INSTALL_TARGET = NO
KDEPIM_RUNTIME_AUTORECONF = NO
#KDEPIM_RUNTIME_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
KDEPIM_RUNTIME_CONF_OPT = -DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
		-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 

#KDEPIM_RUNTIME_DEPENDENCIES = qt attica phonon qca2 qimageblitz soprano strigi pcre
KDEPIM_RUNTIME_DEPENDENCIES = qt attica avahi aspell akonadi dbusmenu_qt enchant host-hspell automoc4 phonon fam jasper \
		qimageblitz soprano strigi pcre libungif jpeg libpng libxslt kdelibs

$(eval $(call CMAKETARGETS,package,kdepim-runtime))


