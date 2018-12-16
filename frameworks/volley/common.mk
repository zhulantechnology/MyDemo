#
# Include this make file to build your application against this module.
#
# Make sure to include it after you've set all your desired LOCAL variables.
# Note that you must explicitly set your LOCAL_RESOURCE_DIR before including this file.
#
# For example:
#
#   LOCAL_RESOURCE_DIR := \
#        $(LOCAL_PATH)/res
#
#   include frameworks/opt/setupwizard/library/common.mk
#

LOCAL_AAPT_FLAGS += --auto-add-overlay --extra-packages com.android.volley
LOCAL_STATIC_JAVA_LIBRARIES += volley
