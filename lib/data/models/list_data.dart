import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/data/models/main.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/models/wind.dart';

part 'list_data.freezed.dart';
part 'list_data.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    final Main? main,
    final List<Weather>? weather,
    final Wind? wind,
    @JsonKey(name: "dt_txt") final String? time,
  }) = _WeatherModel;
  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
}
