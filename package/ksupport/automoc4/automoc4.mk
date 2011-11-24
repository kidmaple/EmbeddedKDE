#############################################################
#
# automoc4 - http://kde.mirror.aussiehq.net.au/stable/automoc4/0.9.88/automoc4-0.9.88.tar.bz2
#
#############################################################
AUTOMOC4_VERSION = v0.9.88
AUTOMOC4_SITE = git://anongit.kde.org/automoc

AUTOMOC4_EXTERNAL_BUILD = YES
AUTOMOC4_AUTORECONF = NO
AUTOMOC4_DEPENDENCIES = qt

AUTOMOC4_HOST_CONF_ENV = \
	QT_INCLUDE_DIR="/usr/include/qt4" \
	QT_LIBRARY_DIR="/usr/lib/qt4"

AUTOMOC4_INSTALL_STAGING = YES
AUTOMOC4_INSTALL_TARGET = NO

$(eval $(call CMAKETARGETS))
$(eval $(call CMAKETARGETS,host))

