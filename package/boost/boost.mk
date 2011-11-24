#############################################################
#
# boost
#
#############################################################

BOOST_VER:=1_45_0
BOOST_DIR:=$(BUILD_DIR)/boost_$(BOOST_VER)
BOOST_SITE:=http://$(BR2_SOURCEFORGE_MIRROR).dl.sourceforge.net/sourceforge/boost
BOOST_SOURCE:=boost_$(BOOST_VER).tar.bz2
BOOST_CAT:=bzcat

BOOST_JAM_FLAGS= --with-serialization \
		 --with-thread \
		 --with-date_time \
		 --with-program_options \
		 --with-graph

$(DL_DIR)/$(BOOST_SOURCE):
	 $(WGET) -P $(DL_DIR) $(BOOST_SITE)/$(BOOST_SOURCE)

boost-source: $(DL_DIR)/$(BOOST_SOURCE)

$(BOOST_DIR)/.stamp_unpacked: $(DL_DIR)/$(BOOST_SOURCE)
	$(BOOST_CAT) $(DL_DIR)/$(BOOST_SOURCE) | tar -C $(BUILD_DIR) $(TAR_OPTIONS) -
	cp -f package/boost/boost/config/stdlib/libstdcpp3.hpp $(BOOST_DIR)/boost/config/stdlib/libstdcpp3.hpp
	touch $@

$(BOOST_DIR)/.stamp_configured: $(BOOST_DIR)/.stamp_unpacked
	cd $(BOOST_DIR) && \
	ln -fs $(TARGET_CC) g++ && \
	ln -fs $(TARGET_AR) ar && \
	ln -fs $(TARGET_RANLIB) ranlib && \
	ln -fs $(TARGET_AS) as && \
	ln -fs $(TARGET_LD) ld && \
	echo "using gcc : $(BR2_GCC_VERSION) : $(TARGET_CC)  ; " > $(BOOST_DIR)/tools/build/v2/user-config.jam && \
	./bootstrap.sh \
	--with-libraries=serialization,thread,date_time,program_options,graph \
	--with-toolset=gcc \
	--without-icu \
	--prefix=$(STAGING_DIR) \
   	--exec-prefix=$(STAGING_DIR) \
   	--libdir=$(STAGING_DIR)/usr/lib \
   	--includedir=$(STAGING_DIR)/usr/include
	touch $@

$(BOOST_DIR)/.stamp_built: $(BOOST_DIR)/.stamp_configured
	cd $(BOOST_DIR) && \
	export PATH="$(BOOST_DIR):$(PATH)" && \
	$(HOST_DIR)/usr/bin/bjam cxxflags=-fPIC $(BOOST_JAM_FLAGS) \
	--prefix=$(STAGING_DIR) 
	touch $@

$(BOOST_DIR)/.stamp_installed_staging: $(BOOST_DIR)/.stamp_built
	cd $(BOOST_DIR) && \
	export PATH="$(BOOST_DIR):$(PATH)" && \
	$(HOST_DIR)/usr/bin/bjam cxxflags=-fPIC install \
   	--prefix=$(STAGING_DIR) \
   	--exec-prefix=$(STAGING_DIR) \
   	--libdir=$(STAGING_DIR)/usr/lib \
   	--includedir=$(STAGING_DIR)/usr/include
	touch $@

$(BOOST_DIR)/.stamp_installed_target: $(BOOST_DIR)/.stamp_installed_staging
	cd $(BOOST_DIR) && \
	export PATH="$(BOOST_DIR):$(PATH)" && \
	$(HOST_DIR)/usr/bin/bjam cxxflags=-fPIC  install \
   	--prefix=$(STAGING_DIR) \
   	--exec-prefix=$(STAGING_DIR) \
   	--libdir=$(TARGET_DIR)/usr/lib \
   	--includedir=$(STAGING_DIR)/usr/include
	touch $@

$(BOOST_DIR)/.stamp_slim_install: $(BOOST_DIR)/.stamp_built
	find $(BOOST_DIR)/bin.v2/libs -name *.a -print0 | xargs -0 -I xxx cp xxx $(STAGING_DIR)/usr/lib
	mkdir -p $(STAGING_DIR)/usr/include/boost
	cp -r $(BOOST_DIR)/boost/* $(STAGING_DIR)/usr/include/boost/
	touch $@

boost: boost-jam uclibc zlib bzip2 $(BOOST_DIR)/.stamp_slim_install $(BOOST_DIR)/.stamp_installed_staging

boost-clean:
	rm -rf $(STAGING_DIR)/include/boost*
	rm -f $(STAGING_DIR)/lib/libboost_*
	rm -f $(TARGET_DIR)/lib/libboost_*
	cd $(BOOST_DIR) && \
	$(HOST_DIR)/usr/bin/bjam clean

boost-dirclean:
	rm -rf $(BOOST_DIR)

#############################################################
#
# Toplevel Makefile options
#
#############################################################
ifeq ($(strip $(BR2_PACKAGE_BOOST)),y)
TARGETS+=boost
endif
