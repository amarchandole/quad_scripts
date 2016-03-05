#!/bin/bash
echo "_________________________________________________________________________________________________________	"
echo "|													|"
echo "| umount -f /media/quad/mybtrfs/					Unmount btrfs			|"
echo "| mkfs.btrfs -f /dev/sda3						Format btrfs			|"
echo "|_______________________________________________________________________________________________________|"
umount -f /media/quad/mybtrfs/
mkfs.btrfs -f /dev/sda3
sleep 2

echo "_________________________________________________________________________________________________________"
echo "|													|"
echo "| mount /dev/sda3 /media/quad/mybtrfs					Mount btrfs			|"
mount /dev/sda3 /media/quad/mybtrfs

echo "| btrfs filesystem label /media/quad/mybtrfs/ "mybtrfs"			Set label to \"mybtrfs\"		|"
btrfs filesystem label /media/quad/mybtrfs/ "mybtrfs"

echo "|_______________________________________________________________________________________________________|"
echo ""