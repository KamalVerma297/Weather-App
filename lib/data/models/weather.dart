import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  const factory Weather({
    final String? main,
  }) = _Weather;
  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
