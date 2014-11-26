$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

PRODUCT_NAME := slim_d2att
PRODUCT_DEVICE := d2att
