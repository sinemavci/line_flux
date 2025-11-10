package com.line_flux.line_flux.dto.sensor

import com.kotlin.sensor_drawing_plugin.sensor.Sensor

data class SensorDTO(val id: String) {
  companion object Companion {
    fun fromDataModel(sensor: Sensor): SensorDTO {
      return SensorDTO(id = sensor.id)
    }
  }

  fun toDataModel(): Sensor {
    val sensor = Sensor()
    sensor.id = id
    return sensor
  }
}
