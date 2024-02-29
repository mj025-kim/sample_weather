import 'package:bloc_cubit_tutorial/injector.dart';
import 'package:bloc_cubit_tutorial/presentation/cubit/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WeatherCubit>(
      create: (context) => getIt(),
      child: BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
        return const Text("hello");
      }),
    );
  }
}
