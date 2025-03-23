import 'package:flutter/material.dart';
import 'package:gitweather3/views/search-view.dart';
import 'package:gitweather3/widgets/no_weather_body.dart';

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
      body: NoWeatherBody(),
    );
  }
}
