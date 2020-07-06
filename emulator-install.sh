#!/bin/sh

echo "Start Manager Test"

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectDevicePlugin/dConnectDeviceTest/app/build/outputs/apk/debug/app-debug.apk

/Users/runner/android-sdk/platform-tools/adb install -r ./dConnectManager/dConnectManager/dconnect-manager-app/build/outputs/apk/debug/dconnect-manager-app-debug.apk


/Users/runner/android-sdk/platform-tools/adb shell am start -n org.deviceconnect.android.manager/.DConnectLaunchActivity -d gotapi://start/server

sleep 5

/Users/runner/android-sdk/platform-tools/adb shell am force-stop org.deviceconnect.android.manager

sleep 5

/Users/runner/android-sdk/platform-tools/adb shell am start -n org.deviceconnect.android.manager/.DConnectLaunchActivity -d gotapi://start/server

sleep 5

# AUTH=`cat /Users/runner/.emulator_console_auth_token`
#
# echo $AUTH
#
# (sleep 1 ; echo auth $AUTH ; sleep 1 ; echo redir add tcp:4035:4035 ; sleep 1 ; exit)  | telnet localhost 5554
#
# IP=`adb shell sudo ifconfig`
#
# echo $IP
# (sleep 1 ; sudo ; sleep 1 ; ifconfig ; sleep 1 ; exit ; sleep 1 ; exit)  | adb shell
cd 
cd dConnectManager/dConnectManager
chmod +x ./gradlew

# ManagerのJUnit実行
./gradlew dconnect-manager-app:connectedAndroidTest
