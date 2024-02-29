import 'package:http/http.dart';

extension ResponseExtension on Response {
  bool isSuccessful() {
    return statusCode == 200 || statusCode == 201 || statusCode == 202 || statusCode == 203 || statusCode == 204;
  }
}
