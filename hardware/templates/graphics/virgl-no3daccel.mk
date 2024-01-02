# Reference: device/google/cuttlefish/shared/graphics/device_vendor.mk
$(call inherit-product, device/generic/shared/hardware/graphics/composer/drm_hwcomposer/drm_hwcomposer.mk)
$(call inherit-product, device/generic/shared/hardware/graphics/gralloc/minigbm_aidl/minigbm_aidl.mk)

$(call inherit-product, device/generic/shared/hardware/graphics/egl_vulkan/swiftshader.mk)
