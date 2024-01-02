# References:
# device/google/cuttlefish/shared/pc/device_vendor.mk
# device/google/cuttlefish/vsoc_x86_64/BoardConfig.mk
$(call inherit-product, device/google/cuttlefish/shared/virgl/device_vendor.mk)
include device/google/cuttlefish/shared/virgl/BoardConfig.mk

# References:
# device/google/cuttlefish/host/libs/vm_manager/qemu_manager.cpp
# device/google/cuttlefish/shared/config/graphics/init_graphics.vendor.rc
PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.egl?=mesa \
    ro.opengles.version?=196608
