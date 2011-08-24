LOCAL_PATH := $(call my-dir)

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
$(transform-prebuilt-to-target)

# include the non-open-source counterpart to this file
-include vendor/Boston/AndroidBoardVendor.mk
