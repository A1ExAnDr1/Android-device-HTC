PRODUCT_DEVICE : = it1 # кодовое имя устройства
PRODUCT_NAME: = mirea it1 # кодовое имя продукта, указывается в ro.product.name в файле build.prop скомпилированного образа
PRODUCT_BRAND: = MIREA # бренд указывается в ro.product.brand в файле build.prop скомпилированного образа
PRODUCT_MODEL: = MIREA IT1 # модель, указывается в ro.product.model в файле build.prop скомпилированного образа
PRODUCT_MANUFACTURER: = MIREA # производитель, указывается в ro.product.manufacturer в файле build.prop скомпилированного образа

PRODUCT_COPY_FILES + = \
	$ ( LOCAL_PATH ) /configs/wifi/p2p_supplicant_overlay.conf: $ ( TARGET_COPY_OUT_VENDOR ) /etc/wifi/p2p_supplicant_overlay.conf \
	$ ( LOCAL_PATH ) /configs/wifi/wpa_supplicant_overlay.conf: $ ( TARGET_COPY_OUT_VENDOR ) /etc/wifi/wpa_supplicant_overlay.conf \
	$ ( LOCAL_PATH ) /configs/wifi/WCNSS_qcom_cfg.ini: $ ( TARGET_COPY_OUT_VENDOR ) /etc/wifi/WCNSS_qcom_cfg.ini

ПРОДУКТЫ + = \
	librs_jni \
	liba2dp \
	lights.tegra \
	com.android.future.usb.accessory \
	camera.tegra \
	libpkip \
	libaudioutils \
	tinyplay \
	tinycap \
	tinymix \
	audio.primary.tegra \
	audio.a2dp.default \
	FolioParts \
	wmiconfig

PRODUCT_PROPERTY_OVERRIDES : = \
	ro.product.first_api_level = 10 # переопределение уровня API Android, которым было выпущено устройство

PRODUCT_DEFAULT_PROPERTY_OVERRIDES + = \
	ro.secure = 0 \ # Отключение безопасного подключения

# Разрешения (HTC)
PRODUCT_COPY_FILES + = \
	$ ( LOCAL_PATH ) /configs/permissions/com.htc.sensor.edgesense.xml:/ $ ( TARGET_COPY_OUT_VENDOR ) /etc/permissions/com.htc.sensor.edgesense.xml \
	$ ( LOCAL_PATH ) /configs/permissions/com.htc.sensor.hallsensor.xml:/ $ ( TARGET_COPY_OUT_VENDOR ) /etc/permissions/com.htc.sensor.hallsensor.xml \
	$ ( LOCAL_PATH ) /configs/permissions/com.htc.sensor.sensorhub.xml:/ $ ( TARGET_COPY_OUT_VENDOR ) /etc/permissions/com.htc.sensor.sensorhub.xml \
	$ ( LOCAL_PATH ) /configs/permissions/com.htc.software.market.xml:/ $ ( TARGET_COPY_OUT_VENDOR ) /etc/permissions/com.htc.software.market.xml

# Настройки разрешения
PRODUCT_AAPT_CONFIG : = нормальный
PRODUCT_AAPT_PREF_CONFIG : = xxxhdpi
