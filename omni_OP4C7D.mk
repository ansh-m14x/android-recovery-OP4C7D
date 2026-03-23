# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# PBRP Specific Inheritance
$(call inherit-product, vendor/pbrp/config/common.mk)

# Device identifier
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := omni_OP4C7D
PRODUCT_BRAND := oppo
PRODUCT_MODEL := CPH2015
PRODUCT_MANUFACTURER := oppo
PRODUCT_RELEASE_NAME := Oppo A31 (PitchBlack)

# Build fingerprints & Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OP4C7D \
    BUILD_PRODUCT=OP4C7D \
    TARGET_DEVICE=OP4C7D

# Display Dimensions
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TW_THEME := portrait_hdpi
