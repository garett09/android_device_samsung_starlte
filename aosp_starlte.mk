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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/starlte/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := starlte
PRODUCT_NAME := aosp_starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

#Evo specific
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080

#Maintainer
EVO_DONATE_URL := https://www.paypal.me/yarpiin
EVO_MAINTAINER := yarpiin
EVO_SUPPORT_URL := https://t.me/joinchat/DNkhGFMc-o5FP9qSwz-4og

# add fingerprint override to pass cts
BUILD_FINGERPRINT := google/coral/coral:11/RP1A.200720.009/6720564:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=star2ltexx \
                PRIVATE_BUILD_DESC="starltexx-user 8.0.0 R16NW G960FXXU1ARCC release-keys"
