###############################################################################
#
# prison - http://delta.affinix.com/download/qca/2.0/qca-2.0.3.tar.bz2
#
###############################################################################
QCA2_VERSION = r1260456
QCA2_SOURCE = qca2-$(QCA2_VERSION).tar.bz2
QCA2_SITE = http://delta.affinix.com/download/qca/2.0

QCA2_EXTERNAL_BUILD = YES
QCA2_INSTALL_STAGING = YES
QCA2_INSTALL_TARGET = NO
QCA2_AUTORECONF = NO
#QCA2_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
QCA2_CONF_OPT = -Wno-dev
QCA2_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))

