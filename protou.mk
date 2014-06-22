# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from protou device
$(call inherit-product, device/htc/protou/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := htc_protou
PRODUCT_DEVICE := protou
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire X
PRODUCT_MANUFACTURER := HTC

# Bluetooh
PRODUCT_PACKAGES += \
brcm_patchram_plus \
libbluedroid

# Hardware properties
PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \
device/htc/protou/bluetooth/a2dp_avrcp.conf:system/etc/bluetooth/a2dp_avrcp.conf
