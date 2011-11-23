###############################################################################
#
# kdepimlibs - http://kde.mirror.aussiehq.net.au/stable/4.7.1/src/kdepimlibs-4.7.1.tar.bz2
#
###############################################################################
KDEPIMLIBS_VERSION = v4.7.1
KDEPIMLIBS_SITE = git://anongit.kde.org/kdepimlibs
KDEPIMLIBS_BUILDDIR = $(KDEPIMLIBS_DIR)/build

#KDEPIMLIBS_MAKE_ENV = 
KDEPIMLIBS_EXTERNAL_BUILD = YES
KDEPIMLIBS_INSTALL_STAGING = YES
KDEPIMLIBS_INSTALL_TARGET = NO
KDEPIMLIBS_AUTORECONF = NO
#KDEPIMLIBS_CONF_ENV = 
KDEPIMLIBS_CONF_OPT = \
	-DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
	-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml" \
	-DCMAKE_INSTALL_PREFIX="/usr" \
	-Wno-dev

KDEPIMLIBS_DEPENDENCIES = kdelibs akonadi libical prison sasl2 openldap gpgme

$(eval $(call CMAKETARGETS))

