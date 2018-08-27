
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES := QWiFiSoftApCfg.c

LOCAL_MODULE := libQWiFiSoftApCfg

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += \
    -Wno-format \
    -Wno-enum-conversion \
    -Wno-sometimes-uninitialized \
    -Wno-unused-function \
    -Wno-unused-parameter \
    -Wno-unused-value \
    -Wno-unused-variable

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include \
                    $(JNI_H_INCLUDE)

LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_SHARED_LIBRARIES := libsysutils libcutils libnetutils libcrypto liblog

include $(BUILD_SHARED_LIBRARY)
