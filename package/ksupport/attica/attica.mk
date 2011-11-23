###############################################################################
#
# attica - http://kde.mirror.aussiehq.net.au/stable/attica/attica-0.2.0.tar.bz2
#
###############################################################################
#ATTICA_VERSION = 36781d9c
ATTICA_VERSION = v0.2.0
ATTICA_SITE = git://anongit.kde.org/attica
ATTICA_INSTALL_STAGING = YES
ATTICA_INSTALL_TARGET = NO
ATTICA_AUTORECONF = NO
#ATTICA_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#ATTICA_CONF_OPT = -DBUILD_DEMOS=ON
#ATTICA_DEPENDENCIES = qt automoc4 boost soprano kdelibs libgd libice libx11 libxau libxcb libxdmcp libxext libxslt qimageblitz
ATTICA_DEPENDENCIES = qt dbus

$(eval $(call CMAKETARGETS))


