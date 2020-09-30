#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cmi device
$(call inherit-product, device/xiaomi/imi/device.mk)

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/linege/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_imi
PRODUCT_DEVICE := imi
PRODUCT_BRAND := Pocophone
PRODUCT_MODEL := PocophoneF2Pro
PRODUCT_MANUFACTURER := Pocophone

BUILD_FINGERPRINT := "qti/qssi/qssi:10/QKQ1.191117.002/V11.0.2.0.QJACNXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 10 QKQ1.191117.002 V11.0.2.0.QJACNXM release-keys" \
    PRODUCT_NAME="lmi" \
    TARGET_DEVICE="lmi"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
