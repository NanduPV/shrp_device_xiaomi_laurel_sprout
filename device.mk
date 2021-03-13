LOCAL_PATH := device/xiaomi/laurel_sprout

# Define hardware platform
PRODUCT_PLATFORM := trinket

# A/B updater
AB_OTA_UPDATER := true

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client
    
PRODUCT_PACKAGES += \
    update_engine_sideload

# Bootctrl
PRODUCT_PACKAGES += \
    bootctrl.trinket

# Enable update engine sideloading by including the static version of the
# boot_control HAL and its dependencies.
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.trinket \
    libgptutils \
    libz \
    libcutils

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service
    
# Treble and FBE
PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    fbe.data.wrappedkey=true
