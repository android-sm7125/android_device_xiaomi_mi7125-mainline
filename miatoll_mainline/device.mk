#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_DEVICE_PATH := device/xiaomi/mi7125-mainline/miatoll_mainline

# Inherit options from mainline/qcom-common
## SoC
TARGET_QCOM_SOC := sm7125-ab
## TODO: Bringup the corresponding hardware and remove the following definitions
TARGET_SUPPORTS_SUSPEND := false
include device/mainline/qcom-common/optional/options.mk

# Inherit from parent
$(call inherit-product, device/xiaomi/mi7125-mainline/device.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*.xml,$(TARGET_DEVICE_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc/)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# DSP
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(TARGET_DEVICE_PATH)/socinfo/,$(TARGET_COPY_OUT_VENDOR)/etc/hexagonrpcd-root/socinfo/) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/sm6250-common/proprietary/vendor/etc/acdbdata/,$(TARGET_COPY_OUT_VENDOR)/etc/hexagonrpcd-root/acdb/) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/sm6250-common/proprietary/vendor/etc/sensors/config/,$(TARGET_COPY_OUT_VENDOR)/etc/hexagonrpcd-root/sensors/config/) \
    vendor/xiaomi/sm6250-common/proprietary/vendor/etc/sensors/sns_reg_config:$(TARGET_COPY_OUT_VENDOR)/etc/hexagonrpcd-root/sensors/sns_reg.conf

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Firmware
PRODUCT_COPY_FILES += \
    vendor/xiaomi/sm6250-common/proprietary/vendor/firmware/a615_zap.elf:$(TARGET_COPY_OUT_ODM)/firmware/qcom/sm7125/miatoll/a615_zap.mbn \
    vendor/xiaomi/sm6250-common/proprietary/vendor/firmware/focaltech_ts_fw_huaxing.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/focaltech_ts_fw_huaxing.bin \
    vendor/xiaomi/sm6250-common/proprietary/vendor/firmware/novatek_ts_tianma_fw.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/novatek_ts_tianma_fw.bin

PRODUCT_PACKAGES += \
    all_symlink_firmware_miatoll \
    firmware_miatoll_ipa_fws.mbn

# Init
PRODUCT_COPY_FILES += \
    $(TARGET_DEVICE_PATH)/fstab/fstab.miatoll:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.miatoll \
    $(TARGET_DEVICE_PATH)/init/init.miatoll.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.miatoll.rc

# Recovery
PRODUCT_COPY_FILES += \
    $(TARGET_DEVICE_PATH)/init/init.recovery.miatoll.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.miatoll.rc

# Vendor ramdisk
PRODUCT_COPY_FILES += \
    $(TARGET_DEVICE_PATH)/fstab/fstab.miatoll:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/fstab.miatoll
