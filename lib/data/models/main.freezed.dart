// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
mixin _$Main {
  double? get temp => throw _privateConstructorUsedError;
  double? get pressure => throw _privateConstructorUsedError;
  double? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res, Main>;
  @useResult
  $Res call({double? temp, double? pressure, double? humidity});
}

/// @nodoc
class _$MainCopyWithImpl<$Res, $Val extends Main>
    implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainImplCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$$MainImplCopyWith(
          _$MainImpl value, $Res Function(_$MainImpl) then) =
      __$$MainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? temp, double? pressure, double? humidity});
}

/// @nodoc
class __$$MainImplCopyWithImpl<$Res>
    extends _$MainCopyWithImpl<$Res, _$MainImpl>
    implements _$$MainImplCopyWith<$Res> {
  __$$MainImplCopyWithImpl(_$MainImpl _value, $Res Function(_$MainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$MainImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MainImpl with DiagnosticableTreeMixin implements _Main {
  const _$MainImpl({this.temp, this.pressure, this.humidity});

  factory _$MainImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainImplFromJson(json);

  @override
  final double? temp;
  @override
  final double? pressure;
  @override
  final double? humidity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Main(temp: $temp, pressure: $pressure, humidity: $humidity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Main'))
      ..add(DiagnosticsProperty('temp', temp))
      ..add(DiagnosticsProperty('pressure', pressure))
      ..add(DiagnosticsProperty('humidity', humidity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, pressure, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      __$$MainImplCopyWithImpl<_$MainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainImplToJson(
      this,
    );
  }
}

abstract class _Main implements Main {
  const factory _Main(
      {final double? temp,
      final double? pressure,
      final double? humidity}) = _$MainImpl;

  factory _Main.fromJson(Map<String, dynamic> json) = _$MainImpl.fromJson;

  @override
  double? get temp;
  @override
  double? get pressure;
  @override
  double? get humidity;
  @override
  @JsonKey(ignore: true)
  _$$MainImplCopyWith<_$MainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
