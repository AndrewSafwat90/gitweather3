class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherloadedState extends WeatherState {}

class WeatherFailureState extends WeatherState {
  final String errorMessage;
  WeatherFailureState({required this.errorMessage});
}
