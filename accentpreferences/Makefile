ARCHS = arm64 arm64e
TARGET := iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = AccentPreferences

AccentPreferences_FILES = APBRootListController.m
AccentPreferences_INSTALL_PATH = /Library/PreferenceBundles
AccentPreferences_FRAMEWORKS = UIKit
AccentPreferences_PRIVATE_FRAMEWORKS = Preferences
AccentPreferences_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unused-function -Wno-unused-property-ivar -Wno-error
AccentPreferences_EXTRA_FRAMEWORKS += Cephei CepheiPrefs CepheiUI AltList
AccentPreferences_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/AccentPreferences.plist$(ECHO_END)
