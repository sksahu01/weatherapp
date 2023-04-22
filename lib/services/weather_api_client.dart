import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatheroo/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=30bc1dae9d219aaa107f75ba1682a80c");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityname);
    return Weather.fromJson(body);
  }
}
