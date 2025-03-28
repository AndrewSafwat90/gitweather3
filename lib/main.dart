import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather3/cubits/get-weather-cubit/get-weather-cubit.dart';
import 'package:gitweather3/views/home_view.dart';
import 'package:gitweather3/views/search-view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      // create: (context) => GetWeatherCubit(),  >>  GetWeatherCubit() is an object provided to child: MaterialApp
      child: MaterialApp(
        routes: {'/search': (context) => SearchView()},
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        home: HomeView(),
      ),
    );
  }
}
