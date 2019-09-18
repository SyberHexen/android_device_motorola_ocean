#
# Copyright (C) 2018 The LineageOS Project
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

# Adoptable Storage (Prevents SDCARD Double Encryption)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.allow_encrypt_override=true \
    ro.crypto.volume.filenames_mode=aes-256-cts

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.deep_buffer.media=true \
    audio.offload.disable=false \
    audio.offload.video=false \
    audio.offload.min.duration.secs=60 \
    audio.offload.gapless.enabled=false \
    media.aac_51_output_enabled=true \
    audio.offload.min.duration.secs=30 \
    persist.speaker.prot.enable=false \
    persist.audio.qti.flac.decoder=true \
    media.settings.xml=/vendor/etc/media_profiles_vendor.xml \
    qcom.hw.aac.encoder=true \
    ro.af.client_heap_size_kbyte=7168 \
    voice.playback.conc.disabled=true \
    voice.record.conc.disabled=false \
    voice.voip.conc.disabled=true \
    voice.conc.fallbackpath=deep-buffer

# Audio Snapdragon
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    tunnel.audio.encode = false \
    audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.offload.track.enable=true \
    audio.deep_buffer.media=true \
    audio.playback.mch.downsample=true \
    use.voice.path.for.pcm.voip=false \
    ro.config.vc_call_vol_steps=8 \
    use.qti.sw.alac.decoder=true \
    use.qti.sw.ape.decoder=true \
    audio.offload.gapless.enabled=true \
    audio.offload.multiple.enabled=false \
    vendor.audio.safx.pbe.enabled=true \
    audio.pp.asphere.enabled=false \
    ro.vendor.gt_library=libqti-gt.so \
    ro.vendor.at_library=libqti-at.so 

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.aux.packagelist3="org.codeaurora.snapcam,org.lineageos.snap" \
    vidc.enc.dcvs.extra-buff-count=2

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.enable_default_color_mode=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.latch_unsignaled=1

# Encoding
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.dec.downscalar_width=1920 \
    vendor.vidc.dec.downscalar_height=1088 \
    vendor.video.disable.ubwc=1 \
    vendor.vidc.enc.disable.pq=true \
    vidc.enc.dcvs.extra-buff-count=2 

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1

# Netmgr
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.use_data_netmgrd=true \
    persist.vendor.data.mode=concurrent

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.core_ctl_max_cpu=4 \
    ro.vendor.qti.core_ctl_min_cpu=2

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    rild.libargs=-d/dev/smd0 \
    ril.subscription.types=NV,RUIM \
    DEVICE_PROVISIONED=1 \
    persist.radio.fi_supported=1 \
    telephony.lteOnCdmaDevice=1

# SSR
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE

# Time-Services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

