FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

LIC_FILES_CHKSUM = "file://COPYING;md5=bbea815ee2795b2f4230826c0c6b8814"

#
# 4.17.2
PV = "4.17.2+git${SRCPV}"
SRCREV_pn-${PN} = "3816828a8cd06c5e0a0a9e0456013d61d979d975"

KBRANCH = "linux-4.17.y"

SRC_URI = " \
    git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;protocol=git;branch=${KBRANCH} \
    file://defconfig \
    file://0001-sun8i-h2-plus-orangepi-zero.dts-enable-i2c1.patch \
    file://0002-sun8i-h2-plus-orangepi-zero.dts-add-mcp23017-node.patch \
    file://0003-sun8i-h2-plus-orangepi-zero.dts-enable-uart2.patch \
    file://0004-sun8i-h2-plus-orangepi-zero.dts-enable-spi1.patch \
    file://0005-sun8i-h2-plus-orangepi-zero.dts-enable-ehci-ohci-2-3.patch \
    file://0006-drivers-spi-spidev.c-add-spidev-to-compatible-list.patch \
    file://0007-sun8i-h2-plus-orangepi-zero.dts-enable-spidev.patch \
    "

SRC_URI += " \
    file://mcp23017.cfg \
    file://can-serial.cfg \
    file://usb-serial.cfg \
    "
