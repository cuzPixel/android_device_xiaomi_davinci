#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot
BOARD_BOOT_HEADER_VERSION := 1

# Display density
TARGET_SCREEN_DENSITY := 420

# Inherit from sm6150-common
include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/davinci

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := davinci,davinciin

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true

# Caf revision
CAF_REVISION := LA.UM.9.1.r1-11200-SMxxx0.0

# Fingerprint
TARGET_SURFACEFLINGER_FOD_LIB := //$(COMMON_PATH):libfod_extension
TARGET_USES_FOD_ZPOS := true
SOONG_CONFIG_xiaomiVars_uses_fod_extension := $(TARGET_USES_FOD_ZPOS)
SOONG_CONFIG_xiaomiVars_fod_pos_y := 1931

# FOD key for InputDispatcher to skip
TARGET_INPUTDISPATCHER_SKIP_EVENT_KEY := 338

# Init
TARGET_INIT_VENDOR_LIB := libinit_davinci
TARGET_RECOVERY_DEVICE_MODULES := libinit_davinci

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE += androidboot.hardware.revision=V1
TARGET_KERNEL_CONFIG := davinci_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

ODM_MANIFEST_SKUS += \
    davinci

ODM_MANIFEST_DAVINCI_FILES := $(DEVICE_PATH)/manifest_davinci.xml

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
include vendor/xiaomi/davinci/BoardConfigVendor.mk
