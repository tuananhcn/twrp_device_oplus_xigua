# #
# # Copyright (C) 2026 The Android Open Source Project
# # Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
# #
# # SPDX-License-Identifier: Apache-2.0
# #

# # DEVICE_PATH := device/oneplus/xigua

# # For building with minimal manifest
# ALLOW_MISSING_DEPENDENCIES                      := true
# BUILD_BROKEN_DUP_RULES                          := true
# BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES    := true

# BUILD_BROKEN_NINJA_USES_ENV_VARS    += RTIC_MPGEN
# BUILD_BROKEN_PLUGIN_VALIDATION      := soong-libaosprecovery_defaults soong-libguitwrp_defaults soong-libminuitwrp_defaults soong-vold_defaults


# # A/B
# AB_OTA_PARTITIONS := \
#     boot \
#     init_boot \
#     vendor_boot \
#     dtbo \
#     odm \
#     product \
#     system \
#     system_ext \
#     system_dlkm \
#     vbmeta \
#     vbmeta_system \
#     vbmeta_vendor \
#     vendor \
#     vendor_dlkm

# # AB partitions for oplus
# AB_OTA_PARTITIONS += \
#     my_bigball \
#     my_carrier \
#     my_company \
#     my_engineering \
#     my_heytap \
#     my_manifest \
#     my_preload \
#     my_product \
#     my_region \
#     my_stock

# # AB_OTA_UPDATER := true
# # AB_OTA_PARTITIONS += \
# #     system \
# #     vendor \
# #     vendor_dlkm \
# #     system_ext \
# #     product \
# #     odm \
# #     system_dlkm
# # BOARD_USES_RECOVERY_AS_BOOT := true

# # Architecture
# TARGET_ARCH := arm64
# TARGET_ARCH_VARIANT := armv8-a
# TARGET_CPU_ABI := arm64-v8a
# TARGET_CPU_ABI2 := 
# TARGET_CPU_VARIANT := generic
# TARGET_CPU_VARIANT_RUNTIME := kryo385

# TARGET_2ND_ARCH := arm
# TARGET_2ND_ARCH_VARIANT := armv7-a-neon
# TARGET_2ND_CPU_ABI := armeabi-v7a
# TARGET_2ND_CPU_ABI2 := armeabi
# TARGET_2ND_CPU_VARIANT := generic
# TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# # APEX
# OVERRIDE_TARGET_FLATTEN_APEX := true

# # Bootloader
# # TARGET_BOOTLOADER_BOARD_NAME := kalama
# # TARGET_NO_BOOTLOADER := true
# PRODUCT_PLATFORM             := kalama
# TARGET_BOOTLOADER_BOARD_NAME := kalama

# # Crypto
# BOARD_USES_METADATA_PARTITION   := true
# TW_INCLUDE_CRYPTO               := true
# TW_INCLUDE_OMAPI                := true

# # Kernel
# # BOARD_BOOTIMG_HEADER_VERSION := 4
# # BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
# # BOARD_KERNEL_IMAGE_NAME := Image
# # TARGET_KERNEL_CONFIG := xigua_defconfig
# # TARGET_KERNEL_SOURCE := kernel/oneplus/xigua
# BOARD_KERNEL_IMAGE_NAME     := Image
# BOARD_BOOT_HEADER_VERSION   := 4
# BOARD_KERNEL_PAGESIZE       := 4096
# BOARD_MKBOOTIMG_ARGS        += --header_version $(BOARD_BOOT_HEADER_VERSION)
# BOARD_MKBOOTIMG_ARGS        += --pagesize $(BOARD_KERNEL_PAGESIZE)

# BOARD_RAMDISK_USE_LZ4       := true

# # Kernel - prebuilt
# TARGET_FORCE_PREBUILT_KERNEL := true
# ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
# TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
# endif

# # Partitions
# # BOARD_BOOTIMAGE_PARTITION_SIZE := 104857600
# # BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
# # BOARD_HAS_LARGE_FILESYSTEM := true
# # BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
# # BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
# # BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
# # TARGET_COPY_OUT_VENDOR := vendor
# # BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
# # BOARD_SUPER_PARTITION_GROUPS := oneplus_dynamic_partitions
# # BOARD_ONEPLUS_DYNAMIC_PARTITIONS_PARTITION_LIST := system system system_dlkm system_dlkm system_ext system_ext product product vendor vendor vendor_dlkm vendor_dlkm odm odm my_product my_product my_company my_company my_carrier my_carrier my_region my_region my_bigball my_bigball my_heytap my_heytap my_stock my_stock my_preload my_preload my_manifest my_manifest my_engineering my_engineering my_colorospro my_colorospro
# # BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value
# BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED  := true
# BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 0x6400000

# BOARD_SUPER_PARTITION_SIZE                  := 15569256448
# BOARD_SUPER_PARTITION_GROUPS                := qti_dynamic_partitions
# BOARD_QTI_DYNAMIC_PARTITIONS_SIZE           := 15565062144
# BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor vendor_dlkm odm
# BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST += my_bigball my_carrier my_company my_engineering my_heytap my_manifest my_preload my_product my_region my_stock

# BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
# TARGET_COPY_OUT_ODM             := odm
# TARGET_COPY_OUT_VENDOR          := vendor

# # Platform
# TARGET_BOARD_PLATFORM := kalama
# QCOM_BOARD_PLATFORMS += kalama

# # Security patch level
# # VENDOR_SECURITY_PATCH := 2021-08-01

# # Verified Boot
# BOARD_AVB_ENABLE := true
# # BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# # Hack: prevent anti rollback
# PLATFORM_SECURITY_PATCH := 2099-12-31
# VENDOR_SECURITY_PATCH := 2099-12-31
# PLATFORM_VERSION := 16.1.0

# # Recovery
# BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE    := true
# TARGET_RECOVERY_PIXEL_FORMAT                := RGBX_8888
# TW_INCLUDE_FASTBOOTD                        := true
# # TARGET_USERIMAGES_USE_EXT4 := true
# # TARGET_USERIMAGES_USE_F2FS := true

# # Tool
# TW_ENABLE_ALL_PARTITION_TOOLS := true
# TW_INCLUDE_7ZA                := true
# TW_INCLUDE_REPACKTOOLS        := true
# TW_INCLUDE_RESETPROP          := true
# TW_USE_TOOLBOX                := true
# TW_INCLUDE_ZSTD               := true

# # TWRP display
# TW_BRIGHTNESS_PATH      := /sys/class/backlight/panel0-backlight/brightness
# TW_DEFAULT_BRIGHTNESS   := 1000
# TW_FRAMERATE            := 120
# TW_MAX_BRIGHTNESS       := 2047
# TW_SCREEN_BLANK_ON_BOOT := true
# TW_THEME                := portrait_hdpi

# # TWRP file system
# RECOVERY_SDCARD_ON_DATA     := true
# TARGET_USES_MKE2FS          := true
# TW_ENABLE_FS_COMPRESSION    := true
# TW_INCLUDE_FUSE_EXFAT       := true
# TW_INCLUDE_FUSE_NTFS        := true
# TW_INCLUDE_NTFS_3G          := true
# TW_NO_EXFAT_FUSE            := true

# # Version
# PLATFORM_VERSION                := 99.87.36
# PLATFORM_VERSION_LAST_STABLE    := $(PLATFORM_VERSION)
# PLATFORM_SECURITY_PATCH         := 2099-12-31
# VENDOR_SECURITY_PATCH           := $(PLATFORM_SECURITY_PATCH)
# TW_DEVICE_VERSION               := OPLUS-SM87XX

# # Verified Boot
# BOARD_AVB_ENABLE := true

# # Vibrator
# TW_SUPPORT_INPUT_AIDL_HAPTICS := true

# # Other TWRP Configurations
# TARGET_RECOVERY_QCOM_RTC_FIX            := true
# TW_CUSTOM_CPU_TEMP_PATH                 := "/sys/class/thermal/thermal_zone45/temp" # CPU-0-0-0
# TW_EXCLUDE_APEX                         := true
# TW_EXCLUDE_DEFAULT_USB_INIT             := true
# TW_EXTRA_LANGUAGES                      := true
# TW_LOAD_VENDOR_MODULES                  := "adsp_loader_dlkm.ko oplus_chg_v2.ko stm_st54se_gpio.ko nxp-nci.ko"
# TW_LOAD_VENDOR_MODULES_EXCLUDE_GKI      := true
# TW_NO_SCREEN_BLANK                      := true
# TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID  := true
# TW_NO_NETWORK                           := true

# # Debug
# TARGET_USES_LOGD                := true
# TWRP_INCLUDE_LOGCAT             := true
# TARGET_RECOVERY_DEVICE_MODULES  += debuggerd
# TARGET_RECOVERY_DEVICE_MODULES  += strace
# RECOVERY_BINARY_SOURCE_FILES    += $(TARGET_OUT_EXECUTABLES)/debuggerd
# RECOVERY_BINARY_SOURCE_FILES    += $(TARGET_OUT_EXECUTABLES)/strace

# # File systems
# TARGET_USERIMAGES_USE_F2FS := true
# TW_USE_DMCTL               := true

# # Init
TARGET_INIT_VENDOR_LIB          := //$(DEVICE_PATH):libinit_oplus_xigua
TARGET_RECOVERY_DEVICE_MODULES  := libinit_oplus_xigua

#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Building with minimal manifest
ALLOW_MISSING_DEPENDENCIES                      := true
BUILD_BROKEN_DUP_RULES                          := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES    := true

BUILD_BROKEN_NINJA_USES_ENV_VARS    += RTIC_MPGEN
BUILD_BROKEN_PLUGIN_VALIDATION      := soong-libaosprecovery_defaults soong-libguitwrp_defaults soong-libminuitwrp_defaults soong-vold_defaults

