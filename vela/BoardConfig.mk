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

# HIDL
DEVICE_MANIFEST_FILE += $(PLATFORM_PATH)/vela/manifest.xml

# Inherit from the proprietary version
-include vendor/meitu/vela/BoardConfigVendor.mk
-include vendor/xiaomi/pyxis/BoardConfigVendor.mk
