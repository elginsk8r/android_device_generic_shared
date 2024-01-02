# Reference: device/google/cuttlefish/shared/device.mk
TARGET_VULKAN_SUPPORT ?= true

# Reference: device/google/cuttlefish/shared/graphics/device_vendor.mk
ifeq ($(TARGET_VULKAN_SUPPORT),true)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2023-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    frameworks/native/data/etc/android.software.opengles.deqp.level-2023-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.opengles.deqp.level.xml
endif

# References:
# device/google/cuttlefish/shared/pc/device_vendor.mk
# device/google/cuttlefish/vsoc_x86_64/BoardConfig.mk
$(call inherit-product, device/google/cuttlefish/shared/swiftshader/device_vendor.mk)
include device/google/cuttlefish/shared/swiftshader/BoardConfig.mk

# References:
# device/google/cuttlefish/host/libs/vm_manager/qemu_manager.cpp
# device/google/cuttlefish/shared/config/graphics/init_graphics.vendor.rc
PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.egl?=angle \
    ro.opengles.version?=196609
ifeq ($(TARGET_VULKAN_SUPPORT),true)
PRODUCT_VENDOR_PROPERTIES += \
    ro.cpuvulkan.version?=4202496 \
    ro.hardware.vulkan?=pastel
endif
