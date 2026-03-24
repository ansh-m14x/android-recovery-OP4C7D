#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/OP4C7D

# Rootdir files (Graphics & Basic Binaries)
PRODUCT_PACKAGES += \
    libfwdlockengine \
    libGLESv2 \
    libGLESv3 \
    toybox \
    sh

# Kernel & DTBO Copy (Verified Working)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/image.gz-dtb:kernel \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img


# --- Recovery Fstab (The Mount Fix) ---
# Hum fstab ko 3 alag locations par copy kar rahe hain taaki 
# kernel use kahin se bhi dhoond sake (Root, /etc, aur /system/etc)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/recovery.fstab \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/fstab.mt6765
# Default properties (ADB & Debugging Enabled)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \
    persist.sys.usb.config=mtp,adb
