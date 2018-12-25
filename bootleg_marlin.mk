# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit Bootleggers product configuration
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

include device/google/marlin/device-bootleg.mk

BOOTLEGGERS_BUILD_TYPE="Shishufied"

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bootleg_marlin
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 9 PQ1A.181205.002.A1 5129870 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:9/PQ1A.181205.002.A1/5129870:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootleggers.maintainer=stebomurkn420
