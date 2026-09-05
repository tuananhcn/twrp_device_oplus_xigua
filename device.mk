#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure virtual_ab compression.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_with_xor.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Shipping API level
BOARD_SHIPPING_API_LEVEL    := 36
PRODUCT_SHIPPING_API_LEVEL  := 36
PRODUCT_TARGET_VNDK_VERSION := 36

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS   := false
PRODUCT_ENABLE_UFFD_GC                          := true

# OTA certs
# PRODUCT_EXTRA_RECOVERY_KEYS += \
# 	$(DEVICE_PATH)/security/local_OTA

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# LOCAL_PATH := device/oneplus/ossi
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot Control HAL (Cơ chế chuyển đổi Slot A/B tiêu chuẩn cho chip Snapdragon 'kalama')
PRODUCT_PACKAGES += \
    android.hardware.boot-service.qcom \
    android.hardware.boot-service.qcom-recovery \
    bootctrl.kalama \
    bootctrl.kalama.recovery

# Các gói công cụ tối thiểu dành cho phân vùng Dynamic & Giải mã Data
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Thêm gói thư viện liên kết phân vùng nếu cần thiết để nạp thư viện Oplus
PRODUCT_PACKAGES += \
    libinit_oplus_ossi
