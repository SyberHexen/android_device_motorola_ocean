#
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, vendor/motorola/ocean/ocean-vendor.mk)

# Properties
-include $(LOCAL_PATH)/system_prop.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper \
    libaudio-resampler \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:system/etc/audio_effects.xml

# Boot control
PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Low power Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Camera
PRODUCT_PACKAGES += \
    Snap

# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0 \
    libdisplayconfig \
    libqdMetaData.system \
    libvulkan

# Display - LiveDisplay
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/display/qdcm_calib_data_mipi_mot_vid_csot_720p_622.xml:system/etc/qdcm_calib_data_mipi_mot_vid_csot_720p_622.xml \
    $(LOCAL_PATH)/display/qdcm_calib_data_mipi_mot_vid_ofilm_720p_622.xml:system/etc/qdcm_calib_data_mipi_mot_vid_ofilm_720p_622.xml \
    $(LOCAL_PATH)/display/qdcm_calib_data_mipi_mot_vid_tianma_720p_622.xml:system/etc/qdcm_calib_data_mipi_mot_vid_tianma_720p_622.xml

# Fingerprint Gestures
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

# HotwordEnrollement app permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:system/etc/permissions/privapp-permissions-hotword.xml

# init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc

# LineageActions
PRODUCT_PACKAGES += \
    LineageActions

# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service-sysfs \
    lineage.livedisplay@2.0-service-sdm

# Netutils
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Power
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint.xml:system/etc/powerhint.xml

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-river.xml:system/etc/permissions/privapp-permissions-river.xml \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.qcom.usb.rc

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# RIL
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libcld80211 \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wificond \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/bin/android.hardware.wifi@1.0-service:system/bin/hw/android.hardware.wifi@1.0-service \
    $(LOCAL_PATH)/wifi/bin/hostapd:system/bin/hw/hostapd \
    $(LOCAL_PATH)/wifi/bin/wpa_supplicant:system/bin/hw/wpa_supplicant \
    $(LOCAL_PATH)/wifi/lib/libcld80211.so:system/lib/libcld80211.so \
    $(LOCAL_PATH)/wifi/lib/libwpa_client.so:system/lib/libwpa_client.so \
    $(LOCAL_PATH)/wifi/lib64/libcld80211.so:system/lib64/libcld80211.so \
    $(LOCAL_PATH)/wifi/lib64/libwifi-hal.so:system/lib64/libwifi-hal.so \
    $(LOCAL_PATH)/wifi/lib64/libwpa_client.so:system/lib64/libwpa_client.so
