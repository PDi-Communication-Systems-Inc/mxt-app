LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -DMXT_VERSION=\"$(GIT_VERSION)\"
LOCAL_C_INCLUDES += $(TOP_DIR)/src
LOCAL_SRC_FILES := jniinterface.c
LOCAL_LDLIBS := -llog
#LOCAL_STATIC_LIBRARIES := maxtouch libusbdroid
LOCAL_STATIC_LIBRARIES := maxtouch
LOCAL_SHARED_LIBRARIES := libusb1.0
LOCAL_MODULE    := libmaxtouch-jni

include $(BUILD_SHARED_LIBRARY)
