$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/htc/protou/protou-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/protou/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libI420colorconvert \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a
	
# Lights	
PRODUCT_PACKAGES += \
    lights.protou 

# Camera
PRODUCT_PACKAGES += \
    camera.default \
    libsurfaceflinger_client 

# LiveWallpapers   
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Other Packages
PRODUCT_PACKAGES += \
    dexpreopt \
    make_ext4fs \
    setup_fs \
    Torch \
    com.android.future.usb.accessory


# Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/protou/ramdisk/fstab.protou:root/fstab.protou \
    device/htc/protou/ramdisk/init:root/init \
    device/htc/protou/ramdisk/init.protou.rc:root/init.protou.rc \
    device/htc/protou/ramdisk/init.protou.usb.rc:root/init.protou.usb.rc \
    device/htc/protou/ramdisk/ueventd.protou.rc:root/ueventd.protou.rc

# Recovery
PRODUCT_COPY_FILES += \
    device/htc/protou/recovery/init.protou.rc:recovery/root/init.protou.rc \
    device/htc/protou/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/protou/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/protou/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/protou/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/protou/recovery/sbin/rmt_storage:recovery/root/sbin/rmt_storage \
    device/htc/protou/recovery/sbin/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh


# Keychars & keylayout
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/protou/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc \
    device/htc/protou/prebuilt/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/htc/protou/prebuilt/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/protou/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/protou/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/protou/prebuilt/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/htc/protou/prebuilt/usr/keylayout/sr_touchscreen.kl:system/usr/keylayout/sr_touchscreen.kl \
    device/htc/protou/prebuilt/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl 

# Audio
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/protou/prebuilt/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/protou/prebuilt/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/protou/prebuilt/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/protou/prebuilt/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/protou/prebuilt/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    device/htc/protou/prebuilt/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/protou/prebuilt/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    device/htc/protou/prebuilt/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/protou/prebuilt/etc/AudioPara4_WB.csv:system/etc/AudioPara4_WB.csv \
    device/htc/protou/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/htc/protou/prebuilt/etc/AudioPara4.csv:system/etc/AudioPara4.csv \
    device/htc/protou/prebuilt/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/protou/config/audio_policy.conf:system/etc/audio_policy.conf \
    device/htc/protou/prebuilt/lib/audio.primary.msm7x27a.so:system/lib/hw/audio.primary.msm7x27a.so \
    device/htc/protou/config/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt  

# WIFI
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/protou/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/htc/protou/prebuilt/etc/dhcpcd/dhcpcd-run-hooks:system/etc/dhcpcd/dhcpcd-run-hooks \
    device/htc/protou/prebuilt/etc/dhcpcd/dhcpcd-hooks/20-dns.conf:system/etc/dhcpcd/dhcpcd-hooks/20-dns.conf \
    device/htc/protou/prebuilt/etc/dhcpcd/dhcpcd-hooks/95-configured:system/etc/dhcpcd/dhcpcd-hooks/95-configured 

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/firmware/fw_bcm4330_p2p_b2.bin:system/etc/firmware/fw_bcm4330_p2p_b2.bin \
    device/htc/protou/prebuilt/etc/firmware/fw_bcm4330_b2.bin:system/etc/firmware/fw_bcm4330_b2.bin \
    device/htc/protou/prebuilt/etc/firmware/fw_bcm4330_apsta_b2.bin:system/etc/firmware/fw_bcm4330_apsta_b2.bin \
    device/htc/protou/prebuilt/etc/firmware/BCM4330B1_002.001.003.0833.0845.hcd:system/etc/firmware/BCM4330B1_002.001.003.0833.0845.hcd \
    device/htc/protou/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/protou/prebuilt/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw 

# Calibration
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/calibration:system/etc/calibration

# Media
PRODUCT_COPY_FILES += \
    device/htc/protou/config/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/protou/config/media_codecs.xml:system/etc/media_codecs.xml

# Vold 
PRODUCT_COPY_FILES += \
    device/htc/protou/config/vold.fstab:system/etc/vold.fstab

# GPS 
PRODUCT_COPY_FILES += \
    device/htc/protou/config/gps.conf:system/etc/gps.conf


ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    ro.adb.secure=0

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := htc_protou
PRODUCT_DEVICE := protou
PRODUCT_BRAND := htc
