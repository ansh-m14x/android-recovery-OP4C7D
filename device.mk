# Rootdir files (Basic Graphics for Recovery)
PRODUCT_PACKAGES += \
    libfwdlockengine \
    libGLESv2 \
    libGLESv3

# Kernel & DTBO Copy (Match your prebuilt folder name)
# Agar folder ka naam 'prebuilt' hai toh ye sahi hai, 
# lekin aksar hum 'prebuilts' (s ke saath) use karte hain. Check kar lena.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilts/Image.gz-dtb:kernel \
    $(LOCAL_PATH)/prebuilts/dtbo.img:dtbo.img

# Recovery fstab (Sahi path for LineageOS)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab

# Debugging & ADB (Inse recovery mein ADB access milega)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    ro.secure=0 \
    persist.sys.usb.config=mtp,adb
