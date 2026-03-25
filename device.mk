#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Core Files (Directly from your main folder)
# Inhe ramdisk mein sahi jagah map kar rahe hain
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.mt6765 \
    $(LOCAL_PATH)/init.mt6765.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.mt6765.rc \
    $(LOCAL_PATH)/init.mt6765.usb.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.mt6765.usb.rc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/oppo/OP4C7D/OP4C7D-vendor.mk)
