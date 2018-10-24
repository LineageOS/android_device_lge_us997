#
# Copyright 2017 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from us997 device
$(call inherit-product, device/lge/us997/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := us997
PRODUCT_NAME := lineage_us997
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-US997
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lucye" \
    PRODUCT_DEVICE="lucye" \
    PRODUCT_NAME="lucye_nao_us" \
    PRIVATE_BUILD_DESC="lucye_nao_us-user 7.0 NRD90U 172061549d102 release-keys"

BUILD_FINGERPRINT := "lge/lucye_nao_us/lucye:7.0/NRD90U/172061549d102:user/release-keys"
