BOARD_VENDOR_SEPOLICY_DIRS += \
    device/generic/shared/features/recovery_ethernet_dhcp/sepolicy/vendor

PRODUCT_PACKAGES += \
    recovery_ethernet_dhcp.rc \
    shared_dhcpclient.recovery

PRODUCT_PRODUCT_PROPERTIES += \
    service.adb.tcp.port=5555

PRODUCT_VENDOR_PROPERTIES += \
    vendor.recovery.dhcpclient.iface?=eth0
