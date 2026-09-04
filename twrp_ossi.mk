#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
# $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PATH := device/oplus/ossi

# Inherit some common Omni stuff.
# $(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ossi device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := twrp_ossi
PRODUCT_BRAND := oplus
# PRODUCT_MODEL := ossi
# PRODUCT_MANUFACTURER := oneplus

# PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# PRODUCT_BUILD_PROP_OVERRIDES += \
#     PRIVATE_BUILD_DESC="twrp_ossi-eng 16.1.0 SP2A.220405.004 eng.color5.20240310.203930 test-keys"

# BUILD_FINGERPRINT := OnePlus/twrp_ossi/ossi:16.1.0/SP2A.220405.004/color59703102037:eng/test-keys

# Theme
TW_STATUS_ICONS_ALIGN   := center
TW_Y_OFFSET             := 111
TW_H_OFFSET             := -111
