LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := Fennec
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED

LOCAL_MODULE_TARGET_ARCH := arm arm64
my_src_arch := $(call get-prebuilt-src-arch,$(LOCAL_MODULE_TARGET_ARCH))
LOCAL_SRC_FILES := prebuilt/$(my_src_arch)/fennec.apk
include $(BUILD_PREBUILT)
