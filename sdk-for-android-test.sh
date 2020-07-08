#!/bin/sh

cd dConnectSDK/dConnectSDKForAndroid
chmod +x ./gradlew
./gradlew connectedAndroidTest
