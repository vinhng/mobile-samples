#!/bin/bash
export APK=Tasky.Android/bin/debug/com.xamarin.samples.taskydroid-Signed.apk
export ADB_DEVICE_ARG=192.168.56.101:5555
calabash-android console $APK -p android features/login.feature
