#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/pyxis-common/pyxis-common-vendor.mk)
$(call inherit-product-if-exists, vendor/xiaomi/pyxis/pyxis-vendor.mk)

# Firmware
$(call inherit-product, vendor/xiaomi/firmware/pyxis/firmware.mk)

# Inherit common device configuration
$(call inherit-product, device/xiaomi/pyxis-common/device-common.mk)
