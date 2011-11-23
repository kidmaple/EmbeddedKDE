###############################################################################
#
# kerberos - http://web.mit.edu/kerberos/dist/krb5/1.9/krb5-1.9.1-signed.tar
#
###############################################################################
KERBEROS_VERSION = 1.9.1
KERBEROS_SOURCE = krb5-$(KERBEROS_VERSION).tar.gz
KERBEROS_SITE = http://web.mit.edu/kerberos/dist/krb5/1.9/
KERBEROS_DEPENDENCIES = 
KERBEROS_INSTALL_STAGING = YES
KERBEROS_INSTALL_TARGET = NO

define KERBEROS_CONFIGURE_CMDS
	(cd $(@D)/src; rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
	)
endef

define KERBEROS_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define KERBEROS_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define KERBEROS_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS))

