#!/bin/bash

./unmount.sh
echo "_________________________________________________________________________________________________________	"
echo "|													|"
echo "| rmmod btrfs									Remove btrfs module	|"
rmmod btrfs

cd /usr/src/linux/fs/btrfs/
echo "| make -C /lib/modules/$(uname -r)/build/ M=$PWD modules	Make btrfs module 	|"
echo "|_______________________________________________________________________________________________________|"
echo ""
make -C /lib/modules/$(uname -r)/build/ M=$PWD modules
echo "_________________________________________________________________________________________________________	"
echo "|													|"
echo "| insmod btrfs.ko								Insert btrfs module	|"
insmod btrfs.ko

echo "| mount /dev/sda3 /media/quad/mybtrfs							Mount btrfs	|"
mount /dev/sda3 /media/quad/mybtrfs
echo "|_______________________________________________________________________________________________________|"
echo ""