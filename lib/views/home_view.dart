import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather3/cubits/get-weather-cubit/get-weather-cubit.dart';
import 'package:gitweather3/cubits/get-weather-cubit/get-weather-states.dart';
import 'package:gitweather3/widgets/no_weather_body.dart';
import 'package:gitweather3/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather App'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
        ),
      ]),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return NoWeatherBody();
          } else if (state is WeatherloadedState) {
            return WeatherInfoBody();
          } else {
            return Center(
              child: Text('error occured '),
            );
          }
        },
      ),
    );
  }
}
