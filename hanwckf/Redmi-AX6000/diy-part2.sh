#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/ntp.tencent.com/0.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/ntp1.aliyun.com/1.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/ntp.ntsc.ac.cn/2.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/cn.ntp.org.cn/3.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's,mirrors.vsean.net/openwrt,downloads.openwrt.org,g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/CST-8/auto/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's,Asia/Shanghai,auto,g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/ImmortalWrt/OpenWrt/g' include/version.mk
cp $GITHUB_WORKSPACE/data/etc/banner package/base-files/files/etc/
