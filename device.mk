# Rootdir files (Basic Graphics for Recovery)
PRODUCT_PACKAGES += \
    libfwdlockengine \
    libGLESv2 \
    libGLESv3

# Kernel & DTBO Copy (Synced with Folder Name: prebuilt)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/image.gz-dtb:kernel \
    $(LOCAL_PATH)/prebuilt/dtbo.img:dtbo.img

# Recovery fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Default properties (ADB & Debugging Enabled)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \
    persist.sys.usb.config=mtp,adb
