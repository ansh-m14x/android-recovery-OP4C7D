# Release name
PRODUCT_RELEASE_NAME := OP4C7D

# Inherit from Android build targets
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from PitchBlack common configuration
$(call inherit-product, vendor/pb/config/common.mk)
# --- Set PBRP Overwrites (Sample Fix) ---
BOARD_VENDOR := oppo
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := omni_OP4C7D
PRODUCT_MANUFACTURER := oppo
PRODUCT_MODEL := CPH2015
TARGET_VENDOR := oppo

PRODUCT_RELEASE_NAME := Oppo A31
PRODUCT_GMS_CLIENTID_BASE := android-oppo
