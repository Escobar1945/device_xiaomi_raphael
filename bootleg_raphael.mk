#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

BOOTLEGGERS_BUILD_TYPE := Unofficial
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
EXTRA_FOD_ANIMATIONS := true

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI 9T Pro
PRODUCT_NAME := bootleg_raphael

BUILD_FINGERPRINT := "Xiaomi/raphaelin/raphaelin:9/PKQ1.181121.001/V10.3.3.0.PFKINXM:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := true
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

#Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootleggers.maintainer=Escobar1945
