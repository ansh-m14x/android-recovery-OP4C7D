# Inherit basic Android build targets
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# PBRP Android 9.0 ke liye hum missing common.mk ki line hata rahe hain
# Ye build system ko error dene se rokega.

PRODUCT_DEVICE := OP4C7D
PRODUCT_NAME := omni_OP4C7D
PRODUCT_BRAND := oppo
PRODUCT_MODEL := CPH2015
PRODUCT_MANUFACTURER := oppo
PRODUCT_RELEASE_NAME := Oppo A31 (PitchBlack)
