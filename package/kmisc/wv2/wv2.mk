#############################################################
#
# wv2 
#	  
#############################################################
WV2_VERSION = 0.4.2
WV2_SOURCE = wv2-${WV2_VERSION}.tar.bz2
WV2_SITE = http://dl.sourceforge.net/sourceforge/wvware
WV2_INSTALL_STAGING = YES
WV2_INSTALL_TARGET = YES
#WV2_CONF_OPT = -DBUILD_DEMOS=ON
#WV2_DEPENDENCIES:= bash binutils bzip2 coreutils diffutils file findutils gcc glib glibc
#grep libgsf libxml linux-header make mktemp net-tools pkgconfig sed sysfiles tar util-linux zlib 
#missed: libgsf linux-header make mktemp tar net-tools sysfiles
WV2_DEPENDENCIES:= uclibc diffutils file findutils libglib2 libgsf grep libxml2
#WV2_AUTORECONF=YES

$(eval $(call CMAKETARGETS,package,wv2))

