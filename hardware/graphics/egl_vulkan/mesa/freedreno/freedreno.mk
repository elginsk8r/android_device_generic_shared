# Reference: device/linaro/dragonboard/full.mk

# Mesa
PRODUCT_PACKAGES += \
    libGLES_mesa \
    libEGL_mesa \
    libGLESv1_CM_mesa \
    libGLESv2_mesa \
    libgallium_dri \
    libglapi

PRODUCT_SOONG_NAMESPACES += \
    external/mesa3d

PRODUCT_VENDOR_PROPERTIES += \
    ro.opengles.version?=196608

# Vulkan
PRODUCT_PACKAGES += \
    vulkan.freedreno

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2021-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.vulkan?=freedreno

# Will need to enable this after ANDROID_external_memory_android_hardware_buffer lands in mesa
#TARGET_USES_VULKAN = true

# Reference: device/linaro/dragonboard/BoardConfigCommon.mk
BOARD_GPU_DRIVERS := freedreno
BOARD_MESA3D_USES_MESON_BUILD := true
BOARD_MESA3D_GALLIUM_DRIVERS := freedreno
BOARD_MESA3D_VULKAN_DRIVERS := freedreno

# Custom
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/generic/shared/hardware/graphics/egl_vulkan/mesa/freedreno/sepolicy/vendor

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.egl?=mesa
