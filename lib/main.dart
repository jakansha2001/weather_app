import 'package:flutter/material.dart';
import 'package:weather_app/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff081b25),
      ),
      home: const Home(),
    );
  }
}
