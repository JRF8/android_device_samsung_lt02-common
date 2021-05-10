#
# Copyright (C) 2021 The LineageOS Project
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

## Common Path
COMMON_PATH := device/samsung/lt02-common

# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := pxa988
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# CPU
TARGET_CPU_SMP := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true

# Graphics
BOARD_EGL_CFG := $(COMMON_PATH)/configs/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

# Kernel Source
TARGET_KERNEL_CONFIG := pxa986_lt02_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/lt02

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912 # mmcblk0p9 (12288*1024)
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200 # mmcblk0p15 (204800*1024)
BOARD_FLASH_BLOCK_SIZE := 4096 # blockdev --getbsz /dev/block/mmcblk0
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912 # mmcblk0p10 (12288*1024)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1507852288 # mmcblk0p14 (1472512*1024)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5775556608 # mmcblk0p17 (5640192*1024)

# Platform
TARGET_BOARD_PLATFORM := mrvl

# Vendor
TARGET_COPY_OUT_VENDOR := system/vendor
