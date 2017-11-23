# DELTA AG8032
# CPU Module: Intel Atom Rangeley (C2000)

ONIE_ARCH ?= x86_64
SWITCH_ASIC_VENDOR = bcm

VENDOR_REV ?= 0

VENDOR_VERSION=-V1.00


# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
# Delta IANA number
VENDOR_ID = 2254

I2CTOOLS_ENABLE = yes
I2CTOOLS_SYSEEPROM = no

# This platform requires the PXE_EFI64 installer
PXE_EFI64_ENABLE = no

CONSOLE_SPEED = 115200
CONSOLE_DEV = 1
CONSOLE_FLAG = 0

EXTRA_CMDLINE_LINUX = i2c-ismt.bus_speed=100  dhcp=eth0 acpi=off

# Set Linux kernel version
LINUX_VERSION		= 3.14
LINUX_MINOR_VERSION	= 27

# Older GCC required for older 3.2 kernel
GCC_VERSION = 4.9.2


#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End:
