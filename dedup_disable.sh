#!/bin/bash
cd /home/quad/btrfs-progs/
dmesg -C
echo "_________________________________________________________________________________________________________	"
echo "|													|"
echo "| ./btrfs dedup disable /media/quad/mybtrfs/				Disable Dedup			|"
./btrfs dedup disable /media/quad/mybtrfs/
echo "| ./btrfs dedup status /media/quad/mybtrfs/				Status of Dedup?		|"
./btrfs dedup status /media/quad/mybtrfs/
echo "|_______________________________________________________________________________________________________|"
echo ""
sleep 1