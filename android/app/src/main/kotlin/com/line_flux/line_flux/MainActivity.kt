package com.line_flux.line_flux

import com.line_flux.line_flux.location.LocationHostApi
import com.line_flux.line_flux.modules.LocationModule
import com.line_flux.line_flux.observers.SensorEventHandler
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

var sensorEventHandler: SensorEventHandler? = null

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        sensorEventHandler = SensorEventHandler(flutterEngine.dartExecutor.binaryMessenger)
        LocationHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, LocationModule())
    }
}
