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
      return _root_ide_package_.com.line_flux.line_flux.dtos.coordinate.LocationDTO(
        time = location.time,
        speed = location.speed,
        bearing = location.bearing,
        coordinate = _root_ide_package_.com.line_flux.line_flux.dto.coordinate.CoordinateDTO.fromDataModel(
          location.coordinate
        ),
      )
    }
  }

  fun toDataModel(): Location {
    return Location(coordinate = coordinate.toDataModel(), bearing, speed, time)
  }
}
