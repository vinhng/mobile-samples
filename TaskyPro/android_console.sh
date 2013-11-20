#!/bin/bash
export APK=Tasky.Android/bin/Release/com.xamarin.samples.taskydroid-Signed.apk
#export ADB_DEVICE_ARG=192.168.56.101:5555
export ADB_DEVICE_ARG=0149B2EC03012005
#calabash-android console $APK -p android features/login.feature
calabash-android console $APK -p android