# Architecture
TARGET_ARCH                 := arm64
TARGET_ARCH_VARIANT         := armv8-a
TARGET_CPU_ABI              := arm64-v8a
TARGET_CPU_VARIANT          := generic

# A/B
AB_OTA_PARTITIONS := \
    boot \
    init_boot \
    vendor_boot \
    dtbo \
    odm \
    product \
    system \
    system_ext \
    system_dlkm \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor \
    vendor_dlkm

# AB partitions for oplus
AB_OTA_PARTITIONS += \
    my_bigball \
    my_carrier \
    my_company \
    my_engineering \
    my_heytap \
    my_manifest \
    my_preload \
    my_product \
    my_region \
    my_stock

# Bootloader
PRODUCT_PLATFORM                := kalama
TARGET_BOOTLOADER_BOARD_NAME    := kalama

# Crypto
BOARD_USES_METADATA_PARTITION   := true
TW_INCLUDE_CRYPTO               := true
TW_INCLUDE_OMAPI                := true

# Debug
TARGET_USES_LOGD                := true
TWRP_INCLUDE_LOGCAT             := true
TARGET_RECOVERY_DEVICE_MODULES  += debuggerd
TARGET_RECOVERY_DEVICE_MODULES  += strace
RECOVERY_BINARY_SOURCE_FILES    += $(TARGET_OUT_EXECUTABLES)/debuggerd
RECOVERY_BINARY_SOURCE_FILES    += $(TARGET_OUT_EXECUTABLES)/strace

# File systems
TARGET_USERIMAGES_USE_F2FS := true
TW_USE_DMCTL               := true

# Kernel
BOARD_KERNEL_IMAGE_NAME     := Image
BOARD_BOOT_HEADER_VERSION   := 4
BOARD_KERNEL_PAGESIZE       := 4096
BOARD_MKBOOTIMG_ARGS        += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS        += --pagesize $(BOARD_KERNEL_PAGESIZE)

BOARD_RAMDISK_USE_LZ4       := true

# Partitions
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED  := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 104857600

BOARD_SUPER_PARTITION_SIZE                  := 9126805504
BOARD_SUPER_PARTITION_GROUPS                := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor vendor_dlkm odm
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST += my_bigball my_carrier my_company my_engineering my_heytap my_manifest my_preload my_product my_region my_stock
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value

BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM             := odm
TARGET_COPY_OUT_VENDOR          := vendor

# Platform
TARGET_BOARD_PLATFORM   := sm8550
QCOM_BOARD_PLATFORMS    += sm8550

# Recovery
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE    := true
TARGET_RECOVERY_PIXEL_FORMAT                := RGBX_8888
TW_INCLUDE_FASTBOOTD                        := true

# Tool
TW_ENABLE_ALL_PARTITION_TOOLS := true
TW_INCLUDE_7ZA                := true
TW_INCLUDE_REPACKTOOLS        := true
TW_INCLUDE_RESETPROP          := true
TW_USE_TOOLBOX                := true
TW_INCLUDE_ZSTD               := true

# TWRP display
TW_BRIGHTNESS_PATH      := /sys/class/backlight/panel0-backlight/brightness
TW_DEFAULT_BRIGHTNESS   := 1000
TW_FRAMERATE            := 120
TW_MAX_BRIGHTNESS       := 2047
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME                := portrait_hdpi

# TWRP file system
RECOVERY_SDCARD_ON_DATA     := true
TARGET_USES_MKE2FS          := true
TW_ENABLE_FS_COMPRESSION    := true
TW_INCLUDE_FUSE_EXFAT       := true
TW_INCLUDE_FUSE_NTFS        := true
TW_INCLUDE_NTFS_3G          := true
TW_NO_EXFAT_FUSE            := true

# Version
PLATFORM_VERSION                := 99.87.36
PLATFORM_VERSION_LAST_STABLE    := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH         := 2099-12-31
VENDOR_SECURITY_PATCH           := $(PLATFORM_SECURITY_PATCH)
TW_DEVICE_VERSION               := OPLUS-SM87XX

# Verified Boot
BOARD_AVB_ENABLE := true

# Vibrator
TW_SUPPORT_INPUT_AIDL_HAPTICS := true

# Other TWRP Configurations
TARGET_RECOVERY_QCOM_RTC_FIX            := true
TW_CUSTOM_CPU_TEMP_PATH                 := "/sys/class/thermal/thermal_zone45/temp" # CPU-0-0-0
TW_EXCLUDE_APEX                         := true
TW_EXCLUDE_DEFAULT_USB_INIT             := true
TW_EXTRA_LANGUAGES                      := true
TW_LOAD_VENDOR_MODULES                  := "adsp_loader_dlkm.ko oplus_chg_v2.ko stm_st54se_gpio.ko nxp-nci.ko"
TW_LOAD_VENDOR_MODULES_EXCLUDE_GKI      := true
TW_NO_SCREEN_BLANK                      := true
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID  := true
TW_NO_NETWORK                           := true