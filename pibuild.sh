#!/bin/bash
rm -rfv /root/lede/files/www/home
cp -rfv /var/www/zednet /root/lede/files/www/home

EPOCH=$(date +%s)
make image PROFILE="rpi-3" PACKAGES="luci luci-ssl python kmod-batman-adv batctl kmod-ath9k-htc php7 php7-cgi php7-mod-json php7-mod-pdo-sqlite" FILES=files/ BIN_DIR="/var/www/openwrt" EXTRA_IMAGE_NAME=$EPOCH
