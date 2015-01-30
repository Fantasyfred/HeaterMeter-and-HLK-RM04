#!/bin/sh

svn co -r39237 svn://svn.openwrt.org/openwrt/trunk ~/openwrt
cd ..
git clone https://github.com/CapnBry/HeaterMeter.git
cd ~/HeaterMeter-and-HLK-RM04
cp ~/HeaterMeter-and-HLK-RM04/HLKRM04_files/*.patch ~/HeaterMeter/openwrt/patches/.
cp ~/HeaterMeter-and-HLK-RM04/HLKRM04_files/clear_spi ~/HeaterMeter/openwrt/patches/.
cp ~/HeaterMeter-and-HLK-RM04/HLKRM04_files/config.HLKRM04 ~/HeaterMeter/openwrt/.
patch -N -p0 -d ~/HeaterMeter/openwrt/ < ~/HeaterMeter-and-HLK-RM04/install.sh.patch
