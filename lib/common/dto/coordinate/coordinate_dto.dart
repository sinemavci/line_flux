import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:line_flux/common/model/coordinate/coordinate.dart';

part 'coordinate_dto.freezed.dart';
part 'coordinate_dto.g.dart';

//todo
@freezed
class CoordinateDTO with _$CoordinateDTO {

  const factory CoordinateDTO({
    required double latitude,
    required double longitude,
    required double altitude,
  }) = _CoordinateDTO;

  const CoordinateDTO._();

  factory CoordinateDTO.fromJson(Map<String, dynamic> json) => _$CoordinateDTOFromJson(json);

  factory CoordinateDTO.fromDataModel(Coordinate model) {
    return CoordinateDTO(latitude: model.latitude, longitude: model.longitude, altitude: model.altitude);
  }

  Coordinate toDataModel() => Coordinate(latitude: latitude, longitude: longitude, altitude: altitude);
}
