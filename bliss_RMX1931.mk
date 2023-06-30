# Copyright (C) 2020 LineageOS
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from rmx1931 device
$(call inherit-product, device/realme/RMX1931/device.mk)

# Inherit some common ProjectBlaze stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Rom stuffs

BLISS_BUILDTYPE := UNOFFICIAL
BLISS_MAINTAINER := salepunk

EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_RMX1931
PRODUCT_DEVICE := RMX1931
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX1931
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX1931
PRODUCT_SYSTEM_NAME := RMX1931
PRODUCT_SYSTEM_DEVICE := RMX1931

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1931"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
