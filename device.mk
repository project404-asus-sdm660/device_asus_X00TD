#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/asus/sdm660-common/sdm660.mk)

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/asus/X00TD/X00TD-vendor.mk)

# Overlays
PRODUCT_PACKAGES += \
    X00TDFrameworksResTarget \
    X00TDWifiOverlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.asus.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal Config
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/thermal/,$(TARGET_COPY_OUT_VENDOR)/etc)
