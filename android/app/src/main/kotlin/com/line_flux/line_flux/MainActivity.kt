package com.line_flux.line_flux

import com.line_flux.line_flux.location.LocationHostApi
import com.line_flux.line_flux.modules.LocationModule
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        LocationHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, LocationModule())
    }
}
