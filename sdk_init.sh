#!/bin/sh

MKFIRMWARE=mkfirmware.sh
BUILD=build.sh
RKFLASH=rkflash.sh
MAKEFILE=Makefile
ENVSETUP=envsetup.sh

BOARDCONFIG=device/rockchip/.BoardConfig.mk

MKUPDATE=tools/linux/Linux_Pack_Firmware/rockdev/mkupdate.sh
PACKAGEFILE=tools/linux/Linux_Pack_Firmware/rockdev/package-file

git config --global credential.helper cache

git submodule init
git submodule update

echo "Running REX SDK Inintial Setting Script...."

if [ ! -f ${MKFIRMWARE} ]; then
	ln -s device/rockchip/common/mkfirmware.sh ${MKFIRMWARE}
fi
if [ ! -f ${BUILD} ]; then
	ln -s device/rockchip/common/build.sh ${BUILD}
fi
if [ ! -f ${RKFLASH} ]; then
	ln -s device/rockchip/common/rkflash.sh ${RKFLASH}
fi
if [ ! -f ${MAKEFILE} ]; then
	ln -s buildroot/build/Makefile ${MAKEFILE}
fi
if [ ! -f ${ENVSETUP} ]; then
	ln -s buildroot/build/envsetup.sh ${ENVSETUP}
fi


if [ ! -f ${BOARDCONFIG} ]; then
	ln -s rk1808/BoardConfig_infoworks_rk1808_aikit.mk ${BOARDCONFIG}
fi

if [ ! -f ${MKUPDATE} ]; then
	ln -s rk1808-mkupdate.sh ${MKUPDATE}
fi

if [ ! -f ${PACKAGEFILE} ]; then
	ln -s rk1808-package-file ${PACKAGEFILE}
fi

