#!/bin/bash
export APK=Tasky.Android/bin/Release/com.xamarin.samples.taskydroid-Signed.apk
#export ADB_DEVICE_ARG=192.168.56.101:5555 # Genymotion, Galaxy S3 w/Android 4.2.2
#export ADB_DEVICE_ARG=0149B2EC03012005    # Galaxy Nexus
export ADB_DEVICE_ARG=192.168.56.102:5555  # GenyMotion, Nexus 4 w/Android 4.3
#calabash-android console $APK -p android features/login.feature
calabash-android console $APK -p android