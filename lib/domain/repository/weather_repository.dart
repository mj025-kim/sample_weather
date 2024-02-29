import 'package:bloc_cubit_tutorial/domain/entities/weather.dart';
import 'package:injectable/injectable.dart';

@injectable
abstract interface class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);
}

class NetworkException implements Exception {}
