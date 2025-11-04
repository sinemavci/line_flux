package com.line_flux.line_flux.modules

import android.Manifest
import androidx.annotation.RequiresPermission
import com.google.gson.Gson
import com.kotlin.sensor_drawing_plugin.SensorManager
import com.line_flux.line_flux.dto.data_source.LocationDataSourceDTO
import com.line_flux.line_flux.location.LocationHostApi

// todo: projenin amacini kafanda oturt, sema cikar. Simdilik kullanici tracking'e baslat ile tek gps ds dinleyecek ve bu da arka planda
// location verisini toplayip painter sinifina gondererk cizgi cizecek. Bunu da hariyata overlay olarak ekleyerek yapacagiz.
// yani sensor manager'da liste tutmaya gerek olmayabilir bu yapi icin
// ayni zamanda sensorservice' de direk kullanilmayacak start ve pause stop tracking gibi bir yapi dusunuluyor
// cizginin farkli stilleri olabilir tasarim calis
class LocationModule : LocationHostApi {
    val jsonConverter = Gson()
    private val sensorManager = SensorManager()

    @RequiresPermission(allOf = [Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION])
    override fun start(dataSource: String) {
        val sensorDTO: LocationDataSourceDTO =
            jsonConverter.fromJson(dataSource, LocationDataSourceDTO::class.java)
        sensorManager.setSensor(sensorDTO.toDataModel())
        sensorManager.startActivity()
    }

    override fun stop() {
        sensorManager.stopActivity()
    }

    override fun getStatus(dataSourceId: String): String? {
        //todo
        return null
    }
}