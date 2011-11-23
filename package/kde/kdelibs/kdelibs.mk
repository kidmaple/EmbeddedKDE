###############################################################################
#
# kdelibs - http://kde.mirror.aussiehq.net.au/stable/4.4.5/src/kdelibs-4.4.5.tar.bz2
#
###############################################################################
KDELIBS_VERSION = v4.7.1
KDELIBS_SITE = git://anongit.kde.org/kdelibs

KDELIBS_EXTERNAL_BUILD = YES
KDELIBS_INSTALL_STAGING = YES
KDELIBS_INSTALL_TARGET = NO
KDELIBS_AUTORECONF = NO
#KDELIBS_CONF_ENV = 
KDELIBS_CONF_OPT = -DQT_DBUSXML2CPP_EXECUTABLE="/usr/bin/qdbusxml2cpp" \
		-DQT_DBUSCPP2XML_EXECUTABLE="/usr/bin/qdbuscpp2xml"

#KDELIBS_DEPENDENCIES = kerberos(non-cross-compiling) hupnp openexr
KDELIBS_DEPENDENCIES = qt attica avahi aspell akonadi dbusmenu-qt enchant hspell automoc4 phonon fam jasper \
		qimageblitz soprano strigi pcre libungif jpeg libpng libxslt oscaf \
		udev xz qca2 acl docbook-xml docbook-xsl grantlee

$(eval $(call CMAKETARGETS))


