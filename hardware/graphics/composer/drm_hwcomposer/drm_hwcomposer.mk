# References:
# device/linaro/dragonboard/full.mk
# device/google/cuttlefish/shared/graphics/device_vendor.mk

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/generic/shared/hardware/graphics/composer/drm_hwcomposer/sepolicy/vendor

TARGET_HWC2_HIDL_VERSION ?= 2.4
ifeq ($(TARGET_HWC2_HIDL_VERSION),2.4)
DEVICE_MANIFEST_FILE += \
    device/google/cuttlefish/shared/config/manifest_android.hardware.graphics.composer@2.4-service.xml

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service
else ifeq ($(TARGET_HWC2_HIDL_VERSION),2.3)
DEVICE_MANIFEST_FILE += \
    device/generic/shared/hardware/graphics/composer/drm_hwcomposer/drm_hwcomposer_2_3.xml

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.3-impl \
    android.hardware.graphics.composer@2.3-service
endif

PRODUCT_PACKAGES += \
    hwcomposer.drm$(TARGET_HWC2_DRM_VARIANT)

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.hwcomposer?=drm$(TARGET_HWC2_DRM_VARIANT)
