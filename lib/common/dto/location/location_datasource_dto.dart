import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:line_flux/common/model/location/location_data_source.dart';

part 'location_datasource_dto.freezed.dart';
part 'location_datasource_dto.g.dart';

@freezed
class LocationDataSourceDTO with _$LocationDataSourceDTO {
  const LocationDataSourceDTO._();

  factory LocationDataSourceDTO.fromJson(Map<String, dynamic> json) =>
      _$LocationDataSourceDTOFromJson(json);

  const factory LocationDataSourceDTO({
    required String id,
  }) = _LocationDataSourceDTO;


  factory LocationDataSourceDTO.fromDataModel(LocationDataSource datasource) {
    return LocationDataSourceDTO(id: datasource.id);
  }

  LocationDataSource toDataModel() {
    return LocationDataSource();
  }
}
