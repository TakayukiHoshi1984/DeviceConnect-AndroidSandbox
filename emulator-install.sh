#!/bin/sh

echo "Hellow World!"

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectManager/dConnectManager/dconnect-manager-app/build/outputs/apk/debug/dconnect-manager-app-debug.apk

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectDevicePlugin/dConnectDeviceTest/app/build/outputs/apk/debug/app-debug.apk

pwd
cd dConnectManager/dConnectManager
chmod +x ./gradlew
sleep 30; ./gradlew connectedAndroidTest --stacktrace
