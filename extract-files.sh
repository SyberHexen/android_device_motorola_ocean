#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        # libutils-v32
        vendor/lib/sensors.ssc.so | vendor/lib64/sensors.ssc.so)
            "${PATCHELF}" --replace-needed libutils.so libutils-v32.so "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=ocean
export DEVICE_COMMON=sdm632-common
export VENDOR=motorola

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
