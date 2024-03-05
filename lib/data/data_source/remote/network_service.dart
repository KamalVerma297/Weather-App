import 'package:http/http.dart' as http;
import 'package:weather_app/common/secrets.dart';
import 'package:weather_app/common/extension.dart';

class NetworkService {
  Future<String?> fetchWeatherData(String? cityName) async {
    final url = Uri.parse("https://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$weatherApiKey");

    try {
      final response = await http.get(url);

      if (response.isSuccessful()) {
        return response.body;
      } else {
        throw Exception("An Unexpected error occured");
      }
    } catch (e) {
       throw Exception("An Unexpected error occured");
    }
  }
}
