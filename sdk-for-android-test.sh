#!/bin/sh

cd ConnectSDK/dConnectSDKForAndroid
chmod +x ./gradlew
./gradlew connectedAndroidTest
