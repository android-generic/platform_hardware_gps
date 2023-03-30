# Copyright (C) 2011-2014 The Android-x86 Open Source Project

ifeq ($(strip $(BOARD_HAS_GPS_HARDWARE)),true)
LOCAL_PATH := $(call my-dir)

# HAL module implemenation, not prelinked and stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_HEADER_LIBRARIES := libhardware_headers
LOCAL_MODULE := gps.default
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := gps.c
LOCAL_CFLAGS := -Wno-unused-parameter -Wno-unused-variable
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_HEADER_LIBRARIES := libhardware_headers
LOCAL_MODULE := gps.huawei
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := gps_huawei.c
LOCAL_CFLAGS := -Wno-unused-parameter -Wno-unused-variable -Wno-literal-range
include $(BUILD_SHARED_LIBRARY)
endif
