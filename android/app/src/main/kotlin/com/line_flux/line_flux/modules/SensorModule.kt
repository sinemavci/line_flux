package com.line_flux.line_flux.modules

import android.Manifest
import androidx.annotation.RequiresPermission
import com.google.gson.Gson
import com.kotlin.sensor_drawing_plugin.SensorManager
import com.line_flux.line_flux.dto.sensor.SensorDTO
import kotlinx.coroutines.launch
import android.util.Log
import com.kotlin.sensor_drawing_plugin.ServiceLocator
import com.line_flux.line_flux.observers.SensorObserver
import com.line_flux.line_flux.sensor.SensorHostApi
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers
import java.lang.Exception

// todo: projenin amacini kafanda oturt, sema cikar. Simdilik kullanici tracking'e baslat ile tek gps ds dinleyecek ve bu da arka planda
// sensor verisini toplayip painter sinifina gondererk cizgi cizecek. Bunu da hariyata overlay olarak ekleyerek yapacagiz.
// yani sensor manager'da liste tutmaya gerek olmayabilir bu yapi icin
// ayni zamanda sensorservice' de direk kullanilmayacak start ve pause stop tracking gibi bir yapi dusunuluyor
// cizginin farkli stilleri olabilir tasarim calis
class SensorModule : SensorHostApi {
    val jsonConverter = Gson()
    private val sensorManager = SensorManager()
    private val sensorObserver = SensorObserver()

    @RequiresPermission(allOf = [Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION])
    override fun start(sensor: String, callback: (Result<Boolean>) -> Unit) {
        try {
            val sensorDTO: SensorDTO =
                jsonConverter.fromJson(sensor, SensorDTO::class.java)
            val sensor = sensorDTO.toDataModel()
            sensorManager.setSensor(sensor)
            sensorManager.startActivity()
            callback.invoke(Result.success(true))
        }
        catch (e: Exception) {
            callback.invoke(Result.failure(e))
        }
    }

    override fun stop(callback: (Result<Boolean>) -> Unit) {
        try {
            sensorManager.stopActivity()
            callback.invoke(Result.success(true))
        }
        catch (e: Exception) {
            callback.invoke(Result.failure(e))
        }
    }

    @OptIn(DelicateCoroutinesApi::class)
    override fun on(sensor: String, callback: (Result<Boolean>) -> Unit) {
        try {
            //todo: apply id match for getsensor
            val sensor = sensorManager.getSensor()
            ServiceLocator.scope.launch(Dispatchers.Main) {
                sensor?.locationChangedFlow?.collect { location ->
                    Log.e("sensor changed: ", "sensor changed: ${location.coordinate.latitude}")
                    sensorObserver.onSensorChanged(location)
                }
            }
        }
        catch (e: Exception) {
            callback.invoke(Result.failure(e))
        }
    }

    override fun getStatus(sensorId: String, callback: (Result<String>) -> Unit) {
        //todo
    }
}