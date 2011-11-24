###############################################################################
#
# linux-pam - http://ftp.roedu.net/linux/libs/pam/library/Linux-PAM-1.1.4.tar.bz2
#
###############################################################################
LINUX_PAM_VERSION = 1.1.4
LINUX_PAM_SOURCE = Linux-PAM-$(LINUX_PAM_VERSION).tar.gz
LINUX_PAM_SITE = http://ftp.roedu.net/linux/libs/pam/library

LINUX_PAM_DEPENDENCIES = flex
LINUX_PAM_INSTALL_STAGING = YES

define LINUX_PAM_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
		$(TARGET_CONFIGURE_OPTS) \
		$(TARGET_CONFIGURE_ARGS) \
		CFLAGS="$(TARGET_CFLAGS)" \
		./configure $(QUIET) \
		--target=$(GNU_TARGET_NAME) \
		--host=$(GNU_TARGET_NAME) \
		--build=$(GNU_HOST_NAME) \
		--prefix=/usr \
		--disable-selinux \
		--disable-nis \
	)
endef

define LINUX_PAM_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define LINUX_PAM_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define LINUX_PAM_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(TARGET_DIR) install
endef

$(eval $(call GENTARGETS,package/kde,linux-pam))

