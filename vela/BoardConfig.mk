#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common BoardConfig
-include device/xiaomi/pyxis/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := vela

# Kernel
TARGET_KERNEL_CONFIG := vela_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/pyxis/BoardConfigVendor.mk
