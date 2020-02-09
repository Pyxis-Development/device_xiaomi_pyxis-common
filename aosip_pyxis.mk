#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from pyxis device
$(call inherit-product, device/xiaomi/pyxis/device.mk)

# Include some common AOSiP stuff
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosip_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
    
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
