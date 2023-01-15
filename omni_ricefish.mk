#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ricefish device
$(call inherit-product, device/mobvoi/ricefish/device.mk)

PRODUCT_DEVICE := ricefish
PRODUCT_NAME := omni_ricefish
PRODUCT_BRAND := Mobvoi
PRODUCT_MODEL := TicWatch E3
PRODUCT_MANUFACTURER := mobvoi
PRODUCT_RELEASE_NAME := Mobvoi TicWatch E3

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ricefish-user 9 PMKB.211102.002 442 release-keys"

BUILD_FINGERPRINT := Mobvoi/ricefish/ricefish:9/PMKB.211102.002/442:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2025-12-31 \
	ro.secure=1 \
	ro.adb.secure=0