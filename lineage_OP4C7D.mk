# Inherit from your local core_64_bit.mk (Root of device tree)
$(call inherit-product, device/oppo/OP4C7D/core_64_bit.mk)

# Standard inheritance from build system
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from device makefile
$(call inherit-product, device/oppo/OP4C7D/device.mk)

# Inherit common LineageOS product files (if they exist)
$(call inherit-product-if-exists, vendor/lineage/config/common_full_phone.mk)

# Device details
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := lineage_OP4C7D
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2015
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo
