#############################################################
#
# poppler - http://poppler.freedesktop.org/poppler-0.18.1.tar.gz
#
#############################################################
POPPLER_VERSION = poppler-0.18.1
POPPLER_SITE = git://git.freedesktop.org/git/poppler/poppler

POPPLER_EXTERNAL_BUILD = YES
POPPLER_INSTALL_STAGING = YES
POPPLER_INSTALL_TARGET = NO
POPPLER_DEPENDENCIES = qt poppler-data lcms openjpeg cairo zlib libcurl
#POPPLER_CONF_ENV =
#POPPLER_CONF_OPT =

$(eval $(call CMAKETARGETS))

