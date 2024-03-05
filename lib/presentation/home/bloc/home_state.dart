part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({WeatherResponse? weatherResponse}) = _Success;
  const factory HomeState.failure({String? errorMessage}) = _Failure;
}
