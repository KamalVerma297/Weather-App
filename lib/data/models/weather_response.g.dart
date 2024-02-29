// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherResponseImpl _$$WeatherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherResponseImpl(
      cod: json['cod'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeatherResponseImplToJson(
        _$WeatherResponseImpl instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'list': instance.list?.map((e) => e.toJson()).toList(),
    };
