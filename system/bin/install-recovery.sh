#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sprd-sdhci.3/by-name/RECOVERY:11892736:0a052aaf6389cbcf01e9080b4ba69c6ff1265796; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sprd-sdhci.3/by-name/KERNEL:7761920:030fe21a068439ed303e84561599d29a448ff476 EMMC:/dev/block/platform/sprd-sdhci.3/by-name/RECOVERY 0a052aaf6389cbcf01e9080b4ba69c6ff1265796 11892736 030fe21a068439ed303e84561599d29a448ff476:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
