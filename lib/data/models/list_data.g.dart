// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      main: json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      wind: json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      time: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
      'wind': instance.wind,
      'dt_txt': instance.time,
    };
