#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 mdeejay <mdjrussia@gmail.com>
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS := device/htc/endeavortd/overlay

# Camera
PRODUCT_PACKAGES := \
    Camera

# Files needed for boot image
PRODUCT_COPY_FILES := \
	device/htc/endeavortd/ramdisk/init.rc:root/init.rc \
	device/htc/endeavortd/ramdisk/init.endeavoru.rc:root/init.endeavoru.rc \
	device/htc/endeavortd/ramdisk/init.endeavoru.common.rc:root/init.endeavoru.common.rc \
	device/htc/endeavortd/ramdisk/init.usb.rc:root/init.usb.rc \
	device/htc/endeavortd/ramdisk/ueventd.rc:root/ueventd.rc \
	device/htc/endeavortd/ramdisk/ueventd.endeavoru.rc:root/ueventd.endeavoru.rc \
	device/htc/endeavortd/ramdisk/default.prop:root/default.prop


# Prebuilt Audio/GPS/Camera/Wi-Fi configs
PRODUCT_COPY_FILES += \
	device/htc/endeavortd/dsp/asound.conf:system/etc/asound.conf \
	device/htc/endeavortd/dsp/AIC3008_REG_DualMic_XC.csv:system/etc/AIC3008_REG_DualMic_XC.csv \
	device/htc/endeavortd/dsp/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
	device/htc/endeavortd/dsp/alsa.conf:system/usr/share/alsa/alsa.conf \
	device/htc/endeavortd/configs/nvcamera.conf:system/etc/nvcamera.conf \
        device/htc/endeavortd/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/htc/endeavortd/configs/gps.conf:system/etc/gps.conf \
	device/htc/endeavortd/configs/SuplRootCert:system/etc/SuplRootCert \
	device/htc/endeavortd/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Vold.fstab
PRODUCT_COPY_FILES += \
	device/htc/endeavortd/vold.fstab:system/etc/vold.fstab

# Input device configeration files
PRODUCT_COPY_FILES += \
	device/htc/endeavortd/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/htc/endeavortd/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
	device/htc/endeavortd/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	device/htc/endeavortd/usr/idc/tv-touchscreen.idc:system/usr/idc/tv-touchscreen.idc

# Any prebuilt kernel modules
PRODUCT_COPY_FILES += \
        device/htc/endeavortd/modules/baseband_usb_chr.ko:system/lib/modules/baseband_usb_chr.ko \
        device/htc/endeavortd/modules/baseband-xmm-power2.ko:system/lib/modules/baseband-xmm-power2.ko \
        device/htc/endeavortd/modules/bluetooth.ko:system/lib/modules/bluetooth.ko \
        device/htc/endeavortd/modules/bnep.ko:system/lib/modules/bnep.ko \
        device/htc/endeavortd/modules/btwilink.ko:system/lib/modules/btwilink.ko \
        device/htc/endeavortd/modules/cavm_sqos_mod.ko:system/lib/modules/cavm_sqos_mod.ko \
        device/htc/endeavortd/modules/cdc-acm.ko:system/lib/modules/cdc-acm.ko \
        device/htc/endeavortd/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
        device/htc/endeavortd/modules/compat.ko:system/lib/modules/compat.ko \
        device/htc/endeavortd/modules/fm_drv.ko:system/lib/modules/fm_drv.ko \
        device/htc/endeavortd/modules/gps_drv.ko:system/lib/modules/gps_drv.ko \
        device/htc/endeavortd/modules/hci_uart.ko:system/lib/modules/hci_uart.ko \
        device/htc/endeavortd/modules/hidp.ko:system/lib/modules/hidp.ko \
        device/htc/endeavortd/modules/htc_sqos_ctrlmsg.ko:system/lib/modules/htc_sqos_ctrlmsg.ko \
        device/htc/endeavortd/modules/htc_sqos_encoder.ko:system/lib/modules/htc_sqos_encoder.ko\
        device/htc/endeavortd/modules/htc_sqos_wifi.ko:system/lib/modules/htc_sqos_wifi.ko \
        device/htc/endeavortd/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko \
        device/htc/endeavortd/modules/lib80211.ko:system/lib/modules/lib80211.ko \
        device/htc/endeavortd/modules/mac80211.ko:system/lib/modules/mac80211.ko \
        device/htc/endeavortd/modules/raw_ip_net.ko:system/lib/modules/raw_ip_net.ko \
        device/htc/endeavortd/modules/rfcomm.ko:system/lib/modules/rfcomm.ko \
        device/htc/endeavortd/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
        device/htc/endeavortd/modules/st_drv.ko:system/lib/modules/st_drv.ko \
        device/htc/endeavortd/modules/tcrypt.ko:system/lib/modules/tcrypt.ko \
        device/htc/endeavortd/modules/ti_hci_drv.ko:system/lib/modules/ti_hci_drv.ko \
        device/htc/endeavortd/modules/wl12xx.ko:system/lib/modules/wl12xx.ko \
        device/htc/endeavortd/modules/wl12xx_sdio.ko:system/lib/modules/wl12xx_sdio.ko

# Lights and a2dp
PRODUCT_PACKAGES += \
	lights.tegra \
        audio.a2dp.default \
        libaudioutils

# NFC
PRODUCT_PACKAGES += \
	libnfc \
	libnfc_jni \
	Nfc \
	Tag \
	nfc-extras

# Missed apps
PRODUCT_PACKAGES += \
	Torch \
        Stk \
        Gallery2

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# for bugmailer
ifneq ($(TARGET_BUILD_VARIANT),user)
    PRODUCT_PACKAGES += send_bug
    PRODUCT_COPY_FILES += \
        system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
        system/extras/bugmailer/send_bug:system/bin/send_bug
endif

# Permissions
PRODUCT_COPY_FILES += \
	device/htc/endeavortd/configs/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.setupwizard.enable_bypass=1 \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.lockprof.threshold=500 \
        dalvik.vm.dexopt-flags=m=y \
	persist.sys.usb.config=mass_storage,adb

# Tegra 3 spacific overrides
PRODUCT_PROPERTY_OVERRIDES += \
	persist.tegra.nvmmlite=1

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/htc/endeavoru/endeavoru-vendor.mk)
$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)
