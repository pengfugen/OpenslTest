LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

#LOCAL_STATIC_ANDROID_LIBRARIES := androidx.viewpager_viewpager

LOCAL_JNI_SHARED_LIBRARIES := libopensl_android

# TODO: enable proguard once development has settled down
#LOCAL_PROGUARD_FLAG_FILES := proguard.flags
LOCAL_PROGUARD_ENABLED := disabled

LOCAL_PACKAGE_NAME := OpenslTest
#LOCAL_SDK_VERSION := 28
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_DEX_PREOPT := false

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
