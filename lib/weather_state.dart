part of 'weather_bloc.dart';

@immutable
sealed class WeatherState extends Equatable{
  const WeatherState();
  @override
  List<Object> get probs =>[]
}

final class WeatherInitial extends WeatherState {}
final class WeatherLoading extends WeatherState {}
final class WeatherSuccess extends WeatherState {
  final Weather weather;
  WeatherSuccess(this.weather);

  @override
  List<Object> get probs =>[weather]

}
final class WeatherFailure extends WeatherState {}


