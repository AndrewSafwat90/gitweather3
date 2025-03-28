import 'package:gitweather3/models/weather-model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherloadedState extends WeatherState {
  final WeatherModel weatherModel;
  WeatherloadedState({required this.weatherModel});
}

class WeatherFailureState extends WeatherState {}
