import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({
    super.key,
    required this.size,
    required this.img,
    required this.value,
    required this.type,
    this.color,
  });

  final Size size;
  final String img;
  final String value;
  final String type;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(
            img,
            color: color,
            width: size.width * 0.12,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            value,
            style: Constants.weatherInfoValue,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            type,
            style: Constants.weatherInfoType,
          ),
        ],
      ),
    );
  }
}
