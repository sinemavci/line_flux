package com.line_flux.line_flux

import com.line_flux.line_flux.modules.SensorModule
import com.line_flux.line_flux.observers.SensorEventHandler
import com.line_flux.line_flux.sensor.SensorHostApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

var sensorEventHandler: SensorEventHandler? = null

class MainActivity : FlutterActivity() {

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        sensorEventHandler = SensorEventHandler(flutterEngine.dartExecutor.binaryMessenger)
        SensorHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, SensorModule())
    }
}
