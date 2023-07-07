#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Custom for REDMI AX6000
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
sed -i 's/ntp.tencent.com/0.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/ntp1.aliyun.com/1.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/ntp.ntsc.ac.cn/2.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/cn.ntp.org.cn/3.openwrt.pool.ntp.org/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's,downloads.immortalwrt.org,src/gz openwrt_core,g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's,mirrors.vsean.net/openwrt,#src/gz openwrt_core,g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/CST-8/auto/g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's,Asia/Shanghai,auto,g' package/emortal/default-settings/files/99-default-settings-chinese
sed -i 's/ImmortalWrt/OpenWrt/g' include/version.mk
sed -i 's,https://immortalwrt.org/,https://openwrt.org/,g' include/version.mk
sed -i 's,https://github.com/immortalwrt/immortalwrt/issues,https://bugs.openwrt.org/,g' include/version.mk
sed -i 's,https://github.com/immortalwrt/immortalwrt/discussions,https://forum.openwrt.org/,g' include/version.mk
sed -i 's,https://downloads.immortalwrt.org/releases/21.02-SNAPSHOT,https://downloads.openwrt.org/releases/21.02-SNAPSHOT,g' include/version.mk

cat > package/base-files/files/etc/banner << EOF
  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 %D %V, %C
 -----------------------------------------------------

EOF
