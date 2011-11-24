###############################################################################
#
# phonon - http://kde.mirror.aussiehq.net.au/stable/phonon/4.5.0/src/phonon-4.5.0.tar.bz2
#
###############################################################################
PHONON_VERSION = 4.5.0
PHONON_SITE = git://anongit.kde.org/phonon

PHONON_INSTALL_STAGING = YES
PHONON_EXTERNAL_BUILD = YES
PHONON_AUTORECONF = NO
#PHONON_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
PHONON_CONF_OPT = -DCMAKE_INSTALL_PREFIX=$(STAGING_DIR)/usr
PHONON_DEPENDENCIES = qt automoc4 qimageblitz libxml2 gstreamer pulseaudio libqzeitgeist

$(eval $(call CMAKETARGETS,package,phonon))


