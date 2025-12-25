#!/bin/bash

set -e

echo "==> Starting vendor setup"

# Helper function
clone_repo() {
    local url=$1
    local branch=$2
    local path=$3

    if [ -d "$path" ]; then
        echo "--> $path already exists, skipping"
    else
        echo "--> Cloning $url into $path"
        if [ -n "$branch" ]; then
            git clone -b "$branch" "$url" "$path"
        else
            git clone "$url" "$path"
        fi
    fi
}

# Device common tree
clone_repo \
    https://github.com/provasish/android_device_realme_sm8250-common.git \
    lineage-23.1 \
    device/realme/sm8250-common

# Vendor tree
clone_repo \
    https://github.com/provasish/proprietary_vendor_realme_spartan.git \
    lineage-23.0 \
    vendor/realme/spartan

# Vendor common tree
clone_repo \
    https://github.com/provasish/proprietary_vendor_realme_sm8250-common.git \
    lineage-23.1 \
    vendor/realme/sm8250-common

# Oplus Camera
clone_repo \
    https://gitlab.com/provasishh/proprietary_vendor_oplus_camera.git \
    lineage-23.1 \
    vendor/oplus/camera

# Hardware Oplus
clone_repo \
    https://github.com/provasish/android_hardware_oplus.git \
    lineage-23.1 \
    hardware/oplus

# Hardware Dolby
clone_repo \
    https://github.com/provasish/hardware_dolby.git \
    sony-1.4 \
    hardware/dolby

# Kernel
clone_repo \
    https://github.com/provasish/android_kernel_realme_sm8250.git \
    lineage-23.0 \
    kernel/realme/sm8250

echo "==> Vendor setup complete"
