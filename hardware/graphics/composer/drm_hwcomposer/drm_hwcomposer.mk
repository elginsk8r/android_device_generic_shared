# Reference: device/google/cuttlefish/shared/graphics/device_vendor.mk

BOARD_VENDOR_SEPOLICY_DIRS += \
    device/generic/shared/hardware/graphics/composer/drm_hwcomposer/sepolicy/vendor

DEVICE_MANIFEST_FILE += \
    device/google/cuttlefish/shared/config/manifest_android.hardware.graphics.composer@2.4-service.xml

PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-service \
    hwcomposer.drm

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.hwcomposer?=drm
