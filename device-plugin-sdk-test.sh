#!/bin/sh

cd dConnectDevicePlugin/dConnectDevicePluginSDK/
chmod +x ./gradlew
./gradlew connectedAndroidTest
