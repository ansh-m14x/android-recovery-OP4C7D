# Rootdir files
PRODUCT_PACKAGES += \
    libfwdlockengine \
    libGLESv2 \
    libGLESv3

# Kernel Modules & Prebuilt Copy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/image.gz-dtb:kernel \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img

# Recovery fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Default properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.sys.usb.config=mtp,adb
