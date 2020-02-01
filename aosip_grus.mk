#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from grus device
$(call inherit-product, device/xiaomi/grus/device.mk)

# Include some common AOSiP stuff
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosip_grus
PRODUCT_DEVICE := grus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 SE
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="grus-user 10 QKQ1.190828.002 V11.0.1.0.QFBCNXM release-keys" \
    PRODUCT_NAME="grus" \
    TARGET_DEVICE="grus"
    
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
