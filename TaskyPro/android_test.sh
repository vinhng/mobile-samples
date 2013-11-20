#!/bin/bash
export APK=Tasky.Android/bin/Release/com.xamarin.samples.taskydroid-Signed.apk
export ADB_DEVICE_ARG=192.168.56.102:5555
calabash-android run $APK -p android features/add_new_task.feature
