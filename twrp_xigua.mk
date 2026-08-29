#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/oplus/xigua

$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := xigua
PRODUCT_NAME := twrp_xigua
PRODUCT_BRAND := oplus

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 111
TW_H_OFFSET := -111
