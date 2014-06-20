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
