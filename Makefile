ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Accent

Accent_FILES = Tweak.x
Accent_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unused-function -Wno-unused-property-ivar -Wno-error
Accent_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += accentpreferences
include $(THEOS_MAKE_PATH)/aggregate.mk

