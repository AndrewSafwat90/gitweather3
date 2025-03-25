import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather3/cubits/get-weather-cubit/get-weather-states.dart';
import 'package:gitweather3/models/weather-model.dart';
import 'package:gitweather3/services/weather-service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);
  getWeather({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
    emit(WeatherloadedState());
  }
}
