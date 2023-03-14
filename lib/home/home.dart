import 'package:flutter/material.dart';
import 'package:weather_app/home/widgets/extensive_weather_info.dart';
import 'package:weather_app/home/widgets/weather_info.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.75,
            width: size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xff3fa2fa),
                    Color(0xff955cd1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.85]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    bottom: 10.0,
                  ),
                  child: Text(
                    'Constantine',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white.withOpacity(0.9),
                      fontFamily: 'Maven Pro',
                    ),
                  ),
                ),
                Text(
                  'Monday, 03 March',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Maven Pro',
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/sun.png',
                  width: size.width * 0.4,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Sunny',
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontFamily: 'Maven Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '15°',
                  style: TextStyle(
                    fontSize: 75,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontFamily: 'Hubballi',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Row(
                    children: [
                      WeatherInfo(
                        size: size,
                        img: 'assets/images/wind.png',
                        type: 'Wind',
                        color: Colors.white,
                        value: '17.1 km/h',
                      ),
                      WeatherInfo(
                        size: size,
                        img: 'assets/images/humidity.png',
                        type: 'Humidity',
                        color: Colors.white,
                        value: '81',
                      ),
                      WeatherInfo(
                        size: size,
                        img: 'assets/images/wind_direction.png',
                        type: 'Wind Direction',
                        value: 'SE',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Row(
              children: const [
                ExtensiveWeatherInfo(
                  type: 'Gust',
                  value: '32.0 kp/h',
                ),
                ExtensiveWeatherInfo(
                  type: 'UV',
                  value: '1.0',
                ),
                ExtensiveWeatherInfo(
                  type: 'Wind',
                  value: '19.1 km/h',
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                ExtensiveWeatherInfo(
                  type: 'Pressure',
                  value: '1025.0 hpa',
                ),
                ExtensiveWeatherInfo(
                  type: 'Precipitation',
                  value: '0.0 mm',
                ),
                ExtensiveWeatherInfo(
                  type: 'Last Update',
                  value: '2023-03-03',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
