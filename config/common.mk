PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false

# KoreanIME
PRODUCT_COPY_FILES += \
    vendor/ambient/proprietary/KoreanIME/GoogleKoreanIME.apk:system/app/GoogleKoreanIME.apk \
    vendor/ambient/proprietary/KoreanIME/libjni_koreanime.so:system/lib/libjni_koreanime.so

AMBIENT_VERSION_MAJOR = 4.3
AMBIENT_VERSION_MINOR = OFFICIAL
AMBIENT_VERSION_MAINTENANCE = 1
AMBIENT_VERSION_MAINTENANCE_SUMMARY = 0

AMBIENT_VERSION := AMBIENT-$(TARGET_PRODUCT)-$(AMBIENT_VERSION_MAJOR)-$(AMBIENT_VERSION_MINOR)-v$(AMBIENT_VERSION_MAINTENANCE).$(AMBIENT_VERSION_MAINTENANCE_SUMMARY)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ambient.version=$(AMBIENT_VERSION) \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100
