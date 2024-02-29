// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainImpl _$$MainImplFromJson(Map<String, dynamic> json) => _$MainImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MainImplToJson(_$MainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };
