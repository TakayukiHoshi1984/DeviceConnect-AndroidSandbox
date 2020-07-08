/*
 PluginSDKTestRunner.java
 Copyright (c) 2019 NTT DOCOMO,INC.
 Released under the MIT license
 http://opensource.org/licenses/mit-license.php
 */
package org.deviceconnect.android;

import android.os.Build;

import org.junit.runners.model.InitializationError;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@Config(maxSdk = Build.VERSION_CODES.P)
public class PluginSDKTestRunner extends RobolectricTestRunner {
    /**
     * コンストラクタ.
     *
     * @param testClass テストクラス
     * @throws InitializationError
     */
    public PluginSDKTestRunner(final Class<?> testClass) throws InitializationError {
        super(testClass);
    }
}