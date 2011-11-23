#############################################################
#
# automoc4 - http://kde.mirror.aussiehq.net.au/stable/automoc4/0.9.88/automoc4-0.9.88.tar.bz2
#
#############################################################
AUTOMOC4_VERSION = v0.9.88
AUTOMOC4_SITE = git://anongit.kde.org/automoc
CAGIBI_EXTERNAL_BUILD = YES
CAGIBI_AUTORECONF = NO
AUTOMOC4_INSTALL_STAGING = YES
AUTOMOC4_INSTALL_TARGET = NO
AUTOMOC4_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))
$(eval $(call CMAKETARGETS,host))

