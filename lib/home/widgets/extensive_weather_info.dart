import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants.dart';

class ExtensiveWeatherInfo extends StatelessWidget {
  const ExtensiveWeatherInfo({
    super.key,
    required this.type,
    required this.value,
  });

  final String type;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            type,
            style: Constants.weatherInfoType,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: Constants.weatherInfoValue,
          ),
        ],
      ),
    );
  }
}
