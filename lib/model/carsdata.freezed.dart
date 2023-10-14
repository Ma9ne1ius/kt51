// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carsdata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarsData _$CarsDataFromJson(Map<String, dynamic> json) {
  return _CarsData.fromJson(json);
}

/// @nodoc
mixin _$CarsData {
  List<Car> get cars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarsDataCopyWith<CarsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarsDataCopyWith<$Res> {
  factory $CarsDataCopyWith(CarsData value, $Res Function(CarsData) then) =
      _$CarsDataCopyWithImpl<$Res, CarsData>;
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class _$CarsDataCopyWithImpl<$Res, $Val extends CarsData>
    implements $CarsDataCopyWith<$Res> {
  _$CarsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_value.copyWith(
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarsDataImplCopyWith<$Res>
    implements $CarsDataCopyWith<$Res> {
  factory _$$CarsDataImplCopyWith(
          _$CarsDataImpl value, $Res Function(_$CarsDataImpl) then) =
      __$$CarsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Car> cars});
}

/// @nodoc
class __$$CarsDataImplCopyWithImpl<$Res>
    extends _$CarsDataCopyWithImpl<$Res, _$CarsDataImpl>
    implements _$$CarsDataImplCopyWith<$Res> {
  __$$CarsDataImplCopyWithImpl(
      _$CarsDataImpl _value, $Res Function(_$CarsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cars = null,
  }) {
    return _then(_$CarsDataImpl(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarsDataImpl implements _CarsData {
  _$CarsDataImpl({final List<Car> cars = const []}) : _cars = cars;

  factory _$CarsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarsDataImplFromJson(json);

  final List<Car> _cars;
  @override
  @JsonKey()
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  String toString() {
    return 'CarsData(cars: $cars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarsDataImpl &&
            const DeepCollectionEquality().equals(other._cars, _cars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cars));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarsDataImplCopyWith<_$CarsDataImpl> get copyWith =>
      __$$CarsDataImplCopyWithImpl<_$CarsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarsDataImplToJson(
      this,
    );
  }
}

abstract class _CarsData implements CarsData {
  factory _CarsData({final List<Car> cars}) = _$CarsDataImpl;

  factory _CarsData.fromJson(Map<String, dynamic> json) =
      _$CarsDataImpl.fromJson;

  @override
  List<Car> get cars;
  @override
  @JsonKey(ignore: true)
  _$$CarsDataImplCopyWith<_$CarsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
