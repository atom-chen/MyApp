LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE    := cocos_extension_static

LOCAL_MODULE_FILENAME := libextension

LOCAL_SRC_FILES := AssetsManager/AssetsManager.cpp \
CCBReader/CCBFileLoader.cpp \
CCBReader/CCBReader.cpp \
CCBReader/CCControlButtonLoader.cpp \
CCBReader/CCControlLoader.cpp \
CCBReader/CCLabelBMFontLoader.cpp \
CCBReader/CCLabelTTFLoader.cpp \
CCBReader/CCLayerColorLoader.cpp \
CCBReader/CCLayerGradientLoader.cpp \
CCBReader/CCLayerLoader.cpp \
CCBReader/CCMenuItemImageLoader.cpp \
CCBReader/CCMenuItemLoader.cpp \
CCBReader/CCNodeLoader.cpp \
CCBReader/CCNodeLoaderLibrary.cpp \
CCBReader/CCParticleSystemQuadLoader.cpp \
CCBReader/CCScale9SpriteLoader.cpp \
CCBReader/CCScrollViewLoader.cpp \
CCBReader/CCSpriteLoader.cpp \
CCBReader/CCBAnimationManager.cpp \
CCBReader/CCBKeyframe.cpp \
CCBReader/CCBSequence.cpp \
CCBReader/CCBSequenceProperty.cpp \
CCBReader/CCBValue.cpp \
CCBReader/CCData.cpp \
CCBReader/CCNode+CCBRelativePositioning.cpp \
Components/CCComAttribute.cpp \
Components/CCComAudio.cpp \
Components/CCComController.cpp \
Components/CCInputDelegate.cpp \
GUI/CCControlExtension/CCControl.cpp \
GUI/CCControlExtension/CCControlButton.cpp \
GUI/CCControlExtension/CCControlColourPicker.cpp \
GUI/CCControlExtension/CCControlHuePicker.cpp \
GUI/CCControlExtension/CCControlSaturationBrightnessPicker.cpp \
GUI/CCControlExtension/CCControlSlider.cpp \
GUI/CCControlExtension/CCControlSwitch.cpp \
GUI/CCControlExtension/CCControlUtils.cpp \
GUI/CCControlExtension/CCInvocation.cpp \
GUI/CCControlExtension/CCScale9Sprite.cpp \
GUI/CCControlExtension/CCControlPotentiometer.cpp \
GUI/CCControlExtension/CCControlStepper.cpp \
GUI/CCScrollView/CCScrollView.cpp \
GUI/CCScrollView/CCTableView.cpp \
GUI/CCScrollView/CCTableViewCell.cpp \
GUI/CCScrollView/CCSorting.cpp \
GUI/CCEditBox/CCEditBox.cpp \
GUI/CCEditBox/CCEditBoxImplAndroid.cpp \
GlassEffect/CCTrangleSprite.cpp  \
GlassEffect/CCGlassEffect.cpp \

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_curl_static

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH) \
                           $(LOCAL_PATH)/CCBReader \
                           $(LOCAL_PATH)/Components \
                           $(LOCAL_PATH)/GUI/CCControlExtension \
                           $(LOCAL_PATH)/GUI/CCScrollView \
                           $(LOCAL_PATH)/GUI/CCEditBox \
						   $(LOCAL_PATH)/GlassEffect \

include $(BUILD_STATIC_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,CocosDenshion/android)
