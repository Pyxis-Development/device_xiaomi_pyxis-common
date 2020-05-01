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
$(call inherit-product, device/xiaomi/pyxis/pyxis/device.mk)

# Include some common AOSP stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Evolution X
EVO_DONATE_URL := https://www.paypal.me/asavvo01
EVO_MAINTAINER := DarkAngelGR
CUSTOM_BUILD_TYPE := UNOFFICIAL

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

    
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
