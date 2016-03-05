#!/bin/bash
cd /home/quad/btrfs-progs/
dmesg -C
echo "_________________________________________________________________________________________________________	"
echo "|													|"
echo "| ./btrfs cbs status /media/quad/mybtrfs/				Status of CBS?			|"
./btrfs cbs status /media/quad/mybtrfs/
echo "|_______________________________________________________________________________________________________|"
echo ""
sleep 1