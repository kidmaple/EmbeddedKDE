###############################################################################
#
# libqzeitgeist - git://anongit.kde.org/libqzeitgeist
#
###############################################################################
LIBQZEITGEIST_VERSION = 0.7
LIBQZEITGEIST_SITE = git://anongit.kde.org/libqzeitgeist

LIBQZEITGEIST_EXTERNAL_BUILD = YES
LIBQZEITGEIST_INSTALL_STAGING = YES

LIBQZEITGEIST_AUTORECONF = NO
#LIBQZEITGEIST_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
LIBQZEITGEIST_CONF_OPT = -DCMAKE_INSTALL_PREFIX=$(STAGING_DIR)/usr
LIBQZEITGEIST_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))

