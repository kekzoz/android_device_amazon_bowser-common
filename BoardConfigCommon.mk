BOWSER_COMMON_FOLDER := device/amazon/bowser-common

-include device/amazon/omap4-common/BoardConfigCommon.mk

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Camera
TI_OMAP4_CAMERAHAL_VARIANT := true
TI_CAMERAHAL_USES_LEGACY_DOMX_DCC := true
TI_CAMERAHAL_MAX_CAMERAS_SUPPORTED := 1
#TI_CAMERAHAL_DEBUG_ENABLED := true
#TI_CAMERAHAL_VERBOSE_DEBUG_ENABLED := true
#TI_CAMERAHAL_DEBUG_FUNCTION_NAMES := true
USE_CAMERA_STUB := false

# Dolby enhancements
OMAP_ENHANCEMENT_DOLBY_DDPDEC51_MULTICHANNEL := true
BOARD_AUDIO_HW_CONFIG_DIR := $(BOWSER_COMMON_FOLDER)

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 681574400
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 929038336
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13777223680
BOARD_FLASH_BLOCK_SIZE := 131072

# Graphics
BOARD_CREATE_AMAZON_HDCP_KEYS_SYMLINK := true

# Kernel
BOARD_KERNEL_PAGESIZE := 2048
TARGET_BOOTLOADER_BOARD_NAME := bowser

# Recovery
TARGET_RECOVERY_PRE_COMMAND := "echo 0 > /sys/block/mmcblk0boot0/force_ro; echo -n 7 | dd of=/dev/block/mmcblk0boot0 bs=1 count=1 seek=4104 ; sync; \#"
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

# Release tools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./$(COMMON_FOLDER)/releasetools/bowser_ota_from_target_files.py
TARGET_RELEASETOOL_MAKE_RECOVERY_PATCH_SCRIPT := ./$(COMMON_FOLDER)/releasetools/bowser_make_recovery_patch.py

# RIL
LEGACY_RIL := true

# Sensors
BOARD_USES_GENERIC_INVENSENSE := false

# TWRP Config
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_MAX_BRIGHTNESS := 254
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/bq27541

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
PRODUCT_WIRELESS_TOOLS           := true
