#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/ruby/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := aosp_ruby
PRODUCT_DEVICE := ruby
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22101316G

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ruby-user 14 UP1A.230620.001 V816.0.1.0.UMOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/ruby_global/ruby:14/UP1A.230620.001/V816.0.1.0.UMOMIXM:user/release-keys
