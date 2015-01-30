# HeaterMeter-and-HLK-RM04
Adaptation of the HLK-RM04 to be used with the HeaterMeter BBQ controller

1. Clone the repository from the home directory
2. cd ~/HeaterMeter-and-HLK-RM04
3. ./install_HLKRM04_support.sh (installs the correct OpenWRT revision and clones the HeaterMeter github repository, adds the patch files and patches the original HeaterMeter install such that HLK-RM04 support is provided)
4. cd ~/HeaterMeter/openwrt
5. ./install.sh HLKRM04 ~/openwrt (installs the required HeaterMeter files as well as does the required patching for HLK-RM04 support)
6. cd ~/openwrt
7. make menuconfig (do nothing, just save and exit)
8. make
9. Transfer ~/openwrt/bin/ramips/openwrt-ramips-rt305x-hlk-rm04-squashfs-sysupgrade.bin to the HLK-RM04 at ~/tmp using scp
10. On the HLK-RM04: sysupgrade /tmp/ramips/openwrt-ramips-rt305x-hlk-rm04-squashfs-sysupgrade.bin
