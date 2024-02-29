part of 'weather_cubit.dart';

sealed class WeatherState extends Equatable {}

final class WeatherInitial extends WeatherState {
  @override
  List<Object?> get props => [];
}

final class WeatherLoading extends WeatherState {
  WeatherLoading();

  @override
  List<Object?> get props => [];
}

final class WeatherLoaded extends WeatherState {
  final Weather weather;
  WeatherLoaded(this.weather);

  @override
  List<Object?> get props => [weather];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WeatherLoaded && other.weather == weather;
  }

  @override
  int get hashCode => weather.hashCode;
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError(this.message);

  @override
  List<Object?> get props => [message];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WeatherError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
