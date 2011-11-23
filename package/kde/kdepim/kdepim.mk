###############################################################################
#
# kdepim - http://kde.mirror.aussiehq.net.au/stable/4.7.1/src/kdepim-4.7.1.tar.bz2
#
###############################################################################
KDEPIM_VERSION = 4.7.1
KDEPIM_SOURCE = kdepim-$(KDEPIM_VERSION).tar.bz2
KDEPIM_SITE = http://kde.mirror.aussiehq.net.au/stable/$(KDEPIM_VERSION)/src
KDEPIM_BUILDDIR = $(KDEPIM_DIR)/build
#KDEPIM_MAKE_ENV = 
KDEPIM_INSTALL_STAGING = YES
KDEPIM_INSTALL_TARGET = NO
KDEPIM_AUTORECONF = NO
#KDEPIM_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
KDEPIM_CONF_OPT = -DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
		-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" 

#KDEPIM_DEPENDENCIES = qt attica phonon qca2 qimageblitz soprano strigi pcre
KDEPIM_DEPENDENCIES = qt attica avahi aspell akonadi dbusmenu_qt enchant host-hspell automoc4 phonon fam jasper \
		qimageblitz soprano strigi pcre libungif jpeg libpng libxslt kdelibs

$(eval $(call CMAKETARGETS,package,kdepim))


