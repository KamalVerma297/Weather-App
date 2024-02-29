import 'package:get_it/get_it.dart';
import 'package:weather_app/data/data_source/remote/network_service.dart';

final locator = GetIt.instance;

setUpLocator() {
  locator.registerFactory<NetworkService>(() => NetworkService());
}
