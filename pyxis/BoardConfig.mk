#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common BoardConfig
-include device/xiaomi/pyxis/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := pyxis

# Kernel
TARGET_KERNEL_CONFIG := pyxis_defconfig

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(PLATFORM_PATH)/pyxis:libinit_pyxis
TARGET_RECOVERY_DEVICE_MODULES := libinit_pyxis

# Inherit from the proprietary version
-include vendor/xiaomi/pyxis/BoardConfigVendor.mk
