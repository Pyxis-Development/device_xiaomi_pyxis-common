#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from vela device
$(call inherit-product, device/xiaomi/pyxis/vela/device.mk)

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
PRODUCT_NAME := derp_vela
PRODUCT_DEVICE := vela
PRODUCT_BRAND := Meitu
PRODUCT_MODEL := MI CC 9 Meitu Edition
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/blueline/blueline:10/QP1A.191105.003/5899767:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vela-user 9 PKQ1.181121.001 V11.3.1.0.PFECNXM release-keys" \
    PRODUCT_NAME="vela" \
    TARGET_DEVICE="vela"
    
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
