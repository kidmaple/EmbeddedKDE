#############################################################
#
# qjson 
#
#############################################################
QJSON_VERSION = 0.7.1
QJSON_SITE = git://gitorious.org/qjson/qjson.git

QJSON_AUTORECONF = NO
QJSON_EXTERNAL_BUILD = YES
QJSON_INSTALL_STAGING = YES
QJSON_INSTALL_TARGET = NO

#QJSON_CONF_ENV = QT_PLUGIN_PATH=$(STAGING_DIR)/usr/lib/qt/plugins
QJSON_CONF_OPT = -Wno-dev 
QJSON_DEPENDENCIES = qt

$(eval $(call CMAKETARGETS))

