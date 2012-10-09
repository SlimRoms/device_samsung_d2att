$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Release name
PRODUCT_RELEASE_NAME := d2att

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Inherit some common SLIM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy kernel and modules
PRODUCT_COPY_FILES += \
	device/samsung/d2-common/kernel/boot.img:system/slimkernel/boot.img \
	device/samsung/d2-common/kernel/kernel:kernel \
	device/samsung/d2-common/kernel/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/samsung/d2-common/kernel/system/lib/modules/qce40.ko:system/lib/modules/qce40.ko \
	device/samsung/d2-common/kernel/system/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
	device/samsung/d2-common/kernel/system/lib/modules/qcrypto.ko:system/lib/modules/qcrypto.ko \
	device/samsung/d2-common/kernel/system/lib/modules/qcedev.ko:system/lib/modules/qcedev.ko \
	device/samsung/d2-common/kernel/system/lib/modules/vpnclient.ko:system/lib/modules/vpnclient.ko \
	device/samsung/d2-common/kernel/system/lib/modules/gspca_main.ko:system/lib/modules/gpsca_main.ko \
	device/samsung/d2-common/kernel/system/lib/modules/btlock.ko:system/lib/modules/btlock.ko \
	device/samsung/d2-common/kernel/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/d2-common/kernel/system/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/samsung/d2-common/kernel/system/bin/thermald:system/bin/thermald \
	device/samsung/d2-common/kernel/system/xbin/ffc:system/xbin/ffc \
	device/samsung/d2-common/kernel/system/xbin/stocktherm:system/xbin/stocktherm

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2uc TARGET_DEVICE=d2att BUILD_FINGERPRINT="d2att-userdebug 4.1.1 JRO03L eng.ar.20120827.191311 release-keys"
PRIVATE_BUILD_DESC="samsung/full_d2att/d2att:4.1.1/JRO03L/eng.ar.20120827.191311:userdebug/release-keys"

PRODUCT_NAME := slim_d2att
PRODUCT_DEVICE := d2att
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SAMSUNG-SGH-I747
PRODUCT_MANUFACTURER := Samsung
