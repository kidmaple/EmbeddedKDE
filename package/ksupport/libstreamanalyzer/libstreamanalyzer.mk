###############################################################################
#
# libstreamanalyzer - http://www.vandenoever.info/software/libstreamanalyzer/libstreamanalyzer-0.7.5.tar.bz2
#
###############################################################################
LIBSTREAMANALYZER_VERSION = 6199311b
LIBSTREAMANALYZER_SITE = git://anongit.kde.org/libstreamanalyzer
LIBSTREAMANALYZER_INSTALL_STAGING = YES
LIBSTREAMANALYZER_INSTALL_TARGET = NO
LIBSTREAMANALYZER_AUTORECONF = NO
LIBSTREAMANALYZER_EXTERNAL_BUILD = YES
#LIBSTREAMANALYZER_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
#LIBSTREAMANALYZER_CONF_OPT = -DBUILD_DEMOS=ON
#LIBSTREAMANALYZER_DEPENDENCIES = qt automoc4 boost soprano kdelibs libgd libice libx11 libxau libxcb libxdmcp libxext libxslt qimageblitz
LIBSTREAMANALYZER_DEPENDENCIES = qt attr exiv2 libiconv libxml2 ffmpeg libstreams

$(eval $(call CMAKETARGETS))


