#
# Copyright (C) 2016 The CyanogenMod Project
#               2017 The LineageOS Project
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
# Check for the target product.
ifeq (pa_X00P,$(TARGET_PRODUCT))
endif
DEVICE_PATH := device/asus/X00P

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common AOSPA stuff.
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

TARGET_ARCH := arm64
TARGET_DENSITY := xhdpi

# Check for the target product. Inherit from X00P device
$(call inherit-product, device/asus/X00P/device.mk)

$(call inherit-product, device/qcom/common/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X00P
PRODUCT_NAME := pa_X00P
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X00PD
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

# Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2280

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="WW_X00PD-user 8.0.0 OPR1.170623.032 15.00.1801.31 release-keys"

# Set BUILD_FINGERPRINT variable
BUILD_FINGERPRINT := asus/WW_X00PD/ASUS_X00P_2:8.0.0/OPR1.170623.032/15.00.1801.31:user/release-keys
