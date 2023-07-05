#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# Modify default IP
sed -i 's/192.168.6.1/192.168.31.1/g' package/base-files/files/bin/config_generate
