// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_datasource_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationDataSourceDTO {

 String get id;
/// Create a copy of LocationDataSourceDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationDataSourceDTOCopyWith<LocationDataSourceDTO> get copyWith => _$LocationDataSourceDTOCopyWithImpl<LocationDataSourceDTO>(this as LocationDataSourceDTO, _$identity);

  /// Serializes this LocationDataSourceDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationDataSourceDTO&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LocationDataSourceDTO(id: $id)';
}


}

/// @nodoc
abstract mixin class $LocationDataSourceDTOCopyWith<$Res>  {
  factory $LocationDataSourceDTOCopyWith(LocationDataSourceDTO value, $Res Function(LocationDataSourceDTO) _then) = _$LocationDataSourceDTOCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$LocationDataSourceDTOCopyWithImpl<$Res>
    implements $LocationDataSourceDTOCopyWith<$Res> {
  _$LocationDataSourceDTOCopyWithImpl(this._self, this._then);

  final LocationDataSourceDTO _self;
  final $Res Function(LocationDataSourceDTO) _then;

/// Create a copy of LocationDataSourceDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationDataSourceDTO].
extension LocationDataSourceDTOPatterns on LocationDataSourceDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationDataSourceDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationDataSourceDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationDataSourceDTO value)  $default,){
final _that = this;
switch (_that) {
case _LocationDataSourceDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationDataSourceDTO value)?  $default,){
final _that = this;
switch (_that) {
case _LocationDataSourceDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationDataSourceDTO() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id)  $default,) {final _that = this;
switch (_that) {
case _LocationDataSourceDTO():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id)?  $default,) {final _that = this;
switch (_that) {
case _LocationDataSourceDTO() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationDataSourceDTO extends LocationDataSourceDTO {
  const _LocationDataSourceDTO({required this.id}): super._();
  factory _LocationDataSourceDTO.fromJson(Map<String, dynamic> json) => _$LocationDataSourceDTOFromJson(json);

@override final  String id;

/// Create a copy of LocationDataSourceDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationDataSourceDTOCopyWith<_LocationDataSourceDTO> get copyWith => __$LocationDataSourceDTOCopyWithImpl<_LocationDataSourceDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationDataSourceDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationDataSourceDTO&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LocationDataSourceDTO(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LocationDataSourceDTOCopyWith<$Res> implements $LocationDataSourceDTOCopyWith<$Res> {
  factory _$LocationDataSourceDTOCopyWith(_LocationDataSourceDTO value, $Res Function(_LocationDataSourceDTO) _then) = __$LocationDataSourceDTOCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$LocationDataSourceDTOCopyWithImpl<$Res>
    implements _$LocationDataSourceDTOCopyWith<$Res> {
  __$LocationDataSourceDTOCopyWithImpl(this._self, this._then);

  final _LocationDataSourceDTO _self;
  final $Res Function(_LocationDataSourceDTO) _then;

/// Create a copy of LocationDataSourceDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LocationDataSourceDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
