include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = async_wake_ios

async_wake_ios_FILES = async_wake.c early_kalloc.c find_port.c kcall.c kmem.c kutils.c main.m symbols.c fun.c fun_objc.m patchfinder64.c NonceSet.mm
async_wake_ios_FRAMEWORKS =  UIKit MessageUI Social Twitter QuartzCore CoreGraphics Foundation CoreFoundation IOKit
async_wake_ios_PRIVATE_FRAMEWORKS = Preferences
async_wake_ios_LIBRARIES = MobileGestalt
async_wake_ios_LDFLAGS = -Wl,-segalign,4000 -Wl,-undefined,dynamic_lookup
async_wake_ios_CFLAGS = -fobjc-arc
async_wake_ios_ARCHS = arm64
export ARCHS = arm64

include $(THEOS_MAKE_PATH)/application.mk

all::
