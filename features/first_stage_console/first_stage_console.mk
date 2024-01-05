# Reference: https://source.android.com/docs/core/architecture/partitions/generic-boot#first-stage-console-2b
# Note:
# 1. The recovery variant is included on base_vendor.mk
# 2. This is only for devices with vendor ramdisk
# 3. Add "androidboot.first_stage_console=1" parameter to enter the console

PRODUCT_PACKAGES += \
    linker.vendor_ramdisk \
    shell_and_utilities_vendor_ramdisk
