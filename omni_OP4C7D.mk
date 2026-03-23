#
# Copyright (C) 2019 The Android Open Source Project
# Copyright (C) 2019 The TWRP Open Source Project
# Copyright (C) 2026 Ansh_m14x (Updated for OrangeFox/PBRP)
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
# Note: OrangeFox uses vendor/twrp/config/common.mk for minimal builds
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. Full name of the product.
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := omni_OP4C7D
PRODUCT_BRAND := oppo
PRODUCT_MODEL := CPH2015
PRODUCT_MANUFACTURER := oppo
PRODUCT_RELEASE_NAME := Oppo A31

# Build fingerprints & Description
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=OP4C7D \
    BUILD_PRODUCT=OP4C7D \
    TARGET_DEVICE=OP4C7D

# Display Dimensions (Oppo A31 Actual: 720x1600)
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720
TV_THEME := portrait_hdpi
