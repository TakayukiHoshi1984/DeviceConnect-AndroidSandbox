#!/bin/sh

cd ../../dConnectManager/dConnectManager
chmod +x ./gradlew
./gradlew dconnect-server-nano-httpd:connectedAndroidTest
