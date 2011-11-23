#############################################################
#
# soprano - http://sourceforge.net/projects/soprano/files/Soprano/2.7.0/soprano-2.7.0.tar.bz2
#
#############################################################
SOPRANO_VERSION = v2.7.0
SOPRANO_SITE = git://anongit.kde.org/soprano

SOPRANO_EXTERNAL_BUILD = YES
SOPRANO_INSTALL_STAGING = YES
SOPRANO_INSTALL_TARGET = NO
#SOPRANO_CONF_OPT =
SOPRANO_CONF_ENV = PATH=$(HOST_DIR)/usr/bin:$(PATH)
SOPRANO_DEPENDENCIES = qt qimageblitz libiodbc redland raptor2

$(eval $(call CMAKETARGETS))

