package com.example.flutter_mark_1

import android.view.WindowManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "security"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        setupMethodChannel(flutterEngine)
    }

    private fun setupMethodChannel(flutterEngine: FlutterEngine) {
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            when (call.method) {
                "enablePrivacyScreen" -> {
                    enablePrivacyScreen()
                    result.success(null)
                }

                "disablePrivacyScreen" -> {
                    disablePrivacyScreen()
                    result.success(null)
                }

                else -> result.notImplemented()
            }
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        togglePrivacyScreen(hasFocus)
    }

    private fun togglePrivacyScreen(hasFocus: Boolean) {
        if (hasFocus) {
            disablePrivacyScreen()
        } else {
            enablePrivacyScreen()
        }
    }

    override fun onPause() {
        super.onPause()
        disablePrivacyScreen()
    }

    override fun onResume() {
        super.onResume()
        enablePrivacyScreen()
    }

    private fun enablePrivacyScreen() {
        print("enable")
        window.setFlags(
            WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams
                .FLAG_SECURE
        )
    }

    private fun disablePrivacyScreen() {
        window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE);
    }
}

