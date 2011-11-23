###############################################################################
#
# openldap - http://www.openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.26.tgz
#
###############################################################################
OPENLDAP_VERSION = 2.4.26
OPENLDAP_SOURCE = openldap-$(OPENLDAP_VERSION).tgz
OPENLDAP_SITE = http://www.openldap.org/software/download/OpenLDAP/openldap-release
OPENLDAP_DEPENDENCIES = openssl sasl2 bdb
OPENLDAP_INSTALL_STAGING = YES
OPENLDAP_INSTALL_TARGET = NO

define OPENLDAP_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--with-yielding_select=yes \
	)
endef

define OPENLDAP_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define OPENLDAP_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define OPENLDAP_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package/kde,openldap))

