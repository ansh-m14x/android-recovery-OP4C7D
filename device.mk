#
# Copyright (C) 2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/OP4C7D

# Health (Recovery specific health implementation)
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Kernel & DTBO Copy (Fixed path: prebuilt)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/image.gz-dtb:kernel \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img

# FSTAB & Init Scripts (Only the essentials for Recovery)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/init.mt6765.rc:recovery/root/init.mt6765.rc \
    $(LOCAL_PATH)/init.mt6765.usb.rc:recovery/root/init.mt6765.usb.rc

# Shipping API level (Stock A31 was Android 9, so 28 is correct)
PRODUCT_SHIPPING_API_LEVEL := 28

# ADB & Debugging (Iske bina recovery mein command nahi chalegi)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \
    persist.sys.usb.config=mtp,adb

# Inherit the proprietary files (Only if they exist)
$(call inherit-product-if-exists, vendor/oppo/OP4C7D/OP4C7D-vendor.mk)
