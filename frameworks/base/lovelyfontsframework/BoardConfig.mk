
ifeq ($(strip $(MEDIATEK_FONTS_FRAMEWORK_SUPPORT)),yes)


#libs files copy
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,frameworks/base/lovelyfontsframework/clib/lib,system/lib)
PRODUCT_COPY_FILES += frameworks/base/lovelyfontsframework/clib/lib/libFonts.so:system/lib/libFonts.so

#libs files copy
ifneq ($(strip $(TARGET_CPU_ABI_LIST_64_BIT)),"")
#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,frameworks/base/lovelyfontsframework/clib/lib64,system/lib64)
PRODUCT_COPY_FILES += frameworks/base/lovelyfontsframework/clib/lib64/libFonts.so:system/lib64/libFonts.so
endif

#init rc start
PRODUCT_COPY_FILES += frameworks/base/lovelyfontsframework/init.lovelyfonts.rc:root/init.lovelyfonts.rc
#init rc end

#sepolicy start
BOARD_SEPOLICY_DIRS += \
    frameworks/base/lovelyfontsframework/sepolicy

#sepolicy end
endif




