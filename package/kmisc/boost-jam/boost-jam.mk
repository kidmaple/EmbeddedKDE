#############################################################
#
# boost-jam
#
#############################################################
BOOST_JAM_VERSION:=3.1.18
BOOST_JAM_SOURCE:=boost-jam-$(BOOST_JAM_VERSION).tgz
BOOST_JAM_SITE:=http://autobuilder.pokylinux.org/sources/
BOOST_JAM_CAT:=$(ZCAT)
BOOST_JAM_DIR:=$(BUILD_DIR)/boost-jam-$(BOOST_JAM_VERSION)

$(DL_DIR)/$(BOOST_JAM_SOURCE):
	 $(call DOWNLOAD,$(BOOST_JAM_SITE),$(BOOST_JAM_SOURCE))

$(BOOST_JAM_DIR)/.unpacked: $(DL_DIR)/$(BOOST_JAM_SOURCE)
	$(BOOST_JAM_CAT) $(DL_DIR)/$(BOOST_JAM_SOURCE) | tar -C $(BUILD_DIR) $(TAR_OPTIONS) -
	touch $@


#############################################################
#
# build bjam for use on the host system
#
#############################################################

$(BOOST_JAM_DIR)/.built: $(BOOST_JAM_DIR)/.unpacked
	(cd $(BOOST_JAM_DIR) && \
	./build.sh )
	touch $@

$(BOOST_JAM_DIR)/.installed: $(BOOST_JAM_DIR)/.built
	cp -f $(BOOST_JAM_DIR)/bin.linuxx86/bjam $(HOST_DIR)/usr/bin/
	touch $@

boost-jam: $(BOOST_JAM_DIR)/.installed

#############################################################
#
# Toplevel Makefile options
#
#############################################################
ifeq ($(strip $(BR2_PACKAGE_BOOST_JAM)),y)
TARGETS+=boost-jam
endif
