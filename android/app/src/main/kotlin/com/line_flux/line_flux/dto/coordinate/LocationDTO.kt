package com.line_flux.line_flux.dto.coordinate

import com.kotlin.sensor_drawing_plugin.coordinate.Location

data class LocationDTO(
  var time: Long,
  var speed: Double? = null,
  var bearing: Double? = null,
  var coordinate: CoordinateDTO,
) {
  companion object {
    fun fromDataModel(location: Location): LocationDTO {
      return LocationDTO(
        time = location.time,
        speed = location.speed,
        bearing = location.bearing,
        coordinate = CoordinateDTO.fromDataModel(
          location.coordinate
        ),
      )
    }
  }

  fun toDataModel(): Location {
    return Location(coordinate = coordinate.toDataModel(), bearing, speed, time)
  }
}
