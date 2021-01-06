uboot> setenv mmc_part 1:6 # or 1:7 depending where the kernel and file system are
uboot> setenv root /dev/mmcblk0p6 # or mmcblk0p7 depending where the file system is
uboot> setenv mmcargs 'setenv bootargs console=${console} root=${root} ${mount_type} rootfstype=ext3 rootwait ${config_extra} init=/bin/sh'
uboot> setenv mount_type rw
uboot> boot

sh-3.2# /usr/local/bin/watchdogd

mount -t ext3 /dev/mmcblk0p8 /var

