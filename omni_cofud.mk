#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from cofud device
$(call inherit-product, device/motorola/cofud/device.mk)

PRODUCT_DEVICE := cofud
PRODUCT_NAME := omni_cofud
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(31)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmodroid_cofud-userdebug 13 TQ3A.230901.001 25 test-keys"

BUILD_FINGERPRINT := motorola/lmodroid_cofud/cofud:13/TQ3A.230901.001/25:userdebug/test-keys
