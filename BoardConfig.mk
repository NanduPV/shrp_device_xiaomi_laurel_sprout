#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/laurel_sprout

#Ignore Missing Dependencies
ALLOW_MISSING_DEPENDENCIES=true

#Set locale to C
LC_ALL="C"

# SHRP
SHRP_DEVICE_CODE :=laurel_sprout
SHRP_PATH := device/xiaomi/$(SHRP_DEVICE_CODE)
SHRP_MAINTAINER := NanduPV
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A/B
SHRP_REC := /dev/block/bootdevice/by-name/recovery

# SHRP flags
SHRP_EDL_MODE := 1
SHRP_INTERNAL := /sdcard
SHRP_EXTERNAL := /sdcard1
SHRP_OTG := /usb-otg
SHRP_FLASH := 1
SHRP_AB := true
SHRP_STATUSBAR_RIGHT_PADDING := 40
SHRP_STATUSBAR_LEFT_PADDING := 40
SHRP_NOTCH := true
SHRP_EXPRESS := true
SHRP_DARK := true

# Addons
INC_IN_REC_ADDON_1 := true
INC_IN_REC_ADDON_2 := true
INC_IN_REC_ADDON_3 := true
INC_IN_REC_ADDON_4 := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := trinket
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Platform
TARGET_BOARD_PLATFORM := trinket
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610

# Bootctrl
TARGET_USES_HARDWARE_QCOM_BOOTCTRL := true
USE_COMMON_BOOTCTRL := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0x4a90000 androidboot.hardware=qcom msm_rtb.filter=0x237 lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=4e00000.dwc3
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_SOURCE := kernel/xiaomi/laurel_sprout
#TARGET_KERNEL_CONFIG := vendor/laurel_sprout_defconfig
#TARGET_KERNEL_CLANG_COMPILE := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# GPT Utils
BOARD_PROVIDES_GPTUTILS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 51861713715
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216

# System as root
TARGET_NO_RECOVERY := false
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Android Verified Boot
BOARD_AVB_ENABLE := false
BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# Recovery
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery/root/etc/recovery.wipe
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USES_METADATA_PARTITION := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_NO_LEGACY_PROPS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 2048
TW_DEFAULT_BRIGHTNESS := 1100
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0

# Extra
BOARD_SUPPRESS_SECURE_ERASE := true
#TW_Y_OFFSET := 53
#TW_H_OFFSET := -53
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_HAS_EDL_MODE := true
TW_INCLUDE_REPACKTOOLS := true
TW_USE_TOOLBOX := true

# Encryption
PLATFORM_SECURITY_PATCH := 2025-12-31
PLATFORM_VERSION := 16.1.0

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true
# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

#Use LZMA Compression
LZMA_RAMDISK_TARGETS := recovery
