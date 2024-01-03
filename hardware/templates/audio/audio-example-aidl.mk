# Reference: device/google/cuttlefish/shared/device.mk

PRODUCT_PACKAGES += \
    android.hardware.audio.service-aidl.example \
    android.hardware.audio.effect.service-aidl.example \
    libaecsw \
    libagc1sw \
    libagc2sw \
    libbassboostsw \
    libbundleaidl \
    libdownmixaidl \
    libdynamicsprocessingaidl \
    libenvreverbsw \
    libequalizersw \
    libextensioneffect \
    libhapticgeneratoraidl \
    libloudnessenhanceraidl \
    libnssw \
    libpreprocessingaidl \
    libpresetreverbsw \
    libreverbaidl \
    libtinyxml2 \
    libvirtualizersw \
    libvisualizeraidl \
    libvolumesw

PRODUCT_COPY_FILES += \
	hardware/interfaces/audio/aidl/default/audio_effects_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects_config.xml
