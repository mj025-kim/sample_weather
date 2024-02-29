import 'package:bloc_cubit_tutorial/injector.dart';
import 'package:bloc_cubit_tutorial/presentation/screens/weather_screen.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WeatherScreen());
  }
}
