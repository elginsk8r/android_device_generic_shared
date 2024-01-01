BOARD_VENDOR_SEPOLICY_DIRS += \
    device/generic/shared/hardware/health/cuttlefish/sepolicy/vendor

# Reference: device/google/cuttlefish/shared/device.mk
PRODUCT_PACKAGES += \
    android.hardware.health-service.cuttlefish \
    android.hardware.health-service.cuttlefish_recovery
