#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/TECNO-CLA5

# Inherit from mt6789-common
include device/transsion/mt6789-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := TECNO-CLA5

# Init
TARGET_INIT_VENDOR_LIB := libinit_TECNO-CLA5
TARGET_RECOVERY_DEVICE_MODULES := libinit_TECNO-CLA5

# TWRP Configs
TW_DEVICE_VERSION := CLA5_by_rama982
