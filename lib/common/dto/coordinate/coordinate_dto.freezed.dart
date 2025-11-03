// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoordinateDTO {

 double get latitude; double get longitude; double get altitude;
/// Create a copy of CoordinateDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoordinateDTOCopyWith<CoordinateDTO> get copyWith => _$CoordinateDTOCopyWithImpl<CoordinateDTO>(this as CoordinateDTO, _$identity);

  /// Serializes this CoordinateDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoordinateDTO&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude);

@override
String toString() {
  return 'CoordinateDTO(latitude: $latitude, longitude: $longitude, altitude: $altitude)';
}


}

/// @nodoc
abstract mixin class $CoordinateDTOCopyWith<$Res>  {
  factory $CoordinateDTOCopyWith(CoordinateDTO value, $Res Function(CoordinateDTO) _then) = _$CoordinateDTOCopyWithImpl;
@useResult
$Res call({
 double latitude, double longitude, double altitude
});




}
/// @nodoc
class _$CoordinateDTOCopyWithImpl<$Res>
    implements $CoordinateDTOCopyWith<$Res> {
  _$CoordinateDTOCopyWithImpl(this._self, this._then);

  final CoordinateDTO _self;
  final $Res Function(CoordinateDTO) _then;

/// Create a copy of CoordinateDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = null,Object? longitude = null,Object? altitude = null,}) {
  return _then(_self.copyWith(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CoordinateDTO].
extension CoordinateDTOPatterns on CoordinateDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CoordinateDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CoordinateDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CoordinateDTO value)  $default,){
final _that = this;
switch (_that) {
case _CoordinateDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CoordinateDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CoordinateDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double altitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CoordinateDTO() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double latitude,  double longitude,  double altitude)  $default,) {final _that = this;
switch (_that) {
case _CoordinateDTO():
return $default(_that.latitude,_that.longitude,_that.altitude);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double latitude,  double longitude,  double altitude)?  $default,) {final _that = this;
switch (_that) {
case _CoordinateDTO() when $default != null:
return $default(_that.latitude,_that.longitude,_that.altitude);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CoordinateDTO extends CoordinateDTO {
  const _CoordinateDTO({required this.latitude, required this.longitude, required this.altitude}): super._();
  factory _CoordinateDTO.fromJson(Map<String, dynamic> json) => _$CoordinateDTOFromJson(json);

@override final  double latitude;
@override final  double longitude;
@override final  double altitude;

/// Create a copy of CoordinateDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CoordinateDTOCopyWith<_CoordinateDTO> get copyWith => __$CoordinateDTOCopyWithImpl<_CoordinateDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CoordinateDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CoordinateDTO&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.altitude, altitude) || other.altitude == altitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,altitude);

@override
String toString() {
  return 'CoordinateDTO(latitude: $latitude, longitude: $longitude, altitude: $altitude)';
}


}

/// @nodoc
abstract mixin class _$CoordinateDTOCopyWith<$Res> implements $CoordinateDTOCopyWith<$Res> {
  factory _$CoordinateDTOCopyWith(_CoordinateDTO value, $Res Function(_CoordinateDTO) _then) = __$CoordinateDTOCopyWithImpl;
@override @useResult
$Res call({
 double latitude, double longitude, double altitude
});




}
/// @nodoc
class __$CoordinateDTOCopyWithImpl<$Res>
    implements _$CoordinateDTOCopyWith<$Res> {
  __$CoordinateDTOCopyWithImpl(this._self, this._then);

  final _CoordinateDTO _self;
  final $Res Function(_CoordinateDTO) _then;

/// Create a copy of CoordinateDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = null,Object? longitude = null,Object? altitude = null,}) {
  return _then(_CoordinateDTO(
latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,altitude: null == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
