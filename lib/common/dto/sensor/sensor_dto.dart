import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:line_flux/common/model/location/sensor.dart';

part 'sensor_dto.freezed.dart';
part 'sensor_dto.g.dart';

@freezed
class SensorDTO with _$SensorDTO {
  const SensorDTO._();

  factory SensorDTO.fromJson(Map<String, dynamic> json) =>
      _$SensorDTOFromJson(json);

  const factory SensorDTO({
    required String id,
  }) = _SensorDTO;


  factory SensorDTO.fromDataModel(Sensor sensor) {
    return SensorDTO(id: sensor.id);
  }

  Sensor toDataModel() {
    return Sensor();
  }

  @override
  String get id => id;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}
