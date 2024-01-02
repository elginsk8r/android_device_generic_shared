# Reference: device/google/cuttlefish/shared/graphics/device_vendor.mk

BOARD_VENDOR_SEPOLICY_DIRS += device/generic/shared/hardware/graphics/gralloc/minigbm_aidl/sepolicy/vendor

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator-service.minigbm \
    android.hardware.graphics.mapper@4.0-impl.minigbm \
    mapper.minigbm
