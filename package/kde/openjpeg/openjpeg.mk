###############################################################################
#
# openjpeg - http://openjpeg.googlecode.com/files/openjpeg_v1_4_sources_r697.tgz
#
###############################################################################
OPENJPEG_VERSION = v1_4
OPENJPEG_SOURCE = openjpeg_$(OPENJPEG_VERSION)_sources_r697.tgz
OPENJPEG_SITE = http://openjpeg.googlecode.com/files

#OPENJPEG_MAKE_ENV = 
OPENJPEG_EXTERNAL_BUILD = YES
OPENJPEG_INSTALL_STAGING = YES
OPENJPEG_INSTALL_TARGET = NO
OPENJPEG_AUTORECONF = NO
#OPENJPEG_CONF_ENV = 
#OPENJPEG_CONF_OPT =
#OPENJPEG_DEPENDENCIES =

$(eval $(call CMAKETARGETS))

