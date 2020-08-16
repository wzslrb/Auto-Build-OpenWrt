#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#git clone https://github.com/vernesong/luci-app-clash package/molun/luci-app-clash
#git clone https://github.com/fw876/helloworld package/molun/luci-app-ssr-plus

echo 下载应用过滤源码放到OpenWrt的package 目录
cd package
git clone https://github.com/destan19/OpenAppFilter.git
cd -

#在lede中编译，需要去除加速模块，可以直接删除或者make menuconfig不编译加速模块
#rm package/lean/luci-app-flowoffload -fr
#rm package/lean/shortcut-fe/ -fr
#rm package/lean/luci-app-sfe/ -fr
