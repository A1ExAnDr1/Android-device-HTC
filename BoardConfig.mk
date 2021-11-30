TARGET_BOARD_PLATFORM : = sdm845 # определяет платформу, на которой построено устройство (зависит от используемого процессора)
# Архитектура
TARGET_ARCH: = arm64 # основная архитектура процессора
TARGET_ARCH_VARIANT: = armv8-a # указывает на вариант архитектуры armv8-a
TARGET_CPU_ABI: = arm64-v8a # Двоичный интерфейс приложения (https://developer.android.com/ndk/guides/abis набор поддерживаемых процессором команд)
TARGET_CPU_ABI2: =
TARGET_CPU_VARIANT : = cortex-a75 # указывает на тип ядра процессора

TARGET_2ND_ARCH : = arm # указывает на вторую поддерживаемую архитектуру процессуру
TARGET_2ND_ARCH_VARIANT: = armv8-a # указывает на вариант архитектуры armv8-a
TARGET_2ND_CPU_ABI: = armeabi-v7a # Двоичный интерфейс приложения (https://developer.android.com/ndk/guides/abis набор поддерживаемых процессором команд)
TARGET_2ND_CPU_ABI2: = armeabi # указывает на тип ядра процессора
TARGET_2ND_CPU_VARIANT: = cortex-a53 # указывает на тип процессора процессора

# Ядро
TARGET_KERNEL_SOURCE : = kernel / mirea / it1 # указывает путь к исходному коду ядра.
TARGET_KERNEL_CONFIG: = it_defconfig # указывает имя конфигурационного файла для сборки ядра.

# Разделы
BOARD_BOOTIMAGE_PARTITION_SIZE : = 100663296 # размер ядра в байтах
BOARD_RECOVERYIMAGE_PARTITION_SIZE: = 0 # размер образа рекавери в байтах
BOARD_SYSTEMIMAGE_PARTITION_SIZE: = 4294967296 # размер образа системы в байтах
BOARD_USERDATAIMAGE_PARTITION_SIZE: = 1294991360 # размер образа для хранения данных пользователя в байтах
BOARD_VENDORIMAGE_PARTITION_SIZE: = 1610612736 # размер образа vendor байтах
BOARD_HAS_NO_CACHE_PARTITION: = верно

AB_OTA_UPDATER : = true # активация режима обновления по схеме A / B
AB_OTA_PARTITIONS: = \ # список разделов, входящие в обновление по OTA
	загрузка \
	система \
	продавец
PRODUCT_PACKAGES + = \ # дополнительные пакеты, необходимые для установки A / B OTA
	update_engine \
	update_verifier
TARGET_NO_RECOVERY : = true # отключение наличия раздела recovery
BOARD_USES_RECOVERY_AS_BOOT: = true # определение, что восстановление встроено в ядро

# Определение, связанное с Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER : = NL80211
WPA_SUPPLICANT_VERSION : = VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB : = lib_driver_cmd_wl12xx
# BOARD_WPA_SUPPLICANT_PRIVATE_LIB: = lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER : = NL80211
BOARD_HOSTAPD_PRIVATE_LIB : = lib_driver_cmd_wl12xx
# BOARD_HOSTAPD_PRIVATE_LIB: = lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE : = wlan0
WIFI_DRIVER_MODULE_NAME : = rt2800usb
WIFI_DRIVER_MODULE_PATH : = /system/lib/modules/rt2800usb.ko
BOARD_HAVE_BLUETOOTH : = верно
