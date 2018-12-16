LOCAL_PATH:= $(call my-dir)

# music bundle wrapper
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
	Bundle/EffectBundle.cpp

LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_MODULE:= libbundlewrapper

LOCAL_MODULE_RELATIVE_PATH := soundfx

LOCAL_STATIC_LIBRARIES += libmusicbundle

LOCAL_SHARED_LIBRARIES := \
     libcutils \
     libdl

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/Bundle \
	$(LOCAL_PATH)/../lib/Common/lib/ \
	$(LOCAL_PATH)/../lib/Bundle/lib/ \
	$(call include-path-for, audio-effects)

ifeq ($(findstring MTK_AOSP_ENHANCEMENT,  $(MTK_GLOBAL_CFLAGS)),)
LOCAL_CFLAGS += -DMTK_AOSP_ENHANCEMENT
endif

ifeq ($(MTK_AUDIO),yes)
LOCAL_CFLAGS += -DMTK_AUDIO
LOCAL_C_INCLUDES+= \
   $(TOP)/$(MTK_PATH_SOURCE)/hardware/audio/common/include
endif

include $(BUILD_SHARED_LIBRARY)


# reverb wrapper
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
    Reverb/EffectReverb.cpp

LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_MODULE:= libreverbwrapper

LOCAL_MODULE_RELATIVE_PATH := soundfx

LOCAL_STATIC_LIBRARIES += libreverb

LOCAL_SHARED_LIBRARIES := \
     libcutils \
     libdl

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/Reverb \
    $(LOCAL_PATH)/../lib/Common/lib/ \
    $(LOCAL_PATH)/../lib/Reverb/lib/ \
    $(call include-path-for, audio-effects)
ifeq ($(MTK_AUDIO),yes)
LOCAL_CFLAGS += -DMTK_AUDIO
LOCAL_C_INCLUDES+= \
   $(TOP)/$(MTK_PATH_SOURCE)/hardware/audio/common/include
endif

include $(BUILD_SHARED_LIBRARY)
