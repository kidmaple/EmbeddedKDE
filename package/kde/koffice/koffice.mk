###############################################################################
#
# koffice - http://kde.mirror.aussiehq.net.au/stable/4.7.1/src/koffice-4.7.1.tar.bz2
#
###############################################################################
KOFFICE_VERSION = v2.2.1
KOFFICE_SITE = git://anongit.kde.org/koffice
KOFFICE_BUILDDIR = $(KOFFICE_DIR)/build

#KOFFICE_MAKE_ENV = 
KOFFICE_EXTERNAL_BUILD = YES
KOFFICE_INSTALL_STAGING = YES
KOFFICE_AUTORECONF = NO
#KOFFICE_CONF_ENV = 
KOFFICE_CONF_OPT = \
	-DCMAKE_INSTALL_PREFIX="/usr" \
	-Wno-dev

#create-resources eigen opengl
KOFFICE_DEPENDENCIES = kdelibs kdepimlibs qca2 libgsf libgsl libspnav libwpd libwpg lcms poppler pstoedit shared-mime-info

$(eval $(call CMAKETARGETS))

