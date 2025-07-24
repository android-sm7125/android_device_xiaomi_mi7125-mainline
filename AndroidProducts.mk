#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    lineage_miatoll_mainline:$(LOCAL_DIR)/miatoll_mainline/lineage_miatoll_mainline.mk

$(foreach build_type, user userdebug eng, \
    $(eval COMMON_LUNCH_CHOICES += lineage_miatoll_mainline-$(build_type)))
