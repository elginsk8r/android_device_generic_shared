# Reference: android-12 device/google/cuttlefish/shared/device.mk

BOARD_VENDOR_SEPOLICY_DIRS += device/generic/shared/hardware/graphics/gralloc/minigbm_gralloc4/sepolicy/vendor

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@4.0-service.minigbm$(TARGET_GRALLOC4_MINIGBM_VARIANT) \
    android.hardware.graphics.mapper@4.0-impl.minigbm$(TARGET_GRALLOC4_MINIGBM_VARIANT)
