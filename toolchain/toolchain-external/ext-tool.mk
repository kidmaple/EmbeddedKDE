
#
# This file implements the support for external toolchains, i.e
# toolchains that have not been produced by Buildroot itself and that
# are already available on the system on which Buildroot runs. So far,
# we have tested this with:
#
#  * Toolchains generated by Crosstool-NG
#  * Toolchains generated by Buildroot
#  * ARM, MIPS and PowerPC toolchains made available by
#    Codesourcery. For the MIPS toolchain, the -muclibc variant isn't
#    supported yet, only the default glibc-based variant is.
#
# The basic principle is the following
#
#  1. Perform some checks on the conformity between the toolchain
#  configuration described in the Buildroot menuconfig system, and the
#  real configuration of the external toolchain. This is for example
#  important to make sure that the Buildroot configuration system
#  knows whether the toolchain supports RPC, IPv6, locales, large
#  files, etc. Unfortunately, these things cannot be detected
#  automatically, since the value of these options (such as
#  BR2_INET_RPC) are needed at configuration time because these
#  options are used as dependencies for other options. And at
#  configuration time, we are not able to retrieve the external
#  toolchain configuration.
#
#  2. Copy the libraries needed at runtime to the target directory,
#  $(TARGET_DIR). Obviously, things such as the C library, the dynamic
#  loader and a few other utility libraries are needed if dynamic
#  applications are to be executed on the target system.
#
#  3. Copy the libraries and headers to the staging directory. This
#  will allow all further calls to gcc to be made using --sysroot
#  $(STAGING_DIR), which greatly simplifies the compilation of the
#  packages when using external toolchains. So in the end, only the
#  cross-compiler binaries remains external, all libraries and headers
#  are imported into the Buildroot tree.

uclibc: dependencies $(STAMP_DIR)/ext-toolchain-installed

LIB_EXTERNAL_LIBS=ld*.so libc.so libcrypt.so libdl.so libgcc_s.so libm.so libnsl.so libresolv.so librt.so libutil.so
ifeq ($(BR2_TOOLCHAIN_EXTERNAL_GLIBC),y)
LIB_EXTERNAL_LIBS+=libnss_files.so libnss_dns.so
endif

ifeq ($(BR2_INSTALL_LIBSTDCPP),y)
USR_LIB_EXTERNAL_LIBS+=libstdc++.so
endif

ifneq ($(BR2_PTHREADS_NONE),y)
LIB_EXTERNAL_LIBS+=libpthread.so
ifeq ($(BR2_PACKAGE_GDB_SERVER),y)
LIB_EXTERNAL_LIBS+=libthread_db.so
endif # gdbserver
endif # ! no threads

# SYSROOT_DIR selection. We first try the -print-sysroot option,
# available in gcc 4.4.x and in some Codesourcery toolchains. If this
# option is not available, we fallback to the value of --with-sysroot
# as visible in CROSS-gcc -v. We don't pass any option to gcc that
# could select a multilib variant as we want the "main" sysroot, which
# contains all variants of the C library in the case of multilib
# toolchains.
TARGET_CC_NO_SYSROOT=$(filter-out --sysroot=%,$(TARGET_CC))
SYSROOT_DIR=$(shell $(TARGET_CC_NO_SYSROOT) -print-sysroot 2>/dev/null)
ifeq ($(SYSROOT_DIR),)
SYSROOT_DIR=$(shell readlink -f $$(LANG=C $(TARGET_CC_NO_SYSROOT) -print-file-name=libc.a) |sed -r -e 's:usr/lib/libc\.a::;')
endif

# Now, find if the toolchain specifies a sub-directory for the
# specific architecture variant we're interested in. This is the case
# with multilib toolchain, when the selected architecture variant is
# not the default one. To do so, we ask the compiler by passing all
# flags, except the --sysroot flag since we want to the compiler to
# tell us where its original sysroot is. ARCH_SUBDIR will contain the
# subdirectory, in the main SYSROOT_DIR, that corresponds to the
# selected architecture variant. ARCH_SYSROOT_DIR will contain the
# full path to this location.
ARCH_SUBDIR=$(shell $(TARGET_CC_NO_SYSROOT) $(TARGET_CFLAGS) -print-multi-directory)
ARCH_SYSROOT_DIR=$(SYSROOT_DIR)/$(ARCH_SUBDIR)

$(STAMP_DIR)/ext-toolchain-installed:
	@echo "Checking external toolchain settings"
	$(Q)$(call check_cross_compiler_exists)
ifeq ($(strip $(SYSROOT_DIR)),)
	@echo "External toolchain doesn't support --sysroot. Cannot use."
	exit 1
endif
ifeq ($(BR2_arm),y)
	$(Q)$(call check_arm_abi)
endif
ifeq ($(BR2_INSTALL_LIBSTDCPP),y)
	$(Q)$(call check_cplusplus)
endif
ifeq ($(BR2_TOOLCHAIN_EXTERNAL_UCLIBC),y)
	$(Q)$(call check_uclibc,$(SYSROOT_DIR))
else
	$(Q)$(call check_glibc,$(SYSROOT_DIR))
endif
	mkdir -p $(TARGET_DIR)/lib
	@echo "Copy external toolchain libraries to target..."
	$(Q)for libs in $(LIB_EXTERNAL_LIBS); do \
		$(call copy_toolchain_lib_root,$(ARCH_SYSROOT_DIR),$$libs,/lib,$(BR2_TOOLCHAIN_EXTERNAL_STRIP)); \
	done
	$(Q)for libs in $(USR_LIB_EXTERNAL_LIBS); do \
		$(call copy_toolchain_lib_root,$(ARCH_SYSROOT_DIR),$$libs,/usr/lib,$(BR2_TOOLCHAIN_EXTERNAL_STRIP)); \
	done
	@echo "Copy external toolchain sysroot to staging..."
	$(Q)$(call copy_toolchain_sysroot,$(SYSROOT_DIR),$(ARCH_SYSROOT_DIR),$(ARCH_SUBDIR))
	# Create lib64 symbolic links if needed
	$(Q)if [ -L $(ARCH_SYSROOT_DIR)/lib64 ] ; then \
		$(call create_lib64_symlinks) ; \
	fi
	@touch $@