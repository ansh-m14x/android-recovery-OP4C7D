# Inherit from those products. Most specific first.
$(call inherit-product, build/make/target/product/core_64_bit.mk)
$(call inherit-product, build/make/target/product/full_base_telephony.mk)
$(call inherit-product, build/make/target/product/embedded.mk)

# Inherit from device makefile
$(call inherit-product, device/oppo/OP4C7D/device.mk)

# Inherit common LineageOS product files
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device details
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := lineage_OP4C7D
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2015
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo
