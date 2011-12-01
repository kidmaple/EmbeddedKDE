###############################################################################
#
# koffice - http://kde.mirror.aussiehq.net.au/stable/4.7.1/src/koffice-4.7.1.tar.bz2
#
###############################################################################
#KOFFICE_VERSION = v2.2.1
#KOFFICE_SITE = git://anongit.kde.org/koffice

KOFFICE_VERSION = 2.3.3
KOFFICE_SITE = git://anongit.kde.org/koffice
KOFFICE_SOURCE = koffice-2.3.3.tar.bz2

#KOFFICE_MAKE_ENV = 
KOFFICE_EXTERNAL_BUILD = YES
KOFFICE_INSTALL_STAGING = YES
KOFFICE_AUTORECONF = NO

#KOFFICE_CONF_ENV = 
KOFFICE_CONF_OPT = \
	-DCMAKE_INSTALL_PREFIX="/usr" \
	-DQT_UIC3_EXECUTABLE="/usr/bin/uic3" \
	-DTINY=OFF \
	-Wno-dev

#create-resources opengl dcmtk
KOFFICE_DEPENDENCIES = kdelibs kdepimlibs qca2 libgsf libgsl libspnav libwpd \
	libwpg lcms2 poppler pstoedit shared-mime-info eigen2 okular exiv2 \
	create-resources 

$(eval $(call CMAKETARGETS))

