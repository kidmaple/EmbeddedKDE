###############################################################################
#
#
# aspell - ftp://ftp.gnu.org/gnu/aspell/aspell-0.60.6.1.tar.gz
#	   http://mirrors.igsobe.com/gnu/aspell/aspell-0.60.6.1.tar.gz
#
###############################################################################
ASPELL_VERSION = 0.60.6.1
ASPELL_SOURCE = aspell-$(ASPELL_VERSION).tar.gz
ASPELL_SITE = http://mirrors.igsobe.com/gnu/aspell
#ASPELL_DEPENDENCIES =
ASPELL_INSTALL_STAGING = YES
ASPELL_INSTALL_TARGET = NO

define ASPELL_CONFIGURE_CMDS
	(cd $(@D); rm -rf config.cache; \
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

define ASPELL_BUILD_CMDS
        $(MAKE) -C $(@D)
endef

define ASPELL_INSTALL_STAGING_CMDS
	$(MAKE) -C $(@D) DESTDIR=$(STAGING_DIR) install
endef

define ASPELL_INSTALL_TARGET_CMDS
	( )
endef

$(eval $(call GENTARGETS,package,aspell))

