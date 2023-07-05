#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Custom for REDMI AX6000
sed -i 's/zh_cn/auto/g' feeds/luci/modules/luci-base/root/etc/uci-defaults/luci-base
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/ddns.config feeds/packages/net/ddns-scripts/files/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/config/Config-kernel.in config/Config-kernel.in
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/vlmcsd.ini feeds/packages/net/vlmcsd/files/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/turboacc feeds/luci/applications/luci-app-turboacc/root/etc/init.d/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/etc/banner package/base-files/files/etc/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/etc/mtd-rw package/base-files/files/etc/init.d/
chmod 0755 package/base-files/files/etc/init.d/mtd-rw
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/default-settings/zzz-default-settings package/lean/default-settings/files/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/default-settings/Makefile package/lean/default-settings/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/bin/config_generate package/base-files/files/bin/
#======================
cp $GITHUB_WORKSPACE/lean/Redmi-AX6000/data/autocore/index.htm package/lean/autocore/files/arm/
