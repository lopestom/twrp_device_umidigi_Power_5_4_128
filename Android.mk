LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), Power_5)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
