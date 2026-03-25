#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Product characteristics
PRODUCT_CHARACTERISTICS := default
# Core Files Mapping
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab \
    $(LOCAL_PATH)/init.mt6765.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.mt6765.rc \
    $(LOCAL_PATH)/init.mt6765.usb.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.mt6765.usb.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/default.prop:$(TARGET_COPY_OUT_RAMDISK)/default.prop

# Extra: Agar first stage mount chahiye (Optional but safer for MTK)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.mt6765

# In device.mk (not BoardConfig.mk)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    sys.usb.config=adb


# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
