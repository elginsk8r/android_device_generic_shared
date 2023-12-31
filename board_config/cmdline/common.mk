# Reference: device/google/cuttlefish/shared/BoardConfig.mk

# To see full logs from init, disable ratelimiting.
# The default is 5 messages per second amortized, with a burst of up to 10.
BOARD_KERNEL_CMDLINE += printk.devkmsg=on

# Print audit messages for all security check failures
BOARD_KERNEL_CMDLINE += audit=1

# Reboot immediately on panic
BOARD_KERNEL_CMDLINE += panic=-1

# Needed to boot Android
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += init=/init
