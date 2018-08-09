#! /bin/bash
PATH="$PATH:/opt/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin"

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j4
echo "------User message: Kernel Build task finished...---"
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- dtbs -j4
echo "------User message: DTS Build task finished...------"
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- INSTALL_MOD_PATH=out modules

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- INSTALL_MOD_PATH=out modules_install
echo "------User message: Module task finished...---------"

