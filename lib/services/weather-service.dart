import 'package:dio/dio.dart';
import 'package:gitweather3/models/weather-model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);
  WeatherModel getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        'http://api.weatherapi.com/v1/forecast.json?key=6058a2c4090d42d0b45135146231605&q=$cityName');
  }
}
