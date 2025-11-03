package com.line_flux.line_flux.dto.data_source

import com.kotlin.sensor_drawing_plugin.datasource.LocationDataSource

data class LocationDataSourceDTO(val id: String) {
  companion object {
    fun fromDataModel(dataSource: LocationDataSource): LocationDataSourceDTO {
      return LocationDataSourceDTO(id = dataSource.id)
    }
  }

  fun toDataModel(): LocationDataSource {
    val dataSource = LocationDataSource()
    dataSource.id = id
    return dataSource
  }
}
