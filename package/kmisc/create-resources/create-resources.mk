###############################################################################
#
#
# create-resources - http://create.freedesktop.org/releases/create/create-0.1.3.tar.bz2
#
#
###############################################################################
CREATE_RESOURCES_VERSION = 0.1.3
CREATE_RESOURCES_SOURCE = create-$(CREATE_RESOURCES_VERSION).tar.bz2
CREATE_RESOURCES_SITE = http://create.freedesktop.org/releases/create

#CREATE_RESOURCES_OPT_DEPENDENCIES = motif (http://www.openmotif.org/)
CREATE_RESOURCES_DEPENDENCIES = host-scons
CREATE_RESOURCES_INSTALL_STAGING = YES
CREATE_RESOURCES_INSTALL_TARGET = YES

define CREATE_RESOURCES_CONFIGURE_CMDS
	@echo No configuring for this package
endef

define CREATE_RESOURCES_BUILD_CMDS
        @echo No building for this package
endef

define CREATE_RESOURCES_INSTALL_STAGING_CMDS
	( cd $(@D) && \
	  $(HOST_DIR)/usr/bin/scons -Q install PREFIX=$(STAGING_DIR)/usr \
	)
endef

define CREATE_RESOURCES_INSTALL_TARGET_CMDS
	( cd $(@D) && \
	  $(HOST_DIR)/usr/bin/scons -Q install PREFIX=$(TARGET_DIR)/usr \
	)
endef

$(eval $(call GENTARGETS))

