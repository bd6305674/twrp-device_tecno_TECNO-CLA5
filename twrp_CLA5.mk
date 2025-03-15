#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from TECNO-CLA5device
$(call inherit-product, device/tecno/TECNO-CLA5/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Product Specifics
PRODUCT_NAME := twrp_CLA5
PRODUCT_DEVICE := TECNO-CLA5
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CLA5
PRODUCT_MANUFACTURER := TECNO

PRODUCT_GMS_CLIENTID_BASE := android-transsion
