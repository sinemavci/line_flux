package com.line_flux.line_flux.dto.coordinate

import com.kotlin.sensor_drawing_plugin.coordinate.Coordinate

data class CoordinateDTO(
  var latitude: Double = 0.0,
  var longitude: Double = 0.0,
  var altitude: Double = 0.0,
) {
  companion object {
    fun fromDataModel(coordinate: Coordinate): CoordinateDTO {
      return _root_ide_package_.com.line_flux.line_flux.dtos.coordinate.CoordinateDTO(
        latitude = coordinate.latitude,
        longitude = coordinate.longitude,
        altitude = coordinate.altitude
      )
    }
  }

  fun toDataModel(): Coordinate {
    return Coordinate(latitude, longitude, altitude)
  }
}
