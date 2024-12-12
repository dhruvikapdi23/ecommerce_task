import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiUrl = "";

class ApiClass {
  static String get baseUrl => dotenv.env['BASEURL'] ?? '';
  static String get apiKey => dotenv.env['APIKEY'] ?? '';

  static Map<String, String>? get headers =>
      {
        'x-rapidapi-key': apiKey,
        'x-rapidapi-host': 'apidojo-hm-hennes-mauritz-v1.p.rapidapi.com',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
}
