ifeq ($(strip $(LOVELYFONTS_SUPPORT)),yes)
LOCAL_PATH :=  $(call my-dir)
include $(CLEAR_VARS)
#if you need  defalt fonts,copy it like below
#$(shell cp -a $(LOCAL_PATH)/xingyunfangsong-v1.00-DF083BAEA35641982BB6ECC882741C4A.ttf $(PRODUCT_OUT)/system/fonts/free/)

#------------------------apk start
#lovely apk
include $(CLEAR_VARS)
LOCAL_MODULE := LovelyFonts
LOCAL_MODULE_TAGS := optional

ifeq ($(strip $(MTK_CTA_SUPPORT)), yes)
#cta start
ifeq ($(strip $(LOVELYFONTS_ICON_SHOW)),yes)
LOCAL_SRC_FILES := ./yiqifont_ruijiake_m7.0_icon.apk
else
LOCAL_SRC_FILES := ./yiqifont_ruijiake_m7.0_noicon.apk
endif
#cta end
else
#none_cta start
ifeq ($(strip $(LOVELYFONTS_ICON_SHOW)),yes)
LOCAL_SRC_FILES := ./yiqifont_ruijiake_m7.0_icon.apk
else
LOCAL_SRC_FILES := ./yiqifont_ruijiake_m7.0_noicon.apk
endif
#none_cta start
endif

LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)
#------------------------apk end
include $(call all-makefiles-under, $(LOCAL_PATH))
endif

