#!/bin/bash
cp $ANDROID/frameworks/base/core/java/android/view/RawInputEvent.java $ANDROID/frameworks/base/core/java/android/view/RawInputEvent.java.orig
cp $ANDROID/frameworks/base/include/ui/EventHub.h $ANDROID/frameworks/base/include/ui/EventHub.h.orig
cp $ANDROID/frameworks/base/libs/ui/EventHub.cpp $ANDROID/frameworks/base/libs/ui/EventHub.cpp.orig
cp $ANDROID/frameworks/base/services/java/com/android/server/InputDevice.java $ANDROID/frameworks/base/services/java/com/android/server/InputDevice.java.orig
cp $ANDROID/frameworks/base/services/java/com/android/server/KeyInputQueue.java $ANDROID/frameworks/base/services/java/com/android/server/KeyInputQueue.java.orig
cp $ANDROID/frameworks/base/services/java/com/android/server/WindowManagerService.java $ANDROID/frameworks/base/services/java/com/android/server/WindowManagerService.java.orig
cp $ANDROID/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java $ANDROID/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java.orig
cp $ANDROID/frameworks/base/libs/rs/Android.mk $ANDROID/frameworks/base/libs/rs/Android.mk.orig
cp $ANDROID/frameworks/base/graphics/jni/Android.mk $ANDROID/frameworks/base/graphics/jni/Android.mk.orig
cp $ANDROID/system/vold/Volume.cpp $ANDROID/system/vold/Volume.cpp.orig
cd $ANDROID/system/core/
tar zcf libpixelflinger.orig.tar.gz libpixelflinger
rm -rf libpixelflinger
cd $ANDROID/hardware/ti/
tar zcf omap3.orig.tar.gz omap3
rm -rf omap3
cd $ANDROID
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/core/java/android/view/RawInputEvent.java $ANDROID/frameworks/base/core/java/android/view/RawInputEvent.java
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/include/ui/EventHub.h $ANDROID/frameworks/base/include/ui/EventHub.h
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/libs/ui/EventHub.cpp $ANDROID/frameworks/base/libs/ui/EventHub.cpp
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/services/java/com/android/server/InputDevice.java $ANDROID/frameworks/base/services/java/com/android/server/InputDevice.java
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/services/java/com/android/server/KeyInputQueue.java $ANDROID/frameworks/base/services/java/com/android/server/KeyInputQueue.java
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/services/java/com/android/server/WindowManagerService.java $ANDROID/frameworks/base/services/java/com/android/server/WindowManagerService.java
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java $ANDROID/frameworks/base/services/java/com/android/server/NativeDaemonConnector.java
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/libs/rs/Android.mk.patch $ANDROID/frameworks/base/libs/rs/Android.mk
cp $ANDROID/vendor/sola/omap3/patch/frameworks/base/graphics/jni/Android.mk.patch $ANDROID/frameworks/base/graphics/jni/Android.mk
cp $ANDROID/vendor/sola/omap3/patch/system/vold/Volume.cpp $ANDROID/system/vold/Volume.cpp
tar zxf $ANDROID/vendor/sola/omap3/patch/libpixelflinger.tar.gz -C $ANDROID/system/core/
tar zxf $ANDROID/vendor/sola/omap3/patch/omap3.tar.gz -C $ANDROID/hardware/ti/

