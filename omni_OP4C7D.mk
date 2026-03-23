# Release name
PRODUCT_RELEASE_NAME := OP4C7D

# Inherit from Android build targets
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from PitchBlack common configuration
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := omni_OP4C7D
PRODUCT_BRAND := oppo
PRODUCT_MODEL := CPH2015
PRODUCT_MANUFACTURER := oppo

# HACK: Set vendor patch level to bypass anti-rollback
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

# Blacklist to prevent build date mismatches
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product \
    ro.bootimage.build.date.utc \
    ro.build.date.utc
