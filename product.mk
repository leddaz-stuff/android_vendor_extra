#
# Copyright (C) 2022 Giovanni Ricca
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit ih8sn Makefile
$(call inherit-product, vendor/extra/external/ih8sn/product.mk)

# MindTheGapps
ifeq ($(INCLUDE_GAPPS), true)
ifeq ($(TARGET_SUPPORTS_64_BIT_APPS),true)
$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)
else
$(call inherit-product-if-exists, vendor/gapps/arm/arm-vendor.mk)
endif
endif

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
