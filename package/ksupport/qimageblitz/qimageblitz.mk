#############################################################
#
# qimageblitz - http://kde.mirror.aussiehq.net.au/stable/qimageblitz/qimageblitz-0.0.6.tar.bz2
#
#############################################################
QIMAGEBLITZ_VERSION = 0.0.6
QIMAGEBLITZ_SOURCE = qimageblitz-$(QIMAGEBLITZ_VERSION).tar.bz2
QIMAGEBLITZ_SITE = http://kde.mirror.aussiehq.net.au/stable/qimageblitz

QIMAGEBLITZ_EXTERNAL_BUILD = YES
QIMAGEBLITZ_INSTALL_STAGING = YES
QIMAGEBLITZ_INSTALL_TARGET = NO
QIMAGEBLITZ_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))

