import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  @JsonSerializable(explicitToJson: true)
  const factory Wind({
    final double? speed,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
