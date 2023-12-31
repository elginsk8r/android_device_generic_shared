# Reference: device/google/cuttlefish/shared/BoardConfig.mk

# Always enable one legacy serial port, for alternative earlycon, kgdb, and
# serial console. Doesn't do anything on ARM/ARM64 + QEMU or Gem5.
BOARD_KERNEL_CMDLINE += 8250.nr_uarts=1
