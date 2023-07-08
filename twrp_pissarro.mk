#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from pissarro device
$(call inherit-product, device/xiaomi/pissarro/device.mk)

PRODUCT_DEVICE := pissarro
PRODUCT_NAME := twrp_pissarro
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := pissarro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=pissarro \
    PRODUCT_NAME=vnd_pissarro \
    PRIVATE_BUILD_DESC="vnd_pissarro-user 12 SP1A.210812.016 V14.0.2.0.TKTRUXM release-keys"

BUILD_FINGERPRINT := Redmi/vnd_pissarro/pissarro:12/SP1A.210812.016/V14.0.2.0.TKTRUXM:user/release-keys

# conditions for share or recreate: always mention credits for lopestom.
