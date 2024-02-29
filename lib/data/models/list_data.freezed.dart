// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  Main? get main => throw _privateConstructorUsedError;
  List<Weather>? get weather => throw _privateConstructorUsedError;
  Wind? get wind => throw _privateConstructorUsedError;
  @JsonKey(name: "dt_txt")
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {Main? main,
      List<Weather>? weather,
      Wind? wind,
      @JsonKey(name: "dt_txt") String? time});

  $MainCopyWith<$Res>? get main;
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $MainCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Main? main,
      List<Weather>? weather,
      Wind? wind,
      @JsonKey(name: "dt_txt") String? time});

  @override
  $MainCopyWith<$Res>? get main;
  @override
  $WindCopyWith<$Res>? get wind;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = freezed,
    Object? weather = freezed,
    Object? wind = freezed,
    Object? time = freezed,
  }) {
    return _then(_$WeatherModelImpl(
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as Main?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl with DiagnosticableTreeMixin implements _WeatherModel {
  const _$WeatherModelImpl(
      {this.main,
      final List<Weather>? weather,
      this.wind,
      @JsonKey(name: "dt_txt") this.time})
      : _weather = weather;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final Main? main;
  final List<Weather>? _weather;
  @override
  List<Weather>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Wind? wind;
  @override
  @JsonKey(name: "dt_txt")
  final String? time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherModel(main: $main, weather: $weather, wind: $wind, time: $time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherModel'))
      ..add(DiagnosticsProperty('main', main))
      ..add(DiagnosticsProperty('weather', weather))
      ..add(DiagnosticsProperty('wind', wind))
      ..add(DiagnosticsProperty('time', time));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main,
      const DeepCollectionEquality().hash(_weather), wind, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {final Main? main,
      final List<Weather>? weather,
      final Wind? wind,
      @JsonKey(name: "dt_txt") final String? time}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  Main? get main;
  @override
  List<Weather>? get weather;
  @override
  Wind? get wind;
  @override
  @JsonKey(name: "dt_txt")
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
