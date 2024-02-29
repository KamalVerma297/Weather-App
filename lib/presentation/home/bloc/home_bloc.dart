import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/data/data_source/remote/network_service.dart';
import 'package:weather_app/data/models/weather_response.dart';
import 'package:weather_app/locator.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Loading()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        fetchWeatherDataEvent: (cityName) async {
          try {
            emit(const HomeState.loading());

            final String? responseBody = await locator.get<NetworkService>().fetchWeatherData(event.cityName);

            final jsonData = jsonDecode(responseBody!);

            WeatherResponse weatherModel = WeatherResponse.fromJson(jsonData);

            emit(HomeState.success(weatherModel));
          } catch (e) {
            emit(HomeState.failure(e.toString()));
          }
        },
      );
    });
  }
}
