import 'package:flutter/material.dart';
import 'package:gitweather3/views/home_view.dart';
import 'package:gitweather3/views/search-view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/search': (context) => SearchView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: HomeView(),
    );
  }
}
