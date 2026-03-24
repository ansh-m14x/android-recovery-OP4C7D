DEVICE_PATH := device/oppo/OP4C7D

# For building with minimal-manifest
ALLOW_MISSING_DEPENDENCIES := true

# --- Architecture (MT6765 / Android 9.0 Fix) ---
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# --- Kernel - Matching your prebuilt files ---
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_SECOND_OFFSET := 0x00000000
BOARD_TAGS_OFFSET := 0x0bc08000
BOARD_DTB_OFFSET := 0x0bc08000

# Kernel Files (From your screenshot)
BOARD_KERNEL_IMAGE_NAME := image.gz-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/image.gz-dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true

# Kernel Command Line
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# --- Partitions (Oppo A31 Standard Sizes) ---
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# --- System Property Overrides ---
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# --- Recovery Storage & Filesystems ---
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# --- PitchBlack Recovery Project Flags ---
PB_BUILD_RECOVERY := true
PB_MAINTAINER := Ansh_m14x
PB_DEVICE_MODEL := CPH2015
PB_TARGET_USES_64BIT := true

# FIX for 'undeclared identifier PB_DEVICE_MODEL'
COMMON_GLOBAL_CFLAGS += -DPB_DEVICE_MODEL=\"CPH2015\"

# --- TWRP Specific Flags ---
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_DEVICE_VERSION := PBRP_V1_ANSH

# Decryption
TW_INCLUDE_CRYPTO := false
BOARD_USES_METADATA_PARTITION := true

# --- Display & Brightness (Fix for 4095 Hardware Limit) ---
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 4095
TW_DEFAULT_BRIGHTNESS := 2000
