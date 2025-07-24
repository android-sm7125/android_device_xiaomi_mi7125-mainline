# Android device tree for Xiaomi devices with SM7125 SoC running mainline kernel

## Additional files required to build

| Path | Source |
|------|--------|
| device/xiaomi/mi7125-mainline/prebuilts/u-boot-sm7125.img | https://github.com/sm7125-mainline/u-boot/releases/download/2025-06-02/u-boot-sm7125.img |

## Additional repositories required to build

| Path | Source |
|------|--------|
| kernel/xiaomi/mi7125-mainline | https://github.com/sm7125-mainline/linux (branch: `LineageOS-6.16`) |
| vendor/xiaomi/sm6250-common | https://wiki.lineageos.org/devices/miatoll/build/variant2/#extract-proprietary-blobs |