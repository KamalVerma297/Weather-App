import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'main.freezed.dart';
part 'main.g.dart';

@freezed
class Main with _$Main {
  @JsonSerializable(explicitToJson: true)
  const factory Main({
    final double? temp,
    final double? pressure,
    final double? humidity,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}
