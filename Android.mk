#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(USES_DEVICE_XIAOMI_MI7125_MAINLINE),true)

ifeq ($(TARGET_DEVICE),miatoll_mainline)
$(call add-radio-file,prebuilts/u-boot-sm7125.img)
endif

endif
