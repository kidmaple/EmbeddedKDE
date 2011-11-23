###############################################################################
#
# cagibi - http://kde.mirror.aussiehq.net.au/stable/cagibi/cagibi-0.2.0.tar.bz2
#
###############################################################################
CAGIBI_VERSION = v0.2.0
CAGIBI_SITE = git://anongit.kde.org/cagibi
CAGIBI_INSTALL_STAGING = YES
CAGIBI_INSTALL_TARGET = NO
CAGIBI_AUTORECONF = NO
CAGIBI_EXTERNAL_BUILD = YES
#CAGIBI_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#CAGIBI_CONF_OPT = -DBUILD_DEMOS=ON
#CAGIBI_DEPENDENCIES = qt automoc4 boost soprano kdelibs libgd libice libx11 libxau libxcb libxdmcp libxext libxslt qimageblitz
CAGIBI_DEPENDENCIES = qt automoc4

$(eval $(call CMAKETARGETS))


