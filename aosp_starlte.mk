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
TARGET_INCLUDE_PIXEL_CHARGER := true

 # PixelExperience Properties
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := starlte
PRODUCT_NAME := aosp_starlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G960F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210705.001/7380771:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=starltexx \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210205.004 7038034 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=G960FXXUCFTK1 \
    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys