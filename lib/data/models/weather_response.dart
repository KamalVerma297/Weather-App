import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/data/models/list_data.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherResponse({
    final String? cod,
    @JsonKey(name: "list") final List<WeatherModel>? list,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
}
