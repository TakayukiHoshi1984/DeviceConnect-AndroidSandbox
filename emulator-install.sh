#!/bin/sh

echo "Hellow World!"

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectManager/dConnectManager/dconnect-manager-app/build/outputs/apk/debug/dconnect-manager-app-debug.apk

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectDevicePlugin/dConnectDeviceTest/app/build/outputs/apk/debug/app-debug.apk


/Users/runner/android-sdk/platform-tools/adb shell am start -n org.deviceconnect.android.manager/.DConnectLaunchActivity -d gotapi://start/server
/Users/runner/android-sdk/platform-tools/adb shell am start -n org.deviceconnect.android.manager/org.deviceconnect.android.manager.setting.ServiceListActivity

curl  -X GET \
      -H 'Origin: 10.0.2.2' \
      http://10.0.2.2:4035/gotapi/availability
      
curl  -X GET \
      -H 'Origin: 10.0.2.2' \
      http://10.0.2.2:4035/gotapi/serviceDiscovery
cd dConnectManager/dConnectManager
chmod +x ./gradlew
./gradlew dconnect-server-nano-httpd:connectedAndroidTest
./gradlew dconnect-manager-app:connectedAndroidTest --stacktrace
