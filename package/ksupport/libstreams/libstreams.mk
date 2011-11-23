###############################################################################
#
# libstreams - http://www.vandenoever.info/software/libstream/libstream-0.7.5.tar.bz2
#
###############################################################################
LIBSTREAMS_VERSION = 295b5d5a
LIBSTREAMS_SITE = git://anongit.kde.org/libstreams
LIBSTREAMS_INSTALL_STAGING = YES
LIBSTREAMS_INSTALL_TARGET = NO
LIBSTREAMS_AUTORECONF = NO
#LIBSTREAMS_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#LIBSTREAMS_CONF_OPT = -DBUILD_DEMOS=ON
#LIBSTREAMS_DEPENDENCIES = qt automoc4 boost soprano kdelibs libgd libice libx11 libxau libxcb libxdmcp libxext libxslt qimageblitz
LIBSTREAMS_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))


