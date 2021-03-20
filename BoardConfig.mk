#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from motorola sdm632-common
-include device/motorola/sdm632-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/ocean

# Assertions
TARGET_BOARD_INFO_FILE := device/motorola/ocean/board-info.txt
TARGET_OTA_ASSERT_DEVICE := ocean

# Audio
# AUDIO_FEATURE_ENABLE_TFA98XX_FEEDBACK := true

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := ocean_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        #    32768 * 1024 mmcblk0p41-42
BOARD_MOTO_DYNAMIC_PARTITIONS_SIZE := 3770679296
BOARD_SUPER_PARTITION_SIZE := 3774873600
BOARD_SUPER_PARTITION_ODM_DEVICE_SIZE := 285212672
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 2885681152
BOARD_SUPER_PARTITION_VENDOR_DEVICE_SIZE := 603979776

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# inherit from the proprietary version
include vendor/motorola/ocean/BoardConfigVendor.mk
