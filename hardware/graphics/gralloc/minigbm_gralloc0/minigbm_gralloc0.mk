# Reference: device/generic/goldfish/fvp.mk

BOARD_VENDOR_SEPOLICY_DIRS += device/generic/shared/hardware/graphics/gralloc/minigbm_gralloc0/sepolicy/vendor

DEVICE_MANIFEST_FILE += device/generic/shared/hardware/graphics/gralloc/minigbm_gralloc0/minigbm_gralloc0.xml

PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.mapper@2.0-impl \
    gralloc.minigbm$(TARGET_GRALLOC0_MINIGBM_VARIANT)

# Reference: device/generic/goldfish/fvpbase/init.qemu.rc
PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.gralloc?=minigbm$(TARGET_GRALLOC0_MINIGBM_VARIANT)
