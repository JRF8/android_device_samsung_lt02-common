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

## Inherit Dalvik Heap
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# AAPT
PRODUCT_AAPT_CONFIG := mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

# ADB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=adb \
    ro.adb.secure=0 \
    ro.secure=0

# Display
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

# Graphics
PRODUCT_PACKAGES += \
    libion

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/egl/gfx.cfg:system/etc/gfx.cfg

# Rootdir
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,${COMMON_PATH}/rootdir/,root/)
