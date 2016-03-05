#!/bin/bash
cd /home/quad/btrfs-progs/
dmesg -C
echo "_________________________________________________________________________________________________________	"
echo "|													|"
echo "| umount -f /media/quad/mybtrfs/						Unmount btrfs		|"
umount -f /media/quad/mybtrfs/
echo "| mount /dev/sda3 /media/quad/mybtrfs						Mount btrfs		|"
mount /dev/sda3 /media/quad/mybtrfs
echo "|_______________________________________________________________________________________________________|"
echo ""
sleep 1