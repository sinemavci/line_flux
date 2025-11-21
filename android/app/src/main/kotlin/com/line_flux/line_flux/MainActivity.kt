package com.line_flux.line_flux

import com.kotlin.sensor_drawing_plugin.PermissionService
import com.line_flux.line_flux.modules.PermissionModule
import com.line_flux.line_flux.modules.SensorModule
import com.line_flux.line_flux.observers.SensorEventHandler
import com.line_flux.line_flux.permission.PermissionHostApi
import com.line_flux.line_flux.sensor.SensorHostApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

var sensorEventHandler: SensorEventHandler? = null

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        sensorEventHandler = SensorEventHandler(flutterEngine.dartExecutor.binaryMessenger)
        SensorHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, SensorModule())
        PermissionHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, PermissionModule(this))
    }

    private fun requestPermissionsResult(
        requestCode: Int,
        grantResults: IntArray
    ) {
        if (requestCode == 1001) {
            PermissionService.onPermissionResult(grantResults)
        }
    }

    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<String>,
        grantResults: IntArray
    ) {
        requestPermissionsResult(requestCode, grantResults)
    }
}
