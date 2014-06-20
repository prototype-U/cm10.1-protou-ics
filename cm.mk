# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := protou

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/protou/protou.mk)

# Correct boot animation size for the screen.
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Device naming
PRODUCT_NAME := cm_protou
PRODUCT_DEVICE := protou
PRODUCT_BRAND := htc
PRODUCT_MODEL := Desire X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=protou BUILD_ID=JRO03C BUILD_FINGERPRINT=ro.build.fingerprint=htc_europe/protou/protou:4.1.1/JRO03C/162361.3:user/release-keys
PRIVATE_BUILD_DESC="2.20.401.3 CL162361 release-keys"
