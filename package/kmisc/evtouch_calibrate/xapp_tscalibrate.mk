################################################################################
#
# xapp_tscalibrate -- evtouch calibrate
#
################################################################################

XAPP_EVTOUCH_CALIBRATE_VERSION = 0.1
XAPP_EVTOUCH_CALIBRATE_SOURCE = evtouch-calibrator-$(XAPP_XINPUT_VERSION).tar.bz2
XAPP_EVTOUCH_CALIBRATE_SITE = http://netcologne.dl.sourceforge.net/project/evtouch-calibra/evtouch-calibrator/$(XAPP_EVTOUCH_CALIBRATE_VERSION)/
XAPP_EVTOUCH_CALIBRATE_DEPENDENCIES = xlib_libX11 xlib_libXi libglade

$(eval $(call AUTOTARGETS))
