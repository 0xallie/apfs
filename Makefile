ARCHS = armv7 arm64
TARGET := iphone:clang:latest:10.3

include $(THEOS)/makefiles/common.mk

TOOL_NAME = snaputil

snaputil_FILES = snapUtil.c
snaputil_CFLAGS = -fobjc-arc
snaputil_CODESIGN_FLAGS = -Sentitlements.plist
snaputil_INSTALL_PATH = /usr/bin
snaputil_FRAMEWORKS = CoreFoundation IOKit

include $(THEOS_MAKE_PATH)/tool.mk
