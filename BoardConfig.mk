USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/p500/BoardConfigVendor.mk

ARCH_ARM_HAVE_VFP := true

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOOTLOADER_BOARD_NAME := p500
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_PREBUILT_KERNEL := device/lge/p500/kernel
TARGET_OTA_ASSERT_DEVICE := thunderg,p500

# msm7x27: no support for overlay, bypass, or c2d
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
# Skia
BOARD_USE_SKIA_LCDTEXT := true
BOARD_FORCE_DITHERING := true


BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_COMBO_DEVICE_SUPPORTED := true

# fix this up by examining /proc/mtd on a running device
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderg no_console_suspend
BOARD_KERNEL_BASE := 0x12800000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0be00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c780000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_PROVIDES_LIBAUDIO := true
BOARD_PROVIDES_LIBRIL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# to enable the GPS HAL
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := p500
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

#Enable OpenGL Hardware Acceleration
BOARD_EGL_CFG := vendor/lge/p500/proprietary/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_USES_GENLOCK := false
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27 -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60

#Nedeed for LGP500 sensors 
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

#Enable jit
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true

# Mass Storage for ICS
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/thunderg/prebuilt/UsbController.cpp
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

#TouchScreen Compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

TARGET_SPECIFIC_HEADER_PATH := device/lge/p500/include
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_USE_CAF_LIBCAMERA := true

#Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-320x480

BOARD_WLAN_DEVICE := bcm4325
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN       := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'
