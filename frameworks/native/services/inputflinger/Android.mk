#
# Copyright (C) 2014 MediaTek Inc.
# Modification based on code covered by the mentioned copyright
# and/or permission notice(s).
#
# Copyright (C) 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    EventHub.cpp \
    InputApplication.cpp \
    InputDispatcher.cpp \
    InputListener.cpp \
    InputManager.cpp \
    InputReader.cpp \
    InputWindow.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libcrypto \
    libcutils \
    libinput \
    liblog \
    libutils \
    libui \
    libhardware_legacy \
    libdl

ifeq ($(strip $(MTK_EMULATOR_SUPPORT)),yes)
    LOCAL_CFLAGS += -DMTK_EMULATOR_SUPPORT
endif

ifneq ($(strip $(MTK_EMULATOR_SUPPORT)),yes)
    LOCAL_SHARED_LIBRARIES +=libtouchfilter
endif

ifeq ($(strip $(MTK_DISPLAY_120HZ_SUPPORT)),yes)
    LOCAL_SHARED_LIBRARIES += librrc
    LOCAL_CFLAGS += -DMTK_DISPLAY_120HZ_SUPPORT
endif

# TODO: Move inputflinger to its own process and mark it hidden
#LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_C_INCLUDES := \
    external/openssl/include \
    $(MTK_PATH_SOURCE)/hardware/perfservice/perfservicenative \
    $(MTK_PATH_SOURCE)/hardware/rrc/inc

LOCAL_CFLAGS += -Wno-unused-parameter

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_MODULE := libinputflinger

include $(BUILD_SHARED_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))
