#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit the fusion-common definitions
$(call inherit-product, device/xiaomi/sdm660-common/platform.mk)

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	$(DEVICE_PATH)/overlay \
	$(DEVICE_PATH)/overlay-lineage

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
	boot \
	system \
	vendor

AB_OTA_POSTINSTALL_CONFIG += \
	RUN_POSTINSTALL_system=true \
	POSTINSTALL_PATH_system=system/bin/otapreopt_script \
	FILESYSTEM_TYPE_system=ext4 \
	POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
	otapreopt_script

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/init.recovery.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.qcom.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.usb.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.qcom.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.qcom.rc \
    $(DEVICE_PATH)/recovery/root/etc/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/recovery.fstab \
    $(DEVICE_PATH)/recovery/root/etc/recovery.wipe:$(TARGET_COPY_OUT_RECOVERY)/root/etc/recovery.wipe \
    $(DEVICE_PATH)/recovery/root/etc/twrp.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/twrp.fstab \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.boot@1.0-service:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.boot@1.0-service \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.boot@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.boot@1.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.gatekeeper@1.0-service-qti \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.gatekeeper@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.gatekeeper@1.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.keymaster@3.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.keymaster@3.0-service-qti \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.keymaster@3.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.keymaster@3.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/android.hardware.weaver@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hardware.weaver@1.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/android.hidl.base@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hidl.base@1.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/android.hidl.token@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.hidl.token@1.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/android.system.wifi.keystore@1.0.so:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/android.system.wifi.keystore@1.0.so \
    $(DEVICE_PATH)/recovery/root/sbin/prepdecrypt.sh:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/prepdecrypt.sh \
    $(DEVICE_PATH)/recovery/root/sbin/qseecomd:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/qseecomd \
    $(DEVICE_PATH)/recovery/root/sbin/update_engine_sideload:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/update_engine_sideload \
    $(DEVICE_PATH)/recovery/root/sbin/vendor.qti.hardware.qteeconnector@1.0-service:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/vendor.qti.hardware.qteeconnector@1.0-service \
    $(DEVICE_PATH)/recovery/root/sbin/vendor.qti.hardware.tui_comm@1.0-service-qti:$(TARGET_COPY_OUT_RECOVERY)/root/sbin/vendor.qti.hardware.tui_comm@1.0-service-qti \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libGPreqcancel.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libGPreqcancel.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libGPreqcancel_svc.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libGPreqcancel_svc.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libQSEEComAPI.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libQSEEComAPI.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libSecureUILib.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libSecureUILib.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libStDrvInt.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libStDrvInt.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libdiag.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdiag.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libdrmfs.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdrmfs.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libdrmtime.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libdrmtime.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libgptutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libgptutils.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libicuuc.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libicuuc.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libkeymasterdeviceutils.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymasterprovision.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libkeymasterprovision.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libkeymasterutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libkeymasterutils.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libqdutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqdutils.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libqisl.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqisl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libqservice.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libqservice.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/librecovery_updater_msm.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/librecovery_updater_msm.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/librpmb.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/librpmb.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libsecureui.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libsecureui.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libsecureui_svcsock.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libsecureui_svcsock.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libssd.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libssd.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libtime_genoff.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libtime_genoff.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/libxml2.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/libxml2.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/vendor.qti.hardware.tui_comm@1.0_vendor.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/vendor.qti.hardware.tui_comm@1.0_vendor.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/hw/android.hardware.boot@1.0-impl.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/bootctrl.sdm660.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/hw/bootctrl.sdm660.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/gatekeeper.sdm660.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/hw/gatekeeper.sdm660.so \
    $(DEVICE_PATH)/recovery/root/vendor/lib64/hw/keystore.sdm660.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib64/hw/keystore.sdm660.so \
    $(DEVICE_PATH)/recovery/root/vendor/compatibility_matrix.xml:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/compatibility_matrix.xml \
    $(DEVICE_PATH)/recovery/root/vendor/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/manifest.xml \
	$(DEVICE_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
	$(DEVICE_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
	$(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
	$(DEVICE_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
	$(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
	$(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
	$(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml \
	$(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
	$(DEVICE_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
	$(DEVICE_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Boot control
PRODUCT_PACKAGES += \
	android.hardware.boot@1.0-impl \
	android.hardware.boot@1.0-service \
	bootctrl.sdm660

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
	bootctrl.sdm660 \
	libcutils \
	libgptutils \
	libz

# Consumerir
PRODUCT_PACKAGES += \
	android.hardware.ir@1.0-impl \
	android.hardware.ir@1.0-service

# Device properties
$(call inherit-product, $(DEVICE_PATH)/device_prop.mk)

# Media
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
	$(DEVICE_PATH)/media/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
	$(DEVICE_PATH)/media/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Ramdisk
 PRODUCT_PACKAGES += \
	init.goodix.sh \
	init.device.rc

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Sensors
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Update engine
PRODUCT_PACKAGES += \
	brillo_update_payload \
	update_engine \
	update_engine_sideload \
	update_verifier

PRODUCT_PACKAGES_DEBUG += \
	update_engine_client

# Vibrator
PRODUCT_PACKAGES += \
	android.hardware.vibrator@1.0-impl \
	android.hardware.vibrator@1.0-service

# Verity
PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/system
PRODUCT_VENDOR_VERITY_PARTITION := /dev/block/platform/soc/c0c4000.sdhci/by-name/vendor
$(call inherit-product, build/target/product/verity.mk)

# Vendor files
$(call inherit-product, vendor/xiaomi/jasmine_sprout/jasmine_sprout-vendor.mk)

# AOSP DEVICE
PRODUCT_NAME := aosp_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2 (AOSP)
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
