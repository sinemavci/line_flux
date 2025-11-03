// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CoordinateDTO _$CoordinateDTOFromJson(Map<String, dynamic> json) =>
    _CoordinateDTO(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      altitude: (json['altitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordinateDTOToJson(_CoordinateDTO instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
    };
