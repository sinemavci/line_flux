package com.line_flux.line_flux.modules

import android.Manifest
import android.app.Activity
import androidx.annotation.RequiresPermission
import com.google.gson.Gson
import com.kotlin.sensor_drawing_plugin.SensorManager
import com.line_flux.line_flux.dto.sensor.SensorDTO
import kotlinx.coroutines.launch
import android.util.Log
import com.kotlin.sensor_drawing_plugin.PermissionService
import com.kotlin.sensor_drawing_plugin.ServiceLocator
import com.line_flux.line_flux.observers.SensorObserver
import com.line_flux.line_flux.permission.PermissionHostApi
import com.line_flux.line_flux.sensor.SensorHostApi
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers

class PermissionModule(activity: Activity) : PermissionHostApi {
    val _activity = activity

    override fun requestLocationPermission(callback: (Result<Boolean>) -> Unit) {
            PermissionService.requestLocationPermission(_activity) { granted ->
                callback(Result.success(granted))
            }
    }

    override fun hasLocationPermission(callback: (Result<Boolean>) -> Unit) {
        callback(Result.success(PermissionService.hasLocationPermission()))
    }
}