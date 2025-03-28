import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitweather3/cubits/get-weather-cubit/get-weather-cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    var image = weatherModel.image.contains('http://')
        ? weatherModel.image
        : 'http:${weatherModel.image}';
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                image,
              ),
              Text(
                weatherModel.temp.round().toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Maxtemp: ${weatherModel.maxTemp.round()}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Mintemp: ${weatherModel.minTemp.round()}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
