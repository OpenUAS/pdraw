
LOCAL_PATH := $(call my-dir)

ifeq ("$(TARGET_OS)-$(TARGET_OS_FLAVOUR)","linux-native")

include $(CLEAR_VARS)

LOCAL_MODULE := pdraw_linux
LOCAL_DESCRIPTION := Parrot Drones Awesome Video Viewer Linux Application
LOCAL_CATEGORY_PATH := multimedia
LOCAL_SRC_FILES := pdraw_linux.c
LOCAL_LIBRARIES := \
	libpdraw \
	libulog \
	libARCommands \
	libARNetwork \
	libARNetworkAL \
	libARDiscovery \
	json \
	curl \
	sdl
LOCAL_CFLAGS += -DUSE_SDL

include $(BUILD_EXECUTABLE)

endif
