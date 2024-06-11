package com.example.myapplication

import android.app.Activity
import android.app.Application
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.navigation.fragment.findNavController
import com.example.myapplication.databinding.FragmentFirstBinding
import com.facebook.react.BuildConfig

import com.facebook.react.PackageList
import com.facebook.react.ReactApplication
import com.facebook.react.ReactInstanceManager
import com.facebook.react.ReactNativeHost
import com.facebook.react.ReactPackage
import com.facebook.react.ReactRootView
import com.facebook.react.common.LifecycleState
import com.facebook.react.modules.core.DefaultHardwareBackBtnHandler
import com.facebook.soloader.SoLoader
/**
 * A simple [Fragment] subclass as the default destination in the navigation.
 */
class MyReactActivity : Activity(), DefaultHardwareBackBtnHandler {
    private lateinit var reactRootView: ReactRootView
    private lateinit var reactInstanceManager: ReactInstanceManager
        override fun onCreate(savedInstanceState: Bundle?) {
            super.onCreate(savedInstanceState)
            SoLoader.init(this, false)

            reactRootView = ReactRootView(this)
            reactInstanceManager = ReactInstanceManager.builder()
                .setApplication(application)
                .setCurrentActivity(this)
                .setJSMainModulePath("index")
                .setBundleAssetName("index.android.bundle")
                .setUseDeveloperSupport(BuildConfig.DEBUG)
                .setInitialLifecycleState(LifecycleState.RESUMED)
                .build()

            reactRootView.startReactApplication(reactInstanceManager, "RNHighScores", null)
            setContentView(reactRootView)

    }

    override fun invokeDefaultOnBackPressed() {
        super.onBackPressed()
    }
    override fun onPause() {
        super.onPause()
        reactInstanceManager.onHostPause(this)
    }

    override fun onResume() {
        super.onResume()
        reactInstanceManager.onHostResume(this, this)
    }

    override fun onDestroy() {
        super.onDestroy()
        reactInstanceManager.onHostDestroy(this)
        reactRootView.unmountReactApplication()
    }
    override fun onBackPressed() {
        reactInstanceManager.onBackPressed()
        super.onBackPressed()
    }
}