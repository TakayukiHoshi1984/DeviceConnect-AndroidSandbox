#!/bin/sh

echo "Hellow World!"

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectManager/dConnectManager/dconnect-manager-app/build/outputs/apk/debug/dconnect-manager-app-debug.apk

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectDevicePlugin/dConnectDeviceTest/app/build/outputs/apk/debug/app-debug.apk

#/Users/runner/android-sdk/platform-tools/adb shell ; ipconfig getifaddr en0 ; exit
# logout

# /Users/runner/android-sdk/platform-tools/adb shell am start -n org.deviceconnect.android.manager/org.deviceconnect.android.manager.setting.ServiceListActivity

/Users/runner/android-sdk/platform-tools/adb shell am start -n org.deviceconnect.android.manager/.DConnectLaunchActivity -d gotapi://start/server

/Users/runner/android-sdk/platform-tools/adb forward tcp:4035 tcp:4035

# AUTH=`cat /Users/runner/.emulator_console_auth_token`

# echo $AUTH 

# sudo netstat

# (sleep 1 ; echo auth $AUTH ; sleep 1 ; echo redir add tcp:4035:4035 ; sleep 1 ; exit)  | telnet localhost 5554


# curl  -X GET \
#       -H 'Origin: `ipconfig getifaddr en0`' \
#       http://`ipconfig getifaddr en0`:4035/gotapi/availability
curl  -X GET -H 'Origin: 127.0.0.1' http://127.0.0.1:4035/gotapi/availability
      
# curl  -X GET \
#       -H 'Origin: 10.79.2.176' \
#       http://github.com:4035/gotapi/serviceDiscovery
# cd dConnectManager/dConnectManager
# chmod +x ./gradlew
# ./gradlew dconnect-server-nano-httpd:connectedAndroidTest
# ./gradlew dconnect-manager-app:connectedAndroidTest --stacktrace
