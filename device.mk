# Copyright (C) 2014 The Android Open Source Project
# Copyright (C) 2014-2018 ADT-1 Development
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from vendor
$(call inherit-product-if-exists, vendor/google/molly/molly-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/molly/overlay-aosp

# Device Type
PRODUCT_CHARACTERISTICS := tablet,nosdcard

# DPI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    device/google/molly/permissions/aosp_molly.xml:system/etc/permissions/aosp_molly.xml

# Inherit from molly-common
$(call inherit-product, device/google/molly-common/device.mk)
