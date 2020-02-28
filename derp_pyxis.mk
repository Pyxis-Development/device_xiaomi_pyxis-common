#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from pyxis device
$(call inherit-product, device/xiaomi/pyxis/pyxis/device.mk)

# Include some common DerpFest stuff
DERP_BUILDTYPE := Unofficial
TARGET_BOOT_ANIMATION_RES := 1080
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64
TARGET_MINIMAL_APPS := false
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

    
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
