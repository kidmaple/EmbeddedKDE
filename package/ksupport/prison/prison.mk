###############################################################################
#
# prison - http://kde.mirror.aussiehq.net.au/stable/prison/1.0/src/prison-1.0.tar.gz
#
###############################################################################
PRISON_VERSION = v1.0
PRISON_SITE = git://anongit.kde.org/prison

PRISON_INSTALL_STAGING = YES
PRISON_EXTERNAL_BUILD = YES
PRISON_AUTORECONF = NO
#PRISON_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
PRISON_CONF_OPT = -DCMAKE_INSTALL_PREFIX=$(STAGING_DIR)/usr
PRISON_DEPENDENCIES = qt libdmtx qrencode

$(eval $(call CMAKETARGETS))

