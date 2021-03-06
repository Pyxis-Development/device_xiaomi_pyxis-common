#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common BoardConfig
-include device/xiaomi/pyxis-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := vela

# Kernel
TARGET_KERNEL_CONFIG := phoenix_defconfig

# Inherit from the proprietary version
-include vendor/meitu/vela/BoardConfigVendor.mk
-include vendor/xiaomi/pyxis-common/BoardConfigVendor.mk
