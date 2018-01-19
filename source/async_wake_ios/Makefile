include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = NonceSet1112

NonceSet1112_FILES = async_wake.c early_kalloc.c find_port.c kcall.c kmem.c kutils.c main.m symbols.c fun.c fun_objc.m patchfinder64.c NonceSet.mm
NonceSet1112_FRAMEWORKS =  UIKit MessageUI Social Twitter QuartzCore CoreGraphics Foundation CoreFoundation IOKit
NonceSet1112_PRIVATE_FRAMEWORKS = Preferences
NonceSet1112_LIBRARIES = MobileGestalt
NonceSet1112_LDFLAGS = -Wl,-segalign,4000 -Wl,-undefined,dynamic_lookup
NonceSet1112_CFLAGS = -fobjc-arc
NonceSet1112_ARCHS = arm64
export ARCHS = arm64

include $(THEOS_MAKE_PATH)/application.mk

all::
